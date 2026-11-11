package mdm;

import android.os.Handler;
import android.os.Looper;

import com.google.gson.Gson;
import com.zjx.jyandroid.App;
import com.zjx.jyandroid.ForegroundService.KeymapManager;
import com.zjx.jyandroid.ForegroundService.KeymapManager.BundleInfo;
import com.zjx.jyandroid.ForegroundService.KeymapManager.Keymap;
import com.zjx.jyandroid.ForegroundService.KeymapManager.KeymapContentInfo;
import com.zjx.jyandroid.ForegroundService.KeymapManager.KeymapInfo;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;

/**
 * Offline local replacement for KeymapManager's server-backed keymap storage.
 * Keymaps (and the pubg/gnyx recoil configs embedded in them) are stored as plain JSON on the
 * device instead of being fetched from the license server. Each KeymapManager network method is
 * rewritten in smali to a 2-line delegator into the matching method here.
 *
 * Layout under getFilesDir()/mdm_keymaps/ :
 *   index.json           {"bundles": { bundleId: {"selected": id, "items": { id: {name,bundleId,isOfficial,componentCount,forPhone,updateTime} }}}}
 *   content/<id>.json    the raw keymap content Map, serialized with Gson (same typing the app's
 *                        own get-keymap path already uses: Gson.fromJson(json, HashMap.class)).
 */
public final class LocalKeymapStore {

    static final Gson GSON = new Gson();
    static final Handler MAIN = new Handler(Looper.getMainLooper());

    private LocalKeymapStore() {}

    // ----------------------------------------------------------------- paths / io
    static File baseDir() {
        File d = new File(App.getContext().getFilesDir(), "mdm_keymaps");
        if (!d.exists()) d.mkdirs();
        File c = new File(d, "content");
        if (!c.exists()) c.mkdirs();
        return d;
    }

    static File indexFile() { return new File(baseDir(), "index.json"); }

    static File contentFile(String id) { return new File(new File(baseDir(), "content"), id + ".json"); }

    static String readFile(File f) {
        if (f == null || !f.exists()) return null;
        FileInputStream in = null;
        try {
            in = new FileInputStream(f);
            int len = (int) f.length();
            byte[] buf = new byte[len];
            int off = 0, n;
            while (off < len && (n = in.read(buf, off, len - off)) > 0) off += n;
            return new String(buf, 0, off, "UTF-8");
        } catch (Throwable t) {
            return null;
        } finally {
            if (in != null) try { in.close(); } catch (Throwable ignored) {}
        }
    }

    static void writeFile(File f, String s) {
        FileOutputStream out = null;
        try {
            out = new FileOutputStream(f);
            out.write(s.getBytes("UTF-8"));
        } catch (Throwable t) {
            // best-effort
        } finally {
            if (out != null) try { out.close(); } catch (Throwable ignored) {}
        }
    }

    // ----------------------------------------------------------------- index model
    @SuppressWarnings("unchecked")
    static Map<String, Object> loadIndex() {
        String s = readFile(indexFile());
        Map<String, Object> root = null;
        if (s != null) {
            try { root = (Map<String, Object>) GSON.fromJson(s, HashMap.class); } catch (Throwable t) { root = null; }
        }
        if (root == null) root = new HashMap<String, Object>();
        if (!(root.get("bundles") instanceof Map)) root.put("bundles", new HashMap<String, Object>());
        return root;
    }

    static void saveIndex(Map<String, Object> root) { writeFile(indexFile(), GSON.toJson(root)); }

    @SuppressWarnings("unchecked")
    static Map<String, Object> bundles(Map<String, Object> root) { return (Map<String, Object>) root.get("bundles"); }

