package mdm;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

/** A tappable cell that opens the URL in its android:tag (e.g. a Telegram link). */
public class LinkCell extends FrameLayout {
    public LinkCell(Context c) { this(c, null); }
    public LinkCell(Context c, AttributeSet a) { this(c, a, 0); }
    public LinkCell(Context c, AttributeSet a, int s) {
        super(c, a, s);
        setClickable(true);
        setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                Object t = getTag();
                if (t == null) return;
                try {
                    Intent i = new Intent(Intent.ACTION_VIEW, Uri.parse(t.toString()));
                    i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                    getContext().startActivity(i);
                } catch (Throwable ignored) {
                }
            }
        });
    }
}
