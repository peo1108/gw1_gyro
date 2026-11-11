import java.util.*;
import java.util.concurrent.Executor;

import mdm.RcEngine;
import mdm.RcStore;

/**
 * JVM test for mdm.RcEngine (reflection bridge to the PUBG engine) and the restore helper in
 * mdm.RcStore. The fakes mirror the real member names: pubg.g has a static b(g, muzzle, grip,
 * stock, weapon, scope, gesture) returning the lookup node g$f, whose short fields are l (weapon),
 * h (scope), g (gesture) and whose boolean a = "rebuild cached curve"; pubg.d has G() (running
 * recoil engine or null), b0(String) (load config) and static String L (config folder).
 */
public class RcEngineTest {
    static int failures = 0;

    static void check(boolean ok, String msg) {
        if (!ok) {
            failures++;
            System.out.println("FAIL: " + msg);
        }
    }

    public static class FakeNode {
        public short l, h, g;
        public boolean a;
    }

    public static class FakeG {
        static final List<int[]> calls = new ArrayList<>();
        static final Map<String, FakeNode> nodes = new HashMap<>();

        public static FakeNode b(FakeG self, int muzzle, int grip, int stock, int weapon, int scope, int gesture) {
            calls.add(new int[]{muzzle, grip, stock, weapon, scope, gesture});
            String k = weapon + "/" + scope + "/" + gesture + "/" + muzzle + grip + stock;
            FakeNode n = nodes.get(k);
            if (n == null) {
                n = new FakeNode();
                nodes.put(k, n);
            }
            return n;
        }
    }

    public static class FakeExt {
        public static String L = "/docs/pubg_extension/RCConfig/";
        public Object engine;
        public String loaded;

        public Object G() { return engine; }

        public void b0(String path) { loaded = path; }
    }

    static FakeNode node(int weapon, int scope, int gesture) {
        FakeNode n = new FakeNode();
        n.l = (short) weapon;
        n.h = (short) scope;
        n.g = (short) gesture;
        return n;
    }

    static void marksAliasesOfX6() {
        FakeG.calls.clear();
        FakeG.nodes.clear();
        int n = RcEngine.markAliasesDirty(new FakeG(), node(22, 7, 1)); // edited x6.3, crouch
        check(n == 1, "marksAliasesOfX6: one other cell (x6) marked, got " + n);
        check(FakeG.calls.size() == 1 && Arrays.equals(FakeG.calls.get(0), new int[]{0, 0, 0, 22, 5, 1}),
                "marksAliasesOfX6: looked up (no accessories, M416, scope 5, crouch)");
        check(FakeG.nodes.get("22/5/1/000").a, "marksAliasesOfX6: x6 node flagged for rebuild");
    }

    static void marksAliasesOfX1() {
        FakeG.calls.clear();
        FakeG.nodes.clear();
        int n = RcEngine.markAliasesDirty(new FakeG(), node(39, 1, 0)); // edited x1 on UMP45
        check(n == 2, "marksAliasesOfX1: tactic + tactic 8.4 marked, got " + n);
        check(FakeG.nodes.get("39/9/0/000").a && FakeG.nodes.get("39/10/0/000").a, "marksAliasesOfX1: 9 and 10 flagged");
    }

    static void noAliasNoCalls() {
        FakeG.calls.clear();
        check(RcEngine.markAliasesDirty(new FakeG(), node(22, 3, 0)) == 0 && FakeG.calls.isEmpty(),
                "noAliasNoCalls: x3 has no alias");
        check(RcEngine.markAliasesDirty(null, node(22, 5, 0)) == 0, "noAliasNoCalls: null engine is a no-op");
        check(RcEngine.markAliasesDirty(new FakeG(), new Object()) == 0, "noAliasNoCalls: foreign object is a no-op");
    }

    static final Executor INLINE = new Executor() {
        public void execute(Runnable r) { r.run(); }
    };

    static void reloadOnlyWhenRunning() {
        FakeExt ext = new FakeExt();
        check(!RcEngine.reloadIfRunning(ext, "ID1", INLINE) && ext.loaded == null,
                "reloadOnlyWhenRunning: paused engine (G()==null) is not revived");
        ext.engine = new Object();
        final List<Runnable> queued = new ArrayList<>();
        boolean ok = RcEngine.reloadIfRunning(ext, "ID1", new Executor() {
            public void execute(Runnable r) { queued.add(r); }
        });
        check(ok && ext.loaded == null && queued.size() == 1, "reloadOnlyWhenRunning: load goes to the executor, not inline");
        queued.get(0).run();
        check("/docs/pubg_extension/RCConfig/ID1".equals(ext.loaded), "reloadOnlyWhenRunning: b0(L + id), got " + ext.loaded);
        check(!RcEngine.reloadIfRunning(null, "ID1", INLINE), "reloadOnlyWhenRunning: no extension");
    }

    static void restoreDropsLiveCopiesForOldBackups() {
        List<String> old = Arrays.asList("keymaps/index.json", "keymaps/content/A.json", "keymaps/content/A.v1.bak.json",
                "keymaps/content/B.json", "prefs/x.xml");
        check(new HashSet<>(RcStore.staleLiveIds(old)).equals(new HashSet<>(Arrays.asList("A", "B"))),
                "restore: backup without pubgrc/ -> drop live RCConfig of A and B, got " + RcStore.staleLiveIds(old));
        List<String> v2 = new ArrayList<>(old);
        v2.add("pubgrc/A");
        check(RcStore.staleLiveIds(v2).isEmpty(), "restore: backup carrying pubgrc/ restores the live files itself");
    }

    public static void main(String[] a) {
        marksAliasesOfX6();
        marksAliasesOfX1();
        noAliasNoCalls();
        reloadOnlyWhenRunning();
        restoreDropsLiveCopiesForOldBackups();
        if (failures > 0) {
            System.out.println(failures + " FAILED");
            System.exit(1);
        }
        System.out.println("ALL OK");
    }
}
