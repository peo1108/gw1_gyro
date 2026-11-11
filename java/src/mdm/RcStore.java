package mdm;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * The one place that reads/writes PUBG recoil configs in the simplified "mdm_v2" format.
 *
 * pubg.g.j() builds a lookup node per (weapon, scope 0..10, stance, grip, muzzle, stock) and uses
 * a record matching all five fields when one exists. So per weapon we store 11 scopes x 3 stances
 * = 33 flat records (accessories always 0) and set every coefficient to 1.0; the engine then uses
 * exactly the number shown in the editor.
 *
 * Scope slots (pubg.c$g ordinals): 0 x0 (no scope), 1 x1, 2 x2, 3 x3, 4 x4, 5 x6, 6 x8.
 * Aliases always hold a copy: 7 (x6.3) <- 5, 8 (x8.4) <- 6, 9/10 (tactic) <- 1.
 * Stances (pubg.c$b ordinals): 0 Đứng, 1 Ngồi, 2 Nằm.
 *
 * Pure Java (no Android) so java/test/RcStoreTest.java runs on the JVM.
 */
public final class RcStore {

    private RcStore() {}

    public static final String FORMAT_KEY = "mdm_format";
    public static final int FORMAT = 2;

    public static final int[] SLOTS = {0, 1, 2, 3, 4, 5, 6};
    public static final String[] SLOT_LABELS = {"x0", "x1", "x2", "x3", "x4", "x6", "x8"};
    public static final String[] STANCES = {"Đứng", "Ngồi", "Nằm"};

    /** Engine scopes 0..10; 11/12 exist in old files but are never looked up. */
    static final int SCOPES = 11;
    static final int MIN_WEAPONS = 67;

    static final double[] DEFAULT_STAND = {10, 20, 22, 66, 100, 66, 100};
    /** Đứng / Ngồi / Nằm default = Đứng x factor (user, 2026-11-11: 1 / 0.7 / 0.4). */
    static final double[] STANCE_FACTOR = {1.0, 0.7, 0.4};

    static final String[] COEFFICIENT_KEYS = {
            "laserGrip", "halfGrip", "compensatorMuzzle", "suppressorMuzzle", "flashHidderMuzzle", "crouch",
            "lightGrip", "thumbGrip", "generalStock", "verticalGrip", "horizontalGrip", "prone", "stand"
    };

    /** pubg.c$l names, ordinal order (same list as RcParams.WEAPONS). */
    static final String[] WEAPONS = {
            "Empty", "AWM", "CrossBow", "M24", "Mosin", "Kar98K", "MG3", "DP28", "MK14", "SKS",
            "SLR", "Groza", "MK47", "M762", "AKM", "MK12", "M249", "QBU", "AUG", "G36C",
            "QBZ", "PKM", "M416", "Scar", "M16", "ASM", "DBS", "S12K", "M1014", "S1897",
            "S686", "VSS", "Vector", "MP5K", "Bison", "UZI", "P90", "Win94", "Thomson", "UMP45",
            "AMR", "VCVAL", "Mini14", "Bow", "SPAS12", "M417", "HB", "TacticsBow", "MK20H", "M200",
            "SHIELD", "AA12G", "FAMAS", "AKS", "FireCompositeBow", "SVD", "MG36", "MORTAR", "ACE32", "JS9",
            "M1", "ARX", "ABAKAN", "M338", "MP7", "AS50", "MG97"
    };

    /** Group name, list of weapons, scope slots shown — the spec's "Súng gắn được scope nào" table. */
    static final Object[][] GROUPS = {
            {"Súng trường", new String[]{"M416", "AKM", "Scar", "M16", "Groza", "AUG", "QBZ", "M762", "MK47",
                    "G36C", "FAMAS", "ACE32", "ABAKAN", "AKS", "ARX", "VCVAL", "HB", "ASM"}, new int[]{0, 1, 2, 3, 4, 5}},
            {"DMR", new String[]{"MK14", "SKS", "SLR", "QBU", "Mini14", "MK12", "VSS", "M417", "MK20H", "M1"},
                    new int[]{0, 1, 2, 3, 4, 5, 6}},
            {"Sniper", new String[]{"AWM", "M24", "Mosin", "Kar98K", "AMR", "M200", "M338", "AS50", "SVD"},
                    new int[]{0, 1, 2, 3, 4, 5, 6}},
            {"LMG", new String[]{"M249", "DP28", "MG3", "PKM", "MG36", "MG97"}, new int[]{0, 1, 2, 3, 4, 5}},
            {"SMG", new String[]{"Vector", "MP5K", "Bison", "UZI", "P90", "Thomson", "UMP45", "JS9", "MP7"},
                    new int[]{0, 1, 2, 3, 4}},
            {"Shotgun", new String[]{"S12K", "M1014", "DBS", "S1897", "S686", "AA12G", "SPAS12"}, new int[]{0, 1}},
            {"Khác", new String[]{"Win94"}, new int[]{0}},
    };