    @SuppressWarnings("unchecked")
    static Map<String, Object> bundle(Map<String, Object> root, String bundleId, boolean create) {
        Map<String, Object> bs = bundles(root);
        Object b = bs.get(bundleId);
        if (b instanceof Map) {
            Map<String, Object> bm = (Map<String, Object>) b;
            if (!(bm.get("items") instanceof Map)) bm.put("items", new HashMap<String, Object>());
            return bm;
        }
        if (!create) return null;
        Map<String, Object> nb = new HashMap<String, Object>();
        nb.put("items", new HashMap<String, Object>());
        nb.put("selected", null);
        bs.put(bundleId, nb);
        return nb;
    }

    @SuppressWarnings("unchecked")
    static Map<String, Object> items(Map<String, Object> bundleMap) { return (Map<String, Object>) bundleMap.get("items"); }

    @SuppressWarnings("unchecked")
    static String bundleOf(Map<String, Object> root, String id) {
        for (Map.Entry<String, Object> e : bundles(root).entrySet()) {
            Object b = e.getValue();
            if (b instanceof Map) {
                Object it = ((Map<String, Object>) b).get("items");
                if (it instanceof Map && ((Map<String, Object>) it).containsKey(id)) return e.getKey();
            }
        }
        return null;
    }

    // ----------------------------------------------------------------- small helpers
    static String str(Object o) { return o == null ? null : o.toString(); }
    static boolean bool(Object o) { return (o instanceof Boolean) && (Boolean) o; }
    static int intOf(Object o) { return (o instanceof Number) ? ((Number) o).intValue() : 0; }
    static String now() { return String.valueOf(System.currentTimeMillis()); }

    static String newId() {
        return "L" + System.currentTimeMillis() + Integer.toHexString((int) (Math.random() * 0x1000000));
    }

    @SuppressWarnings("unchecked")
    static KeymapInfo toInfo(String id, String bundleId, Map<String, Object> item) {
        KeymapInfo info = new KeymapInfo();
        info.id = id;
        info.bundleId = bundleId;
        info.name = str(item.get("name"));
        info.isOfficial = bool(item.get("isOfficial"));
        info.componentCount = intOf(item.get("componentCount"));
        info.forPhone = bool(item.get("forPhone"));
        info.updateTime = str(item.get("updateTime"));
        return info;
    }

    @SuppressWarnings("unchecked")
    static LinkedList buildList(Map<String, Object> root, String bundleId) {
        LinkedList list = new LinkedList();
        Map<String, Object> bm = bundle(root, bundleId, false);
        if (bm != null) {
            for (Map.Entry<String, Object> e : items(bm).entrySet()) {
                if (e.getValue() instanceof Map) {
                    list.add(toInfo(e.getKey(), bundleId, (Map<String, Object>) e.getValue()));
                }
            }
        }
        return list;
    }

    // keep KeymapManager's in-memory caches consistent so its cache-first wrappers (u/r) work.
    @SuppressWarnings("unchecked")
    static void syncBundleCache(KeymapManager km, String bundleId, LinkedList list, String selected) {
        try {
            BundleInfo bi = new BundleInfo();
            bi.keymapInfoList = list;
            bi.selectedKeymapId = selected;
            KeymapManager.b(km).put(bundleId, bi);
        } catch (Throwable ignored) {}
    }

    @SuppressWarnings("unchecked")
    static void putContentCache(KeymapManager km, String id, Map content) {
        try { KeymapManager.a(km).put(id, content); } catch (Throwable ignored) {}
    }

    @SuppressWarnings("unchecked")
    static void dropContentCache(KeymapManager km, String id) {
        try { KeymapManager.a(km).remove(id); } catch (Throwable ignored) {}
    }

    static void post(Runnable r) {
        try { MAIN.post(r); } catch (Throwable t) { r.run(); }
    }

    // ---------------- PUBG recoil-config bridge ----------------
    // The PUBG recognition path (pubg/d.b0 -> pubg/g.j) loads the recoil config as a FILE from
    // getAppDocumentFolder()/pubg_extension/RCConfig/<id> and needs a non-empty "recoil_data" list.
    // Offline there is no server to generate a default, so we generate it with pubg/g.f() and mirror
    // the config to that file ourselves (plain JSON, matching base/util/b.w's reader).
    static final String PUBG_RC_BUNDLE = "com.zjx.pubg.rcConfig";

