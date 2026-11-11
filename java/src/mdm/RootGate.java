package mdm;

import android.app.Activity;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;

/**
 * Root-only gate for MainActivity: covers the whole UI until a root shell answers uid 0.
 * Called from MainActivity.onResume (after super). Checked once per process; a missing or denied
 * root shows "Cần quyền Root" with Thử lại / Thoát and re-checks when the user comes back from the
 * root manager.
 */
public final class RootGate {
    private static final int BG = 0xFF0B0B0B, TEXT = 0xFFF3EAD8, DIM = 0xFFA89C86, GOLD = 0xFFE8D3A4;
    private static final long TIMEOUT_MS = 30000;
    /** A resume this soon after a failed check is the root prompt closing, not the user coming back. */
    private static final long RECHECK_GUARD_MS = 2000;

    private static volatile boolean ok;
    // main thread only
    private static boolean checking;
    private static long lastFailAt;
    private static Cover cover;

    private RootGate() {}

    public static void onResume(Activity a) {
        if (ok) {
            removeCover();
            return;
        }
        if (cover == null || cover.activity != a || cover.root.getParent() == null) {
            removeCover();
            ViewGroup host = (ViewGroup) a.findViewById(android.R.id.content);
            if (host == null) host = (ViewGroup) a.getWindow().getDecorView();
            cover = new Cover(a);
            host.addView(cover.root, new FrameLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        }
        cover.root.bringToFront();
        if (checking) return;
        if (lastFailAt != 0 && SystemClock.elapsedRealtime() - lastFailAt < RECHECK_GUARD_MS) return;
        check();
    }

    private static void check() {
        checking = true;
        if (cover != null) cover.showChecking();
        final Handler main = new Handler(Looper.getMainLooper());
        new Thread(new Runnable() {
            @Override
            public void run() {
                final boolean r = hasRoot();
                main.post(new Runnable() {
                    @Override
                    public void run() {
                        checking = false;
                        if (r) {
                            ok = true;
                            removeCover();
                        } else {
                            lastFailAt = SystemClock.elapsedRealtime();
                            if (cover != null) cover.showDenied();
                        }
                    }
                });
            }
        }, "mdm-rootgate").start();
    }

    private static void removeCover() {
        if (cover == null) return;
        ViewGroup p = (ViewGroup) cover.root.getParent();
        if (p != null) p.removeView(cover.root);
        cover = null;
    }

    /** True only when `su` runs and reports uid 0 within the timeout. */
    static boolean hasRoot() {
        final Process[] proc = new Process[1];
        final StringBuilder out = new StringBuilder();
        Thread t = new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    Process p = new ProcessBuilder("su").redirectErrorStream(true).start();
                    synchronized (proc) { proc[0] = p; }
                    OutputStream os = p.getOutputStream();
                    os.write("id -u\nexit\n".getBytes("UTF-8"));
                    os.flush();
                    os.close();
                    BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream(), "UTF-8"));
                    String line;
                    StringBuilder sb = new StringBuilder();
                    while ((line = br.readLine()) != null) sb.append(line).append('\n');
                    p.waitFor();
                    synchronized (out) { out.append(sb); }
                } catch (Throwable ignored) {
                    // no su binary, or the root manager refused us
                }
            }
        }, "mdm-rootgate-su");
        t.start();
        try {
            t.join(TIMEOUT_MS);
        } catch (InterruptedException ignored) {
        }
        if (t.isAlive()) {
            synchronized (proc) { if (proc[0] != null) proc[0].destroy(); }
            return false;
        }
        String s;
        synchronized (out) { s = out.toString(); }
        for (String line : s.split("\n")) if (line.trim().equals("0")) return true;
        return false;
    }

    private static final class Cover {
        final Activity activity;
        final FrameLayout root;
        final TextView title, msg;
        final LinearLayout buttons;
        final float dp;

        Cover(final Activity a) {
            activity = a;
            dp = a.getResources().getDisplayMetrics().density;
            root = new FrameLayout(a);
            root.setBackgroundColor(BG);
            root.setClickable(true);   // swallow every touch meant for the app underneath
            root.setFocusable(true);

            LinearLayout col = new LinearLayout(a);
            col.setOrientation(LinearLayout.VERTICAL);
            col.setGravity(Gravity.CENTER_HORIZONTAL);
            col.setPadding(px(24), px(24), px(24), px(24));

            int logo = drawable("mdm_logo");
            if (logo != 0) {
                ImageView iv = new ImageView(a);
                iv.setImageResource(logo);
                iv.setScaleType(ImageView.ScaleType.FIT_CENTER);
                col.addView(iv, new LinearLayout.LayoutParams(px(96), px(96)));
            }

            title = label(22, TEXT, true);
            LinearLayout.LayoutParams tl = wrap();
            tl.topMargin = px(16);
            col.addView(title, tl);

            msg = label(14, DIM, false);
            msg.setMaxWidth(px(460));
            msg.setLineSpacing(px(3), 1f);
            LinearLayout.LayoutParams ml = wrap();
            ml.topMargin = px(8);
            col.addView(msg, ml);

            buttons = new LinearLayout(a);
            buttons.setOrientation(LinearLayout.HORIZONTAL);
            buttons.setGravity(Gravity.CENTER);
            TextView exit = pill("Thoát", false);
            exit.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) { exitApp(a); }
            });
            buttons.addView(exit, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, px(44)));
            View gap = new View(a);
            buttons.addView(gap, new LinearLayout.LayoutParams(px(12), 1));
            TextView retry = pill("Thử lại", true);
            retry.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (!checking) check();
                }
            });
            buttons.addView(retry, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, px(44)));
            LinearLayout.LayoutParams bl = wrap();
            bl.topMargin = px(24);
            col.addView(buttons, bl);

            root.addView(col, new FrameLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.CENTER));
            showChecking();
        }

        void showChecking() {
            title.setText("MDM");
            msg.setText("Đang kiểm tra quyền root…");
            buttons.setVisibility(View.GONE);
        }

        void showDenied() {
            title.setText("Cần quyền Root");
            msg.setText("MDM chỉ chạy trên máy đã root.\n"
                    + "Mở trình quản lý root (Magisk / KernelSU / APatch), cho phép MDM, "
                    + "rồi quay lại app hoặc bấm Thử lại.");
            buttons.setVisibility(View.VISIBLE);
        }

        private int px(float v) { return Math.round(v * dp); }

        private LinearLayout.LayoutParams wrap() {
            return new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        }

        private int drawable(String name) {
            return activity.getResources().getIdentifier(name, "drawable", activity.getPackageName());
        }

        private TextView label(float sp, int color, boolean bold) {
            TextView t = new TextView(activity);
            t.setTextSize(TypedValue.COMPLEX_UNIT_SP, sp);
            t.setTextColor(color);
            t.setGravity(Gravity.CENTER);
            if (bold) t.setTypeface(t.getTypeface(), Typeface.BOLD);
            return t;
        }

        private TextView pill(String s, boolean gold) {
            TextView b = label(14, gold ? 0xFF1A140A : GOLD, true);
            b.setText(s);
            b.setPadding(px(22), 0, px(22), 0);
            b.setMinWidth(px(110));
            int bg = drawable(gold ? "mdm_btn_gold" : "mdm_btn_ghost");
            if (bg != 0) b.setBackgroundResource(bg);
            b.setClickable(true);
            return b;
        }
    }

    /** Same exit the app uses elsewhere (System.exit), after dropping the task from recents. */
    static void exitApp(Activity a) {
        a.finishAndRemoveTask();
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public void run() { System.exit(0); }
        }, 200);
    }
}
