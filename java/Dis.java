import com.android.tools.smali.baksmali.Baksmali;
import com.android.tools.smali.baksmali.BaksmaliOptions;
import com.android.tools.smali.dexlib2.DexFileFactory;
import com.android.tools.smali.dexlib2.Opcodes;
import com.android.tools.smali.dexlib2.iface.MultiDexContainer;
import java.io.File;
public class Dis {
    public static void main(String[] a) throws Exception {
        MultiDexContainer c = DexFileFactory.loadDexContainer(new File(a[0]), new Opcodes(24, -1));
        String n = (String) c.getDexEntryNames().get(0);
        Baksmali.disassembleDexFile(c.getEntry(n).getDexFile(), new File(a[1]), 1, new BaksmaliOptions());
        System.out.println("ok");
    }
}
