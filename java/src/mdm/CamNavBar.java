package mdm;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.animation.OvershootInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

/**
 * Floating pill navigation in the style of Cam Kernel SU's FloatingBottomBar: a dark glass capsule,
 * tabs with the icon above a small label, and a translucent white pill sliding under the selected tab
 * whose icon and label turn gold. It drives the hidden SmoothBottomBar's listener, so the activity's
 * own page switching stays untouched.
 */
public class CamNavBar extends LinearLayout {
    private static final int GOLD = 0xFFE3BE7C;
    private static final int IDLE = 0xFF9C9384;

    private final float dp;
    private final Paint fill = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint rim = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint pill = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final RectF r = new RectF();
    private float indicatorX = -1f;
    private float pressScale = 1f;
    private int selected = 0;
    private ValueAnimator slide;
    private ValueAnimator press;

    public CamNavBar(Context c) { this(c, null); }
    public CamNavBar(Context c, AttributeSet a) { this(c, a, 0); }
    public CamNavBar(Context c, AttributeSet a, int s) {
        super(c, a, s);
        dp = getResources().getDisplayMetrics().density;
        setOrientation(HORIZONTAL);
        setWillNotDraw(false);
        int p = Math.round(4 * dp);
        setPadding(p, p, p, p);
        fill.setColor(0xF01A1714);
        rim.setStyle(Paint.Style.STROKE);
        rim.setStrokeWidth(dp);
        pill.setColor(0x1FFFFFFF);
        setElevation(14 * dp);
        setOutlineProvider(new ViewOutlineProvider() {
            @Override
            public void getOutline(View v, Outline o) {
                o.setRoundRect(0, 0, v.getWidth(), v.getHeight(), v.getHeight() / 2f);
                o.setAlpha(0.6f);
            }
        });
        addTab("ic_game_controller", "main_page", 0);
        addTab("ic_square", "more", 1);
        applyColors();
    }

    private int res(String name, String type) {
        return getResources().getIdentifier(name, type, getContext().getPackageName());
    }

    private void addTab(String icon, String label, final int index) {
        LinearLayout tab = new LinearLayout(getContext());
        tab.setOrientation(VERTICAL);
        tab.setGravity(Gravity.CENTER);
        tab.setMinimumWidth(Math.round(88 * dp));
        tab.setPadding(Math.round(10 * dp), 0, Math.round(10 * dp), 0);
        ImageView iv = new ImageView(getContext());
        int ic = res(icon, "drawable");
        if (ic != 0) iv.setImageResource(ic);
        int s = Math.round(24 * dp);
        tab.addView(iv, new LayoutParams(s, s));
        TextView tv = new TextView(getContext());
        int st = res(label, "string");
        tv.setText(st != 0 ? getResources().getString(st) : label);
        tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        tv.setTypeface(tv.getTypeface(), Typeface.BOLD);
        tv.setIncludeFontPadding(false);
        tv.setSingleLine(true);
        LayoutParams lp = new LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
        lp.topMargin = Math.round(3 * dp);
        tab.addView(tv, lp);
        tab.setClickable(true);
        tab.setContentDescription(tv.getText());
        tab.setOnTouchListener(new OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent e) {
                if (e.getActionMasked() == MotionEvent.ACTION_DOWN) animatePress(1.06f);
                else if (e.getActionMasked() == MotionEvent.ACTION_UP || e.getActionMasked() == MotionEvent.ACTION_CANCEL) animatePress(1f);
                return false;
            }
        });
        tab.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) { select(index, true); }
        });
        addView(tab, new LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.MATCH_PARENT, 1f));
    }

    private void applyColors() {
        for (int i = 0; i < getChildCount(); i++) {
            LinearLayout tab = (LinearLayout) getChildAt(i);
            int c = i == selected ? GOLD : IDLE;
            ImageView iv = (ImageView) tab.getChildAt(0);
            Drawable d = iv.getDrawable();
            if (d != null) iv.setImageTintList(ColorStateList.valueOf(c));
            ((TextView) tab.getChildAt(1)).setTextColor(c);
            tab.setSelected(i == selected);
        }
    }

    private View smoothBar() {
        int id = res("bottomBar", "id");
        return id == 0 ? null : getRootView().findViewById(id);
    }

    private void select(int index, boolean notify) {
        if (index != selected) {
            selected = index;
            applyColors();
            slideTo(index);
        }
        if (!notify) return;
        View bar = smoothBar();
        if (bar == null) return;
        try {
            bar.getClass().getMethod("setItemActiveIndex", int.class).invoke(bar, index);
            Object l = bar.getClass().getMethod("getOnItemSelectedListener").invoke(bar);
            if (l != null) l.getClass().getMethod("onItemSelect", int.class).invoke(l, index);
        } catch (Throwable ignored) {
        }
    }

    private float tabLeft(int i) {
        View t = getChildAt(i);
        return t == null ? getPaddingLeft() : t.getLeft();
    }

    private void slideTo(int i) {
        if (slide != null) slide.cancel();
        float from = indicatorX < 0 ? tabLeft(i) : indicatorX;
        slide = ValueAnimator.ofFloat(from, tabLeft(i));
        slide.setDuration(380);
        slide.setInterpolator(new OvershootInterpolator(1.1f));
        slide.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator a) {
                indicatorX = (Float) a.getAnimatedValue();
                invalidate();
            }
        });
        slide.start();
    }

    private void animatePress(float to) {
        if (press != null) press.cancel();
        press = ValueAnimator.ofFloat(pressScale, to);
        press.setDuration(160);
        press.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator a) {
                pressScale = (Float) a.getAnimatedValue();
                invalidate();
            }
        });
        press.start();
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        post(new Runnable() {
            @Override
            public void run() {
                View bar = smoothBar();
                if (bar == null) return;
                try {
                    int i = (Integer) bar.getClass().getMethod("getItemActiveIndex").invoke(bar);
                    if (i >= 0 && i < getChildCount()) {
                        selected = i;
                        indicatorX = -1f;
                        applyColors();
                        invalidate();
                    }
                } catch (Throwable ignored) {
                }
            }
        });
    }

    @Override
    protected void onSizeChanged(int w, int h, int ow, int oh) {
        super.onSizeChanged(w, h, ow, oh);
        rim.setShader(new LinearGradient(0, 0, w, h,
                new int[]{0x50FFFFFF, 0x0AFFFFFF, 0x3DE8D3A4}, null, Shader.TileMode.CLAMP));
    }

    @Override
    protected void onDraw(Canvas c) {
        float h = getHeight();
        r.set(0, 0, getWidth(), h);
        c.drawRoundRect(r, h / 2, h / 2, fill);
        r.inset(dp / 2, dp / 2);
        c.drawRoundRect(r, h / 2, h / 2, rim);
        View t = getChildAt(selected);
        if (t != null && t.getWidth() > 0) {
            float x = indicatorX < 0 ? t.getLeft() : indicatorX;
            float w = t.getWidth();
            float top = getPaddingTop();
            float bottom = h - getPaddingBottom();
            float cx = x + w / 2, cy = (top + bottom) / 2;
            float hw = w / 2 * pressScale, hh = (bottom - top) / 2 * pressScale;
            r.set(cx - hw, cy - hh, cx + hw, cy + hh);
            c.drawRoundRect(r, hh, hh, pill);
        }
        super.onDraw(c);
    }
}