    static String rcFilePath(String bundleId, String id) {
        if (PUBG_RC_BUNDLE.equals(bundleId)) {
            String doc = App.getAppDocumentFolder();
            if (doc != null) return doc + "/pubg_extension/RCConfig/" + id;
        }
        return null;
    }

    @SuppressWarnings("unchecked")
    static boolean hasRecoilData(Map content) {
        if (content == null) return false;
        Object rd = content.get("recoil_data");
        return (rd instanceof java.util.List) && !((java.util.List) rd).isEmpty();
    }

    static Map defaultRcContent() {
        try {
            Map m = com.zjx.jyandroid.Extensions.pubg.g.f();
            RcStore.makeDefault(m);
            return m;
        } catch (Throwable t) {
            return null;
        }
    }

    @SuppressWarnings("unchecked")
    static Map readContent(String id) {
        String cs = readFile(contentFile(id));
        if (cs == null) return null;
        try { return (Map) GSON.fromJson(cs, HashMap.class); } catch (Throwable t) { return null; }
    }

    /**
     * Seed the config file the recognition path reads, but only when it is not there yet.
     * Once the file exists it belongs to the app's own settings screen (pubg/g.e writes it
     * straight from the UI), so mirroring our stored copy over it would undo every change
     * made on that screen (scope sensitivities, recoil percentage...).
     */
    static void mirrorRc(String bundleId, String id, Map content) {
        String path = rcFilePath(bundleId, id);
        if (path == null || content == null) return;
        try {
            File f = new File(path);
            if (f.exists() && f.length() > 0) return;
            File parent = f.getParentFile();
            if (parent != null && !parent.exists()) parent.mkdirs();
            writeFile(f, GSON.toJson(content));
        } catch (Throwable ignored) {}
    }

    /** Overwrite the engine's config file (PUBG): used when our side changed the numbers. */
    static void writeRcFile(String bundleId, String id, Map content) {
        String path = rcFilePath(bundleId, id);
        if (path == null || content == null) return;
        try {
            File f = new File(path);
            File parent = f.getParentFile();
            if (parent != null && !parent.exists()) parent.mkdirs();
            writeFile(f, GSON.toJson(content));
        } catch (Throwable ignored) {}
    }

    /**
     * PUBG recoil configs: the engine's RCConfig/<id> file is the live copy (the in-game panel and
     * the settings screen write it directly), so read it first. Anything not yet in the mdm_v2
     * format (old configs, restored .mdmcfg backups) is reset to the default table once; the
     * original is kept as content/<id>.v1.bak.json (never overwritten). Both copies end up equal.
     * Returns the content to hand to the app (unchanged for other bundles).
     */
    static Map ensureV2(KeymapManager km, String bundleId, String id, Map content) {
        if (!PUBG_RC_BUNDLE.equals(bundleId) || id == null) return content;
        Map live = readRcFile(bundleId, id);
        boolean fromLive = hasRecoilData(live);
        if (fromLive) content = live;
        if (!hasRecoilData(content)) {
            Map def = defaultRcContent();
            if (def == null) return content;
            content = def;
        } else if (!RcStore.isV2(content)) {
            File bak = new File(contentFile(id).getParentFile(), id + ".v1.bak.json");
            if (!bak.exists()) writeFile(bak, GSON.toJson(content));
            RcStore.makeDefault(content);
        } else if (fromLive) {
            writeFile(contentFile(id), GSON.toJson(content));
            putContentCache(km, id, content);
            return content;
        } else {
            return content;
        }
        String json = GSON.toJson(content);
        writeFile(contentFile(id), json);
        writeRcFile(bundleId, id, content);
        putContentCache(km, id, content);
        return content;
    }

