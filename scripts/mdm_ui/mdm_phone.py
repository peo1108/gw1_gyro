"""Phone/tablet rebuild of the MDM screens.

The home and "More" pages were drawn for a 1280x800 canvas: two fixed columns, 32dip side padding,
a 400dip sidebar and a 92dip bottom gap for a floating capsule. On a phone that leaves about
100dip for the game list and the capsule sits on top of the content.

What this does (attribute-level only, every id / tag / custom view is preserved, because
MainPageView and SettingsPageView look them up at runtime):

  * page padding, gaps, card padding, title and hero sizes move to @dimen/mdm_* , which are
    phone-sized in values/ and the original tablet sizes in values-sw600dp-v13/;
  * both pages become one vertical ScrollView: header, then the info cards, then the game list.
    The logic only needs the ids to exist, not the two-column arrangement;
  * the fixed 400dip / 340dip sidebar widths become fill_parent;
  * the floating capsule is sized from dimens so it shrinks on a phone;
  * the secondary activities use the same dimens for their header and card margins;
  * text that had been double-encoded ("Trang chá»§") is repaired.

usage: python mdm_phone.py <build_dir>
"""
import os
import re
import sys
from xml.dom import minidom

B = sys.argv[1]


def P(*p):
    return os.path.join(B, *p)


def rd(p):
    with open(p, encoding="utf-8") as f:
        return f.read()


def wr(p, s):
    with open(p, "w", encoding="utf-8", newline="\n") as f:
        f.write(s)


def els(node):
    return [c for c in node.childNodes if c.nodeType == c.ELEMENT_NODE]


def walk(node):
    for c in els(node):
        yield c
        yield from walk(c)


def A(e, k):
    return e.getAttribute(k) if e.hasAttribute(k) else None


def S(e, k, v):
    e.setAttribute(k, v)


def swap(e, k, old, new):
    if A(e, k) == old:
        S(e, k, new)
        return True
    return False


# ------------------------------------------------------------------ dimens

BASE = """<?xml version="1.0" encoding="utf-8"?>
<resources>
    <!-- MDM screens. Phone values here; values-sw600dp-v13 restores the tablet canvas. -->
    <dimen name="mdm_page_pad_h">20.0dip</dimen>
    <dimen name="mdm_page_pad_top">16.0dip</dimen>
    <dimen name="mdm_page_pad_bottom">100.0dip</dimen>
    <dimen name="mdm_col_gap">16.0dip</dimen>
    <dimen name="mdm_card_pad">16.0dip</dimen>
    <dimen name="mdm_card_radius">20dp</dimen>
    <dimen name="mdm_title_size">22.0sp</dimen>
    <dimen name="mdm_eyebrow_size">11.0sp</dimen>
    <dimen name="mdm_hero_logo">92.0dip</dimen>
    <dimen name="mdm_hero_pad">20.0dip</dimen>
    <dimen name="mdm_row_h">56.0dip</dimen>
    <dimen name="mdm_nav_height">58.0dip</dimen>
    <dimen name="mdm_nav_margin">10.0dip</dimen>
    <dimen name="mdm_nav_tab_min">88.0dip</dimen>
    <dimen name="mdm_activity_pad_h">20.0dip</dimen>
    <dimen name="mdm_activity_header">64.0dip</dimen>
    <dimen name="mdm_activity_head_size">22.0sp</dimen>
</resources>
"""

TABLET = """<?xml version="1.0" encoding="utf-8"?>
<resources>
    <!-- Tablets and wide screens keep the original two-column canvas. -->
    <dimen name="mdm_page_pad_h">32.0dip</dimen>
    <dimen name="mdm_page_pad_top">22.0dip</dimen>
    <dimen name="mdm_page_pad_bottom">92.0dip</dimen>
    <dimen name="mdm_col_gap">24.0dip</dimen>
    <dimen name="mdm_card_pad">22.0dip</dimen>
    <dimen name="mdm_card_radius">24dp</dimen>
    <dimen name="mdm_title_size">28.0sp</dimen>
    <dimen name="mdm_eyebrow_size">12.0sp</dimen>
    <dimen name="mdm_hero_logo">132.0dip</dimen>
    <dimen name="mdm_hero_pad">28.0dip</dimen>
    <dimen name="mdm_row_h">64.0dip</dimen>
    <dimen name="mdm_nav_height">64.0dip</dimen>
    <dimen name="mdm_nav_margin">20.0dip</dimen>
    <dimen name="mdm_nav_tab_min">104.0dip</dimen>
    <dimen name="mdm_activity_pad_h">28.0dip</dimen>
    <dimen name="mdm_activity_header">76.0dip</dimen>
    <dimen name="mdm_activity_head_size">26.0sp</dimen>
</resources>
"""

