package mdm;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.widget.TextView;

import java.lang.reflect.Field;

/**
 * Gyro readiness on the home page. The live link comes from K6.m once a second (no singleton is
 * created); module state (installed / staged for reboot / disabled) comes from a root shell check
 * when the app comes back to the screen and at most once a minute, on a background thread, so the tile can say what the user has to do next.
 */
public class GyroStatusView extends TextView {
    private static final int GREEN = 0xFF7BE3A2;
    private static final int GOLD = 0xFFE8D3A4;
    private static final int DIM = 0xFFA89C86;
    private static final int RED = 0xFFFF8A80;

    // module states
    static final int M_UNKNOWN = 0, M_OK = 1, M_MISSING = 2, M_REBOOT = 3, M_DISABLED = 4;

    private volatile int module = M_UNKNOWN;
    private volatile boolean checking;
    private long lastCheck;
    private String shown = "";

    private final Runnable tick = new Runnable() {
        @Override
        public void run() {
            long now = System.currentTimeMillis();
            if (now - lastCheck > 60000) {
                lastCheck = now;
                checkModules();
            }
            update();
            postDelayed(this, 1000);
        }
    };

    public GyroStatusView(Context c) { super(c); }
    public GyroStatusView(Context c, AttributeSet a) { super(c, a); }
    public GyroStatusView(Context c, AttributeSet a, int s) { super(c, a, s); }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        removeCallbacks(tick);
        lastCheck = 0;
        post(tick);
    }

    @Override
    protected void onWindowVisibilityChanged(int v) {
        super.onWindowVisibilityChanged(v);
        if (v == VISIBLE) lastCheck = 0;
    }

    @Override
    protected void onDetachedFromWindow() {
        removeCallbacks(tick);
        super.onDetachedFromWindow();
    }

    static int link() {
        try {
            Class<?> k = Class.forName("K6.m");
            Field fi = k.getDeclaredField("instance");
            fi.setAccessible(true);
            Object g = fi.get(null);
            if (g == null) return 0;
            if (k.getField("connectedClient").get(g) != null) return 2;
            if (k.getField("serverRunning").getBoolean(g)) return 1;
        } catch (Throwable ignored) {
        }
        return 0;
    }

    private void checkModules() {
        if (checking) return;
        checking = true;
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    ModuleCard.Result r = ModuleCard.su(ModuleCard.STATUS);
                    int st = M_UNKNOWN;
                    boolean any = false, missing = false, reboot = false, off = false;
                    for (String line : r.out.split("\n")) {
                        if (!line.startsWith("MDM|")) continue;
                        any = true;
                        String[] f = (line + " ").split("\\|", -1);
                        String v = f[2].trim(), uv = f[3].trim(), flag = f.length > 4 ? f[4].trim() : "";
                        if (uv.length() > 0 || "update".equals(flag) || "remove".equals(flag)) reboot = true;
                        else if (v.length() == 0) missing = true;
                        else if ("disable".equals(flag)) off = true;
                    }
                    if (any) st = missing ? M_MISSING : reboot ? M_REBOOT : off ? M_DISABLED : M_OK;
                    module = st;
                } finally {
                    checking = false;
                }
            }
        }, "mdm-gyrostat").start();
    }

    void update() {
        int l = link();
        int m = module;
        int color;
        String text;
        if (l == 2) { color = GREEN; text = "Đã kết nối"; }
        else if (m == M_MISSING) { color = RED; text = "Chưa cài module"; }
        else if (m == M_REBOOT) { color = GOLD; text = "Cần khởi động lại"; }
        else if (m == M_DISABLED) { color = RED; text = "Module đang tắt"; }
        else if (l == 1) { color = GOLD; text = "Chờ module"; }
        else { color = DIM; text = "Bật khi vào game"; }
        if (text.equals(shown)) return;
        shown = text;
        setText(text);
        setTextColor(color);
        GradientDrawable dot = new GradientDrawable();
        dot.setShape(GradientDrawable.OVAL);
        dot.setColor(color);
        int d = Math.round(8 * getResources().getDisplayMetrics().density);
        dot.setSize(d, d);
        setCompoundDrawablesRelativeWithIntrinsicBounds(dot, null, null, null);
        setCompoundDrawablePadding(Math.round(8 * getResources().getDisplayMetrics().density));
    }
}
