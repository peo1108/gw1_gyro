package mdm;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;

import com.zjx.jyandroid.App;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

/**
 * Offline backup / restore of all MDM config to a single .mdmcfg (ZIP) file.
 *
 * Bundled areas:
 *   keymaps/     <- getFilesDir()/mdm_keymaps/        (keymaps + pubg/gnyx recoil configs, see LocalKeymapStore)
 *   generalrc/   <- getAppDocumentFolder()/GeneralRC/RCConfig/
 *   gnyx/        <- getAppDocumentFolder()/gnyxExtension/RCConfig/
 *   pubgrc/      <- getAppDocumentFolder()/pubg_extension/RCConfig/  (PUBG engine's live copies, m38+)
 *   prefs/       <- shared_prefs/*.xml               (includes gw2_gyro and every other app pref)
 *
 * Backups are written to getAppDocumentFolder()/MDM/backup_<timestamp>.mdmcfg .
 * Restore picks the newest .mdmcfg there, overwrites the areas above, then restarts the app
 * (SharedPreferences and KeymapManager caches only reload from disk on a fresh process).
 */
public final class ConfigBackup {

    static final Handler MAIN = new Handler(Looper.getMainLooper());

    private ConfigBackup() {}

    // ---------------- locations ----------------
    static File keymapsDir() { return new File(App.getContext().getFilesDir(), "mdm_keymaps"); }

    static File docFolder() {
        String p = App.getAppDocumentFolder();
        return (p == null) ? null : new File(p);
    }

    static File generalRcDir() { File d = docFolder(); return d == null ? null : new File(d, "GeneralRC/RCConfig"); }

    static File pubgRcDir() { File d = docFolder(); return d == null ? null : new File(d, "pubg_extension/RCConfig"); }

    static File gnyxRcDir() { File d = docFolder(); return d == null ? null : new File(d, "gnyxExtension/RCConfig"); }

    static File sharedPrefsDir() {
        File files = App.getContext().getFilesDir();        // /data/data/<pkg>/files
        File base = (files == null) ? null : files.getParentFile();
        return base == null ? null : new File(base, "shared_prefs");
    }

    static File backupFolder() {
        File d = docFolder();
        File f = (d == null) ? new File(App.getContext().getFilesDir(), "MDM") : new File(d, "MDM");
        if (!f.exists()) f.mkdirs();
        return f;
    }

    // ---------------- toast ----------------
    static void toast(final String msg) {
        MAIN.post(new Runnable() {
            public void run() {
                try { Toast.makeText(App.getContext(), msg, Toast.LENGTH_LONG).show(); } catch (Throwable ignored) {}
            }
        });
    }

    // ---------------- public entry points (called from the Settings UI smali) ----------------

    /** Zip every config area into a new timestamped .mdmcfg; returns its path or null. */
    public static String exportAll() {
        ZipOutputStream zos = null;
        File out = null;
        try {
            out = new File(backupFolder(), "backup_" + System.currentTimeMillis() + ".mdmcfg");
            zos = new ZipOutputStream(new FileOutputStream(out));

            addTree(zos, "keymaps", keymapsDir());
            addTree(zos, "generalrc", generalRcDir());
            addTree(zos, "gnyx", gnyxRcDir());
            addTree(zos, "pubgrc", pubgRcDir());
            addPrefs(zos, "prefs", sharedPrefsDir());

            zos.close();
            zos = null;
            toast("Đã sao lưu cấu hình:\n" + out.getAbsolutePath());
            return out.getAbsolutePath();
        } catch (Throwable t) {
            toast("Sao lưu lỗi: " + t);
            return null;
        } finally {
            if (zos != null) try { zos.close(); } catch (Throwable ignored) {}
        }
    }

    /** Restore the newest .mdmcfg in the backup folder, then restart the app. */
    public static void importLatestAndRestart() {
        try {
            File src = newestBackup();
            if (src == null) {
                toast("Không tìm thấy file .mdmcfg trong:\n" + backupFolder().getAbsolutePath());
                return;
            }
            importFrom(src);
            toast("Đã khôi phục từ " + src.getName() + "\nĐang khởi động lại...");
            MAIN.postDelayed(new Runnable() { public void run() { restart(); } }, 1200);
        } catch (Throwable t) {
            toast("Khôi phục lỗi: " + t);
        }
    }

    static File newestBackup() {
        File dir = backupFolder();
        File[] fs = dir.listFiles();
        File best = null;
        if (fs != null) {
            for (File f : fs) {
                if (f.isFile() && f.getName().toLowerCase().endsWith(".mdmcfg")) {
                    if (best == null || f.lastModified() > best.lastModified()) best = f;
                }
            }
        }
        return best;
    }

