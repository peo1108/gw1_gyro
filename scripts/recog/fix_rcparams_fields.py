"""Repair the field name the share-button patch used for the table adapter.

RCDataManageView$TableViewAdapter exposes the owning view as `baseView`, not `a`.
The generated onClick walked `$3->val$this$1` then `->a`, which would have thrown at
runtime while still assembling cleanly. This rewrites those two references and reports
the full field chain it produced so the result can be eyeballed.

usage: python scripts/recog/fix_rcparams_fields.py <build_dir>
"""
import os
import sys

B = sys.argv[1]
SM = os.path.join(B, "smali")
PKGS = ["GeneralRC", "gnyx"]

for pkg in PKGS:
    p = os.path.join(
        SM, "com", "zjx", "jyandroid", "Extensions", pkg,
        "RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3.smali")
    s = open(p, encoding="utf-8").read()
    before = s

    s = s.replace(
        "$TableViewAdapter;->a:Lcom/zjx/jyandroid/Extensions/%s/RCDataManageView;" % pkg,
        "$TableViewAdapter;->baseView:Lcom/zjx/jyandroid/Extensions/%s/RCDataManageView;" % pkg)

    if s == before:
        print("no change:", pkg)
    else:
        open(p, "w", encoding="utf-8", newline="\n").write(s)
        print("fixed   :", pkg)

    i = s.find(".method public onClick")
    j = s.find(".end method", i)
    body = s[i:j]
    print("---", pkg, "generated body ---")
    for line in body.splitlines():
        t = line.strip()
        if t.startswith("iget-object") or t.startswith("sget") or t.startswith("invoke-"):
            print("   ", t)