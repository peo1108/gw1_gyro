package mdm;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.InputType;
import android.text.TextWatcher;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;

import com.zjx.jyandroid.ForegroundService.KeymapManager;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/**
 * Per-weapon scope parameter editor for a recoil config.
 *
 * Opened from the row's share button slot. Lists every weapon, expands into its editable scopes,
 * and writes edits straight into the working copy of the config content. Save calls
 * KeymapManager.L (updateKeymap), which LocalKeymapStore turns into a local write plus the
 * RCConfig mirror the recognition path reads.
 *
 * The settings screen lives in a WindowManager overlay owned by the foreground service, not in an
 * activity, so there is no window token to hand to a Dialog. The sheet is therefore attached as a
 * layer inside the window that owns the clicked row, and removed again on close.
 */
public class RcParamsView {

    private static final int TEXT = 0xFFF3EAD8;
    private static final int DIM = 0xFFA89C86;
    private static final int GOLD = 0xFFE8D3A4;
    private static final int GOLD_LO = 0xFFC9A566;
    private static final int ON_GOLD = 0xFF1A140A;
    private static final int GLASS = 0xF21A1714;
    private static final int GREEN = 0xFF7BE3A2;
    private static final int SCRIM = 0xCC000000;

    private final Context ctx;
    private final View anchor;
    private final float dp;
    private final Handler main = new Handler(Looper.getMainLooper());

    private final String id;
    private final String title;
    private final String bundleId;
    private final KeymapManager km;

    private Map<String, Object> original;
    private Map<String, Object> working;

    private ViewGroup host;
    private FrameLayout shell;
    private LinearLayout root;
    private LinearLayout listBody;
    private TextView hint;
    private TextView saveBtn;
    private boolean attached;

    private String filter = "";
    private int expanded = -1;
    private boolean onEdited;

    /** Per-weapon stance selected in the sheet: stand / crouch / prone. */
    private final HashMap<Integer, Integer> stances = new HashMap<Integer, Integer>();

    /**
     * @param anchor   the clicked view; its window owns the overlay the sheet is attached to
     * @param id       keymap id
     * @param title    display name (already resolved)
     * @param bundleId bundle the keymap lives in, e.g. com.zjx.pubg.rcConfig
     * @param km       live manager, for save + reopen
     */
    public RcParamsView(View anchor, String id, String title, String bundleId, KeymapManager km) {
        this.anchor = anchor;
        this.ctx = anchor.getContext();
        this.dp = ctx.getResources().getDisplayMetrics().density;
        this.id = id;
        this.title = title == null ? "" : title;
        this.bundleId = bundleId;
        this.km = km;
    }

    private int px(float v) { return Math.round(v * dp); }

    // ===================================================================== open / load

    /** Fetch the content, then show. Safe to call from a click handler on the UI thread. */
    public void open() {
        if (km == null) {
            toast("Không có kết nối cấu hình");
            return;
        }
        try {
            km.r(id, new KeymapManager.GetKeymapCompletionHandler() {
                @Override
                public void requestCompleted(com.zjx.jyandroid.base.MError e, KeymapManager.Keymap keymap) {
                    final Map content = (keymap == null) ? null : keymap.content;
                    main.post(new Runnable() {
                        @Override
                        public void run() {
                            try {
                                bind(content);
                                show();
                            } catch (Throwable t) {
                                toast("Lỗi mở bảng: " + t);
                            }
                        }
                    });
                }
            });
        } catch (Throwable t) {
            toast("Lỗi đọc cấu hình: " + t);
        }
    }

    private void bind(Map content) {
        if (content == null) content = new HashMap<String, Object>();
        original = RcParams.copyContent(content);
        working = RcParams.copyContent(content);
    }

    private void toast(String s) {
        try {
            Toast.makeText(ctx, s, Toast.LENGTH_SHORT).show();
        } catch (Throwable ignored) {
        }
    }

    // ===================================================================== layers

