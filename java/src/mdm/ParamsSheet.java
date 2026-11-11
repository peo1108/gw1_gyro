package mdm;

import android.content.Context;
import android.graphics.PixelFormat;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.InputType;
import android.text.TextWatcher;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.inputmethod.EditorInfo;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import com.zjx.jyandroid.ForegroundService.KeymapManager;

import java.util.HashMap;
import java.util.Map;

/**
 * "Thông số" sheet (mdm_v2): per weapon, Đứng / Ngồi / Nằm x the scopes that weapon can mount,
 * one flat number per cell. Opened from a PUBG RC config row (same constructor as the old
 * RcParamsView) or from the floating menu (ParamsMenu -> openSelected).
 *
 * Runs in its own overlay window (TYPE_APPLICATION_OVERLAY, focusable so the number fields can
 * take the keyboard); the floating menu is far too small to host it.
 * Reads the live engine file through LocalKeymapStore.loadRcLive, edits a deep copy, saves through
 * KeymapManager.L (LocalKeymapStore.updateKeymap writes our store and the engine file) and then
 * asks the PUBG extension to reload the config when it is the one in use.
 */
public class ParamsSheet {

    static final int GOLD = 0xFFE8D3A4;
    static final int GOLD_DIM = 0x66E8D3A4;
    static final int TEXT = 0xFFF3EAD8;
    static final int DIM = 0xFFA89C86;
    static final int CARD = 0xF214120F;
    static final int ROW = 0xFF1C1915;
    static final int ON_GOLD = 0xFF1A140A;

    final Context ctx;
    final String id;
    final String title;
    final KeymapManager km;
    final Handler main = new Handler(Looper.getMainLooper());
    final float dp;

    WindowManager wm;
    FrameLayout root;
    LinearLayout list;
    LinearLayout cells;
    TextView weaponTitle;
    TextView saveBtn;
    TextView[] stanceTabs = new TextView[3];
    final Map<Integer, TextView> weaponRows = new HashMap<Integer, TextView>();

    Map work;
    int weapon = 22; // M416
    int stance = 0;
    boolean dirty;
    boolean closeArmed;

    public ParamsSheet(View anchor, String id, String title, String bundleId, KeymapManager km) {
        this(anchor.getContext(), id, title, km);
    }

    ParamsSheet(Context ctx, String id, String title, KeymapManager km) {
        this.ctx = ctx;
        this.id = id;
        this.title = title;
        this.km = km;
        this.dp = TabletScale.density(ctx);
    }

    /** Floating-menu entry: open the PUBG recoil config the game is using. */
    public static void openSelected(Context ctx, KeymapManager km) {
        String id = LocalKeymapStore.selectedRcId();
        if (id == null) {
            Toast.makeText(ctx, "Chưa chọn cấu hình ghìm tâm", Toast.LENGTH_SHORT).show();
            return;
        }
        new ParamsSheet(ctx, id, LocalKeymapStore.nameOf(id), km).open();
    }

    int px(float v) { return Math.round(v * dp); }

    float sp(float v) { return TabletScale.sp(v); }

    void toast(String s) {
        try { Toast.makeText(ctx, s, Toast.LENGTH_SHORT).show(); } catch (Throwable ignored) {}
    }

    // ============================================================== open / close

    @SuppressWarnings("unchecked")
    public void open() {
        try {
            Map live = LocalKeymapStore.loadRcLive(km, id);
            if (live == null) {
                toast("Không đọc được cấu hình");
                return;
            }
            // edit a copy: the loaded map is also KeymapManager's cache
            work = LocalKeymapStore.GSON.fromJson(LocalKeymapStore.GSON.toJson(live), HashMap.class);
            if (!RcStore.isV2(work)) RcStore.makeDefault(work);
            show();
        } catch (Throwable t) {
            toast("Lỗi mở bảng thông số: " + t);
        }
    }

