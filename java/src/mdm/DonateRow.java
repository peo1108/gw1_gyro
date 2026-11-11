package mdm;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

/** "Ủng hộ tại" row: opens a dark glass dialog with the VietQR code, like Cam Kernel SU's DonateDialog. */
public class DonateRow extends LinearLayout {
    static final String CHANNEL = "https://t.me/MDM_Cam";
    static final String HOLDER = "DAO THE VINH";
    static final String BANK = "MB Bank · 0859855556";

    private final float dp;

    public DonateRow(Context c) { this(c, null); }
    public DonateRow(Context c, AttributeSet a) { this(c, a, 0); }
    public DonateRow(Context c, AttributeSet a, int s) {
        super(c, a, s);
        dp = getResources().getDisplayMetrics().density;
        setClickable(true);
        setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) { show(); }
        });
    }

    private int px(float v) { return Math.round(v * dp); }

    private int res(String name, String type) {
        return getResources().getIdentifier(name, type, getContext().getPackageName());
    }

    private TextView text(String s, float sp, int color, boolean bold) {
        TextView t = new TextView(getContext());
        t.setText(s);
        t.setTextSize(TypedValue.COMPLEX_UNIT_SP, sp);
        t.setTextColor(color);
        t.setGravity(Gravity.CENTER);
        if (bold) t.setTypeface(t.getTypeface(), android.graphics.Typeface.BOLD);
        return t;
    }

    private TextView button(String s, boolean primary) {
        TextView b = text(s, 15, primary ? 0xFF1A140A : 0xFFE8D3A4, true);
        int bg = res(primary ? "mdm_btn_gold" : "mdm_btn_ghost", "drawable");
        if (bg != 0) b.setBackgroundResource(bg);
        b.setClickable(true);
        return b;
    }

    void show() {
        final Dialog d = new Dialog(getContext());
        d.requestWindowFeature(Window.FEATURE_NO_TITLE);

        LinearLayout box = new LinearLayout(getContext());
        box.setOrientation(VERTICAL);
        box.setGravity(Gravity.CENTER_HORIZONTAL);
        box.setPadding(px(28), px(26), px(28), px(24));
        int card = res("mdm_card", "drawable");
        if (card != 0) box.setBackgroundResource(card);

        box.addView(text("Ủng hộ MDM", 20, 0xFFF3EAD8, true));
        TextView sum = text("Quét mã QR bằng app ngân hàng hoặc MoMo. Cảm ơn bạn đã góp phần chi phí phát triển!", 13, 0xFFA89C86, false);
        LayoutParams lp = new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
        lp.topMargin = px(6);
        box.addView(sum, lp);

        FrameLayout white = new FrameLayout(getContext());
        GradientDrawable wbg = new GradientDrawable();
        wbg.setColor(Color.WHITE);
        wbg.setCornerRadius(px(16));
        white.setBackground(wbg);
        white.setPadding(px(16), px(16), px(16), px(16));
        ImageView qr = new ImageView(getContext());
        int q = res("mdm_donate_qr", "drawable");
        if (q != 0) {
            Drawable dr = getResources().getDrawable(q, null);
            if (dr instanceof BitmapDrawable) {
                ((BitmapDrawable) dr).setFilterBitmap(false);
                ((BitmapDrawable) dr).setAntiAlias(false);
            }
            qr.setImageDrawable(dr);
        }
        qr.setScaleType(ImageView.ScaleType.FIT_CENTER);
        qr.setContentDescription("Mã QR ủng hộ");
        white.addView(qr, new FrameLayout.LayoutParams(px(228), px(228)));
        LayoutParams wl = new LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
        wl.topMargin = px(18);
        box.addView(white, wl);

        LayoutParams hl = new LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
        hl.topMargin = px(12);
        box.addView(text(HOLDER, 16, 0xFFF3EAD8, true), hl);
        box.addView(text(BANK, 14, 0xFFA89C86, false));

        LinearLayout row = new LinearLayout(getContext());
        row.setOrientation(HORIZONTAL);
        TextView close = button("Đóng", false);
        TextView open = button("Mở kênh", true);
        LayoutParams bl = new LayoutParams(0, px(50), 1f);
        row.addView(close, bl);
        LayoutParams gap = new LayoutParams(px(14), 1);
        row.addView(new View(getContext()), gap);
        row.addView(open, new LayoutParams(0, px(50), 1f));
        LayoutParams rl = new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
        rl.topMargin = px(20);
        box.addView(row, rl);

        close.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) { d.dismiss(); }
        });
        open.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                d.dismiss();
                try {
                    Intent i = new Intent(Intent.ACTION_VIEW, Uri.parse(CHANNEL));
                    i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                    getContext().startActivity(i);
                } catch (Throwable ignored) {
                }
            }
        });

        d.setContentView(box, new ViewGroup.LayoutParams(px(380), ViewGroup.LayoutParams.WRAP_CONTENT));
        Window w = d.getWindow();
        if (w != null) {
            w.setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
            w.setLayout(px(380), ViewGroup.LayoutParams.WRAP_CONTENT);
            w.setDimAmount(0.6f);
        }
        d.show();
    }
}
