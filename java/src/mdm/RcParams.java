package mdm;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * Read/write layer for the recoil config ("recoil_data") that pubg.g loads.
 *
 * Shape, straight from pubg.g.f() and pubg.g.j():
 *
 *   root            = the whole keymap content Map
 *   root["recoil_data"] = ArrayList, one entry per weapon (index == pubg.c$l ordinal)
 *     entry["v"]            = ArrayList, one map per (weapon, scope, stance, grip, muzzle) combo
 *     entry["coefficients"] = ArrayList, one Map per scope, same length and order as "v"
 *
 *   v[i] = { "gesture": int (pubg.c$b ordinal),
 *            "grip":    int (pubg.c$c ordinal),
 *            "muzzle":  int (pubg.c$d ordinal),
 *            "scope":   int (pubg.c$g ordinal),
 *            "stock":   int (pubg.c$d ordinal),
 *            "recoilValue": [ [Double, Double], ... ] }
 *
 * "recoilValue" is a list of PAIRS. pair[0] is the axis anchor and stays 0;
 * pair[1] is the magnitude the recognition path actually multiplies (pubg.g.k scales it,
 * pubg.g.g walks it). Only pair[1] is editable here.
 *
 * The loader matches records by the enum fields, never by list position, so writes here
 * have to match the same way: find the record whose five fields equal the target combo.
 */
public final class RcParams {

    private RcParams() {}

    // ---- enum ordinals mirrored from pubg.c$b / c$c / c$d / c$g -------------------------------
    // c$b (stance)
    public static final int STANCE_STAND = 0;
    public static final int STANCE_CROUCH = 1;
    public static final int STANCE_PRONE = 2;

    // c$c (grip)
    public static final int GRIP_NONE = 0;
    public static final int GRIP_VERTICAL = 1;
    public static final int GRIP_HORIZONTAL = 2;
    public static final int GRIP_HALF = 3;
    public static final int GRIP_LIGHT = 4;
    public static final int GRIP_THUMB = 5;
    public static final int GRIP_LASER = 6;
    public static final int GRIP_ERGONOMIC = 7;

    // c$d (muzzle and stock share the enum)
    public static final int MUZZLE_NONE = 0;
    public static final int MUZZLE_COMPENSATOR = 1;
    public static final int MUZZLE_FLASH_HIDER = 2;
    public static final int MUZZLE_SUPPRESSOR = 3;
    public static final int MUZZLE_BRAKE = 4;
    public static final int MUZZLE_EXTENDER = 5;

    // c$g (scope) — the names the UI shows
    public static final String[] SCOPE_KEYS = {"x1", "x2", "x3", "x4", "x6", "x8", "x63", "x84", "tactic", "tactic_84"};
    public static final String[] SCOPE_LABELS = {"x1", "x2", "x3", "x4", "x6", "x8", "x6.3", "x8.4", "Tactic", "Tactic 8.4"};

