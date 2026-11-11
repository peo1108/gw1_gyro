package k;

import android.graphics.Bitmap;
import org.opencv.android.Utils;
import org.opencv.core.Core;
import org.opencv.core.Mat;
import org.opencv.core.Size;
import org.opencv.imgcodecs.Imgcodecs;
import org.opencv.imgproc.Imgproc;

/**
 * Muzzle recognizer (replaces gg1 k/i), ported from gg2 M5/j: 16 templates and six result
 * categories that match pubg.c$d ordinals (None, COMPENSATOR, FLASH_HIDER, SUPPRESSOR, BRAKE,
 * EXTENDER). Field and method names keep gg1's smali names; callers read c (unknown) and d (none).
 */
public class i extends m {
    public int c = -1;
    public int d = 0;
    public int e = 1;
    public int f = 2;
    public int g = 3;
    public final int h = 16;
    public Mat[] i = new Mat[16];
    public int brake = 4;
    public int extender = 5;

    static final String[] FILES = {
        "/empty.JPG",
        "/muzzle-compensator-cfq.JPG", "/muzzle-compensator-bq.JPG", "/muzzle-compensator-ju.JPG",
        "/muzzle-flashhider-cfq.JPG", "/muzzle-flashhider-bq.JPG", "/muzzle-flashhider-ju.JPG",
        "/muzzle-suppressor-cfq.JPG", "/muzzle-suppressor-bq.JPG", "/muzzle-suppressor-ju.JPG",
        "/muzzle-brake-bq.JPG", "/muzzle-brake-cfq.JPG", "/muzzle-brake-ju.JPG",
        "/muzzle-extender-bq.JPG", "/muzzle-extender-cfq.JPG", "/muzzle-duckbill.JPG",
    };

    public i(String str, int i2) {
        this.b = new com.zjx.jyandroid.Extensions.pubg.f().f() / 100.0f;
        for (int k = 0; k < 16; k++) {
            this.i[k] = Imgcodecs.imread(str + FILES[k], 0);
        }
        for (int k = 0; k < 16; k++) {
            Mat mat = this.i[k];
            if (mat == null || mat.rows() == 0) {
                continue; // region has no template for this attachment
            }
            float scale = i2 / (str.contains("中文国服") ? 86.0f : 75.0f);
            if (Math.abs(scale - 1.0f) < 0.1d) {
                return;
            }
            Mat mat2 = new Mat();
            try {
                Imgproc.resize(mat, mat2, new Size(mat.cols() * scale, mat.rows() * scale), 0.0d, 0.0d, scale > 1.0f ? 2 : 3);
            } catch (Exception ignored) {
            }
            mat.release();
            this.i[k] = mat2;
        }
    }

    public static Mat f(Bitmap bitmap) {
        Mat mat = new Mat();
        Utils.bitmapToMat(bitmap, mat);
        Imgproc.cvtColor(mat, mat, 7);
        return mat;
    }

    private double g(int k, Mat mat) {
        Mat t;
        if (k >= 0 && k < 16 && (t = this.i[k]) != null && t.rows() != 0) {
            int cols = (mat.cols() - t.cols()) + 1;
            int rows = (mat.rows() - t.rows()) + 1;
            if (cols > 0 && rows > 0) {
                Mat res = new Mat(rows, cols, 5 /* CV_32FC1 */);
                Imgproc.matchTemplate(mat, t, res, 5);
                Core.MinMaxLocResult r = Core.minMaxLoc(res);
                res.release();
                return r.maxVal;
            }
        }
        return -1.0d;
    }

    private m.a h(Bitmap bitmap) {
        Mat src = f(bitmap);
        int best = -1;
        double bestVal = -1.0d;
        for (int k = 0; k < 16; k++) {
            double v = g(k, src);
            if (v != -1.0d && v > bestVal) {
                best = k;
                bestVal = v;
            }
        }
        src.release();
        return new m.a(best, bestVal);
    }

    @Override
    public int b(Object obj) {
        Bitmap bitmap = this.a;
        if (bitmap == null) {
            return this.c;
        }
        m.a r = h(bitmap);
        int k = r.a;
        if (r.b < this.b || k == -1) {
            return this.c;
        }
        if (k == 0) return this.d;
        if (k <= 3) return this.e;
        if (k <= 6) return this.f;
        if (k <= 9) return this.g;
        if (k <= 12) return this.brake;
        return this.extender;
    }

    @Override
    public void e() {
        for (int k = 0; k < 16; k++) {
            Mat mat = this.i[k];
            if (mat != null) {
                mat.release();
            }
            this.i[k] = null;
        }
    }
}
