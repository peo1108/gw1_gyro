import java.util.*;

import mdm.RcStore;

/**
 * JVM test for mdm.RcStore (mdm_v2 recoil format: 3 stances x 7 scopes, flat values).
 *
 * run: javac --release 8 -encoding UTF-8 -d OUT java/src/mdm/RcStore.java java/test/RcStoreTest.java
 *      java -cp OUT RcStoreTest
 */
public class RcStoreTest {
    static int failures = 0;

    static void check(boolean ok, String msg) {
        if (!ok) {
            failures++;
            System.out.println("FAIL: " + msg);
        }
    }

    /** Same shape as the real default config read from the device: 13 scope records per weapon. */
    static Map<String, Object> oldContent(int weapons) {
        Map<String, Object> c = new LinkedHashMap<>();
        c.put("sensitivity", new ArrayList<Object>(Arrays.asList(100.0, 50.0, 30.0, 22.0, 14.0, 12.0, 10.0)));
        c.put("recoil_value_coefficient", 100.0);
        List<Object> rd = new ArrayList<>();
        for (int w = 0; w < weapons; w++) {
            Map<String, Object> e = new LinkedHashMap<>();
            List<Object> v = new ArrayList<>();
            List<Object> co = new ArrayList<>();
            for (int s = 0; s < 13; s++) {
                Map<String, Object> r = new LinkedHashMap<>();
                r.put("grip", 0.0);
                r.put("muzzle", 0.0);
                r.put("stock", 0.0);
                r.put("gesture", 0.0);
                r.put("scope", (double) s);
                r.put("recoilValue", new ArrayList<Object>(Arrays.asList(new ArrayList<Object>(Arrays.asList(0.0, 45.0)))));
                v.add(r);
                Map<String, Object> k = new LinkedHashMap<>();
                k.put("crouch", 0.8);
                k.put("prone", 0.6);
                k.put("stand", 1.0);
                k.put("verticalGrip", 0.83);
                co.add(k);
            }
            e.put("v", v);
            e.put("coefficients", co);
            rd.add(e);
        }
        c.put("recoil_data", rd);
        return c;
    }

    @SuppressWarnings("unchecked")
    static List<Object> v(Map<String, Object> c, int weapon) {
        return (List<Object>) ((Map<String, Object>) ((List<Object>) c.get("recoil_data")).get(weapon)).get("v");
    }

    @SuppressWarnings("unchecked")
    static Map<String, Object> rec(Map<String, Object> c, int weapon, int scope, int stance) {
        for (Object o : v(c, weapon)) {
            Map<String, Object> r = (Map<String, Object>) o;
            if (((Number) r.get("scope")).intValue() == scope && ((Number) r.get("gesture")).intValue() == stance) return r;
        }
        return null;
    }

    @SuppressWarnings("unchecked")
    static double val(Map<String, Object> r) {
        List<Object> pairs = (List<Object>) r.get("recoilValue");
        return ((Number) ((List<Object>) pairs.get(0)).get(1)).doubleValue();
    }

    @SuppressWarnings("unchecked")
    static void defaultsShape() {
        Map<String, Object> c = oldContent(77);
        RcStore.makeDefault(c);
        List<Object> rd = (List<Object>) c.get("recoil_data");
        check(rd.size() == 77, "defaultsShape: weapon count kept at 77, got " + rd.size());
        for (int w = 0; w < rd.size(); w++) {
            Map<String, Object> e = (Map<String, Object>) rd.get(w);
            List<Object> vv = (List<Object>) e.get("v");
            check(vv.size() == 33, "defaultsShape: weapon " + w + " has " + vv.size() + " records");
            for (Object o : vv) {
                Map<String, Object> r = (Map<String, Object>) o;
                check(((Number) r.get("grip")).intValue() == 0 && ((Number) r.get("muzzle")).intValue() == 0
                        && ((Number) r.get("stock")).intValue() == 0, "defaultsShape: accessories must be 0");
                check(((List<Object>) r.get("recoilValue")).size() == 1, "defaultsShape: exactly one pair");
            }
            List<Object> co = (List<Object>) e.get("coefficients");
            check(co.size() == 13, "defaultsShape: 13 coefficient maps");
            for (Object m : co) {
                Map<String, Object> k = (Map<String, Object>) m;
                check(k.size() == 13, "defaultsShape: 13 coefficient keys, got " + k.size());
                for (Object x : k.values()) check(((Number) x).doubleValue() == 1.0, "defaultsShape: coefficient != 1.0");
            }
        }
        check(c.get("sensitivity") instanceof List && ((List<Object>) c.get("sensitivity")).size() == 7,
                "defaultsShape: sensitivity kept");
        check(RcStore.isV2(c), "defaultsShape: isV2 after makeDefault");
    }

    static void defaultsValues() {
        Map<String, Object> c = oldContent(77);
        RcStore.makeDefault(c);
        double[][] want = {{10, 20, 22, 66, 100, 66, 100}, {8, 16, 18, 53, 80, 53, 80}, {6, 12, 13, 40, 60, 40, 60}};
        for (int st = 0; st < 3; st++)
            for (int s = 0; s < 7; s++)
                check(RcStore.get(c, 23, st, s) == want[st][s],
                        "defaultsValues: stance " + st + " slot " + s + " = " + RcStore.get(c, 23, st, s) + " want " + want[st][s]);
    }

    static void aliasesAtDefault() {
        Map<String, Object> c = oldContent(77);
        RcStore.makeDefault(c);
        check(val(rec(c, 23, 7, 2)) == 40, "aliasesAtDefault: scope 7 prone = x6 prone (40)");
        check(val(rec(c, 23, 8, 0)) == 100, "aliasesAtDefault: scope 8 stand = x8 stand (100)");
        check(val(rec(c, 23, 9, 0)) == 20, "aliasesAtDefault: scope 9 stand = x1 stand (20)");
        check(val(rec(c, 23, 10, 1)) == 16, "aliasesAtDefault: scope 10 crouch = x1 crouch (16)");
    }

