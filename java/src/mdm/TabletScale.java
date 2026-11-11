package mdm;

import android.content.Context;
import android.content.res.Resources;

/**
 * Tablet scale for overlay UI built in code.
 *
 * XML overlays get bigger on tablets through res/layout-sw600dp-v13 (scripts/mdm_ui/mdm_tablet.py).
 * Views that size themselves in Java (RcParamsView) call this instead, using the same rule:
 * smallest screen width >= 600dp -> x1.3, otherwise x1 (phones unchanged).
 */
public final class TabletScale {
    public static final float TABLET = 1.3f;

    /** Last factor seen by {@link #density}; used by {@link #sp} for text sizes. */
    public static float k = 1f;

    private TabletScale() {}

    public static float factor(Context c) {
        Resources r = c.getResources();
        return r.getConfiguration().smallestScreenWidthDp >= 600 ? TABLET : 1f;
    }

    /** displayMetrics.density, multiplied by the tablet factor. Also caches the factor for sp(). */
    public static float density(Context c) {
        k = factor(c);
        return c.getResources().getDisplayMetrics().density * k;
    }

    public static float sp(float v) {
        return v * k;
    }
}
