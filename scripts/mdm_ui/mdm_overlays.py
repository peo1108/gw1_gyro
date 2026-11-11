"""Dark glass + champagne gold restyle of gg1's in-game floating panels (overlay windows).
Attribute-level rewrites only, so every id, type and constraint the code relies on stays put.
usage: python mdm_overlays.py <build_dir>
"""
import glob
import os
import re
import sys

B = sys.argv[1]
R = lambda *p: os.path.join(B, "res", *p)
SKIP_PREFIX = ("abc_", "design_", "material_", "mtrl_", "m3_", "notification_", "select_dialog", "support_simple",
               "browser_", "ime_", "preference", "image_frame", "custom_dialog", "fragment_", "activity_")
SKIP = {"main_page_view", "settings_page_view", "start_game_table_row", "add_game_table_row",
        "settings_page_view_spinner_item", "virtual_mouse", "floating_ball", "empty", "color_holder_component",
        "text_view_component", "floating_view_test", "components_holder_view"}
HUD_PANELS = {"pubg_panel", "gnyx_panel", "general_rc_panel"}
GLASS = "#e6141210"
TAG = re.compile(r"<([A-Za-z0-9_.]+)(\s[^<>]*?)?(/?)>", re.S)


def rd(p):
    with open(p, encoding="utf-8") as f:
        return f.read()


def wr(p, s):
    with open(p, "w", encoding="utf-8", newline="\n") as f:
        f.write(s)


def attr(a, k):
    m = re.search(r'\s%s="([^"]*)"' % re.escape(k), a)
    return m.group(1) if m else None


def setattr_(a, k, v):
    if attr(a, k) is None:
        return a + ' %s="%s"' % (k, v)
    return re.sub(r'(\s%s=")[^"]*(")' % re.escape(k), lambda m: m.group(1) + v + m.group(2), a)


def delattr_(a, k):
    return re.sub(r'\s%s="[^"]*"' % re.escape(k), "", a)


stats = {}


def bump(k):
    stats[k] = stats.get(k, 0) + 1


def fix_file(name, s):
    out, pos, first = [], 0, True
    # remember which tags opened a former white header bar so their gold label can be bolded
    header_depth = []
    depth = 0
    for m in TAG.finditer(s):
        out.append(s[pos:m.start()])
        pos = m.end()
        tag, a, selfc = m.group(1), m.group(2) or "", m.group(3)
        short = tag.split(".")[-1]
        is_text = short in ("TextView", "Button", "EditText", "AppCompatButton", "AppCompatTextView", "CheckBox")
        bg, tint, tc = attr(a, "android:background"), attr(a, "android:backgroundTint"), attr(a, "android:textColor")

        if bg == "#6affffff":
            a = setattr_(a, "android:background", "#17ffffff"); bump("divider")
        if short == "View" and bg in ("#ffffffff", "@color/white"):
            a = setattr_(a, "android:background", "#1fffffff"); bump("thin line")
        elif not is_text and bg == "@color/white":
            a = setattr_(a, "android:background", "@color/mdm_panel" if first else "@color/transparent")
            bump("white bar")
            if not selfc:
                header_depth.append(depth)
        if tc in ("@color/black", "#ff1d1d1f", "#ff000000"):
            a = setattr_(a, "android:textColor", "@color/mdm_text"); bump("dark text")
        if is_text and tc == "@color/jy_blue_1" and header_depth and attr(a, "android:background") is None:
            a = setattr_(a, "android:textStyle", "bold"); bump("section label")

        if short == "SegmentedButton":
            if attr(a, "app:selectedBackground") == "@color/white":
                a = setattr_(a, "app:selectedBackground", "@color/mdm_gold")
            if attr(a, "app:textColor") == "@color/component_settings_view_background":
                a = setattr_(a, "app:textColor", "@color/mdm_text_dim")
            if attr(a, "app:selectedTextColor") in ("@color/component_settings_view_background", "@color/white"):
                a = setattr_(a, "app:selectedTextColor", "@color/mdm_on_gold")
            bump("segment")

        if tint == "@color/white" and bg in ("@drawable/rounded_button_background_15dp",
                                             "@drawable/rounded_button_background_5dp",
                                             "@drawable/button_rounded_white"):
            a = delattr_(a, "android:backgroundTint")
            if bg != "@drawable/button_rounded_white":
                a = setattr_(a, "android:background", "@drawable/mdm_btn_ghost_sm")
            if attr(a, "android:textColor") in ("@color/component_settings_view_background", "@color/black", None):
                a = setattr_(a, "android:textColor", "@color/mdm_gold_hi")
            bump("white button")
        if attr(a, "android:background") == "@drawable/button_rounded_white" and \
                attr(a, "android:textColor") == "@color/component_settings_view_background":
            a = setattr_(a, "android:textColor", "@color/mdm_gold_hi"); bump("key chip")

        if name in HUD_PANELS and short == "CardView" and tint == "@color/jy_blue_1":
            a = setattr_(a, "android:backgroundTint", GLASS); bump("hud panel")
        for k in ("android:background", "app:cardBackgroundColor"):
            if attr(a, k) == "#8c000000":
                a = setattr_(a, k, GLASS); bump("dark card")

        out.append("<%s%s%s>" % (tag, a, selfc))
        if not tag.startswith("?"):
            first = False
            if not selfc:
                depth += 1
    # closing tags are not matched by TAG, so track depth roughly through them
    out.append(s[pos:])
    return "".join(out)


