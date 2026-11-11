"""Smali patches for the gg2 recognition port (run once on the m24 build tree)."""
import re, sys

B = sys.argv[1]


def rd(p):
    return open(f"{B}/{p}", encoding="utf-8").read()


def wr(p, s):
    open(f"{B}/{p}", "w", encoding="utf-8", newline="\n").write(s)


def once(s, old, new, what):
    n = s.count(old)
    assert n == 1, f"{what}: anchor found {n} times"
    return s.replace(old, new)


# 1) scope k/k: rename b -> origB, add wrapper b that runs ForceRedDot.filter
p = "smali/k/k.smali"
s = rd(p)
s = once(s, ".method public b(Ljava/lang/Object;)I\n", ".method public origB(Ljava/lang/Object;)I\n", "k.b")
s += """
.method public b(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0, p1}, Lk/k;->origB(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p0, v0}, Lmdm/ForceRedDot;->filter(Lk/j;I)I

    move-result v0

    return v0
.end method
"""
wr(p, s)

# 2) weapon k/n.i(): filter the "previous weapon" hint like gg2
p = "smali/k/n.smali"
s = rd(p)
i0 = s.index(".method public final i(Landroid/graphics/Bitmap;I)Lk/m$a;")
i1 = s.index(".end method", i0)
body = s[i0:i1]
body = once(body,
            "    move-result-object p1\n\n    const/4 v0, -0x1\n\n    if-eq p2, v0, :cond_0\n",
            "    move-result-object p1\n\n    invoke-static {p2}, Lmdm/RecogCompat;->weaponHint(I)I\n\n    move-result p2\n\n"
            "    const/4 v0, -0x1\n\n    if-eq p2, v0, :cond_0\n", "k.n.i")
s = s[:i0] + body + s[i1:]
wr(p, s)

# 3) posture thread b$g: non-CN crouch detector (field b) -> mdm.PostureColor
p = "smali/com/zjx/jyandroid/Extensions/pubg/b$g.smali"
s = rd(p)
s = once(s,
         "    new-instance p1, Lk/g;\n\n    invoke-direct {p1}, Lk/g;-><init>()V\n\n"
         "    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$g;->b:Lk/j;\n",
         "    new-instance p1, Lmdm/PostureColor;\n\n    invoke-direct {p1}, Lmdm/PostureColor;-><init>()V\n\n"
         "    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$g;->b:Lk/j;\n", "b$g")
wr(p, s)

# 4) PUBG settings page: wire the Force Red Dot switch right after the gyro cells
p = "smali/com/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView.smali"
s = rd(p)
s = once(s,
         "    invoke-static {p0}, LK6/GyroUI;->installRecoilCell(Landroid/view/View;)V\n",
         "    invoke-static {p0}, LK6/GyroUI;->installRecoilCell(Landroid/view/View;)V\n\n"
         "    invoke-static {p0}, Lmdm/ForceRedDot;->bind(Landroid/view/View;)V\n", "settings")
wr(p, s)
print("patched k/k, k/n, b$g, PUBGExtensionSettingsView")
