package mdm;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;

/**
 * Settings card holding "backup" and "restore" rows. The rows are plain views in the layout,
 * tagged android:tag="export" / android:tag="import"; this view wires their click actions to
 * ConfigBackup on inflation, so no new resource ids are needed.
 */
public class BackupCard extends LinearLayout {

    public BackupCard(Context c) { super(c); }
    public BackupCard(Context c, AttributeSet a) { super(c, a); }
    public BackupCard(Context c, AttributeSet a, int d) { super(c, a, d); }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        wire(this);
    }

    void wire(View v) {
        Object tag = v.getTag();
        if ("export".equals(tag)) {
            v.setOnClickListener(new View.OnClickListener() {
                public void onClick(View x) { ConfigBackup.exportAll(); }
            });
        } else if ("import".equals(tag)) {
            v.setOnClickListener(new View.OnClickListener() {
                public void onClick(View x) { ConfigBackup.importLatestAndRestart(); }
            });
        }
        if (v instanceof ViewGroup) {
            ViewGroup g = (ViewGroup) v;
            for (int i = 0; i < g.getChildCount(); i++) wire(g.getChildAt(i));
        }
    }
}
