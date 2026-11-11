package mdm;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * Fix for the PUBG recoil-config loader (pubg.g): when a config has fewer weapon records than
 * pubg.c$l has weapons, gg1/gg2 pad recoil_data with the SAME record object (index 0) again and
 * again, so every padded weapon shares one "v"/"recoilValue" list. Tuning one new gun then
 * changed all of them, and a scope-sensitivity change scaled the shared list once per padded gun.
 * The loader now pads with independent deep copies.
 */
public final class RcPad {
    private RcPad() {}

    /** Deep copy of a Gson-parsed JSON value: Map -> LinkedHashMap, List -> ArrayList, leaves as-is. */
    public static Object copy(Object o) {
        if (o instanceof Map) {
            Map<?, ?> src = (Map<?, ?>) o;
            LinkedHashMap<Object, Object> out = new LinkedHashMap<>(src.size() * 2);
            for (Map.Entry<?, ?> e : src.entrySet()) {
                out.put(e.getKey(), copy(e.getValue()));
            }
            return out;
        }
        if (o instanceof List) {
            List<?> src = (List<?>) o;
            ArrayList<Object> out = new ArrayList<>(src.size());
            for (Object v : src) {
                out.add(copy(v));
            }
            return out;
        }
        return o; // Number / String / Boolean / null are immutable
    }
}