LAND = """<?xml version="1.0" encoding="utf-8"?>
<resources>
    <!-- A landscape phone is still one column, only shorter: tighten the bottom gap. -->
    <dimen name="mdm_page_pad_bottom">84.0dip</dimen>
    <dimen name="mdm_nav_margin">8.0dip</dimen>
</resources>
"""


def put_dimens():
    for qual, body in (("values", BASE), ("values-sw600dp-v13", TABLET), ("values-land", LAND)):
        d = P("res", qual)
        if not os.path.isdir(d):
            os.makedirs(d)
        wr(os.path.join(d, "mdm_screen.xml"), body)


# --------------------------------------------------------------- text fix


def repair(s):
    """Undo UTF-8 read as cp1252 and written back as UTF-8 (exact, idempotent for clean text).

    A few characters (em dash, smart quotes) do not survive the round trip, so they are folded
    back to ASCII before the byte swap and restored afterwards.
    """
    marks = {"\u2014": "--M--", "\u2013": "--N--", "\u2018": "--q--", "\u2019": "--p--",
             "\u201c": "--Q--", "\u201d": "--R--"}
    held = s
    for ch, token in marks.items():
        held = held.replace(ch, token)
    try:
        out = held.encode("cp1252", "strict").decode("utf-8", "strict")
    except (UnicodeEncodeError, UnicodeDecodeError):
        return s
    for ch, token in marks.items():
        out = out.replace(token, ch)
    return out


def fix_texts(path):
    s = rd(path)
    out = re.sub(r'(?<=android:text=")([^"]*)(?=")',
                 lambda m: repair(m.group(1)) if re.search(r"[ÃÂáºá»Æ°]", m.group(1)) else m.group(1), s)
    if out != s:
        wr(path, out)
        print("  repaired text in", os.path.basename(path))


# ------------------------------------------------------------------- pages


def flat_colors(e):
    """Card padding and title sizes now live in dimens."""
    if A(e, "android:background") == "@drawable/mdm_card":
        swap(e, "android:padding", "22.0dip", "@dimen/mdm_card_pad")
    if A(e, "android:textSize") in ("28.0sp", "26.0sp", "24.0sp", "21.0sp"):
        S(e, "android:textSize", "@dimen/mdm_title_size")
    if A(e, "android:textSize") == "12.0sp" and A(e, "android:letterSpacing") in ("0.32", "0.28"):
        S(e, "android:textSize", "@dimen/mdm_eyebrow_size")
    if A(e, "android:letterSpacing") in ("0.32", "0.28"):
        S(e, "android:letterSpacing", "0.26")
    swap(e, "android:layout_height", "44.0dip", "@dimen/mdm_row_h")
    swap(e, "android:layout_height", "48.0dip", "@dimen/mdm_row_h")
    swap(e, "android:layout_height", "60.0dip", "@dimen/mdm_row_h")
    swap(e, "android:layout_height", "68.0dip", "@dimen/mdm_row_h")


