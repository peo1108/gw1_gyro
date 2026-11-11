package mdm;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

/**
 * Installs the two modules MDM's gyro needs (Zygisk Next, then sensor_cal) from the APK's assets
 * through whichever root manager is present (Cam/KernelSU, Magisk, APatch) and shows their state.
 */
public class ModuleCard extends LinearLayout {
    private static final int TEXT = 0xFFF3EAD8, DIM = 0xFFA89C86, GOLD = 0xFFE8D3A4, GREEN = 0xFF7BE3A2, RED = 0xFFFF8A80;

    static final String[][] MODS = {
            // id, display name, asset, what it is for
            {"zygisksu", "Zygisk Next", "mdm_modules/zygisk_next.zip", "Nền Zygisk cho module gyro"},
            {"sensor_cal", "Sensor Calibration", "mdm_modules/sensor_cal.zip", "Module gyro của MDM"},
    };

    private final float dp;
    private final TextView[] status = new TextView[MODS.length];
    private final TextView[] action = new TextView[MODS.length];
    private TextView installAll, reboot;
    private TextView segNo, segMod;
    private LinearLayout body;
    private volatile boolean busy;
    private boolean noRoot;

    public ModuleCard(Context c) { this(c, null); }
    public ModuleCard(Context c, AttributeSet a) { this(c, a, 0); }
    public ModuleCard(Context c, AttributeSet a, int s) {
        super(c, a, s);
        dp = getResources().getDisplayMetrics().density;
        setOrientation(VERTICAL);
        build();
    }

    private int px(float v) { return Math.round(v * dp); }

    private int res(String name) {
        return getResources().getIdentifier(name, "drawable", getContext().getPackageName());
    }

    private TextView label(String s, float sp, int color, boolean bold) {
        TextView t = new TextView(getContext());
        t.setText(s);
        t.setTextSize(TypedValue.COMPLEX_UNIT_SP, sp);
        t.setTextColor(color);
        if (bold) t.setTypeface(t.getTypeface(), Typeface.BOLD);
        return t;
    }

    private TextView pill(String s, boolean gold) {
        TextView b = label(s, 13, gold ? 0xFF1A140A : GOLD, true);
        b.setGravity(Gravity.CENTER);
        b.setPadding(px(18), 0, px(18), 0);
        b.setMinWidth(px(84));
        int bg = res(gold ? "mdm_btn_gold" : "mdm_btn_ghost");
        if (bg != 0) b.setBackgroundResource(bg);
        b.setClickable(true);
        return b;
    }

    private View divider() {
        View v = new View(getContext());
        v.setBackgroundColor(0x12FFFFFF);
        v.setLayoutParams(new LayoutParams(LayoutParams.MATCH_PARENT, Math.max(1, px(1))));
        return v;
    }

