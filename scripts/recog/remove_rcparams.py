"""Undo the per-weapon parameter editor entry point.

The share button on each RC-data row used to open mdm.RcParamsView. That panel is no longer
wanted: configs are edited and saved by the app's own screen, straight into
pubg_extension/RCConfig/<id>, exactly like the stock build.

This script only:
  1. hides the share button in each row holder constructor (0x8 = GONE), and
  2. replaces the patched listener onClick with a no-op, so nothing can reopen the panel.

Every other listener, field, id and layout attribute stays untouched. Safe to re-run.

usage: python scripts/recog/remove_rcparams.py <build_dir>
"""
import os
import sys

B = sys.argv[1]
SM = os.path.join(B, "smali")

HOLDERS = [
    ("com/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b.smali",
     "Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->h:Landroid/widget/Button;"),
    ("com/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder.smali",
     "Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->shareButton:Landroid/widget/Button;"),
    ("com/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder.smali",
     "Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->shareButton:Landroid/widget/Button;"),
]

LISTENERS = [
    "com/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c.smali",
    "com/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3.smali",
    "com/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3.smali",
]

NOOP = """.method public onClick(Landroid/view/View;)V
    .locals 0

    # MDM: the parameter panel was removed. Configs are edited and saved by the app's own
    # settings screen; this button does nothing.
    return-void
.end method"""

HIDE = """
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
"""


def rd(p):
    with open(p, encoding="utf-8") as f:
        return f.read()


def wr(p, s):
    with open(p, "w", encoding="utf-8", newline="\n") as f:
        f.write(s)


def method_span(s, sig):
    i = s.find(sig)
    if i < 0:
        return None
    j = s.find(".end method", i)
    if j < 0:
        return None
    return i, j + len(".end method")


def hide_share_button(path, field):
    s = rd(path)
    marker = "iput-object v0, p0, " + field + "\n"
    if marker in s and "const/16 v1, 0x8" in s.split(marker, 1)[1][:200]:
        return False
    if marker not in s:
        print("NO-FIELD", path)
        return False
    # constructor needs one more local for the visibility constant
    head = s.find(".method public constructor <init>")
    loc = s.find(".locals 1", head)
    if head < 0 or loc < 0:
        print("NO-LOCALS", path)
        return False
    s = s[:loc] + ".locals 2" + s[loc + len(".locals 1"):]
    s = s.replace(marker, marker + HIDE, 1)
    wr(path, s)
    return True


def kill_listener(path):
    s = rd(path)
    span = method_span(s, ".method public onClick(Landroid/view/View;)V")
    if span is None:
        print("NO-ONCLICK", path)
        return False
    s2 = s[:span[0]] + NOOP + s[span[1]:]
    if s2 == s:
        return False
    wr(path, s2)
    return True


n = 0
for p, f in HOLDERS:
    full = os.path.join(SM, p)
    if not os.path.exists(full):
        print("MISS", p)
        continue
    if hide_share_button(full, f):
        n += 1
        print("ok  hide", p)

for p in LISTENERS:
    full = os.path.join(SM, p)
    if not os.path.exists(full):
        print("MISS", p)
        continue
    if kill_listener(full):
        n += 1
        print("ok  noop", p)

print("patched:", n)