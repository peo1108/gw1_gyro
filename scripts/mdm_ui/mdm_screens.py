"""Glass-card restyle of gg1's secondary activities (add game, permissions, root/ADB activation).
usage: python mdm_screens.py <build_dir>
"""
import os, sys
from xml.dom import minidom

B = sys.argv[1]
FILES = ["activity_add_game", "activity_manage_permission", "activity_manage_adb_root",
         "activity_manage_adb_wired", "activity_manage_adb_wireless"]
SECTION_IDS = {"@id/textView5", "@id/textView8", "@id/textView14"}


def els(node):
    return [c for c in node.childNodes if c.nodeType == c.ELEMENT_NODE]


def walk(node):
    for c in els(node):
        yield c
        yield from walk(c)


def A(e, k, v):
    e.setAttribute(k, v)


def restyle(doc):
    root = doc.documentElement
    carded = set()
    for e in list(walk(root)):
        g = e.getAttribute
        if g("android:background") == "@color/navigation_bar_background":
            A(e, "android:background", "@color/transparent")
            A(e, "android:layout_height", "76.0dip")
            A(e, "android:paddingLeft", "28.0dip")
            A(e, "android:paddingRight", "24.0dip")
            for c in els(e):
                if c.getAttribute("android:id") == "@id/textView2":
                    A(c, "android:textSize", "26.0sp")
                    A(c, "android:textStyle", "bold")
                    A(c, "app:layout_constraintHorizontal_bias", "0.0")
                if c.getAttribute("android:id") == "@id/finishButton":
                    A(c, "android:background", "@drawable/mdm_btn_ghost")
                    A(c, "android:layout_height", "44.0dip")
                    A(c, "android:paddingLeft", "24.0dip")
                    A(c, "android:paddingRight", "24.0dip")
                    A(c, "android:textStyle", "bold")
                    A(c, "android:textColor", "@color/mdm_gold_hi")
        if g("android:id") in SECTION_IDS:
            A(e, "android:textColor", "@color/mdm_text_dim")
            A(e, "android:textSize", "12.0sp")
            A(e, "android:textStyle", "bold")
            A(e, "android:letterSpacing", "0.1")
            A(e, "android:layout_marginLeft", "48.0dip")
            A(e, "android:layout_marginTop", "22.0dip")
            A(e, "android:layout_marginBottom", "8.0dip")
        if e.tagName.endswith("ConstraintLayout") and g("android:layout_height") == "50.0dip":
            A(e, "android:layout_height", "62.0dip")
            p = e.parentNode
            if p.nodeType == p.ELEMENT_NODE and p.tagName == "LinearLayout" and id(p) not in carded:
                carded.add(id(p))
                A(p, "android:background", "@drawable/mdm_card")
                A(p, "android:layout_marginLeft", "28.0dip")
                A(p, "android:layout_marginRight", "28.0dip")
                A(p, "android:layout_marginBottom", "8.0dip")
                A(p, "android:paddingLeft", "22.0dip")
                A(p, "android:paddingRight", "16.0dip")
                A(p, "android:paddingTop", "4.0dip")
                A(p, "android:paddingBottom", "4.0dip")
        if g("android:background") == "#1affffff":
            A(e, "android:background", "#12ffffff")
        if g("android:background") == "@drawable/rounded_button_background_15dp" and g("android:layout_height") == "30.0dip":
            A(e, "android:layout_height", "38.0dip")
            A(e, "android:textStyle", "bold")
    # a divider directly after a card's last row looks stray: drop dividers that are a card's last child
    for e in list(walk(root)):
        if e.getAttribute("android:background") == "@drawable/mdm_card":
            kids = els(e)
            while kids and kids[-1].tagName == "View" and kids[-1].getAttribute("android:background") == "#12ffffff" \
                    and not kids[-1].getAttribute("android:id"):
                e.removeChild(kids[-1])
                kids = els(e)


for n in FILES:
    p = os.path.join(B, "res", "layout", n + ".xml")
    doc = minidom.parse(p)
    restyle(doc)
    with open(p, "w", encoding="utf-8", newline="\n") as f:
        f.write(doc.toxml(encoding="utf-8").decode("utf-8"))
    print("ok", n)

# add_game list: same margins as the home page
p = os.path.join(B, "res", "layout", "activity_add_game.xml")
s = open(p, encoding="utf-8").read()
s = s.replace('android:layout_marginLeft="15.0dip" android:layout_marginRight="10.0dip"',
              'android:layout_marginLeft="28.0dip" android:layout_marginRight="28.0dip"', 1)
import re
s = re.sub(r'app:separator_color="[^"]*"', 'app:separator_color="@color/transparent"', s)
s = re.sub(r'app:show_(horizontal|vertical)_separator="[^"]*"', r'app:show_\1_separator="false"', s)
s = re.sub(r'app:(selected|unselected)_color="[^"]*"', r'app:\1_color="@color/transparent"', s)
open(p, "w", encoding="utf-8", newline="\n").write(s)