changed = 0
for f in sorted(glob.glob(R("layout", "*.xml"))):
    n = os.path.basename(f)[:-4]
    if n in SKIP or n.startswith(SKIP_PREFIX):
        continue
    s0 = rd(f)
    s = fix_file(n, s0)
    if s != s0:
        wr(f, s)
        changed += 1
print("overlay layouts changed:", changed)
print(stats)

# ---- shared drawables ----
NS = 'xmlns:android="http://schemas.android.com/apk/res/android"'
wr(R("drawable", "mdm_btn_ghost_sm.xml"), f'''<?xml version="1.0" encoding="utf-8"?>
<ripple {NS} android:color="#26E8D3A4">
    <item><shape android:shape="rectangle"><corners android:radius="10dp" /><solid android:color="#14FFFFFF" /><stroke android:width="1dp" android:color="#66E8D3A4" /></shape></item>
</ripple>
''')
wr(R("drawable", "button_rounded_white.xml"), f'''<?xml version="1.0" encoding="utf-8"?>
<shape {NS} android:padding="10.0dip" android:shape="rectangle">
    <solid android:color="#1FFFFFFF" />
    <corners android:radius="8.0dip" />
    <stroke android:width="1.0dip" android:color="#66E8D3A4" />
</shape>
''')
wr(R("drawable", "alert_view_background.xml"), f'''<?xml version="1.0" encoding="utf-8"?>
<layer-list {NS}>
    <item><shape android:shape="rectangle"><corners android:radius="20dp" /><gradient android:type="linear" android:angle="315" android:startColor="#55FFFFFF" android:centerColor="#0DFFFFFF" android:endColor="#3DE8D3A4" /></shape></item>
    <item android:left="1dp" android:top="1dp" android:right="1dp" android:bottom="1dp"><shape android:shape="rectangle"><corners android:radius="19dp" /><solid android:color="#FA17140F" /></shape></item>
</layer-list>
''')
wr(R("drawable", "alert_view_edit_text_background.xml"), f'''<?xml version="1.0" encoding="utf-8"?>
<shape {NS} android:padding="10.0dip" android:shape="rectangle">
    <solid android:color="#14FFFFFF" />
    <corners android:radius="8.0dip" />
    <stroke android:width="1.0dip" android:color="#40E8D3A4" />
</shape>
''')
for d, old, new in (("pubg_panel_text_background", 'android:color="#ffffffff"', 'android:color="#4DE8D3A4"'),
                    ("filled_slider_button_bg", 'android:color="#ffffffff"', 'android:color="#99E8D3A4"'),
                    ("thick_seek_bar_phone", 'android:color="#ffffffff"', 'android:color="#59E8D3A4"'),
                    ("thick_seek_bar_thumb_phone", 'android:color="@color/white"', 'android:color="@color/mdm_gold_hi"')):
    p = R("drawable", d + ".xml")
    s = rd(p)
    assert old in s, d
    wr(p, s.replace(old, new))

# ---- colors ----
p = R("values", "colors.xml")
s = rd(p)
for n, v in {"settings_segmented_control_background": "#1fffffff",
             "settings_switch_track_tint_ON": "#ffd4b47a",
             "settings_switch_track_tint_OFF": "#40ffffff",
             "settings_switch_thumb_OFF": "#ffd9d0be",
             "table_view_separator_color_on_blue": "#14ffffff",
             "thick_slider_first_part_background": "#ffd4b47a"}.items():
    s, k = re.subn(r'(<color name="%s">)[^<]+(</color>)' % n, lambda m: m.group(1) + v + m.group(2), s)
    assert k == 1, n
wr(p, s)
print("drawables + colors ok")