    /** Fresh mdm_v2 content of a PUBG RC config for the "Thông số" sheet (engine file first). */
    static Map loadRcLive(KeymapManager km, String id) {
        return ensureV2(km, PUBG_RC_BUNDLE, id, readContent(id));
    }

    /** Id of the PUBG RC config the game uses, or null when none is selected. */
    static String selectedRcId() {
        Map<String, Object> bm = bundle(loadIndex(), PUBG_RC_BUNDLE, false);
        return bm == null ? null : str(bm.get("selected"));
    }

    /** Display name of a stored config, or null. */
    @SuppressWarnings("unchecked")
    static String nameOf(String id) {
        Map<String, Object> root = loadIndex();
        String bundleId = bundleOf(root, id);
        Map<String, Object> bm = bundleId == null ? null : bundle(root, bundleId, false);
        Object o = bm == null ? null : items(bm).get(id);
        return o instanceof Map ? str(((Map<String, Object>) o).get("name")) : null;
    }

    static boolean rcFileExists(String bundleId, String id) {
        String path = rcFilePath(bundleId, id);
        if (path == null) return false;
        try {
            File f = new File(path);
            return f.exists() && f.length() > 0;
        } catch (Throwable t) {
            return false;
        }
    }

    /** The config file as the app itself sees it, or null when it is missing or unreadable. */
    @SuppressWarnings("unchecked")
    static Map readRcFile(String bundleId, String id) {
        String path = rcFilePath(bundleId, id);
        if (path == null) return null;
        String s = readFile(new File(path));
        if (s == null || s.length() == 0) return null;
        try { return (Map) GSON.fromJson(s, HashMap.class); } catch (Throwable t) { return null; }
    }

    static void removeRcFile(String bundleId, String id) {
        String path = rcFilePath(bundleId, id);
        if (path == null) return;
        try { new File(path).delete(); } catch (Throwable ignored) {}
    }

    // Before the recognition path reads it, make sure the selected recoil config exists where
    // pubg/g.j looks for it. If the file is already on disk the app's own settings screen owns it:
    // leave it untouched so the values written there survive restarts. Only copy it inwards when
    // our own store has no copy yet, so the row's name/component count still resolve.
    @SuppressWarnings("unchecked")
    static void healAndMirrorSelectedRc(KeymapManager km, Map<String, Object> root, String bundleId, String selected) {
        if (!PUBG_RC_BUNDLE.equals(bundleId) || selected == null) return;
        if (rcFileExists(bundleId, selected)) {
            ensureV2(km, bundleId, selected, readContent(selected));
            if (readContent(selected) == null) {
                Map live = readRcFile(bundleId, selected);
                if (hasRecoilData(live)) {
                    writeFile(contentFile(selected), GSON.toJson(live));
                    putContentCache(km, selected, live);
                }
            }
            return;
        }
        Map content = readContent(selected);
        if (hasRecoilData(content) && !RcStore.isV2(content)) content = ensureV2(km, bundleId, selected, content);
        if (!hasRecoilData(content)) {
            Map def = defaultRcContent();
            if (def != null) {
                content = def;
                writeFile(contentFile(selected), GSON.toJson(content));
                try {
                    Map<String, Object> bm = bundle(root, bundleId, true);
                    Object o = items(bm).get(selected);
                    if (o instanceof Map) {
                        KeymapContentInfo ci = KeymapManager.q(content);
                        if (ci != null) {
                            if (ci.name != null) ((Map<String, Object>) o).put("name", ci.name);
                            ((Map<String, Object>) o).put("componentCount", Integer.valueOf(ci.componentCount));
                        }
                        saveIndex(root);
                    }
                } catch (Throwable ignored) {}
                putContentCache(km, selected, content);
            }
        }
        mirrorRc(bundleId, selected, content);
    }

    // ================================================================= public ops