    // ---------------- zip helpers ----------------
    static void addTree(ZipOutputStream zos, String prefix, File dir) throws Exception {
        if (dir == null || !dir.exists() || !dir.isDirectory()) return;
        ArrayList<File> stack = new ArrayList<File>();
        stack.add(dir);
        int rootLen = dir.getAbsolutePath().length();
        while (!stack.isEmpty()) {
            File f = stack.remove(stack.size() - 1);
            File[] kids = f.listFiles();
            if (kids == null) continue;
            for (File k : kids) {
                if (k.isDirectory()) {
                    stack.add(k);
                } else {
                    String rel = k.getAbsolutePath().substring(rootLen).replace('\\', '/');
                    if (rel.startsWith("/")) rel = rel.substring(1);
                    writeEntry(zos, prefix + "/" + rel, k);
                }
            }
        }
    }

    static void addPrefs(ZipOutputStream zos, String prefix, File dir) throws Exception {
        if (dir == null || !dir.exists() || !dir.isDirectory()) return;
        File[] kids = dir.listFiles();
        if (kids == null) return;
        for (File k : kids) {
            if (k.isFile() && k.getName().toLowerCase().endsWith(".xml")) {
                writeEntry(zos, prefix + "/" + k.getName(), k);
            }
        }
    }

    static void writeEntry(ZipOutputStream zos, String entryName, File file) throws Exception {
        FileInputStream in = null;
        try {
            in = new FileInputStream(file);
            zos.putNextEntry(new ZipEntry(entryName));
            copy(in, zos);
            zos.closeEntry();
        } finally {
            if (in != null) try { in.close(); } catch (Throwable ignored) {}
        }
    }

    // ---------------- restore ----------------
    static void importFrom(File zip) throws Exception {
        ZipInputStream zis = null;
        ArrayList<String> names = new ArrayList<String>();
        try {
            zis = new ZipInputStream(new FileInputStream(zip));
            ZipEntry e;
            while ((e = zis.getNextEntry()) != null) {
                if (e.isDirectory()) { zis.closeEntry(); continue; }
                names.add(e.getName());
                File target = targetFor(e.getName());
                // the pre-mdm_v2 backup of a config is written once and never replaced
                if (target != null && target.getName().endsWith(".v1.bak.json") && target.exists()) target = null;
                if (target != null) {
                    File parent = target.getParentFile();
                    if (parent != null && !parent.exists()) parent.mkdirs();
                    FileOutputStream out = null;
                    try { out = new FileOutputStream(target); copy(zis, out); }
                    finally { if (out != null) try { out.close(); } catch (Throwable ignored) {} }
                }
                zis.closeEntry();
            }
        } finally {
            if (zis != null) try { zis.close(); } catch (Throwable ignored) {}
        }
        // backups without pubgrc/: the engine's live files would win over the restored copies
        File rc = pubgRcDir();
        if (rc != null) {
            for (String id : RcStore.staleLiveIds(names)) {
                try { new File(rc, id).delete(); } catch (Throwable ignored) {}
            }
        }
    }

    /** Map a zip entry path back to its real location; null = ignore (safety against path traversal). */
    static File targetFor(String name) {
        name = name.replace('\\', '/');
        if (name.contains("..")) return null;
        if (name.startsWith("keymaps/"))   return new File(keymapsDir(), name.substring("keymaps/".length()));
        if (name.startsWith("generalrc/")) { File d = generalRcDir(); return d == null ? null : new File(d, name.substring("generalrc/".length())); }
        if (name.startsWith("gnyx/"))      { File d = gnyxRcDir();    return d == null ? null : new File(d, name.substring("gnyx/".length())); }
        if (name.startsWith("pubgrc/"))    { File d = pubgRcDir();    return d == null ? null : new File(d, name.substring("pubgrc/".length())); }
        if (name.startsWith("prefs/"))     { File d = sharedPrefsDir(); return d == null ? null : new File(d, name.substring("prefs/".length())); }
        return null;
    }

    static void copy(InputStream in, OutputStream out) throws Exception {
        byte[] buf = new byte[8192];
        int n;
        while ((n = in.read(buf)) > 0) out.write(buf, 0, n);
    }

    static void restart() {
        try {
            Context c = App.getContext();
            Intent i = c.getPackageManager().getLaunchIntentForPackage(c.getPackageName());
            if (i != null) {
                i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK);
                c.startActivity(i);
            }
        } catch (Throwable ignored) {}
        Runtime.getRuntime().exit(0);
    }
}
