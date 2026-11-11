package mdm;

import android.view.View;
import android.widget.TextView;

import java.lang.reflect.Field;

/**
 * In-game "Điều chỉnh giá trị" panel (pubg AdjustRCValueFloatingPanelView), mdm_v2 version:
 * one number per cell, so the title names the cell being edited and the curve / coefficient /
 * delete buttons stay hidden.
 *
 * Called from AdjustRCValueFloatingPanelView$c.run() (patched by scripts/recog/patch_rc_simplify.py)
 * with the lookup node pubg.g$f it is about to bind; that node carries the cell as short fields
 * l = weapon, g = stance, h = scope.
 */
public final class RcPanel {

    private RcPanel() {}

    static final String[] HIDDEN = {"dynamicRCButton", "coefficientButton", "deleteButton"};

    public static void bind(final View panel, Object node) {
        if (panel == null) return;
        try {
            hideExtras(panel);
            // run() turns the curve button back on after this call; hide again once it returns
            panel.post(new Runnable() {
                public void run() { hideExtras(panel); }
            });
            if (node == null) return;
            int weapon = shortField(node, "l");
            int stance = shortField(node, "g");
            int scope = shortField(node, "h");
            if (scope < 0 || scope > 10 || stance < 0 || stance > 2) return;
            TextView title = (TextView) find(panel, "textView22");
            if (title != null) {
                title.setText(RcStore.weaponName(weapon) + " · " + RcStore.STANCES[stance] + " · "
                        + RcStore.SLOT_LABELS[RcStore.realSlot(scope)]);
            }
        } catch (Throwable ignored) {
            // never break the panel's own refresh loop
        }
    }

    static void hideExtras(View panel) {
        for (String id : HIDDEN) {
            View v = find(panel, id);
            if (v != null && v.getVisibility() != View.GONE) v.setVisibility(View.GONE);
        }
    }

    static View find(View root, String name) {
        int id = root.getResources().getIdentifier(name, "id", root.getContext().getPackageName());
        return id == 0 ? null : root.findViewById(id);
    }

    static int shortField(Object o, String name) throws Exception {
        Field f = o.getClass().getDeclaredField(name);
        f.setAccessible(true);
        return ((Number) f.get(o)).intValue();
    }
}