    void show() {
        wm = (WindowManager) ctx.getSystemService(Context.WINDOW_SERVICE);
        root = new FrameLayout(ctx);
        root.setBackgroundColor(0x99000000);
        root.setFocusableInTouchMode(true);
        root.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { requestClose(); }
        });
        root.setOnKeyListener(new View.OnKeyListener() {
            public boolean onKey(View v, int code, KeyEvent e) {
                if (code == KeyEvent.KEYCODE_BACK && e.getAction() == KeyEvent.ACTION_UP) {
                    requestClose();
                    return true;
                }
                return false;
            }
        });

        DisplayMetrics m = ctx.getResources().getDisplayMetrics();
        int w = Math.min(Math.round(m.widthPixels * 0.94f), px(780));
        int h = Math.round(m.heightPixels * 0.9f);
        LinearLayout card = new LinearLayout(ctx);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setPadding(px(14), px(10), px(14), px(12));
        card.setBackground(rounded(CARD, 16, GOLD_DIM));
        card.setClickable(true); // taps inside the card must not close it
        FrameLayout.LayoutParams clp = new FrameLayout.LayoutParams(w, h, Gravity.CENTER);
        root.addView(card, clp);

        card.addView(header(), new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, px(40)));
        LinearLayout body = new LinearLayout(ctx);
        body.setOrientation(LinearLayout.HORIZONTAL);
        LinearLayout.LayoutParams blp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
        blp.topMargin = px(8);
        card.addView(body, blp);
        body.addView(weaponColumn(), new LinearLayout.LayoutParams(px(170), ViewGroup.LayoutParams.MATCH_PARENT));
        LinearLayout.LayoutParams rlp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f);
        rlp.leftMargin = px(12);
        body.addView(cellColumn(), rlp);

        WindowManager.LayoutParams lp = new WindowManager.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT,
                WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
                WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN,
                PixelFormat.TRANSLUCENT);
        lp.softInputMode = WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE;
        wm.addView(root, lp);
        root.requestFocus();
        selectWeapon(RcStore.visible(weapon) ? weapon : firstVisible());
    }

    void requestClose() {
        if (dirty && !closeArmed) {
            closeArmed = true;
            toast("Còn thay đổi chưa lưu — bấm đóng lần nữa để bỏ");
            return;
        }
        close();
    }

    void close() {
        try { if (wm != null && root != null) wm.removeView(root); } catch (Throwable ignored) {}
        root = null;
    }

    // ============================================================== layout

    View header() {
        LinearLayout row = new LinearLayout(ctx);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        TextView t = label("Thông số" + (title == null || title.isEmpty() ? "" : " · " + title), 16f, TEXT, true);
        t.setSingleLine(true);
        t.setEllipsize(android.text.TextUtils.TruncateAt.END);
        row.addView(t, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));

        saveBtn = pill("Lưu", true);
        saveBtn.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { save(); }
        });
        LinearLayout.LayoutParams slp = new LinearLayout.LayoutParams(px(72), px(32));
        slp.rightMargin = px(10);
        row.addView(saveBtn, slp);

        TextView x = label("✕", 15f, GOLD, true);
        x.setGravity(Gravity.CENTER);
        x.setBackground(oval());
        x.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { requestClose(); }
        });
        row.addView(x, new LinearLayout.LayoutParams(px(32), px(32)));
        return row;
    }

    View weaponColumn() {
        LinearLayout col = new LinearLayout(ctx);
        col.setOrientation(LinearLayout.VERTICAL);
        EditText search = new EditText(ctx);
        search.setHint("Tìm súng…");
        search.setHintTextColor(DIM);
        search.setTextColor(TEXT);
        search.setTextSize(TypedValue.COMPLEX_UNIT_SP, sp(13f));
        search.setSingleLine(true);
        search.setImeOptions(EditorInfo.IME_ACTION_DONE);
        search.setBackground(rounded(ROW, 10, GOLD_DIM));
        search.setPadding(px(10), 0, px(10), 0);
        search.addTextChangedListener(new TextWatcher() {
            public void beforeTextChanged(CharSequence s, int a, int b, int c) {}
            public void onTextChanged(CharSequence s, int a, int b, int c) {}
            public void afterTextChanged(Editable s) { fillWeapons(s.toString()); }
        });
        col.addView(search, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, px(36)));

        ScrollView sv = new ScrollView(ctx);
        list = new LinearLayout(ctx);
        list.setOrientation(LinearLayout.VERTICAL);
        sv.addView(list);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
        lp.topMargin = px(6);
        col.addView(sv, lp);
        fillWeapons("");
        return col;
    }

    void fillWeapons(String filter) {
        list.removeAllViews();
        weaponRows.clear();
        String f = filter == null ? "" : filter.trim().toLowerCase();
        String lastGroup = null;
        for (int w = 0; w < RcStore.WEAPONS.length; w++) {
            if (!RcStore.visible(w)) continue;
            if (!f.isEmpty() && !RcStore.weaponName(w).toLowerCase().contains(f)) continue;
            String g = RcStore.weaponGroup(w);
            if (!g.equals(lastGroup)) {
                TextView gh = label(g.toUpperCase(), 11f, GOLD, true);
                gh.setPadding(px(6), px(10), 0, px(4));
                list.addView(gh);
                lastGroup = g;
            }
            final int ww = w;
            TextView row = label(RcStore.weaponName(w), 14f, TEXT, false);
            row.setPadding(px(10), 0, px(6), 0);
            row.setGravity(Gravity.CENTER_VERTICAL);
            row.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) { selectWeapon(ww); }
            });
            list.addView(row, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, px(38)));
            weaponRows.put(w, row);
        }
        markWeapon();
    }

    View cellColumn() {
        LinearLayout col = new LinearLayout(ctx);
        col.setOrientation(LinearLayout.VERTICAL);
        weaponTitle = label("", 20f, TEXT, true);
        col.addView(weaponTitle);

        LinearLayout tabs = new LinearLayout(ctx);
        tabs.setOrientation(LinearLayout.HORIZONTAL);
        tabs.setBackground(rounded(ROW, 12, GOLD_DIM));
        tabs.setPadding(px(3), px(3), px(3), px(3));
        for (int s = 0; s < 3; s++) {
            final int st = s;
            TextView tab = label(RcStore.STANCES[s], 14f, TEXT, true);
            tab.setGravity(Gravity.CENTER);
            tab.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) { selectStance(st); }
            });
            tabs.addView(tab, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f));
            stanceTabs[s] = tab;
        }
        LinearLayout.LayoutParams tlp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, px(40));
        tlp.topMargin = px(8);
        col.addView(tabs, tlp);

        ScrollView sv = new ScrollView(ctx);
        cells = new LinearLayout(ctx);
        cells.setOrientation(LinearLayout.VERTICAL);
        sv.addView(cells);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
        lp.topMargin = px(8);
        col.addView(sv, lp);
        return col;
    }

    // ============================================================== state

    int firstVisible() {
        for (int w = 0; w < RcStore.WEAPONS.length; w++) if (RcStore.visible(w)) return w;
        return 0;
    }

    void selectWeapon(int w) {
        weapon = w;
        markWeapon();
        weaponTitle.setText(RcStore.weaponName(w) + "   " + RcStore.weaponGroup(w));
        selectStance(stance);
    }

    void markWeapon() {
        for (Map.Entry<Integer, TextView> e : weaponRows.entrySet()) {
            boolean on = e.getKey() == weapon;
            e.getValue().setTextColor(on ? ON_GOLD : TEXT);
            e.getValue().setBackground(on ? rounded(GOLD, 10, 0) : null);
        }
    }

    void selectStance(int s) {
        stance = s;
        for (int i = 0; i < 3; i++) {
            boolean on = i == s;
            stanceTabs[i].setTextColor(on ? ON_GOLD : TEXT);
            stanceTabs[i].setBackground(on ? rounded(GOLD, 10, 0) : null);
        }
        fillCells();
    }

    void fillCells() {
        cells.removeAllViews();
        for (int slot : RcStore.availableSlots(weapon)) cells.addView(cell(slot));
    }

    View cell(final int slot) {
        LinearLayout row = new LinearLayout(ctx);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setBackground(rounded(ROW, 12, 0x22E8D3A4));
        row.setPadding(px(14), 0, px(8), 0);
        String name = RcStore.SLOT_LABELS[slot] + (slot == 0 ? "  (Tâm trắng)" : "");
        row.addView(label(name, 15f, TEXT, true), new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));

        final EditText num = new EditText(ctx);
        num.setInputType(InputType.TYPE_CLASS_NUMBER);
        num.setImeOptions(EditorInfo.IME_ACTION_DONE);
        num.setGravity(Gravity.CENTER);
        num.setTextColor(GOLD);
        num.setTextSize(TypedValue.COMPLEX_UNIT_SP, sp(17f));
        num.setTypeface(Typeface.DEFAULT_BOLD);
        num.setBackground(null);
        num.setPadding(0, 0, 0, 0);
        num.setText(fmt(RcStore.get(work, weapon, stance, slot)));
        num.addTextChangedListener(new TextWatcher() {
            public void beforeTextChanged(CharSequence s, int a, int b, int c) {}
            public void onTextChanged(CharSequence s, int a, int b, int c) {}
            public void afterTextChanged(Editable s) {
                Double v = parse(s.toString());
                if (v == null) return; // empty / junk: keep the stored number
                if (v != RcStore.get(work, weapon, stance, slot)) write(slot, v);
            }
        });
        num.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            public void onFocusChange(View v, boolean has) {
                if (!has) num.setText(fmt(RcStore.get(work, weapon, stance, slot)));
            }
        });

        row.addView(step("−", num, slot, -1), new LinearLayout.LayoutParams(px(40), px(36)));
        row.addView(num, new LinearLayout.LayoutParams(px(70), px(44)));
        row.addView(step("+", num, slot, +1), new LinearLayout.LayoutParams(px(40), px(36)));

        LinearLayout wrap = new LinearLayout(ctx);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, px(54));
        lp.bottomMargin = px(6);
        wrap.addView(row, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        wrap.setLayoutParams(lp);
        return wrap;
    }

    View step(String sym, final EditText num, final int slot, final int delta) {
        TextView b = label(sym, 18f, GOLD, true);
        b.setGravity(Gravity.CENTER);
        b.setBackground(rounded(0x14FFFFFF, 10, GOLD_DIM));
        b.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                double cur = RcStore.get(work, weapon, stance, slot);
                write(slot, cur + delta);
                num.setText(fmt(RcStore.get(work, weapon, stance, slot)));
            }
        });
        return b;
    }

    void write(int slot, double v) {
        RcStore.set(work, weapon, stance, slot, v);
        dirty = true;
        closeArmed = false;
    }

    static Double parse(String s) {
        if (s == null) return null;
        s = s.trim();
        if (s.isEmpty()) return null;
        try {
            return Double.valueOf(s);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    static String fmt(double v) {
        return v == Math.rint(v) ? String.valueOf((long) v) : String.valueOf(v);
    }

    // ============================================================== save

    void save() {
        if (km == null) {
            toast("Không có kết nối cấu hình");
            return;
        }
        saveBtn.setEnabled(false);
        try {
            km.L(work, id, new KeymapManager.UpdateKeymapCompletionHandler() {
                public void requestCompleted(com.zjx.jyandroid.base.MError e) {
                    main.post(new Runnable() {
                        public void run() {
                            saveBtn.setEnabled(true);
                            dirty = false;
                            closeArmed = false;
                            toast("Đã lưu thông số");
                            ParamsMenu.reloadIfSelected(id);
                        }
                    });
                }
            });
        } catch (Throwable t) {
            saveBtn.setEnabled(true);
            toast("Lưu lỗi: " + t);
        }
    }

    // ============================================================== widgets

    TextView label(String s, float size, int color, boolean bold) {
        TextView t = new TextView(ctx);
        t.setText(s);
        t.setTextColor(color);
        t.setTextSize(TypedValue.COMPLEX_UNIT_SP, sp(size));
        if (bold) t.setTypeface(Typeface.DEFAULT_BOLD);
        return t;
    }

    TextView pill(String s, boolean gold) {
        TextView t = label(s, 14f, gold ? ON_GOLD : GOLD, true);
        t.setGravity(Gravity.CENTER);
        t.setBackground(gold ? rounded(GOLD, 100, 0) : rounded(0x14FFFFFF, 100, GOLD_DIM));
        return t;
    }

    GradientDrawable rounded(int fill, float radiusDp, int stroke) {
        GradientDrawable g = new GradientDrawable();
        g.setColor(fill);
        g.setCornerRadius(px(radiusDp));
        if (stroke != 0) g.setStroke(Math.max(1, px(1)), stroke);
        return g;
    }

    GradientDrawable oval() {
        GradientDrawable g = new GradientDrawable();
        g.setShape(GradientDrawable.OVAL);
        g.setColor(0xFF201C16);
        g.setStroke(Math.max(1, px(1)), GOLD_DIM);
        return g;
    }
}