    // ---- naming / grouping -----------------------------------------------------------------------

    public static String weaponName(int weapon) {
        return weapon >= 0 && weapon < WEAPONS.length ? WEAPONS[weapon] : ("#" + weapon);
    }

    static Object[] groupOf(int weapon) {
        String n = weaponName(weapon);
        for (Object[] g : GROUPS) {
            if (Arrays.asList((String[]) g[1]).contains(n)) return g;
        }
        return null;
    }

    /** Group label for the list, or null for hidden items (Empty, bows, shield, mortar). */
    public static String weaponGroup(int weapon) {
        Object[] g = groupOf(weapon);
        return g == null ? null : (String) g[0];
    }

    public static boolean visible(int weapon) {
        return groupOf(weapon) != null;
    }

    /** Scope slots (indexes into SLOT_LABELS) the editor shows for this weapon. */
    public static int[] availableSlots(int weapon) {
        Object[] g = groupOf(weapon);
        return g == null ? new int[0] : ((int[]) g[2]).clone();
    }

    /** Engine scope -> the slot whose number it uses. */
    public static int realSlot(int scope) {
        switch (scope) {
            case 7: return 5;
            case 8: return 6;
            case 9:
            case 10: return 1;
            default: return scope;
        }
    }

    // ---- backup / restore --------------------------------------------------------------------------

    /**
     * Restoring a .mdmcfg: backups made before m38 carry only our store (keymaps/content/<id>.json),
     * not the engine's live RCConfig/<id>. Those live files would win over the restored copies
     * (LocalKeymapStore.ensureV2 reads the engine file first), so they must be dropped for these
     * ids. Backups that carry "pubgrc/" entries restore the live files themselves -> nothing to drop.
     */
    public static java.util.List<String> staleLiveIds(java.util.Collection<String> zipEntries) {
        java.util.List<String> ids = new ArrayList<String>();
        for (String e : zipEntries) {
            if (e.replace('\\', '/').startsWith("pubgrc/")) return new ArrayList<String>();
        }
        for (String e : zipEntries) {
            String n = e.replace('\\', '/');
            if (!n.startsWith("keymaps/content/") || !n.endsWith(".json") || n.endsWith(".v1.bak.json")) continue;
            String id = n.substring("keymaps/content/".length(), n.length() - ".json".length());
            if (!id.isEmpty() && !id.contains("/") && !ids.contains(id)) ids.add(id);
        }
        return ids;
    }

    // ---- format ----------------------------------------------------------------------------------

    public static boolean isV2(Map content) {
        if (content == null) return false;
        Object f = content.get(FORMAT_KEY);
        return f instanceof Number && ((Number) f).intValue() == FORMAT;
    }

    static double defaultValue(int stance, int slot) {
        return Math.round(DEFAULT_STAND[slot] * STANCE_FACTOR[stance]);
    }

    static Map<String, Object> record(int scope, int stance, double value) {
        Map<String, Object> r = new LinkedHashMap<String, Object>();
        r.put("grip", 0.0);
        r.put("muzzle", 0.0);
        r.put("stock", 0.0);
        r.put("gesture", (double) stance);
        r.put("scope", (double) scope);
        List<Object> pair = new ArrayList<Object>(2);
        pair.add(0.0);
        pair.add(value);
        List<Object> pairs = new ArrayList<Object>(1);
        pairs.add(pair);
        r.put("recoilValue", pairs);
        return r;
    }

    /** Replace recoil_data with the default table; every other key of the file is kept. */
    @SuppressWarnings("unchecked")
    public static void makeDefault(Map content) {
        Object old = content.get("recoil_data");
        int n = Math.max(MIN_WEAPONS, old instanceof List ? ((List<Object>) old).size() : 0);
        List<Object> rd = new ArrayList<Object>(n);
        for (int w = 0; w < n; w++) {
            List<Object> v = new ArrayList<Object>(SCOPES * 3);
            for (int scope = 0; scope < SCOPES; scope++) {
                for (int stance = 0; stance < 3; stance++) {
                    v.add(record(scope, stance, defaultValue(stance, realSlot(scope))));
                }
            }
            List<Object> co = new ArrayList<Object>(13);
            for (int i = 0; i < 13; i++) {
                Map<String, Object> k = new LinkedHashMap<String, Object>();
                for (String key : COEFFICIENT_KEYS) k.put(key, 1.0);
                co.add(k);
            }
            Map<String, Object> e = new LinkedHashMap<String, Object>();
            e.put("v", v);
            e.put("coefficients", co);
            rd.add(e);
        }
        content.put("recoil_data", rd);
        content.put(FORMAT_KEY, (double) FORMAT);
    }

