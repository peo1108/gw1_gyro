"""Engine-side patches for the simplified recoil parameters (mdm_v2, see
docs/superpowers/specs/2026-11-11-rc-params-simplify-design.md).

  f.u()Z                         accessory recognition getter -> always false
  PUBGExtensionSettingsView      onDetachedFromWindow: keep saving the scope sensitivities but
                                 skip the loop that rescaled every recoilValue by the change
  g$b.e(ArrayList)               after the in-game panel edits a record, mirror it to the alias
                                 scopes (x6.3 <-> x6 ...) via mdm.RcStore.syncAliases, then flag
                                 those scopes' engine nodes for rebuild (mdm.RcEngine.markAliasesDirty)
  pubg/d + AdjustRCValueFloatingPanelView$a   (--panel) adjust panel window 200x100 -> 200x70dp
  AdjustRCValueFloatingPanelView$c.run()
                                 after it fetches the current lookup node, call mdm.RcPanel.bind
                                 (title "weapon · stance · scope", extra buttons hidden)
  pubg/d.onFloatingPanelDisplay  (--menu) add the "Thông số" item via mdm.ParamsMenu.install
  PUBGExtensionSettingsView      onDetachedFromWindow: the "recoil %" slider no longer rescales the table
  pubg_extension_settings_view   hide the accessory recognition switch + its settings block + the recoil % slider

apktool's smali is CRLF: files are edited as text with their own newline kept. Every patch is
idempotent (marker "mdm-rc") and must match exactly once.

usage: python scripts/recog/patch_rc_simplify.py <build_dir> [--panel] [--menu]
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


# what each patch inserts: present already -> that patch is done (a file can carry several)
DONE_IF = {
    "accessory_getter": "mdm-rc: accessory recognition removed",
    "sensitivity_no_rescale": "mdm-rc: sensitivity saved above",
    "coefficient_no_rescale": "mdm-rc: recoil % slider retired",
    "alias_sync": "Lmdm/RcStore;->syncAliases",
    "alias_dirty": "Lmdm/RcEngine;->markAliasesDirty",
    "panel_bind": "Lmdm/RcPanel;->bind",
    "menu_install": "Lmdm/ParamsMenu;->install",
    "panel_height_create": "mdm-rc: one row less",
    "panel_height_back": "mdm-rc: base page is 70dp tall now",
}


def patch(name, fn):
    path = os.path.join(PUBG, name)
    text, nl = load(path)
    if DONE_IF[fn.__name__] in text:
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


def coefficient_no_rescale(t):
    # onDetachedFromWindow: when the "recoil %" slider changed (flag F) the app multiplied every
    # recoilValue of every weapon by new/old and stored the new %. mdm_v2 numbers are absolute:
    # treat F as false so that block never runs (the slider itself is hidden in the layout)
    line = "    iget-boolean v0, v1, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->F:Z\n"
    return once(re.escape(line), t,
                line + "\n    # mdm-rc: recoil % slider retired, never rescale the table\n    const/4 v0, 0x0\n")


def alias_sync(t):
    # only inside e(ArrayList): the :cond_5 that precedes the g$f.e() + d.U() flush
    pat = (r"(\.method public e\(Ljava/util/ArrayList;\)V.*?\n    :cond_5\n)"
           r"((?:\s*\.line \d+\n)?\s*iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g\$b;->b:)")
    ins = ("    # mdm-rc: keep alias scopes (x6.3/x8.4/tactic) equal to the edited cell before the flush\n"
           "    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$b;->c:Ljava/util/ArrayList;\n\n"
           "    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$b;->d:Ljava/util/Map;\n\n"
           "    invoke-static {p1, v0}, Lmdm/RcStore;->syncAliases(Ljava/util/List;Ljava/util/Map;)V\n\n")
    return once(pat, t, lambda m: m.group(1) + ins + m.group(2), re.S)


def alias_dirty(t):
    # the alias records now hold the new number, but their engine nodes cache the old curve:
    # flag them (g$f.a = true) so the running engine picks the edit up for x6.3 <-> x6 etc.
    call = "    invoke-static {p1, v0}, Lmdm/RcStore;->syncAliases(Ljava/util/List;Ljava/util/Map;)V\n"
    return once(re.escape(call), t,
                call + "\n    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$b;->e:Lcom/zjx/jyandroid/Extensions/pubg/g;\n\n"
                "    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/g$f;\n\n"
                "    invoke-static {p1, v0}, Lmdm/RcEngine;->markAliasesDirty(Ljava/lang/Object;Ljava/lang/Object;)I\n")


def panel_height_create(t):
    # pubg/d creates the adjust panel window 200x100dp; the button row is gone -> 200x70dp
    i = t.index("R$layout;->pubg_adjust_rc_value_panel_view:I")
    j = t.index("Ll/b;->e(", i)
    seg = once(r"    const/16 v1, 0x64\n", t[i:j],
               "    # mdm-rc: one row less (no curve/coefficient buttons) -> 70dp tall\n    const/16 v1, 0x46\n")
    return t[:i] + seg + t[j:]


def panel_height_back(t):
    # AdjustRCValueFloatingPanelView$a resizes back to the base page (200x100dp) -> 200x70dp
    k = t.index("const-class v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueBaseView;")
    tail = once(r"    const/16 v0, 0x64\n", t[k:],
                "    # mdm-rc: base page is 70dp tall now\n    const/16 v0, 0x46\n")
    return t[:k] + tail


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


def menu_install(t):
    # p1 is still the RootFloatingPanelView right after the extension added "Cài đặt AI";
    # the next lines reuse p1 for the click listener, so the call goes exactly here
    call = ("    invoke-virtual {p1, v0, v6}, Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;"
            "->a(Landroid/view/View;I)V\n")
    return once(re.escape(call), t,
                call.replace("\\", "\\\\") +
                "\n    # mdm-rc: \"Thông số\" item next to \"Cài đặt AI\"\n"
                "    invoke-static {p1, p0}, Lmdm/ParamsMenu;->install(Ljava/lang/Object;Ljava/lang/Object;)V\n")


def settings_layout(t):
    for vid in ("enableAccessoryRecognitionCell", "accessoryRecognitionSettingsLinearLayout", "dataPercentageCell"):
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
    patch("PUBGExtensionSettingsView.smali", coefficient_no_rescale)
    patch("g$b.smali", alias_sync)
    patch("g$b.smali", alias_dirty)
    if "--panel" in sys.argv:
        patch("AdjustRCValueFloatingPanelView$c.smali", panel_bind)
        patch("d.smali", panel_height_create)
        patch("AdjustRCValueFloatingPanelView$a.smali", panel_height_back)
    if "--menu" in sys.argv:
        patch("d.smali", menu_install)
    lay = os.path.join(B, "res", "layout", "pubg_extension_settings_view.xml")
    text, nl = load(lay)
    save(lay, settings_layout(text), nl)
    print("layout: accessory switch hidden")


main()