    /** Scopes the editor exposes as rows. */
    public static final int[] EDITABLE_SCOPES = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};

    /** Weapon names as they appear in pubg.c$l, in ordinal order. */
    public static final String[] WEAPONS = {
            "Empty", "AWM", "CrossBow", "M24", "Mosin", "Kar98K", "MG3", "DP28", "MK14", "SKS",
            "SLR", "Groza", "MK47", "M762", "AKM", "MK12", "M249", "QBU", "AUG", "G36C",
            "QBZ", "PKM", "M416", "Scar", "M16", "ASM", "DBS", "S12K", "M1014", "S1897",
            "S686", "VSS", "Vector", "MP5K", "Bison", "UZI", "P90", "Win94", "Thomson", "UMP45",
            "AMR", "VCVAL", "Mini14", "Bow", "SPAS12", "M417", "HB", "TacticsBow", "MK20H", "M200",
            "SHIELD", "AA12G", "FAMAS", "AKS", "FireCompositeBow", "SVD", "MG36", "MORTAR", "ACE32", "JS9",
            "M1", "ARX", "ABAKAN", "M338", "MP7", "AS50", "MG97"
    };

    /** Coarse class per weapon ordinal, used to group the list. */
    public static final String[] WEAPON_CLASS = {
            "Khác", "Sniper", "Cung", "Sniper", "Sniper", "Sniper", "LMG", "LMG", "Súng trường", "Súng trường",
            "Súng trường", "Súng trường", "Súng trường", "Súng trường", "Súng trường", "Súng trường", "LMG", "Súng trường", "Súng trường", "Súng trường",
            "Súng trường", "LMG", "Súng trường", "Súng trường", "Súng trường", "Shotgun", "Shotgun", "Shotgun", "Shotgun", "Shotgun",
            "Shotgun", "Súng trường", "SMG", "SMG", "SMG", "SMG", "SMG", "Sniper", "SMG", "SMG",
            "Sniper", "Súng trường", "Súng trường", "Cung", "Shotgun", "Súng trường", "Súng trường", "Cung", "Súng trường", "Sniper",
            "Khác", "Shotgun", "Súng trường", "Súng trường", "Cung", "Súng trường", "LMG", "Khác", "Súng trường", "SMG",
            "Súng trường", "Súng trường", "Súng trường", "Sniper", "SMG", "Sniper", "LMG"
    };

    // ---- structure helpers --------------------------------------------------------------------

    /** The recoil_data list, or null when the content has none. */
    @SuppressWarnings("unchecked")
    public static List<Object> recoilData(Map content) {
        if (content == null) return null;
        Object rd = content.get("recoil_data");
        return (rd instanceof List) ? (List<Object>) rd : null;
    }

    /** The per-weapon record, or null when the list is shorter than the weapon ordinal. */
    @SuppressWarnings("unchecked")
    public static Map<String, Object> weaponEntry(Map content, int weapon) {
        List<Object> rd = recoilData(content);
        if (rd == null || weapon < 0 || weapon >= rd.size()) return null;
        Object o = rd.get(weapon);
        return (o instanceof Map) ? (Map<String, Object>) o : null;
    }

    /** The scope coefficient map (grip/muzzle/stance multipliers) for a weapon+scope. */
    @SuppressWarnings("unchecked")
    public static Map<String, Object> coefficients(Map content, int weapon, int scope) {
        Map<String, Object> e = weaponEntry(content, weapon);
        if (e == null) return null;
        Object c = e.get("coefficients");
        if (!(c instanceof List)) return null;
        List<Object> list = (List<Object>) c;
        if (scope < 0 || scope >= list.size()) return null;
        Object o = list.get(scope);
        return (o instanceof Map) ? (Map<String, Object>) o : null;
    }

    /**
     * Locate the v[] record for one exact combo. Matching uses all five enum fields because the
     * loader indexes by field, and older configs are not guaranteed to have records in a
     * predictable order once they have been padded or hand-edited.
     */
    @SuppressWarnings("unchecked")
    public static Map<String, Object> findRecord(Map content, int weapon, int scope, int stance, int grip, int muzzle) {
        Map<String, Object> e = weaponEntry(content, weapon);
        if (e == null) return null;
        Object v = e.get("v");
        if (!(v instanceof List)) return null;
        for (Object o : (List<Object>) v) {
            if (!(o instanceof Map)) continue;
            Map<String, Object> m = (Map<String, Object>) o;
            if (num(m.get("scope")) != scope) continue;
            if (num(m.get("gesture")) != stance) continue;
            if (num(m.get("grip")) != grip) continue;
            if (num(m.get("muzzle")) != muzzle) continue;
            return m;
        }
        return null;
    }

    static int num(Object o) {
        return (o instanceof Number) ? ((Number) o).intValue() : 0;
    }

    /**
     * Every record of one weapon+scope+stance, whatever grip and muzzle they were stored for.
     * The editor shows a single number per scope, so one edit is applied to the whole set.
     */
    @SuppressWarnings("unchecked")
    public static List<Map<String, Object>> recordsFor(Map content, int weapon, int scope, int stance) {
        List<Map<String, Object>> out = new ArrayList<Map<String, Object>>();
        Map<String, Object> e = weaponEntry(content, weapon);
        if (e == null) return out;
        Object v = e.get("v");
        if (!(v instanceof List)) return out;
        for (Object o : (List<Object>) v) {
            if (!(o instanceof Map)) continue;
            Map<String, Object> m = (Map<String, Object>) o;
            if (num(m.get("scope")) != scope) continue;
            if (num(m.get("gesture")) != stance) continue;
            out.add(m);
        }
        return out;
    }

    /** Shown value: the bare-weapon record when present, otherwise the first variant stored. */
    public static double valueFor(Map content, int weapon, int scope, int stance) {
        List<Map<String, Object>> rs = recordsFor(content, weapon, scope, stance);
        for (Map<String, Object> r : rs) {
            if (num(r.get("grip")) == 0 && num(r.get("muzzle")) == 0) return readValue(r);
        }
        return rs.isEmpty() ? 0d : readValue(rs.get(0));
    }

    /** Write one value into every accessory variant of that slot. False when nothing matched. */
    public static boolean setValueFor(Map content, int weapon, int scope, int stance, double value) {
        List<Map<String, Object>> rs = recordsFor(content, weapon, scope, stance);
        for (Map<String, Object> r : rs) {
            writeValue(r, value);
        }
        return !rs.isEmpty();
    }

    // ---- value read / write ------------------------------------------------------------------

    /**
     * The editable magnitude of a record: recoilValue[0][1]. Returns 0 when the record is
     * missing or the pair is short, so callers never see null on the UI thread.
     */
    @SuppressWarnings("unchecked")
    public static double readValue(Map<String, Object> record) {
        if (record == null) return 0d;
        Object rv = record.get("recoilValue");
        if (!(rv instanceof List)) return 0d;
        List<Object> pairs = (List<Object>) rv;
        if (pairs.isEmpty()) return 0d;
        Object p = pairs.get(0);
        if (!(p instanceof List)) return 0d;
        List<Object> pair = (List<Object>) p;
        if (pair.size() < 2) return 0d;
        Object v = pair.get(1);
        return (v instanceof Number) ? ((Number) v).doubleValue() : 0d;
    }

    /**
     * Write the magnitude back into recoilValue[0][1], keeping the pair otherwise intact.
     * Creates the pair on demand for configs that shipped an empty recoilValue.
     */
    @SuppressWarnings("unchecked")
    public static void writeValue(Map<String, Object> record, double value) {
        if (record == null) return;
        Object rv = record.get("recoilValue");
        List<Object> pairs;
        if (rv instanceof List) {
            pairs = (List<Object>) rv;
        } else {
            pairs = new ArrayList<Object>();
            record.put("recoilValue", pairs);
        }
        List<Object> pair;
        if (pairs.isEmpty()) {
            pair = new ArrayList<Object>(2);
            pair.add(Double.valueOf(0d));
            pair.add(Double.valueOf(0d));
            pairs.add(pair);
        } else {
            Object p = pairs.get(0);
            if (p instanceof List) {
                pair = (List<Object>) p;
            } else {
                pair = new ArrayList<Object>(2);
                pair.add(Double.valueOf(0d));
                pair.add(Double.valueOf(0d));
                pairs.set(0, pair);
            }
        }
        while (pair.size() < 2) pair.add(Double.valueOf(0d));
        pair.set(0, Double.valueOf(0d));                // axis anchor never moves
        pair.set(1, Double.valueOf(clamp(value, 0d, 999d)));
    }

    /** Convenience: read straight from combo, no record lookup by the caller. */
    public static double get(Map content, int weapon, int scope, int stance, int grip, int muzzle) {
        return readValue(findRecord(content, weapon, scope, stance, grip, muzzle));
    }

    /** Convenience: write straight to combo, no record lookup by the caller. */
    public static boolean set(Map content, int weapon, int scope, int stance, int grip, int muzzle, double value) {
        Map<String, Object> rec = findRecord(content, weapon, scope, stance, grip, muzzle);
        if (rec == null) return false;
        writeValue(rec, value);
        return true;
    }

    public static double clamp(double v, double lo, double hi) {
        return v < lo ? lo : (v > hi ? hi : v);
    }

    /** Highest magnitude across every editable scope of one weapon — used for the slider top end. */
    public static double maxAcrossScopes(Map content, int weapon) {
        double max = 0d;
        for (int scope : EDITABLE_SCOPES) {
            double v = get(content, weapon, scope, STANCE_STAND, GRIP_NONE, MUZZLE_NONE);
            if (v > max) max = v;
        }
        return max;
    }

    // ---- copy / diff -------------------------------------------------------------------------

    /** Deep copy of the whole content so Cancel can throw the working copy away. */
    @SuppressWarnings("unchecked")
    public static Map<String, Object> copyContent(Map content) {
        Object o = RcPad.copy(content);
        return (o instanceof Map) ? (Map<String, Object>) o : new LinkedHashMap<String, Object>();
    }

    /** Short human summary of one weapon, e.g. "AKM · x1 100 · x2 49 · x3 32". */
    public static String summary(Map content, int weapon) {
        StringBuilder sb = new StringBuilder(weaponName(content, weapon));
        int shown = 0;
        for (int scope : EDITABLE_SCOPES) {
            double v = valueFor(content, weapon, scope, STANCE_STAND);
            if (v <= 0d) continue;
            sb.append("  ").append(SCOPE_LABELS[scope]).append(' ').append(fmt(v));
            if (++shown >= 3) break;
        }
        return sb.toString();
    }

    /**
     * Display name for a weapon index. A config entry may carry its own "name" (GeneralRC writes
     * one); otherwise the pubg enum name is used, and anything beyond that falls back to a number
     * so a config with extra records never hides them.
     */
    public static String weaponName(Map content, int weapon) {
        Map<String, Object> e = weaponEntry(content, weapon);
        if (e != null) {
            Object n = e.get("name");
            if (n instanceof String) {
                String s = ((String) n).trim();
                if (!s.isEmpty()) return s;
            }
        }
        if (weapon == 0) return "Mặc định";     // slot 0 of the pubg enum is "Empty"
        if (weapon < WEAPONS.length) return WEAPONS[weapon];
        return "Súng " + (weapon + 1);
    }

    /** Class label for grouping; unknown indices land in "Khác". */
    public static String weaponClass(int weapon) {
        return (weapon > 0 && weapon < WEAPON_CLASS.length) ? WEAPON_CLASS[weapon] : "Khác";
    }

    /** How many weapon records this config actually carries. */
    public static int weaponCount(Map content) {
        List<Object> rd = recoilData(content);
        return (rd == null) ? 0 : rd.size();
    }

    public static String fmt(double v) {
        if (v == Math.rint(v)) return String.valueOf((long) v);
        return String.valueOf(Math.round(v * 10d) / 10d);
    }

    /**
     * Weapon indices grouped by class, in config order, for the section headers.
     * Driven by what the config actually contains rather than by the pubg enum, so the
     * GeneralRC and gnyx screens (same "recoil_data" schema, different weapon tables)
     * list every record they have.
     */
    public static List<Object[]> groupedWeapons(Map content) {
        List<Object[]> out = new ArrayList<Object[]>();
        List<String> order = new ArrayList<String>();
        Map<String, List<Integer>> buckets = new LinkedHashMap<String, List<Integer>>();
        int n = weaponCount(content);
        for (int i = 0; i < n; i++) {
            if (weaponEntry(content, i) == null) continue;
            String cls = weaponClass(i);
            List<Integer> b = buckets.get(cls);
            if (b == null) {
                b = new ArrayList<Integer>();
                buckets.put(cls, b);
                order.add(cls);
            }
            b.add(Integer.valueOf(i));
        }
        for (String cls : order) {
            List<Integer> b = buckets.get(cls);
            int[] arr = new int[b.size()];
            for (int i = 0; i < arr.length; i++) arr[i] = b.get(i).intValue();
            out.add(new Object[]{cls, arr});
        }
        return out;
    }
}