    private void build() {
        addView(modeSelector());
        addView(divider());
        body = new LinearLayout(getContext());
        body.setOrientation(VERTICAL);
        for (int i = 0; i < MODS.length; i++) {
            final int idx = i;
            LinearLayout row = new LinearLayout(getContext());
            row.setOrientation(HORIZONTAL);
            row.setGravity(Gravity.CENTER_VERTICAL);
            row.setMinimumHeight(px(68));
            LinearLayout col = new LinearLayout(getContext());
            col.setOrientation(VERTICAL);
            col.addView(label(MODS[i][1], 15, TEXT, true));
            status[i] = label("Đang kiểm tra…", 12, DIM, false);
            col.addView(status[i]);
            row.addView(col, new LayoutParams(0, LayoutParams.WRAP_CONTENT, 1f));
            action[i] = pill("Cài", false);
            action[i].setVisibility(INVISIBLE);
            action[i].setOnClickListener(new OnClickListener() {
                @Override
                public void onClick(View v) { install(new int[]{idx}); }
            });
            row.addView(action[i], new LayoutParams(LayoutParams.WRAP_CONTENT, px(40)));
            body.addView(row, new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
            body.addView(divider());
        }
        LinearLayout foot = new LinearLayout(getContext());
        foot.setOrientation(HORIZONTAL);
        foot.setGravity(Gravity.CENTER_VERTICAL);
        foot.setPadding(0, px(14), px(6), px(16));
        TextView hint = label("Cài xong cần khởi động lại máy.", 12, DIM, false);
        foot.addView(hint, new LayoutParams(0, LayoutParams.WRAP_CONTENT, 1f));
        reboot = pill("Khởi động lại", false);
        reboot.setVisibility(GONE);
        reboot.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) { confirmReboot(); }
        });
        foot.addView(reboot, new LayoutParams(LayoutParams.WRAP_CONTENT, px(42)));
        View gap = new View(getContext());
        foot.addView(gap, new LayoutParams(px(10), 1));
        installAll = pill("Cài tất cả", true);
        installAll.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) { install(new int[]{0, 1}); }
        });
        foot.addView(installAll, new LayoutParams(LayoutParams.WRAP_CONTENT, px(42)));
        body.addView(foot, new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        addView(body, new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        applyMode(prefs().getBoolean("useModule", true));
    }

    private SharedPreferences prefs() {
        return getContext().getSharedPreferences("gw2_gyro", Context.MODE_PRIVATE);
    }

    private TextView seg(String s) {
        TextView b = label(s, 13, GOLD, true);
        b.setGravity(Gravity.CENTER);
        b.setPadding(px(18), 0, px(18), 0);
        b.setMinWidth(px(96));
        b.setClickable(true);
        return b;
    }

    private void styleSeg(TextView b, boolean sel) {
        int bg = res(sel ? "mdm_btn_gold" : "mdm_btn_ghost");
        if (bg != 0) b.setBackgroundResource(bg);
        b.setTextColor(sel ? 0xFF1A140A : GOLD);
    }

    private View modeSelector() {
        LinearLayout row = new LinearLayout(getContext());
        row.setOrientation(HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setMinimumHeight(px(60));
        row.addView(label("Chế độ Gyro", 15, TEXT, true), new LayoutParams(0, LayoutParams.WRAP_CONTENT, 1f));
        segNo = seg("No Module");
        segMod = seg("Module");
        segNo.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) { setMode(false); }
        });
        segMod.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) { setMode(true); }
        });
        LinearLayout g = new LinearLayout(getContext());
        g.setOrientation(HORIZONTAL);
        g.addView(segNo, new LayoutParams(LayoutParams.WRAP_CONTENT, px(40)));
        View gap = new View(getContext());
        g.addView(gap, new LayoutParams(px(8), 1));
        g.addView(segMod, new LayoutParams(LayoutParams.WRAP_CONTENT, px(40)));
        row.addView(g, new LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT));
        return row;
    }

    private void applyMode(boolean useModule) {
        styleSeg(segNo, !useModule);
        styleSeg(segMod, useModule);
        body.setVisibility(useModule ? VISIBLE : GONE);
    }

    private void setMode(boolean useModule) {
        try {
            prefs().edit().putBoolean("useModule", useModule).apply();
        } catch (Throwable ignored) {
        }
        try {
            Class<?> k = Class.forName("K6.m");
            k.getMethod("setModulePref", boolean.class).invoke(null, Boolean.valueOf(useModule));
        } catch (Throwable ignored) {
        }
        applyMode(useModule);
        if (useModule) refresh();
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        refresh();
    }

    // ---- root shell ----

    static final class Result {
        int code;
        String out;
    }

    static Result su(String script) {
        Result r = new Result();
        StringBuilder sb = new StringBuilder();
        try {
            Process p = new ProcessBuilder("su").redirectErrorStream(true).start();
            OutputStream os = p.getOutputStream();
            os.write((script + "\nexit $?\n").getBytes("UTF-8"));
            os.flush();
            os.close();
            BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream(), "UTF-8"));
            String line;
            while ((line = br.readLine()) != null) sb.append(line).append('\n');
            r.code = p.waitFor();
        } catch (Throwable t) {
            r.code = -1;
            sb.append(t.toString());
        }
        r.out = sb.toString();
        return r;
    }

    static final String STATUS =
            "for id in zygisksu sensor_cal; do d=/data/adb/modules/$id; u=/data/adb/modules_update/$id;"
            + " v=$(grep '^version=' $d/module.prop 2>/dev/null | head -1 | cut -d= -f2-);"
            + " uv=$(grep '^version=' $u/module.prop 2>/dev/null | head -1 | cut -d= -f2-);"
            + " f=; [ -f $d/disable ] && f=disable; [ -f $d/remove ] && f=remove; [ -f $d/update ] && f=update;"
            + " echo \"MDM|$id|$v|$uv|$f\"; done";

    private static final String MANAGER =
            "if [ -x /data/adb/cam/bin/camd ]; then /data/adb/cam/bin/camd module install \"$Z\";"
            + " elif [ -x /data/adb/camd ]; then /data/adb/camd module install \"$Z\";"
            + " elif [ -x /data/adb/ksud ]; then /data/adb/ksud module install \"$Z\";"
            + " elif [ -x /data/adb/apd ]; then /data/adb/apd module install \"$Z\";"
            + " elif command -v magisk >/dev/null 2>&1; then magisk --install-module \"$Z\";"
            + " else echo 'Không tìm thấy trình quản lý root (Cam/KernelSU/Magisk/APatch)'; exit 9; fi";

    void refresh() {
        new Thread(new Runnable() {
            @Override
            public void run() {
                final Result r = su(STATUS);
                post(new Runnable() {
                    @Override
                    public void run() { show(r); }
                });
            }
        }, "mdm-modstat").start();
    }

    private void show(Result r) {
        Map<String, String[]> st = new HashMap<String, String[]>();
        for (String line : r.out.split("\n")) {
            if (!line.startsWith("MDM|")) continue;
            String[] f = (line + " ").split("\\|", -1);
            st.put(f[1], new String[]{f[2].trim(), f[3].trim(), f.length > 4 ? f[4].trim() : ""});
        }
        noRoot = st.isEmpty();
        boolean pending = false;
        for (int i = 0; i < MODS.length; i++) {
            String[] s = st.get(MODS[i][0]);
            String text;
            int color;
            boolean installed = false;
            if (noRoot) {
                text = "Chưa có quyền root";
                color = RED;
            } else if (s != null && s[1].length() > 0) {
                text = "Đã cài " + s[1] + " · cần khởi động lại";
                color = GOLD;
                pending = true;
                installed = true;
            } else if (s == null || s[0].length() == 0) {
                text = "Chưa cài · " + MODS[i][3];
                color = DIM;
            } else if ("remove".equals(s[2])) {
                text = "Sẽ bị gỡ khi khởi động lại";
                color = RED;
                pending = true;
                installed = true;
            } else if ("disable".equals(s[2])) {
                text = "Đã cài " + s[0] + " · đang tắt";
                color = RED;
                installed = true;
            } else if ("update".equals(s[2])) {
                text = "Đã cài " + s[0] + " · cần khởi động lại";
                color = GOLD;
                pending = true;
                installed = true;
            } else {
                text = "Đã cài " + s[0];
                color = GREEN;
                installed = true;
            }
            status[i].setText(text);
            status[i].setTextColor(color);
            action[i].setText(installed ? "Cài lại" : "Cài");
            action[i].setVisibility(noRoot ? INVISIBLE : VISIBLE);
        }
        reboot.setVisibility(pending ? VISIBLE : GONE);
        installAll.setVisibility(noRoot ? GONE : VISIBLE);
        setBusy(false);
    }

    private void setBusy(boolean b) {
        busy = b;
        installAll.setEnabled(!b);
        installAll.setAlpha(b ? 0.5f : 1f);
        for (TextView a : action) {
            a.setEnabled(!b);
            a.setAlpha(b ? 0.5f : 1f);
        }
    }

    private File extract(String asset) throws Exception {
        File out = new File(getContext().getCacheDir(), new File(asset).getName());
        InputStream in = getContext().getAssets().open(asset);
        FileOutputStream fo = new FileOutputStream(out);
        byte[] buf = new byte[65536];
        int n;
        while ((n = in.read(buf)) > 0) fo.write(buf, 0, n);
        fo.close();
        in.close();
        out.setReadable(true, false);
        return out;
    }

    void install(final int[] which) {
        if (busy) return;
        setBusy(true);
        for (int i : which) {
            status[i].setText("Đang chờ…");
            status[i].setTextColor(GOLD);
        }
        new Thread(new Runnable() {
            @Override
            public void run() {
                final StringBuilder fail = new StringBuilder();
                for (final int i : which) {
                    post(new Runnable() {
                        @Override
                        public void run() { status[i].setText("Đang cài…"); }
                    });
                    Result r;
                    File z = null;
                    try {
                        z = extract(MODS[i][2]);
                        r = su("Z='" + z.getAbsolutePath() + "'; " + MANAGER);
                    } catch (Throwable t) {
                        r = new Result();
                        r.code = -1;
                        r.out = t.toString();
                    }
                    if (z != null) z.delete();
                    if (r.code != 0) {
                        String out = r.out.trim();
                        if (out.length() > 900) out = "…" + out.substring(out.length() - 900);
                        fail.append(MODS[i][1]).append(" (mã ").append(r.code).append(")\n").append(out).append("\n\n");
                        break;
                    }
                }
                post(new Runnable() {
                    @Override
                    public void run() {
                        refresh();
                        if (fail.length() > 0) report("Cài module lỗi", fail.toString().trim());
                        else report("Đã cài xong", "Khởi động lại máy để module có hiệu lực.");
                    }
                });
            }
        }, "mdm-modinst").start();
    }

    private void report(String title, String msg) {
        try {
            new AlertDialog.Builder(getContext(), android.R.style.Theme_DeviceDefault_Dialog_Alert)
                    .setTitle(title).setMessage(msg).setPositiveButton("OK", null).show();
        } catch (Throwable ignored) {
        }
    }

    private void confirmReboot() {
        try {
            new AlertDialog.Builder(getContext(), android.R.style.Theme_DeviceDefault_Dialog_Alert)
                    .setTitle("Khởi động lại máy?")
                    .setMessage("Module mới chỉ chạy sau khi khởi động lại.")
                    .setNegativeButton("Để sau", null)
                    .setPositiveButton("Khởi động lại", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface d, int w) {
                            new Thread(new Runnable() {
                                @Override
                                public void run() { su("svc power reboot || reboot"); }
                            }).start();
                        }
                    }).show();
        } catch (Throwable ignored) {
        }
    }
}