    public static void getKeymapList(final KeymapManager km, final String bundleId, String token,
                                     final KeymapManager.GetKeymapListCompletionHandler h) {
        Map<String, Object> root = loadIndex();
        final LinkedList list = buildList(root, bundleId);
        Map<String, Object> bm = bundle(root, bundleId, false);
        final String selected = (bm == null) ? null : str(bm.get("selected"));
        healAndMirrorSelectedRc(km, root, bundleId, selected);
        syncBundleCache(km, bundleId, list, selected);
        post(new Runnable() { public void run() { if (h != null) h.requestCompleted(null, list, selected); } });
    }

    @SuppressWarnings("unchecked")
    public static void getKeymap(final KeymapManager km, final String id,
                                 final KeymapManager.GetKeymapCompletionHandler h) {
        Map<String, Object> root = loadIndex();
        String bundleId = bundleOf(root, id);

        Map content = null;
        String cs = readFile(contentFile(id));
        if (cs != null) {
            try { content = (Map) GSON.fromJson(cs, HashMap.class); } catch (Throwable ignored) {}
        }
        content = ensureV2(km, bundleId, id, content);
        if (content == null) content = new HashMap();

        KeymapInfo info;
        Map<String, Object> bm = (bundleId == null) ? null : bundle(root, bundleId, false);
        Object item = (bm == null) ? null : items(bm).get(id);
        if (item instanceof Map) {
            info = toInfo(id, bundleId, (Map<String, Object>) item);
        } else {
            info = new KeymapInfo();
            info.id = id;
            info.bundleId = bundleId;
        }

        final Keymap keymap = new Keymap(info, content);
        putContentCache(km, id, content);
        post(new Runnable() { public void run() { if (h != null) h.requestCompleted(null, keymap); } });
    }

    public static void createNamed(KeymapManager km, String name, String bundleId,
                                   KeymapManager.CreateKeymapCompletionHandler h) {
        createCommon(km, name, null, bundleId, h);
    }

    public static void createWithContent(KeymapManager km, Map content, String bundleId,
                                         KeymapManager.CreateKeymapCompletionHandler h) {
        createCommon(km, null, content, bundleId, h);
    }

    @SuppressWarnings("unchecked")
    static void createCommon(final KeymapManager km, String name, Map content, String bundleId,
                             final KeymapManager.CreateKeymapCompletionHandler h) {
        final String id = newId();
        if (content == null) {
            Map def = PUBG_RC_BUNDLE.equals(bundleId) ? defaultRcContent() : null;
            content = (def != null) ? def : new HashMap();
        }

        String nm = name;
        int cc = 0;
        try {
            KeymapContentInfo ci = KeymapManager.q(content);
            if (ci != null) {
                if (nm == null) nm = ci.name;
                cc = ci.componentCount;
            }
        } catch (Throwable ignored) {}

        writeFile(contentFile(id), GSON.toJson(content));

        Map<String, Object> root = loadIndex();
        Map<String, Object> bm = bundle(root, bundleId, true);
        Map<String, Object> item = new HashMap<String, Object>();
        item.put("name", nm);
        item.put("bundleId", bundleId);
        item.put("isOfficial", Boolean.FALSE);
        item.put("componentCount", Integer.valueOf(cc));
        item.put("forPhone", Boolean.FALSE);
        item.put("updateTime", now());
        items(bm).put(id, item);
        saveIndex(root);

        syncBundleCache(km, bundleId, buildList(root, bundleId), str(bm.get("selected")));
        putContentCache(km, id, content);
        mirrorRc(bundleId, id, content);
        post(new Runnable() { public void run() { if (h != null) h.requestCompleted(null, id); } });
    }

