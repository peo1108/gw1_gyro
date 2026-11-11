"""Point each RC-data row's share button at the per-weapon parameter editor.

Each config row carries a share button whose listener showed an Alert and then pushed the
config to the share service. This rewrites that listener's onClick so it opens
mdm.RcParamsView on the same config instead, and neutralises the now-unreachable
share-push helper so nothing can still call it.

Every other listener, field, id and layout attribute stays untouched.

Field layout read from the smali, not guessed:

  pubg       RCDataManageView$k$b$c
               a : RCDataManageView$k        (adapter -> field c = the view; view.f = KeymapManager)
               b : RCDataManageView$k$b      (holder -> field e = configId, c = headerTextView)
               bundleId: static field RCDataManageView.g

  GeneralRC  ...RCDataManageCellViewHolder$3
               this$2    : ...$RCDataManageCellViewHolder  (configId, headerTextView)
               val$this$1: ...$TableViewAdapter             (field a = the view; pubgRelatedKeymapManager)
               bundleId:  GeneralRCExtension.getRCDataBundleId()

  gnyx       ...RCDataManageCellViewHolder$3
               this$2    : ...$RCDataManageCellViewHolder  (configId, headerTextView)
               val$this$1: ...$TableViewAdapter             (field a = the view; privateKeymapManager)
               bundleId:  static field RCDataManageView.BUNDLE_ID

usage: python scripts/recog/patch_rcparams.py <build_dir>
"""
import os
import sys

B = sys.argv[1]
SM = os.path.join(B, "smali")

TARGETS = [
    dict(
        name="pubg",
        listener="com/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c.smali",
        cls="Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c;",
        adapter_field="a:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;",
        holder_field="b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;",
        id_path=["b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;"],
        title_path=["b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;"],
        km_path=["a:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;",
                 "c:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;",
                 "f:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;"],
        bundle="static:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;->g:Ljava/lang/String;",
        dead_helper=".method public final b(I)V",
    ),
    dict(
        name="GeneralRC",
        listener="com/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3.smali",
        cls="Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3;",
        adapter_field="val$this$1:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter;",
        holder_field="this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;",
        id_path=["this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;"],
        title_path=["this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;"],
        km_path=["val$this$1:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter;",
                 "baseView:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;",
                 "pubgRelatedKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;"],
        bundle="call:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->getRCDataBundleId()Ljava/lang/String;",
        dead_helper=None,   # this one has no b(I); the share body is inline in onClick
    ),
    dict(
        name="gnyx",
        listener="com/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3.smali",
        cls="Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3;",
        adapter_field="val$this$1:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;",
        holder_field="this$2:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;",
        id_path=["this$2:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;"],
        title_path=["this$2:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;"],
        km_path=["val$this$1:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;",
                 "baseView:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;",
                 "privateKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;"],
        bundle="static:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->BUNDLE_ID:Ljava/lang/String;",
        dead_helper=None,
    ),
]

# the two TextView-backed holder classes expose the name through a TextView, pubg does too
TITLE_IS_TEXTVIEW = True
ID_FIELD = "e"          # pubg: RCDataManageView$k$b.e ; the other two use configId
ID_FIELD_OTHER = "configId"
TITLE_FIELD = "c"       # pubg: RCDataManageView$k$b.c
TITLE_FIELD_OTHER = "headerTextView"


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


def is_pubg(t):
    return t["name"] == "pubg"


def body(t):
    """Register plan, kept consecutive so the 5-arg constructor can use /range:

        v0  holder, later reused as the RcParamsView instance
        v1  ctx      } the constructor takes (ctx, id, title, bundleId, km)
        v2  configId } so these five must sit in v1..v5 in that order and
        v3  title    } v0..v5 must be contiguous for invoke-direct/range
        v4  bundleId
        v5  km
    """
    L = []
    A = L.append
    A(".method public onClick(Landroid/view/View;)V")
    A("    .locals 8")
    A("")
    A("    # MDM: open the per-weapon parameter editor for this config.")
    A("    # The share dialog this method used to show is replaced. Every other")
    A("    # button on the row keeps its original listener.")
    A("")

    # holder
    A("    iget-object v0, p0, %s->%s" % (t["cls"], t["holder_field"]))
    A("")

    # config id -> v2
    idf = (ID_FIELD if is_pubg(t) else ID_FIELD_OTHER)
    holder_t = t["holder_field"].split(":", 1)[1]
    A("    iget-object v2, v0, %s->%s:Ljava/lang/String;" % (holder_t, idf))
    A("")

    # title -> v3
    tf = (TITLE_FIELD if is_pubg(t) else TITLE_FIELD_OTHER)
    A("    iget-object v3, v0, %s->%s:Landroid/widget/TextView;" % (holder_t, tf))
    A("    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;")
    A("    move-result-object v3")
    A("    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;")
    A("    move-result-object v3")
    A("")

    # bundle id -> v4
    kind, ref = t["bundle"].split(":", 1)
    if kind == "static":
        A("    sget-object v4, %s" % ref)
    else:
        A("    invoke-static {}, %s" % ref)
        A("    move-result-object v4")
    A("")

    # KeymapManager -> v5, walking the documented field chain
    owner = t["cls"]
    for f in t["km_path"]:
        A("    iget-object v5, p0, %s->%s" % (owner, f) if owner == t["cls"]
          else "    iget-object v5, v5, %s->%s" % (owner, f))
        owner = f.split(":", 1)[1]
    A("")

    # The anchor view (the clicked button). The sheet attaches to that view's window,
    # because the settings screen is a service overlay with no activity token -> v1
    A("    move-object v1, p1")
    A("")

    # instance -> v0 (the holder is no longer needed)
    A("    new-instance v0, Lmdm/RcParamsView;")
    A("")
    A("    invoke-direct/range {v0 .. v5}, Lmdm/RcParamsView;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager;)V")
    A("")
    A("    invoke-virtual {v0}, Lmdm/RcParamsView;->open()V")
    A("")
    A("    return-void")
    A(".end method")
    return "\n".join(L)


def patch(t):
    p = os.path.join(SM, t["listener"])
    if not os.path.exists(p):
        print("MISS ", t["listener"])
        return False
    s = rd(p)
    span = method_span(s, ".method public onClick(Landroid/view/View;)V")
    if span is None:
        print("NO onClick:", t["listener"])
        return False

    s2 = s[:span[0]] + body(t) + s[span[1]:]

    if t["dead_helper"]:
        sp = method_span(s2, t["dead_helper"])
        if sp is not None:
            s2 = (s2[:sp[0]]
                  + t["dead_helper"] + "\n    .locals 0\n\n    # MDM: share flow retired\n    return-void\n.end method"
                  + s2[sp[1]:])

    if s2 == s:
        print("unchanged", t["listener"])
        return False
    wr(p, s2)
    print("ok    ", t["listener"])
    return True


n = 0
for t in TARGETS:
    if patch(t):
        n += 1
print("patched:", n, "/", len(TARGETS))