    // ---- read / write ----------------------------------------------------------------------------

    @SuppressWarnings("unchecked")
    static List<Object> weaponRecords(Map content, int weapon) {
        Object rd = content.get("recoil_data");
        if (!(rd instanceof List) || weapon < 0 || weapon >= ((List<Object>) rd).size()) return null;
        Object e = ((List<Object>) rd).get(weapon);
        if (!(e instanceof Map)) return null;
        Object v = ((Map<String, Object>) e).get("v");
        return v instanceof List ? (List<Object>) v : null;
    }

    static int num(Object o) {
        return o instanceof Number ? ((Number) o).intValue() : -1;
    }

    @SuppressWarnings("unchecked")
    static List<Object> pairOf(Map<String, Object> r) {
        Object rv = r.get("recoilValue");
        if (!(rv instanceof List) || ((List<Object>) rv).isEmpty()) return null;
        Object p = ((List<Object>) rv).get(0);
        return p instanceof List && ((List<Object>) p).size() >= 2 ? (List<Object>) p : null;
    }

    @SuppressWarnings("unchecked")
    static Map<String, Object> find(List<Object> v, int scope, int stance) {
        if (v == null) return null;
        for (Object o : v) {
            if (!(o instanceof Map)) continue;
            Map<String, Object> r = (Map<String, Object>) o;
            if (num(r.get("scope")) == scope && num(r.get("gesture")) == stance) return r;
        }
        return null;
    }

    /** Value of one cell; 0 when the record is missing. */
    public static double get(Map content, int weapon, int stance, int slot) {
        Map<String, Object> r = find(weaponRecords(content, weapon), slot, stance);
        List<Object> p = r == null ? null : pairOf(r);
        return p == null ? 0d : ((Number) p.get(1)).doubleValue();
    }

    /** Highest cell value: the in-game adjust panel's slider tops out at 300 (pubg AdjustRCValueFloatingPanelView). */
    public static final double MAX_VALUE = 300;

    public static double clamp(double v) {
        return v < 0 ? 0 : (v > MAX_VALUE ? MAX_VALUE : v);
    }

    /** Display form: whole numbers without decimals, otherwise one decimal (slider floats like 45.5999). */
    public static String format(double v) {
        double r = Math.round(v * 10) / 10.0;
        return r == Math.rint(r) ? String.valueOf((long) Math.rint(r)) : String.valueOf(r);
    }

    /** Write a cell (0..MAX_VALUE) into the real slot and every alias of it, in place. */
    public static boolean set(Map content, int weapon, int stance, int slot, double value) {
        List<Object> v = weaponRecords(content, weapon);
        double x = clamp(value);
        boolean wrote = false;
        for (int scope = 0; scope < SCOPES; scope++) {
            if (realSlot(scope) != slot) continue;
            Map<String, Object> r = find(v, scope, stance);
            List<Object> p = r == null ? null : pairOf(r);
            if (p == null) continue;
            p.set(1, x);
            wrote = true;
        }
        return wrote;
    }

    /**
     * After the in-game panel edited one record (possibly an alias like x6.3), copy its number to
     * the real slot and every other alias of the same stance, mutating the existing pair lists so
     * the engine's lookup nodes (which hold those lists) see it too.
     */
    public static void syncAliases(List v, Map edited) {
        if (v == null || edited == null) return;
        @SuppressWarnings("unchecked")
        List<Object> src = pairOf((Map<String, Object>) edited);
        if (src == null) return;
        int stance = num(edited.get("gesture"));
        int slot = realSlot(num(edited.get("scope")));
        Object value = src.get(1);
        for (int scope = 0; scope < SCOPES; scope++) {
            if (realSlot(scope) != slot) continue;
            @SuppressWarnings("unchecked")
            Map<String, Object> r = find((List<Object>) v, scope, stance);
            if (r == null || r == edited) continue;
            List<Object> p = pairOf(r);
            if (p != null) p.set(1, value);
        }
    }
}
