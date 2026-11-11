package mdm;

import android.graphics.Bitmap;

/**
 * Crouch-button detector for non-CN PUBG builds, ported from gg2 M5/r. gg1's k.g only accepts one
 * exact orange (R 240-255, G 190-199, B 29-39); this accepts any saturated orange in the 11x11
 * centre of the button crop: R >= 180, B <= R/5 and G between 0.66R and 0.84R. Returns 1 when at
 * least 10 such pixels are found, else 0.
 */
public class PostureColor extends k.j {
    public final int need = 10;

    @Override
    public int b(Object obj) {
        Bitmap bmp = this.a;
        if (bmp == null) {
            return 0;
        }
        int w = bmp.getWidth();
        int h = bmp.getHeight();
        int x0 = Math.max(0, w / 2 - 5), x1 = Math.min(w - 1, w / 2 + 5);
        int y0 = Math.max(0, h / 2 - 5), y1 = Math.min(h - 1, h / 2 + 5);
        int hits = 0;
        for (int x = x0; x <= x1 && hits < need; x++) {
            for (int y = y0; y <= y1; y++) {
                int p = bmp.getPixel(x, y);
                int r = (p >> 16) & 0xff, g = (p >> 8) & 0xff, b = p & 0xff;
                if (r >= 180 && b * 5 <= r && g * 100 >= r * 66 && g * 100 <= r * 84) {
                    hits++;
                    if (hits >= need) break;
                }
            }
        }
        return hits >= need ? 1 : 0;
    }
}
