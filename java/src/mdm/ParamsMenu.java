package mdm;

import android.content.Context;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.zjx.jyandroid.ForegroundService.KeymapManager;

import java.lang.reflect.Method;

/**
 * "Thông số" entry on the floating menu, next to the PUBG extension's "Cài đặt AI".
 *
 * pubg/d.onFloatingPanelDisplay(RootFloatingPanelView) calls install(panel, this) right after it
 * added its own item (patched in scripts/recog/patch_rc_simplify.py). The menu computes its width
 * from the child count after extensions ran, so one more item just widens the bar.
 * gg1 classes are reached by reflection (RootFloatingPanelView.a(View,int), pubg/d.D(), b0(String),
 * static d.L) so no compile stubs are needed.
 */
public final class ParamsMenu {

    private ParamsMenu() {}

    static final String EXT_MANAGER = "com.zjx.jyandroid.Extensions.ExtensionManager";
    static final String PUBG_EXT = "com.zjx.jyandroid.Extensions.pubg.d";

    public static void install(Object rootPanel, final Object ext) {
        try {
            final View panelView = (View) rootPanel;
            final Context ctx = panelView.getContext();
            float d = ctx.getResources().getDisplayMetrics().density;

            LinearLayout item = new LinearLayout(ctx);
            item.setOrientation(LinearLayout.VERTICAL);
            item.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f));

            ImageView icon = new ImageView(ctx);
            int ic = ctx.getResources().getIdentifier("mdm_ic_params", "drawable", ctx.getPackageName());
            if (ic != 0) icon.setImageDrawable(ctx.getDrawable(ic));
            icon.setLayoutParams(new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, Math.round(27 * d)));

            TextView label = new TextView(ctx);
            label.setText("Thông số");
            label.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12f);
            label.setGravity(Gravity.CENTER_HORIZONTAL);
            label.setTextColor(0xFFFFFFFF);
            label.setLayoutParams(new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

            item.addView(icon);
            item.addView(label);
            Method add = rootPanel.getClass().getMethod("a", View.class, int.class);
            add.invoke(rootPanel, item, 3); // right after "Cài đặt AI" (index 2)

            item.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    ParamsSheet.openSelected(ctx, keymapManager(ext));
                }
            });
        } catch (Throwable ignored) {
            // the menu must still open without our item
        }
    }

    static KeymapManager keymapManager(Object ext) {
        try {
            return (KeymapManager) ext.getClass().getMethod("D").invoke(ext);
        } catch (Throwable t) {
            return null;
        }
    }

    /** The loaded PUBG extension instance, or null outside a game session. */
    static Object pubgExtension() {
        try {
            Class<?> em = Class.forName(EXT_MANAGER);
            Object mgr = em.getMethod("sharedInstance").invoke(null);
            Method get = em.getMethod("getLoadedExtensionInstanceByClass", Class.class);
            return get.invoke(mgr, Class.forName(PUBG_EXT));
        } catch (Throwable t) {
            return null;
        }
    }

    /**
     * After a save: reload the config into the engine when it is the one in use AND the engine is
     * running (RcEngine.reloadIfRunning checks d.G() so a paused extension is not revived). The
     * load runs on a background executor like the engine's own AsyncTask loads.
     */
    public static void reloadIfSelected(String id) {
        try {
            if (id == null || !id.equals(LocalKeymapStore.selectedRcId())) return;
            RcEngine.reloadIfRunning(pubgExtension(), id, android.os.AsyncTask.THREAD_POOL_EXECUTOR);
        } catch (Throwable ignored) {
            // the new numbers still apply on the next config load
        }
    }
}