    @SuppressWarnings("unchecked")
    public static void updateKeymap(final KeymapManager km, final Map content, final String id,
                                    final KeymapManager.UpdateKeymapCompletionHandler h) {
        writeFile(contentFile(id), GSON.toJson(content));

        Map<String, Object> root = loadIndex();
        String bundleId = bundleOf(root, id);
        if (bundleId != null) {
            Map<String, Object> bm = bundle(root, bundleId, true);
            Object o = items(bm).get(id);
            Map<String, Object> item = (o instanceof Map) ? (Map<String, Object>) o : new HashMap<String, Object>();
            try {
                KeymapContentInfo ci = KeymapManager.q(content);
                if (ci != null) {
                    if (ci.name != null) item.put("name", ci.name);
                    item.put("componentCount", Integer.valueOf(ci.componentCount));
                }
            } catch (Throwable ignored) {}
            item.put("bundleId", bundleId);
            item.put("updateTime", now());
            items(bm).put(id, item);
            saveIndex(root);
            syncBundleCache(km, bundleId, buildList(root, bundleId), str(bm.get("selected")));
        }
        if (PUBG_RC_BUNDLE.equals(bundleId)) writeRcFile(bundleId, id, content);
        else mirrorRc(bundleId, id, content);
        putContentCache(km, id, content);
        post(new Runnable() { public void run() { if (h != null) h.requestCompleted(null); } });
    }

    public static void deleteKeymap(final KeymapManager km, final String id,
                                    final KeymapManager.DeleteKeymapCompletionHandler h) {
        Map<String, Object> root = loadIndex();
        String bundleId = bundleOf(root, id);
        if (bundleId != null) {
            Map<String, Object> bm = bundle(root, bundleId, true);
            items(bm).remove(id);
            if (id.equals(str(bm.get("selected")))) bm.put("selected", null);
            saveIndex(root);
            syncBundleCache(km, bundleId, buildList(root, bundleId), str(bm.get("selected")));
        }
        try { contentFile(id).delete(); } catch (Throwable ignored) {}
        removeRcFile(bundleId, id);
        dropContentCache(km, id);
        post(new Runnable() { public void run() { if (h != null) h.requestCompleted(null); } });
    }

    @SuppressWarnings("unchecked")
    public static void renameKeymap(final KeymapManager km, final String id, final String name,
                                    final KeymapManager.RenameKeymapCompletionHandler h) {
        Map<String, Object> root = loadIndex();
        String bundleId = bundleOf(root, id);
        if (bundleId != null) {
            Map<String, Object> bm = bundle(root, bundleId, true);
            Object o = items(bm).get(id);
            if (o instanceof Map) {
                ((Map<String, Object>) o).put("name", name);
                ((Map<String, Object>) o).put("updateTime", now());
            }
            saveIndex(root);
            syncBundleCache(km, bundleId, buildList(root, bundleId), str(bm.get("selected")));
        }
        dropContentCache(km, id); // force a reload so the new name is reflected
        post(new Runnable() { public void run() { if (h != null) h.requestCompleted(null); } });
    }

    public static void setSelected(final KeymapManager km, final String id,
                                   final KeymapManager.SetSelectedKeymapCompletionHandler h) {
        Map<String, Object> root = loadIndex();
        String bundleId = bundleOf(root, id);
        if (bundleId != null) {
            Map<String, Object> bm = bundle(root, bundleId, true);
            bm.put("selected", id);
            saveIndex(root);
            // The game reads the selected config straight from its own folder and reloads it right
            // after this call (often from cache, without listing again): convert it to mdm_v2 now,
            // whether or not the file exists, and put the file back if it went missing.
            Map content = ensureV2(km, bundleId, id, readContent(id));
            if (content != null && !rcFileExists(bundleId, id)) mirrorRc(bundleId, id, content);
            syncBundleCache(km, bundleId, buildList(root, bundleId), id);
        }
        post(new Runnable() { public void run() { if (h != null) h.requestCompleted(null); } });
    }

    public static void getConfigContentById(final KeymapManager km, final String id,
                                            final KeymapManager.GetConfigContentByIdCompletionHandler h) {
        final String cs = readFile(contentFile(id));
        post(new Runnable() { public void run() { if (h != null) h.requestCompleted(null, cs); } });
    }
}
