import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;

/** Same VietQR payload as Cam Kernel SU's VietQr.kt. usage: QrGen <bin> <account> <message> <out.png> */
public class QrGen {
    static String field(String id, String v) {
        return id + String.format("%02d", v.length()) + v;
    }

    static String crc16(String data) {
        int crc = 0xFFFF;
        for (byte b : data.getBytes(StandardCharsets.UTF_8)) {
            crc ^= (b & 0xFF) << 8;
            for (int i = 0; i < 8; i++) crc = (crc & 0x8000) != 0 ? (crc << 1) ^ 0x1021 : crc << 1;
            crc &= 0xFFFF;
        }
        return String.format("%04X", crc);
    }

    public static void main(String[] a) throws Exception {
        String beneficiary = field("00", a[0]) + field("01", a[1]);
        String merchant = field("00", "A000000727") + field("01", beneficiary) + field("02", "QRIBFTTA");
        String body = field("00", "01") + field("01", "11") + field("38", merchant) + field("53", "704")
                + field("58", "VN") + field("62", field("08", a[2])) + "6304";
        String payload = body + crc16(body);
        System.out.println(payload);
        Map<EncodeHintType, Object> h = new HashMap<>();
        h.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.M);
        h.put(EncodeHintType.CHARACTER_SET, "UTF-8");
        h.put(EncodeHintType.MARGIN, 0);
        BitMatrix m = new QRCodeWriter().encode(payload, BarcodeFormat.QR_CODE, 0, 0, h);
        int n = m.getWidth(), px = 12;
        BufferedImage img = new BufferedImage(n * px, n * px, BufferedImage.TYPE_BYTE_BINARY);
        for (int y = 0; y < n * px; y++)
            for (int x = 0; x < n * px; x++)
                img.setRGB(x, y, m.get(x / px, y / px) ? 0xFF000000 : 0xFFFFFFFF);
        ImageIO.write(img, "png", new File(a[3]));
        System.out.println(n + " modules -> " + n * px + "px");
    }
}
