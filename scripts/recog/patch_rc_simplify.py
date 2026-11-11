"""Engine-side patches for the simplified recoil parameters (mdm_v2, see
docs/superpowers/specs/2026-11-11-rc-params-simplify-design.md).

  f.u()Z                         accessory recognition getter -> always false
  PUBGExtensionSettingsView      onDetachedFromWindow: keep saving the scope sensitivities but
                                 skip the loop that rescaled every recoilValue by the change
  g$b.e(ArrayList)               after the in-game panel edits a record, mirror it to the alias
                                 scopes (x6.3 <-> x6 ...) via mdm.RcStore.syncAliases
  AdjustRCValueFloatingPanelView$c.run()
                                 after it fetches the current lookup node, call mdm.RcPanel.bind
                                 (title "weapon · stance · scope", extra buttons hidden)
  pubg_extension_settings_view   hide the accessory recognition switch + its settings block

apktool's smali is CRLF: files are edited as text with their own newline kept. Every patch is
idempotent (marker "mdm-rc") and must match exactly once.

usage: python scripts/recog/patch_rc_simplify.py <build_dir>
"""
import os
import re
import sys

B = sys.argv[1]
PUBG = os.path.join(B, "smali", "com", "zjx", "jyandroid", "Extensions", "pubg")
MARK = "mdm-rc"


def load(path):
    with open(path, "rb") as f:
        raw = f.read().decode("utf-8")
    nl = "\r\n" if "\r\n" in raw else "\n"
    return raw.replace("\r\n", "\n"), nl


def save(path, text, nl):
    with open(path, "wb") as f:
        f.write(text.replace("\n", nl).encode("utf-8"))


def patch(name, fn):
    path = os.path.join(PUBG, name)
    text, nl = load(path)
    if MARK in text and fn.__name__ != "settings_layout":
        print("skip (already patched): " + name)
        return
    new = fn(text)
    save(path, new, nl)
    print("patched: " + name)


def once(pattern, text, repl, flags=0):
    new, n = re.subn(pattern, repl, text, count=0, flags=flags)
    if n != 1:
        sys.exit("expected exactly 1 match, got %d: %s" % (n, pattern[:80]))
    return new


def accessory_getter(t):
    return once(r"\.method public u\(\)Z\n.*?\.end method",
                t,
                ".method public u()Z\n    .locals 1\n\n"
                "    # mdm-rc: accessory recognition removed (mdm_v2 has no accessory records)\n"
                "    const/4 v0, 0x0\n\n    return v0\n.end method",
                re.S)


def sensitivity_no_rescale(t):
    line = "    invoke-interface {v9, v12, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;\n"
    return once(re.escape(line), t,
                line.replace("\\", "\\\\") +
                "\n    # mdm-rc: sensitivity saved above; do not rescale recoil values (numbers stay as set)\n"
                "    move-object/from16 v20, v9\n\n    goto/16 :goto_5\n")


def alias_sync(t):
    # only inside e(ArrayList): the :cond_5 that precedes the g$f.e() + d.U() flush
    pat = (r"(\.method public e\(Ljava/util/ArrayList;\)V.*?\n    :cond_5\n)"
           r"((?:\s*\.line \d+\n)?\s*iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g\$b;->b:)")
    ins = ("    # mdm-rc: keep alias scopes (x6.3/x8.4/tactic) equal to the edited cell before the flush\n"
           "    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$b;->c:Ljava/util/ArrayList;\n\n"
           "    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$b;->d:Ljava/util/Map;\n\n"
           "    invoke-static {p1, v0}, Lmdm/RcStore;->syncAliases(Ljava/util/List;Ljava/util/Map;)V\n\n")
    return once(pat, t, lambda m: m.group(1) + ins + m.group(2), re.S)


def panel_bind(t):
    call = "    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/i;->c()Lcom/zjx/jyandroid/Extensions/pubg/g$f;\n"
    pat = re.escape(call) + r"(\s*\n)?(\s*)move-result-object (v\d+)\n"

    def rep(m):
        reg = m.group(3)
        return (m.group(0) +
                "\n    # mdm-rc: title = weapon · stance · scope, extra buttons hidden\n"
                "    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c;->d:"
                "Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;\n\n"
                "    invoke-static {v4, %s}, Lmdm/RcPanel;->bind(Landroid/view/View;Ljava/lang/Object;)V\n\n" % reg)
    return once(pat, t, rep)


def settings_layout(t):
    for vid in ("enableAccessoryRecognitionCell", "accessoryRecognitionSettingsLinearLayout"):
        tag = re.search(r'<[^<>]*android:id="@id/%s"[^<>]*>' % vid, t)
        if not tag:
            sys.exit("layout id not found: " + vid)
        s = tag.group(0)
        if 'android:visibility="gone"' in s:
            continue
        s2 = re.sub(r'\sandroid:visibility="\w+"', "", s)
        s2 = s2.replace('android:id="@id/%s"' % vid, 'android:id="@id/%s" android:visibility="gone"' % vid)
        t = t.replace(s, s2)
    return t


def main():
    patch("f.smali", accessory_getter)
    patch("PUBGExtensionSettingsView.smali", sensitivity_no_rescale)
    patch("g$b.smali", alias_sync)
    if "--panel" in sys.argv:
        patch("AdjustRCValueFloatingPanelView$c.smali", panel_bind)
    lay = os.path.join(B, "res", "layout", "pubg_extension_settings_view.xml")
    text, nl = load(lay)
    save(lay, settings_layout(text), nl)
    print("layout: accessory switch hidden")


main()
