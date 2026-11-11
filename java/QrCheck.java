import com.google.zxing.*; import com.google.zxing.common.HybridBinarizer; import javax.imageio.ImageIO; import java.awt.image.BufferedImage; import java.io.File;
public class QrCheck { public static void main(String[] a) throws Exception {
  BufferedImage s = ImageIO.read(new File(a[0])); int p=40, w=s.getWidth()+2*p;
  BufferedImage im = new BufferedImage(w,w,BufferedImage.TYPE_INT_RGB); for(int y=0;y<w;y++)for(int x=0;x<w;x++)im.setRGB(x,y,0xFFFFFF);
  im.getGraphics().drawImage(s,p,p,null); int[] px=im.getRGB(0,0,w,w,null,0,w);
  System.out.println(new MultiFormatReader().decode(new BinaryBitmap(new HybridBinarizer(new RGBLuminanceSource(w,w,px)))).getText()); } }
