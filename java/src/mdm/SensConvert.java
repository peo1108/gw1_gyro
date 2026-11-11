package mdm;

import android.content.Context;
import android.os.AsyncTask;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewParent;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Map;

/**
 * "Quy đổi bảng theo độ nhạy mới" row under the scope-sensitivity sliders of Cài đặt AI
 * (pubg_extension_settings_view, inside sensitivityLinearLayout).
 *
 * The sliders only record the in-game sensitivity the recoil table was tuned for; closing the
 * settings no longer rescales anything. Pressing this button does the conversion once:
 * RcStore.rescaleForSensitivity on the live config map (pubg d.E().e), engine save g.e(), then a
 * reload of the running engine. The live map is the one the settings screen itself edits and
 * that onDetachedFromWindow compares against, so after a conversion the close is a no-op.
 */
public class SensConvert extends LinearLayout {

    static final String[] SLIDER_IDS = {"hippieSensitivityCell", "X1SensitivityCell", "X2SensitivityCell",
            "X3SensitivityCell", "X4SensitivityCell", "X6SensitivityCell", "X8SensitivityCell"};

    public SensConvert(Context c) { super(c); build(); }

    public SensConvert(Context c, AttributeSet a) { super(c, a); build(); }

    float dp(float v) {
        return v * TabletScale.density(getContext()); // x1.3 on tablets like the other overlay menus
    }

    void build() {
        setOrientation(VERTICAL);
        dp(1); // primes TabletScale.k for the text sizes below
        TextView hint = new TextView(getContext());
        hint.setText("Đổi độ nhạy trong game? Kéo các thanh trên tới độ nhạy mới rồi bấm nút: bảng ghìm của scope đổi "
                + "sẽ được tính lại theo tỉ lệ cũ ÷ mới. Không bấm thì bảng giữ nguyên.");
        hint.setTextColor(0xFFA89C86);
        hint.setTextSize(TypedValue.COMPLEX_UNIT_SP, TabletScale.sp(12f));
        addView(hint);

        TextView btn = new TextView(getContext());
        btn.setText("Quy đổi bảng theo độ nhạy mới");
        btn.setGravity(Gravity.CENTER);
        btn.setTextColor(0xFF1A140A);
        btn.setTextSize(TypedValue.COMPLEX_UNIT_SP, TabletScale.sp(14f));
        btn.setTypeface(btn.getTypeface(), android.graphics.Typeface.BOLD);
        int bg = getResources().getIdentifier("mdm_btn_gold", "drawable", getContext().getPackageName());
        if (bg != 0) btn.setBackgroundResource(bg);
        LayoutParams lp = new LayoutParams(LayoutParams.MATCH_PARENT, Math.round(dp(42)));
        lp.topMargin = Math.round(dp(8));
        addView(btn, lp);
        btn.setOnClickListener(new OnClickListener() {
            public void onClick(View v) { convert(); }
        });
    }

    void toast(String s) {
        try { Toast.makeText(getContext(), s, Toast.LENGTH_LONG).show(); } catch (Throwable ignored) {}
    }

    View settingsRoot() {
        View root = this;
        ViewParent p = getParent();
        while (p instanceof View) {
            root = (View) p;
            if (root.getClass().getName().endsWith("PUBGExtensionSettingsView")) return root;
            p = p.getParent();
        }
        return getRootView();
    }

    @SuppressWarnings("rawtypes")
    void convert() {
        try {
            View root = settingsRoot();
            double[] next = new double[SLIDER_IDS.length];
            for (int i = 0; i < SLIDER_IDS.length; i++) {
                int id = getResources().getIdentifier(SLIDER_IDS[i], "id", getContext().getPackageName());
                View cell = id == 0 ? null : root.findViewById(id);
                if (cell == null) { toast("Không đọc được thanh độ nhạy"); return; }
                Object slider = cell.getClass().getField("slider").get(cell);
                next[i] = ((Number) slider.getClass().getMethod("getValue").invoke(slider)).doubleValue();
            }
            final Object ext = ParamsMenu.pubgExtension();
            Object engine = ext == null ? null : ext.getClass().getMethod("E").invoke(ext);
            if (engine == null) { toast("Chưa nạp cấu hình ghìm tâm — vào game một lần rồi thử lại"); return; }
            Field f = engine.getClass().getField("e");
            Map content = (Map) f.get(engine);
            if (content == null || !RcStore.isV2(content)) { toast("Cấu hình chưa ở định dạng mới — mở lại Cài đặt rồi thử"); return; }
            String summary = RcStore.rescaleForSensitivity(content, next);
            if (summary.isEmpty()) { toast("Độ nhạy chưa đổi — không có gì để quy đổi"); return; }
            Method save = engine.getClass().getMethod("e");
            save.invoke(engine);
            String id = LocalKeymapStore.selectedRcId();
            RcEngine.reloadIfRunning(ext, id, AsyncTask.THREAD_POOL_EXECUTOR);
            toast("Đã quy đổi bảng ghìm: " + summary);
        } catch (Throwable t) {
            toast("Quy đổi lỗi: " + t);
        }
    }
}