    private ViewGroup windowRoot() {
        View rv = anchor.getRootView();
        return (rv instanceof ViewGroup) ? (ViewGroup) rv : null;
    }

    private void show() {
        if (attached) return;
        host = windowRoot();
        if (host == null) {
            toast("Không mở được bảng");
            return;
        }

        shell = new FrameLayout(ctx);
        shell.setBackgroundColor(SCRIM);
        shell.setClickable(true);
        shell.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { close(); }
        });

        root = new LinearLayout(ctx);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackground(glassCard(24));
        root.setPadding(px(18), px(16), px(18), px(14));
        root.setClickable(true);
        root.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { /* swallow taps on the card */ }
        });

        // header
        LinearLayout head = new LinearLayout(ctx);
        head.setOrientation(LinearLayout.VERTICAL);
        head.addView(label("THÔNG SỐ GHÌM TÂM", 10.5f, GOLD, true, 0.14f));
        TextView name = label(title, 20f, TEXT, true, 0f);
        name.setPadding(0, px(3), 0, 0);
        head.addView(name);
        TextView sub = label(bundleLabel(), 11.5f, DIM, false, 0f);
        sub.setPadding(0, px(2), 0, 0);
        head.addView(sub);
        root.addView(head);

        // search
        LinearLayout searchWrap = new LinearLayout(ctx);
        searchWrap.setOrientation(LinearLayout.HORIZONTAL);
        searchWrap.setGravity(Gravity.CENTER_VERTICAL);
        searchWrap.setBackground(glassCard(12));
        searchWrap.setPadding(px(12), 0, px(12), 0);
        LinearLayout.LayoutParams slp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, px(42));
        slp.topMargin = px(12);
        searchWrap.setLayoutParams(slp);

        TextView mag = label("⌕", 20f, DIM, false, 0f);
        searchWrap.addView(mag);
        EditText edit = new EditText(ctx);
        edit.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13.5f);
        edit.setTextColor(TEXT);
        edit.setHintTextColor(DIM);
        edit.setHint("Tìm súng…");
        edit.setBackgroundColor(Color.TRANSPARENT);
        edit.setSingleLine(true);
        edit.setPadding(px(10), 0, 0, 0);
        edit.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f));
        edit.addTextChangedListener(new TextWatcher() {
            @Override public void beforeTextChanged(CharSequence s, int a, int b, int c) {}
            @Override public void onTextChanged(CharSequence s, int a, int b, int c) {}
            @Override public void afterTextChanged(Editable e) {
                filter = e.toString().trim().toLowerCase(Locale.ROOT);
                rebuild();
            }
        });
        searchWrap.addView(edit);
        root.addView(searchWrap);

        // list
        ScrollView scroll = new ScrollView(ctx);
        scroll.setVerticalScrollBarEnabled(false);
        scroll.setClipToPadding(false);
        LinearLayout.LayoutParams llp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
        llp.topMargin = px(10);
        scroll.setLayoutParams(llp);
        listBody = new LinearLayout(ctx);
        listBody.setOrientation(LinearLayout.VERTICAL);
        scroll.addView(listBody, new ViewGroup.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        root.addView(scroll);

        // footer
        hint = label("", 11.5f, DIM, false, 0f);
        hint.setPadding(px(2), px(10), 0, px(6));
        root.addView(hint);

        LinearLayout foot = new LinearLayout(ctx);
        foot.setOrientation(LinearLayout.HORIZONTAL);
        foot.setGravity(Gravity.CENTER_VERTICAL);

        TextView reset = pill("Mặc định", false);
        reset.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { confirmReset(); }
        });
        foot.addView(reset);

        View spacer = new View(ctx);
        spacer.setLayoutParams(new LinearLayout.LayoutParams(0, 1, 1f));
        foot.addView(spacer);

        saveBtn = pill("Lưu", true);
        saveBtn.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { save(); }
        });
        foot.addView(saveBtn);
        root.addView(foot);

        // The scroll area uses layout_weight, which needs a bounded height: a wrap_content
        // LinearLayout would give it zero, leaving only the header and footer visible.
        int hostH = host.getHeight();
        if (hostH <= 0) hostH = ctx.getResources().getDisplayMetrics().heightPixels;
        int sheetH = Math.round(hostH * 0.86f);

        FrameLayout.LayoutParams flp = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, sheetH);
        flp.gravity = Gravity.BOTTOM;
        flp.setMargins(px(8), px(8), px(8), px(8));
        shell.addView(root, flp);

        host.addView(shell, new ViewGroup.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        attached = true;

        rebuild();
    }

    private void close() {
        if (!attached) return;
        attached = false;
        try {
            host.removeView(shell);
        } catch (Throwable ignored) {
        }
        shell = null;
        root = null;
        listBody = null;
    }

    private String bundleLabel() {
        if (bundleId == null) return "";
        if (bundleId.contains("pubg")) return "PUBG · ghìm tâm";
        if (bundleId.contains("gnyx")) return "Gnyx · ghìm tâm";
        if (bundleId.contains("GeneralRC")) return "GeneralRC · ghìm tâm";
        return bundleId;
    }

    // ===================================================================== list build

    private void rebuild() {
        if (listBody == null) return;
        listBody.removeAllViews();
        boolean any = false;

        List<Object[]> groups = RcParams.groupedWeapons(working);
        for (Object[] g : groups) {
            String cls = (String) g[0];
            int[] ordinals = (int[]) g[1];

            List<Integer> keep = new ArrayList<Integer>();
            for (int ord : ordinals) {
                if (RcParams.weaponEntry(working, ord) == null) continue;
                String nm = RcParams.weaponName(working, ord).toLowerCase(Locale.ROOT);
                if (!filter.isEmpty() && !nm.contains(filter)) continue;
                keep.add(Integer.valueOf(ord));
            }
            if (keep.isEmpty()) continue;

            any = true;
            TextView header = label(cls.toUpperCase(Locale.ROOT), 10.5f, DIM, true, 0.1f);
            header.setPadding(px(6), px(14), 0, px(6));
            listBody.addView(header);

            for (Integer ord : keep) {
                listBody.addView(weaponRow(ord.intValue()));
            }
        }

        if (!any) {
            TextView empty = label(filter.isEmpty()
                    ? "Cấu hình này chưa có dữ liệu ghìm tâm."
                    : "Không có súng khớp \"" + filter + "\".", 13f, DIM, false, 0f);
            empty.setPadding(px(6), px(24), px(6), px(24));
            listBody.addView(empty);
        }

        updateHint();
    }

    private View weaponRow(final int weapon) {
        LinearLayout wrap = new LinearLayout(ctx);
        wrap.setOrientation(LinearLayout.VERTICAL);
        wrap.setBackground(glassCard(14));
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.topMargin = px(6);
        wrap.setLayoutParams(lp);

        LinearLayout row = new LinearLayout(ctx);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(px(14), px(11), px(12), px(11));

        TextView caret = label(expanded == weapon ? "▾" : "▸", 13f, GOLD, false, 0f);
        caret.setPadding(0, 0, px(10), 0);
        row.addView(caret);

        LinearLayout names = new LinearLayout(ctx);
        names.setOrientation(LinearLayout.VERTICAL);
        names.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        names.addView(label(RcParams.weaponName(working, weapon), 15f, TEXT, true, 0f));
        TextView sm = label(RcParams.summary(working, weapon), 11.5f, DIM, false, 0f);
        sm.setPadding(0, px(2), 0, 0);
        names.addView(sm);
        row.addView(names);
        wrap.addView(row);

        row.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) {
                expanded = (expanded == weapon) ? -1 : weapon;
                rebuild();
            }
        });

        if (expanded == weapon) {
            wrap.addView(scopeBody(weapon));
        }
        return wrap;
    }

    private View scopeBody(final int weapon) {
        LinearLayout body = new LinearLayout(ctx);
        body.setOrientation(LinearLayout.VERTICAL);
        body.setPadding(px(12), 0, px(12), px(10));

        Integer picked = stances.get(Integer.valueOf(weapon));
        final int stance = (picked == null) ? RcParams.STANCE_STAND : picked.intValue();

        body.addView(comboStrip(weapon, stance));
        for (int scope : RcParams.EDITABLE_SCOPES) {
            body.addView(scopeRow(weapon, scope, stance));
        }
        return body;
    }

    private View comboStrip(final int weapon, final int stance) {
        HorizontalScrollView hs = new HorizontalScrollView(ctx);
        hs.setHorizontalScrollBarEnabled(false);
        LinearLayout strip = new LinearLayout(ctx);
        strip.setOrientation(LinearLayout.HORIZONTAL);
        strip.setPadding(0, px(2), 0, px(8));

        strip.addView(comboChip("Đứng", stance == RcParams.STANCE_STAND, new Runnable() {
            @Override public void run() { pickStance(weapon, RcParams.STANCE_STAND); }
        }));
        strip.addView(comboChip("Ngồi", stance == RcParams.STANCE_CROUCH, new Runnable() {
            @Override public void run() { pickStance(weapon, RcParams.STANCE_CROUCH); }
        }));
        strip.addView(comboChip("Nằm", stance == RcParams.STANCE_PRONE, new Runnable() {
            @Override public void run() { pickStance(weapon, RcParams.STANCE_PRONE); }
        }));

        hs.addView(strip);
        return hs;
    }

    private void pickStance(int weapon, int stance) {
        stances.put(Integer.valueOf(weapon), Integer.valueOf(stance));
        rebuild();
    }

    private View chipDivider() {
        View v = new View(ctx);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(1, px(18));
        lp.setMargins(px(6), 0, px(6), 0);
        v.setLayoutParams(lp);
        v.setBackgroundColor(0x1FFFFFFF);
        return v;
    }

    private View comboChip(String text, boolean on, final Runnable action) {
        TextView t = new TextView(ctx);
        t.setText(text);
        t.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11.5f);
        t.setTypeface(t.getTypeface(), on ? Typeface.BOLD : Typeface.NORMAL);
        t.setTextColor(on ? ON_GOLD : GOLD);
        GradientDrawable bg = new GradientDrawable();
        bg.setCornerRadius(px(9));
        if (on) {
            bg.setColors(new int[]{0xFFEAD6A8, GOLD_LO});
            bg.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
        } else {
            bg.setColor(0x14FFFFFF);
            bg.setStroke(px(1), 0x44E8D3A4);
        }
        t.setBackground(bg);
        t.setPadding(px(11), px(6), px(11), px(6));
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.rightMargin = px(6);
        t.setLayoutParams(lp);
        t.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { action.run(); }
        });
        return t;
    }

    private View scopeRow(final int weapon, final int scope, final int stance) {
        LinearLayout row = new LinearLayout(ctx);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(px(2), px(5), px(2), px(5));

        TextView key = label(RcParams.SCOPE_LABELS[scope], 12.5f, GOLD, true, 0f);
        key.setLayoutParams(new LinearLayout.LayoutParams(px(52), ViewGroup.LayoutParams.WRAP_CONTENT));
        row.addView(key);

        final double cur = RcParams.valueFor(working, weapon, scope, stance);
        final boolean has = !RcParams.recordsFor(working, weapon, scope, stance).isEmpty();

        final SeekBar bar = new SeekBar(ctx);
        bar.setMax(200);
        bar.setProgress((int) Math.round(Math.min(cur, 200d)));
        bar.setPadding(0, 0, 0, 0);
        bar.setLayoutParams(new LinearLayout.LayoutParams(0, px(28), 1f));
        tintSeek(bar);
        row.addView(bar);

        final TextView value = label(RcParams.fmt(cur), 14f, has ? TEXT : DIM, true, 0f);
        value.setGravity(Gravity.CENTER);
        value.setLayoutParams(new LinearLayout.LayoutParams(px(56), ViewGroup.LayoutParams.WRAP_CONTENT));
        row.addView(value);

        final TextView minus = stepper("−");
        final TextView plus = stepper("+");
        row.addView(minus);
        row.addView(plus);

        bar.setEnabled(has);
        minus.setAlpha(has ? 1f : 0.35f);
        plus.setAlpha(has ? 1f : 0.35f);

        bar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override public void onProgressChanged(SeekBar sb, int p, boolean fromUser) {
                if (!has || !fromUser) return;
                RcParams.setValueFor(working, weapon, scope, stance, p);
                value.setText(RcParams.fmt(p));
                onEdited = true;
                updateHint();
            }
            @Override public void onStartTrackingTouch(SeekBar sb) {}
            @Override public void onStopTrackingTouch(SeekBar sb) {}
        });

        minus.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) {
                if (!has) return;
                double nv = clampEdit(RcParams.valueFor(working, weapon, scope, stance) - 1d);
                RcParams.setValueFor(working, weapon, scope, stance, nv);
                bar.setProgress((int) Math.round(nv));
                value.setText(RcParams.fmt(nv));
                onEdited = true;
                updateHint();
            }
        });
        plus.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) {
                if (!has) return;
                double nv = clampEdit(RcParams.valueFor(working, weapon, scope, stance) + 1d);
                RcParams.setValueFor(working, weapon, scope, stance, nv);
                bar.setProgress((int) Math.round(nv));
                value.setText(RcParams.fmt(nv));
                onEdited = true;
                updateHint();
            }
        });

        value.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) {
                if (!has) return;
                promptValue(weapon, scope, stance, value, bar);
            }
        });

        row.setAlpha(has ? 1f : 0.4f);
        return row;
    }

    private double clampEdit(double v) { return RcParams.clamp(v, 0d, 200d); }

    private void tintSeek(SeekBar bar) {
        try {
            bar.setProgressTintList(android.content.res.ColorStateList.valueOf(GOLD));
            bar.setThumbTintList(android.content.res.ColorStateList.valueOf(0xFFF5E6C4));
            bar.setProgressBackgroundTintList(android.content.res.ColorStateList.valueOf(0x22FFFFFF));
        } catch (Throwable ignored) {
        }
    }

    private TextView stepper(String s) {
        TextView t = new TextView(ctx);
        t.setText(s);
        t.setTextSize(TypedValue.COMPLEX_UNIT_SP, 16f);
        t.setTypeface(t.getTypeface(), Typeface.BOLD);
        t.setTextColor(GOLD);
        t.setGravity(Gravity.CENTER);
        GradientDrawable bg = new GradientDrawable();
        bg.setCornerRadius(px(9));
        bg.setColor(0x14FFFFFF);
        bg.setStroke(px(1), 0x44E8D3A4);
        t.setBackground(bg);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(px(34), px(30));
        lp.leftMargin = px(4);
        t.setLayoutParams(lp);
        return t;
    }

    // ===================================================================== modal layers

    /** A scrim + centred card added above the sheet, for prompts and confirms. */
    private FrameLayout pushModal(View card, int widthPx) {
        FrameLayout layer = new FrameLayout(ctx);
        layer.setBackgroundColor(SCRIM);
        layer.setClickable(true);
        layer.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { /* handled by the card's buttons */ }
        });

        FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(
                widthPx, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.gravity = Gravity.CENTER;
        layer.addView(card, lp);

        if (host != null) {
            host.addView(layer, new ViewGroup.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        }
        return layer;
    }

    private void popModal(FrameLayout layer) {
        if (host != null && layer != null) {
            try {
                host.removeView(layer);
            } catch (Throwable ignored) {
            }
        }
    }

    private int modalWidth() {
        int screen = ctx.getResources().getDisplayMetrics().widthPixels;
        return Math.min(px(360), screen - px(48));
    }

    /** Type a value directly instead of dragging. */
    private void promptValue(final int weapon, final int scope, final int stance,
                             final TextView value, final SeekBar bar) {
        final EditText input = new EditText(ctx);
        input.setText(RcParams.fmt(RcParams.valueFor(working, weapon, scope, stance)));
        input.setSelectAllOnFocus(true);
        input.setInputType(InputType.TYPE_CLASS_NUMBER | InputType.TYPE_NUMBER_FLAG_DECIMAL);
        input.setTextColor(TEXT);
        input.setHintTextColor(DIM);
        input.setPadding(px(12), px(12), px(12), px(12));
        GradientDrawable ibg = new GradientDrawable();
        ibg.setCornerRadius(px(8));
        ibg.setColor(0x14FFFFFF);
        ibg.setStroke(px(1), 0x40E8D3A4);
        input.setBackground(ibg);

        LinearLayout card = new LinearLayout(ctx);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setBackground(glassCard(18));
        card.setPadding(px(18), px(16), px(18), px(14));
        card.setClickable(true);
        card.addView(label("Giá trị ghìm tâm", 15f, TEXT, true, 0f));
        TextView sub = label("0 – 200, cho phép số lẻ", 11.5f, DIM, false, 0f);
        sub.setPadding(0, px(3), 0, px(10));
        card.addView(sub);
        card.addView(input);

        final FrameLayout[] layer = new FrameLayout[1];

        LinearLayout acts = new LinearLayout(ctx);
        acts.setOrientation(LinearLayout.HORIZONTAL);
        acts.setGravity(Gravity.END);
        acts.setPadding(0, px(14), 0, 0);

        TextView cancel = pill("Huỷ", false);
        cancel.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { popModal(layer[0]); }
        });
        acts.addView(cancel);

        TextView ok = pill("Đặt", true);
        ok.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) {
                double nv;
                try {
                    nv = Double.parseDouble(input.getText().toString().trim().replace(',', '.'));
                } catch (Throwable t) {
                    popModal(layer[0]);
                    return;
                }
                nv = clampEdit(nv);
                RcParams.setValueFor(working, weapon, scope, stance, nv);
                bar.setProgress((int) Math.round(nv));
                value.setText(RcParams.fmt(nv));
                onEdited = true;
                updateHint();
                popModal(layer[0]);
            }
        });
        acts.addView(ok);
        card.addView(acts);

        layer[0] = pushModal(card, modalWidth());
        input.requestFocus();
    }

    // ===================================================================== save / reset

    private void updateHint() {
        if (hint == null) return;
        int moved = countDiff();
        hint.setText(moved > 0 ? (moved + " giá trị đã đổi · bấm Lưu để ghi") : "Chưa có thay đổi");
        hint.setTextColor(moved > 0 ? GREEN : DIM);
    }

    /** Count how many (weapon, scope, stance) values differ from the loaded copy. */
    private int countDiff() {
        final int[] poses = {RcParams.STANCE_STAND, RcParams.STANCE_CROUCH, RcParams.STANCE_PRONE};
        int n = 0;
        int weapons = RcParams.weaponCount(working);
        for (int w = 0; w < weapons; w++) {
            if (RcParams.weaponEntry(working, w) == null) continue;
            for (int scope : RcParams.EDITABLE_SCOPES) {
                for (int pose : poses) {
                    double a = RcParams.valueFor(original, w, scope, pose);
                    double b = RcParams.valueFor(working, w, scope, pose);
                    if (Math.abs(a - b) > 0.0001d) n++;
                }
            }
        }
        return n;
    }

    private void save() {
        final Map<String, Object> out = working;
        if (saveBtn != null) {
            saveBtn.setEnabled(false);
            saveBtn.setAlpha(0.6f);
        }
        try {
            km.L(out, id, new KeymapManager.UpdateKeymapCompletionHandler() {
                @Override public void requestCompleted(com.zjx.jyandroid.base.MError e) {
                    main.post(new Runnable() {
                        @Override public void run() {
                            if (saveBtn != null) {
                                saveBtn.setEnabled(true);
                                saveBtn.setAlpha(1f);
                            }
                            original = RcParams.copyContent(out);
                            onEdited = false;
                            updateHint();
                            toast("Đã lưu thông số");
                        }
                    });
                }
            });
        } catch (Throwable t) {
            if (saveBtn != null) {
                saveBtn.setEnabled(true);
                saveBtn.setAlpha(1f);
            }
            toast("Lỗi lưu: " + t);
        }
    }

    private void confirmReset() {
        LinearLayout card = new LinearLayout(ctx);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setBackground(glassCard(18));
        card.setPadding(px(20), px(18), px(20), px(14));
        card.setClickable(true);

        card.addView(label("Đặt lại toàn bộ?", 16f, TEXT, true, 0f));
        TextView sub = label("Mọi thay đổi chưa lưu trong bảng này sẽ mất. "
                + "Cấu hình đã lưu trên máy không bị ảnh hưởng cho tới khi bấm Lưu.", 12f, DIM, false, 0f);
        sub.setPadding(0, px(6), 0, px(4));
        card.addView(sub);

        final FrameLayout[] layer = new FrameLayout[1];

        LinearLayout acts = new LinearLayout(ctx);
        acts.setOrientation(LinearLayout.HORIZONTAL);
        acts.setGravity(Gravity.END);
        acts.setPadding(0, px(14), 0, 0);

        TextView cancel = pill("Huỷ", false);
        cancel.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { popModal(layer[0]); }
        });
        acts.addView(cancel);

        TextView ok = pill("Đặt lại", true);
        ok.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) {
                working = RcParams.copyContent(original);
                onEdited = false;
                popModal(layer[0]);
                rebuild();
            }
        });
        acts.addView(ok);
        card.addView(acts);

        layer[0] = pushModal(card, modalWidth());
    }

    // ===================================================================== widgets

    private TextView label(String s, float sp, int color, boolean bold, float spacing) {
        TextView t = new TextView(ctx);
        t.setText(s);
        t.setTextSize(TypedValue.COMPLEX_UNIT_SP, sp);
        t.setTextColor(color);
        if (bold) t.setTypeface(t.getTypeface(), Typeface.BOLD);
        if (spacing > 0f) t.setLetterSpacing(spacing);
        return t;
    }

    private TextView pill(String s, boolean gold) {
        TextView t = new TextView(ctx);
        t.setText(s);
        t.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13.5f);
        t.setTypeface(t.getTypeface(), Typeface.BOLD);
        t.setGravity(Gravity.CENTER);
        GradientDrawable bg = new GradientDrawable();
        bg.setCornerRadius(px(14));
        if (gold) {
            bg.setColors(new int[]{0xFFEAD6A8, GOLD_LO});
            bg.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
            t.setTextColor(ON_GOLD);
        } else {
            bg.setColor(0x14FFFFFF);
            bg.setStroke(px(1), 0x44E8D3A4);
            t.setTextColor(GOLD);
        }
        t.setBackground(bg);
        t.setPadding(px(20), px(9), px(20), px(9));
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.leftMargin = px(6);
        t.setLayoutParams(lp);
        return t;
    }

    /** Glass card: near-black fill with a 1dp warm rim, matching the rest of the MDM sheets. */
    private GradientDrawable glassCard(float radius) {
        GradientDrawable bg = new GradientDrawable();
        bg.setCornerRadius(px(radius));
        bg.setColor(GLASS);
        bg.setStroke(px(1), 0x38E8D3A4);
        return bg;
    }
}