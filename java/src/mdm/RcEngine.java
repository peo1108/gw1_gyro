package mdm;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;

/**
 * Reflection bridge to the running PUBG recoil engine (pure Java, JVM-tested by RcEngineTest).
 *
 *   pubg.g      static g$f b(g, muzzle, grip, stock, weapon, scope, gesture)  -> lookup node
 *   pubg.g$f    short l (weapon), h (scope), g (gesture); boolean a = rebuild cached curve
 *   pubg.d      G() = running recoil performer or null; b0(String path) loads a config;
 *               static String L = ".../pubg_extension/RCConfig/"
 */
public final class RcEngine {

    private RcEngine() {}

    static int shortField(Object o, String name) throws Exception {
        Field f = o.getClass().getField(name);
        return ((Number) f.get(o)).intValue();
    }

    /**
     * After the in-game panel edited one cell (g$b.e already copied the number into the alias
     * records via RcStore.syncAliases), flag the engine nodes of the other aliases so they drop
     * their cached curve. Only the no-accessory nodes are used (accessory recognition is off).
     * Returns how many nodes were flagged; never throws.
     */
    public static int markAliasesDirty(Object engine, Object node) {
        if (engine == null || node == null) return 0;
        try {
            int weapon = shortField(node, "l");
            int scope = shortField(node, "h");
            int gesture = shortField(node, "g");
            Method b = null;
            for (Method m : engine.getClass().getDeclaredMethods()) {
                if (m.getName().equals("b") && m.getParameterTypes().length == 7
                        && m.getParameterTypes()[0] == engine.getClass()) {
                    b = m;
                    break;
                }
            }
            if (b == null) return 0;
            b.setAccessible(true);
            int slot = RcStore.realSlot(scope);
            int marked = 0;
            for (int s = 0; s < RcStore.SCOPES; s++) {
                if (s == scope || RcStore.realSlot(s) != slot) continue;
                Object other = b.invoke(null, engine, 0, 0, 0, weapon, s, gesture);
                if (other == null) continue;
                Field a = other.getClass().getField("a");
                a.setBoolean(other, true);
                marked++;
            }
            return marked;
        } catch (Throwable t) {
            return 0;
        }
    }

    /**
     * Reload config `id` into the PUBG extension, but only while its recoil engine is running
     * (G() != null): calling b0 on a paused extension would arm the engine behind the user's back.
     * The load (a ~300k-node build, synchronized) runs on `executor`, never inline.
     */
    public static boolean reloadIfRunning(final Object ext, String id, Executor executor) {
        if (ext == null || id == null || executor == null) return false;
        try {
            if (ext.getClass().getMethod("G").invoke(ext) == null) return false;
            final String path = (String) ext.getClass().getField("L").get(null) + id;
            final Method b0 = ext.getClass().getMethod("b0", String.class);
            executor.execute(new Runnable() {
                public void run() {
                    try { b0.invoke(ext, path); } catch (Throwable ignored) {}
                }
            });
            return true;
        } catch (Throwable t) {
            return false;
        }
    }
}
