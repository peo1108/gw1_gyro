package mdm;

import com.zjx.jyandroid.ForegroundService.MainService;

/** Small behaviour patches ported from gg2's recognizers. */
public final class RecogCompat {
    /** pubg.c$l ordinals (same in gg1 and gg2). */
    static final int M416 = 22, M417 = 45;

    private RecogCompat() {}

    /**
     * Weapon recognizer k.n.i(bitmap, hint): gg1 first re-checks the previously held weapon
     * ("hint") and keeps it on a good score. gg2 (M5/o) skips that shortcut on non-CN builds and
     * always for M416/M417, which look alike and were stuck on the wrong one. -1 = no shortcut.
     */
    public static int weaponHint(int hint) {
        if (hint == -1 || hint == M416 || hint == M417) {
            return -1;
        }
        try {
            String cn = com.zjx.jyandroid.Extensions.pubg.c.e();
            MainService ms = MainService.sharedInstance();
            if (ms == null || cn == null || !cn.equals(ms.getActivateBundleIdentifier())) {
                return -1;
            }
        } catch (Throwable t) {
            return -1;
        }
        return hint;
    }
}