def to_phone(page_name, hero_id):
    p = P("res", "layout", page_name)
    doc = minidom.parse(p)
    root = doc.documentElement

    flow = None
    for e in walk(root):
        if e.tagName == "LinearLayout" and A(e, "android:orientation") == "vertical" \
                and A(e, "android:paddingLeft") is not None:
            flow = e
            break
    if flow is None:
        raise SystemExit(page_name + ": padded column not found")

    S(flow, "android:paddingLeft", "@dimen/mdm_page_pad_h")
    S(flow, "android:paddingRight", "@dimen/mdm_page_pad_h")
    S(flow, "android:paddingTop", "@dimen/mdm_page_pad_top")
    S(flow, "android:paddingBottom", "@dimen/mdm_page_pad_bottom")

    cols = None
    for c in els(flow):
        if A(c, "android:orientation") == "horizontal" and A(c, "android:layout_weight") == "1.0":
            cols = c
            break
    if cols is None:
        raise SystemExit(page_name + ": column row not found")

    left, right = els(cols)[0], None
    for c in els(cols):
        if c is left:
            continue
        if A(c, "android:layout_weight") == "1.0" or A(c, "android:layout_width") == "0.0dip":
            right = c
            break

    # every card of the page, in reading order: left column then right column
    blocks = []
    for holder in (left, right):
        if holder is None:
            continue
        for c in els(holder):
            if A(c, "android:orientation") == "horizontal" and A(c, "android:layout_height") == "fill_parent" \
                    and A(c, "android:layout_width") == "0.0dip" and right is None:
                blocks.extend(els(c))
            elif c.tagName == "Space":
                continue
            else:
                blocks.append(c)

    scroll = doc.createElement("ScrollView")
    scroll.setAttribute("android:scrollbars", "none")
    scroll.setAttribute("android:layout_width", "fill_parent")
    scroll.setAttribute("android:layout_height", "0.0dip")
    scroll.setAttribute("android:layout_weight", "1.0")
    scroll.setAttribute("android:clipToPadding", "false")
    inner = doc.createElement("LinearLayout")
    inner.setAttribute("android:orientation", "vertical")
    inner.setAttribute("android:layout_width", "fill_parent")
    inner.setAttribute("android:layout_height", "wrap_content")

    pos = list(els(flow)).index(cols)
    flow.removeChild(cols)
    after = els(flow)
    if pos < len(after):
        flow.insertBefore(scroll, after[pos])
    else:
        flow.appendChild(scroll)
    scroll.appendChild(inner)

    for b in blocks:
        inner.appendChild(b)

    for e in walk(root):
        flat_colors(e)
        if e.tagName == "ScrollView" and e is not scroll:
            # leftover inner scrollers would fight the page scroll
            S(e, "android:layout_height", "wrap_content")
            S(e, "android:layout_width", "fill_parent")
            if e.hasAttribute("android:layout_weight"):
                e.removeAttribute("android:layout_weight")
        if e.tagName.endswith("TableView"):
            S(e, "android:layout_height", "wrap_content")
            S(e, "android:minHeight", "200.0dip")
        if e.hasAttribute("android:id") and A(e, "android:id") == hero_id:
            S(e, "android:layout_width", "@dimen/mdm_hero_logo")
            S(e, "android:layout_height", "@dimen/mdm_hero_logo")

    wr(p, doc.toxml(encoding="utf-8").decode("utf-8"))
    print("ok", page_name)


# -------------------------------------------------------- secondary screens

ACTIVITIES = ["activity_add_game", "activity_manage_permission", "activity_manage_adb_root",
              "activity_manage_adb_wired", "activity_manage_adb_wireless", "activity_ota"]


def activities():
    for name in ACTIVITIES:
        p = P("res", "layout", name + ".xml")
        if not os.path.isfile(p):
            continue
        s = rd(p)
        s = s.replace('android:layout_height="76.0dip"', 'android:layout_height="@dimen/mdm_activity_header"')
        s = s.replace('android:textSize="26.0sp"', 'android:textSize="@dimen/mdm_activity_head_size"')
        s = s.replace('android:paddingLeft="28.0dip"', 'android:paddingLeft="@dimen/mdm_activity_pad_h"')
        s = s.replace('android:paddingRight="24.0dip"', 'android:paddingRight="@dimen/mdm_activity_pad_h"')
        s = s.replace('android:layout_marginLeft="28.0dip"', 'android:layout_marginLeft="@dimen/mdm_activity_pad_h"')
        s = s.replace('android:layout_marginRight="28.0dip"', 'android:layout_marginRight="@dimen/mdm_activity_pad_h"')
        s = s.replace('android:layout_marginLeft="48.0dip"', 'android:layout_marginLeft="36.0dip"')
        s = s.replace('android:layout_marginTop="22.0dip"', 'android:layout_marginTop="18.0dip"')
        s = s.replace('android:layout_height="62.0dip"', 'android:layout_height="@dimen/mdm_row_h"')
        wr(p, s)
        print("ok", name + ".xml")


def nav():
    p = P("res", "layout", "activity_main.xml")
    s = rd(p)
    s = s.replace('<mdm.CamNavBar android:layout_width="wrap_content" android:layout_height="64.0dip" '
                  'android:layout_marginBottom="20.0dip"',
                  '<mdm.CamNavBar android:layout_width="wrap_content" '
                  'android:layout_height="@dimen/mdm_nav_height" '
                  'android:layout_marginBottom="@dimen/mdm_nav_margin"')
    wr(p, s)
    print("ok activity_main.xml")


put_dimens()
to_phone("main_page_view.xml", "@id/imageView")
to_phone("settings_page_view.xml", "@id/imageView")
activities()
nav()

for f in ("main_page_view.xml", "settings_page_view.xml", "start_game_table_row.xml", "add_game_table_row.xml"):
    fix_texts(P("res", "layout", f))
print("done")