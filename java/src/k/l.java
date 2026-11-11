package k;

import android.graphics.Bitmap;
import org.opencv.android.Utils;
import org.opencv.core.Core;
import org.opencv.core.Mat;
import org.opencv.core.Size;
import org.opencv.imgcodecs.Imgcodecs;
import org.opencv.imgproc.Imgproc;

/**
 * Stock recognizer (replaces gg1 k/l), ported from gg2 M5/m: adds the Heavy stock (template 5),
 * reported as pubg.c$h HEAVY (ordinal 2); every other stock is GENERAL (1). Keeps gg1's smali names.
 */
public class l extends m {
    public int c = -1;
    public int d = 0;
    public int e = 1;
    public final int f = 6;
    public Mat[] g = new Mat[6];
    public int heavy = 2;

    static final String[] FILES = {
        "/empty.JPG", "/stock-bump-fire.JPG", "/stock-justock-ju.JPG",
        "/stock-m4stock-general.JPG", "/stock-uzistock-cfq.JPG", "/stock-heavy-general.JPG",
    };

    public l(String str, int i2) {
        this.b = new com.zjx.jyandroid.Extensions.pubg.f().f() / 100.0f;
        for (int n = 0; n < 6; n++) {
            this.g[n] = Imgcodecs.imread(str + FILES[n], 0);
        }
        for (int n = 0; n < 6; n++) {
            Mat mat = this.g[n];
            if (mat == null || mat.rows() == 0) {
                continue;
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
            this.g[n] = mat2;
        }
    }

    public static Mat f(Bitmap bitmap) {
        Mat mat = new Mat();
        Utils.bitmapToMat(bitmap, mat);
        Imgproc.cvtColor(mat, mat, 7);
        return mat;
    }

    private double g(int n, Mat mat) {
        Mat t;
        if (n >= 0 && n < 6 && (t = this.g[n]) != null && t.rows() != 0) {
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
        for (int n = 0; n < 6; n++) {
            double v = g(n, src);
            if (v != -1.0d && v > bestVal) {
                best = n;
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
        if (r.b < this.b || r.a == -1) {
            return this.c;
        }
        if (r.a == 0) {
            return this.d;
        }
        return r.a == 5 ? this.heavy : this.e;
    }

    @Override
    public void e() {
        for (int n = 0; n < 6; n++) {
            Mat mat = this.g[n];
            if (mat != null) {
                mat.release();
            }
            this.g[n] = null;
        }
    }
}