    @SuppressWarnings("unchecked")
    static void shortContent() {
        Map<String, Object> c = oldContent(10);
        RcStore.makeDefault(c);
        check(((List<Object>) c.get("recoil_data")).size() >= 67, "shortContent: at least 67 weapons");
        check(RcStore.get(c, 66, 0, 4) == 100, "shortContent: last weapon has defaults");
    }

    static void setWritesAliases() {
        Map<String, Object> c = oldContent(77);
        RcStore.makeDefault(c);
        check(RcStore.set(c, 23, 1, 5, 77), "setWritesAliases: set returns true");
        check(val(rec(c, 23, 5, 1)) == 77, "setWritesAliases: x6 crouch = 77");
        check(val(rec(c, 23, 7, 1)) == 77, "setWritesAliases: x6.3 crouch follows = 77");
        check(val(rec(c, 23, 5, 0)) == 66, "setWritesAliases: x6 stand untouched");
        check(RcStore.get(c, 24, 1, 5) == 53, "setWritesAliases: other weapon untouched");
    }

    static void setClamps() {
        Map<String, Object> c = oldContent(77);
        RcStore.makeDefault(c);
        RcStore.set(c, 23, 0, 0, 5000);
        check(RcStore.get(c, 23, 0, 0) == 999, "setClamps: 5000 -> 999");
        RcStore.set(c, 23, 0, 0, -3);
        check(RcStore.get(c, 23, 0, 0) == 0, "setClamps: -3 -> 0");
    }

    @SuppressWarnings("unchecked")
    static void syncFromAlias() {
        Map<String, Object> c = oldContent(77);
        RcStore.makeDefault(c);
        Map<String, Object> alias = rec(c, 23, 8, 0);
        Object realListBefore = rec(c, 23, 6, 0).get("recoilValue");
        ((List<Object>) ((List<Object>) alias.get("recoilValue")).get(0)).set(1, 91.0);
        RcStore.syncAliases(v(c, 23), alias);
        check(val(rec(c, 23, 6, 0)) == 91, "syncFromAlias: x8 follows x8.4 edit");
        check(rec(c, 23, 6, 0).get("recoilValue") == realListBefore, "syncFromAlias: list mutated in place");
        check(val(rec(c, 23, 6, 1)) == 80, "syncFromAlias: other stance untouched");
        check(val(rec(c, 23, 1, 0)) == 20, "syncFromAlias: unrelated scope untouched");
    }

    @SuppressWarnings("unchecked")
    static void syncFromRealSlot() {
        Map<String, Object> c = oldContent(77);
        RcStore.makeDefault(c);
        Map<String, Object> real = rec(c, 22, 5, 2);
        ((List<Object>) ((List<Object>) real.get("recoilValue")).get(0)).set(1, 33.0);
        RcStore.syncAliases(v(c, 22), real);
        check(val(rec(c, 22, 7, 2)) == 33, "syncFromRealSlot: x6.3 follows x6");
        Map<String, Object> x1 = rec(c, 22, 1, 0);
        ((List<Object>) ((List<Object>) x1.get("recoilValue")).get(0)).set(1, 21.0);
        RcStore.syncAliases(v(c, 22), x1);
        check(val(rec(c, 22, 9, 0)) == 21 && val(rec(c, 22, 10, 0)) == 21, "syncFromRealSlot: tactic scopes follow x1");
    }

    static void oldFormatNotV2() {
        check(!RcStore.isV2(oldContent(77)), "oldFormatNotV2: old content is not v2");
        Map<String, Object> c = oldContent(77);
        RcStore.makeDefault(c);
        c.put("mdm_format", 2.0); // Gson turns ints into doubles
        check(RcStore.isV2(c), "oldFormatNotV2: 2.0 counts as v2");
    }

    static void scopesPerWeapon() {
        check(Arrays.equals(RcStore.availableSlots(22), new int[]{0, 1, 2, 3, 4, 5}), "scopesPerWeapon: M416 up to x6");
        check(Arrays.equals(RcStore.availableSlots(1), new int[]{0, 1, 2, 3, 4, 5, 6}), "scopesPerWeapon: AWM up to x8");
        check(Arrays.equals(RcStore.availableSlots(27), new int[]{0, 1}), "scopesPerWeapon: S12K x0 x1");
        check(RcStore.availableSlots(0).length == 0, "scopesPerWeapon: Empty has no slots");
        check(!RcStore.visible(0) && !RcStore.visible(43) && RcStore.visible(22), "scopesPerWeapon: Empty/Bow hidden, M416 shown");
        check("M416".equals(RcStore.weaponName(22)), "scopesPerWeapon: name of 22");
        check("DMR".equals(RcStore.weaponGroup(9)), "scopesPerWeapon: SKS is DMR");
        check("SMG".equals(RcStore.weaponGroup(39)), "scopesPerWeapon: UMP45 is SMG");
        check(RcStore.realSlot(7) == 5 && RcStore.realSlot(10) == 1 && RcStore.realSlot(3) == 3, "realSlot mapping");
    }

    public static void main(String[] a) {
        defaultsShape();
        defaultsValues();
        aliasesAtDefault();
        shortContent();
        setWritesAliases();
        setClamps();
        syncFromAlias();
        syncFromRealSlot();
        oldFormatNotV2();
        scopesPerWeapon();
        if (failures > 0) {
            System.out.println(failures + " FAILED");
            System.exit(1);
        }
        System.out.println("ALL OK");
    }
}
