import java.util.*;

/** Simulates pubg.g's recoil_data padding: shared (old) vs deep-copied (mdm.RcPad) records. */
public class RcPadTest {
    static Map<String, Object> record(double v) {
        Map<String, Object> rec = new HashMap<>();
        Map<String, Object> coef = new HashMap<>();
        coef.put("crouch", 0.8);
        rec.put("coefficients", new ArrayList<>(Arrays.asList(coef)));
        Map<String, Object> e = new HashMap<>();
        e.put("scope", 0.0);
        e.put("recoilValue", new ArrayList<>(Arrays.asList(new ArrayList<>(Arrays.asList(0.0, v)))));
        rec.put("v", new ArrayList<>(Arrays.asList(e)));
        return rec;
    }

    @SuppressWarnings("unchecked")
    static ArrayList<Object> rv(ArrayList<Object> data, int w) {
        Map<String, Object> rec = (Map<String, Object>) data.get(w);
        Map<String, Object> e = (Map<String, Object>) ((ArrayList<Object>) rec.get("v")).get(0);
        return (ArrayList<Object>) e.get("recoilValue");
    }

    static ArrayList<Object> pad(boolean fixed) {
        ArrayList<Object> data = new ArrayList<>();
        for (int i = 0; i < 62; i++) data.add(record(i == 0 ? 0 : 45));
        int i6 = 62; // first new weapon (ABAKAN)
        if (i6 >= data.size()) {
            int size = (i6 - data.size()) + 10;
            for (int k = 0; k < size; k++) {
                Object r = data.get(0);
                data.add(fixed ? mdm.RcPad.copy(r) : r);
            }
        }
        return data;
    }

    public static void main(String[] a) {
        for (boolean fixed : new boolean[] {false, true}) {
            ArrayList<Object> data = pad(fixed);
            // user tunes ABAKAN (62): replace its curve in place, as pubg.g does (clear + add)
            ArrayList<Object> ab = rv(data, 62);
            ab.clear();
            ab.add(new ArrayList<>(Arrays.asList(0.0, 77.0)));
            System.out.printf("%s: size=%d ABAKAN=%s M338=%s MG97=%s Empty=%s sameObj(62,63)=%b%n",
                fixed ? "FIXED " : "ORIG  ", data.size(), rv(data, 62), rv(data, 63), rv(data, 66), rv(data, 0),
                data.get(62) == data.get(63));
        }
    }
}
