package mdm;

import android.content.Context;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.Switch;

import com.zjx.jyandroid.App;
import com.zjx.jyandroid.base.Components.TextWithSwitchView;

/**
 * "Force red dot" scope fallback, ported from gg2 (ForceRedDotConfig / ForceRedDotSettingsBinder
 * and the tail of M5/l.b()). When enabled, a scope frame that matched no template counts as a miss,
 * and every second consecutive miss is reported as scope 1 (red dot / holographic).
 * Same prefs file and key as gg2. Off by default.
 */
public final class ForceRedDot {
    public static final String PREFS = "force_red_dot_prefs";
    public static final String KEY = "force_red_dot_recognition";
    public static final String TAG = "forceRedDotRecognitionCell";

    private static int history;

    private ForceRedDot() {}

    public static boolean isEnabled() {
        Context c = App.getContext();
        return c != null && c.getSharedPreferences(PREFS, 0).getBoolean(KEY, false);
    }

    public static void setEnabled(boolean on) {
        Context c = App.getContext();
        if (c != null) {
            c.getSharedPreferences(PREFS, 0).edit().putBoolean(KEY, on).apply();
        }
    }

    /**
     * Post-filter for the scope recognizer k.k: called with its original result.
     * gg1 returns 0 for "no confident match" (and for a missing frame, which is left alone).
     */
    public static int filter(k.j rec, int result) {
        if (result != 0 || rec.a == null) {
            return result;
        }
        if (!isEnabled()) {
            history = 0;
            return 0;
        }
        int h = history + 1;
        if (h >= 2) {
            history = 0;
            return 1;
        }
        history = h;
        return 0;
    }

    /** Wires the settings cell tagged {@link #TAG} under root (PUBG settings page). */
    public static void bind(View root) {
        if (root == null) return;
        View v = root.findViewWithTag(TAG);
        if (!(v instanceof TextWithSwitchView)) return;
        Switch sw = ((TextWithSwitchView) v).aSwitch;
        if (sw == null) return;
        sw.setOnCheckedChangeListener(null);
        sw.setChecked(isEnabled());
        sw.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton b, boolean on) {
                setEnabled(on);
            }
        });
    }
}
