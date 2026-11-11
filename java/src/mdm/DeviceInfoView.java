package mdm;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;

/** Fills children tagged v_model, v_os, v_res, v_mem, bar_mem with this device's facts. */
public class DeviceInfoView extends LinearLayout {
    private final Runnable tick = new Runnable() {
        @Override
        public void run() {
            fill();
            postDelayed(this, 5000);
        }
    };

    public DeviceInfoView(Context c) { super(c); }
    public DeviceInfoView(Context c, AttributeSet a) { super(c, a); }
    public DeviceInfoView(Context c, AttributeSet a, int s) { super(c, a, s); }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        removeCallbacks(tick);
        post(tick);
    }

    @Override
    protected void onDetachedFromWindow() {
        removeCallbacks(tick);
        super.onDetachedFromWindow();
    }

    private void set(String tag, String text) {
        View v = findViewWithTag(tag);
        if (v instanceof TextView) ((TextView) v).setText(text);
    }

    void fill() {
        try {
            set("v_model", Build.MODEL);
            set("v_os", "Android " + Build.VERSION.RELEASE);
            WindowManager wm = (WindowManager) getContext().getSystemService(Context.WINDOW_SERVICE);
            DisplayMetrics dm = new DisplayMetrics();
            wm.getDefaultDisplay().getRealMetrics(dm);
            int a = Math.max(dm.widthPixels, dm.heightPixels);
            int b = Math.min(dm.widthPixels, dm.heightPixels);
            set("v_res", a + " × " + b);
            ActivityManager am = (ActivityManager) getContext().getSystemService(Context.ACTIVITY_SERVICE);
            ActivityManager.MemoryInfo mi = new ActivityManager.MemoryInfo();
            am.getMemoryInfo(mi);
            long total = mi.totalMem >> 20;
            long avail = mi.availMem >> 20;
            set("v_mem", avail + " / " + total + " MB");
            View bar = findViewWithTag("bar_mem");
            if (bar instanceof ProgressBar && total > 0) {
                ProgressBar p = (ProgressBar) bar;
                p.setMax(1000);
                p.setProgress((int) (avail * 1000 / total));
            }
        } catch (Throwable ignored) {
        }
    }
}
