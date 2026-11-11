package k;

import android.graphics.Bitmap;
import org.opencv.android.Utils;
import org.opencv.core.Core;
import org.opencv.core.Mat;
import org.opencv.core.Size;
import org.opencv.imgcodecs.Imgcodecs;
import org.opencv.imgproc.Imgproc;

/**
 * Grip recognizer (replaces gg1 k/h), ported from gg2 M5/i: adds the Ergonomic grip as template 7,
 * which is also pubg.c$c ERGONOMIC's ordinal. Keeps gg1's smali field/method names.
 */
public class h extends m {
    public int c = -1;
    public int d = 0;
    public int e = 1;
    public int f = 2;
    public int g = 3;
    public int h = 4;
    public int i = 5;
    public int j = 6;
    public final int k = 8;
    public Mat[] l = new Mat[8];

    static final String[] FILES = {
        "/empty.JPG", "/grip-vertical.JPG", "/grip-horizontal.JPG", "/grip-half.JPG",
        "/grip-light.JPG", "/grip-thumb.JPG", "/grip-laser.JPG", "/grip-ergonomic.JPG",
    };

    public h(String str, int i2) {
        this.b = new com.zjx.jyandroid.Extensions.pubg.f().f() / 100.0f;
        for (int n = 0; n < 8; n++) {
            this.l[n] = Imgcodecs.imread(str + FILES[n], 0);
        }
        for (int n = 0; n < 8; n++) {
            Mat mat = this.l[n];
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
            this.l[n] = mat2;
        }
    }

    public static Mat f(Bitmap bitmap) {
        Mat mat = new Mat();
        Utils.bitmapToMat(bitmap, mat);
        Imgproc.cvtColor(mat, mat, 7);
        return mat;
    }

    public final double g(int n, Mat mat) {
        Mat t;
        if (n >= 0 && n < 8 && (t = this.l[n]) != null && t.rows() != 0) {
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

    public final m.a h(Bitmap bitmap) {
        Mat src = f(bitmap);
        int best = -1;
        double bestVal = -1.0d;
        for (int n = 0; n < 8; n++) {
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
        return (r.b < this.b || r.a == -1) ? this.c : r.a;
    }

    @Override
    public void e() {
        for (int n = 0; n < 8; n++) {
            Mat mat = this.l[n];
            if (mat != null) {
                mat.release();
            }
            this.l[n] = null;
        }
    }
}
