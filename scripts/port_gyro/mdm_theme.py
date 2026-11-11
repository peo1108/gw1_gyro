"""Apply MDM black + champagne-gold branding to the gg1 apktool tree.
usage: python -I mdm_theme.py <build_dir> <logo_png>
"""
import os, re, sys, glob
from PIL import Image

B, LOGO = sys.argv[1], sys.argv[2]
R = lambda *p: os.path.join(B, *p)

def rd(p):
    with open(p, encoding="utf-8") as f: return f.read()
def wr(p, s):
    with open(p, "w", encoding="utf-8", newline="\n") as f: f.write(s)

# ---------------- palette ----------------
GOLD, GOLD_HI, GOLD_LO = "#ffd4b47a", "#ffe8d3a4", "#ffb8955a"
NEW = {  # new colors (name -> value)
    "mdm_bg": "#ff0b0b0b", "mdm_surface": "#ff161512", "mdm_panel": "#f01a1712",
    "mdm_text": "#fff3ead8", "mdm_text_dim": "#ffa89c86", "mdm_on_gold": "#ff1a140a",
    "mdm_gold": GOLD, "mdm_hint_box": "#ff241f16",
}
RECOLOR = {
    "jy_blue_1": GOLD, "jy_blue_2": GOLD, "jy_blue_3": GOLD_HI, "jy_blue_dark": GOLD_LO,
    "border_jy": GOLD_LO, "link_blue": GOLD_HI,
    "component_settings_view_background": "#ff1a1712",
    "player_view_background": "#afb8955a",
    "navigation_bar_background": "#ff111111",
}
p = R("res/values/colors.xml"); s = rd(p)
for n, v in RECOLOR.items():
    s, k = re.subn(rf'(<color name="{n}">)[^<]+(</color>)', rf"\g<1>{v}\g<2>", s); assert k == 1, n
s = s.replace("</resources>", "".join(f'    <color name="{n}">{v}</color>\n' for n, v in NEW.items()) + "</resources>")
wr(p, s)

# public.xml ids for new resources
p = R("res/values/public.xml"); s = rd(p)
def nextid(t):
    return max(int(x, 16) for x in re.findall(rf'type="{t}" name="[^"]+" id="(0x[0-9a-f]+)"', s)) + 1
add = []
cid = nextid("color")
for n in NEW: add.append(f'    <public type="color" name="{n}" id="0x{cid:08x}" />'); cid += 1
did = nextid("drawable")
add.append(f'    <public type="drawable" name="mdm_logo" id="0x{did:08x}" />')
s = s.replace("</resources>", "\n".join(add) + "\n</resources>")
wr(p, s)
print("mdm_logo drawable id = 0x%08x" % did)

# ---------------- layouts ----------------
APP_LAYOUTS = {"activity_main", "activity_add_game", "activity_login", "activity_manage_adb_root",
    "activity_manage_adb_wired", "activity_manage_adb_wireless", "activity_manage_permission",
    "activity_ota", "activity_test_connection", "main_page_view", "settings_page_view",
    "start_game_table_row", "add_game_table_row", "settings_page_view_spinner_item"}
WHITE = r'(?:@color/white|#ffffffff|@android:color/white)'
TAG = re.compile(r"<([A-Za-z0-9_.]+)(\s[^<>]*?)(/?)>", re.S)

def fix_tag(name, attrs, app):
    short = name.split(".")[-1]
    is_text = ("Button" in short) or ("TextView" in short)
    # gold used as a big container background behind white text -> dark panel instead
    if not is_text:
        attrs = re.sub(r'android:background="@color/jy_blue_[0-9a-z]+"', 'android:background="@color/mdm_panel"', attrs)
    # text sitting on gold -> dark text
    if is_text and re.search(r'android:(background|backgroundTint)="@color/(jy_blue_\w+|border_jy)"', attrs):
        attrs = re.sub(rf'android:textColor="{WHITE}"', 'android:textColor="@color/mdm_on_gold"', attrs)
    if short == "SmoothBottomBar":
        attrs = attrs.replace('app:textColor="@color/white"', 'app:textColor="@color/mdm_on_gold"')
        attrs = attrs.replace('app:iconTint="@color/jy_blue_3"', 'app:iconTint="@color/mdm_text_dim"')
        attrs = attrs.replace('app:iconTintActive', 'app:iconTintActive')
    if app:
        attrs = re.sub(r'android:textColor="(@color/black|#ff333333|@color/custom_black)"', 'android:textColor="@color/mdm_text"', attrs)
        attrs = attrs.replace('android:textColor="@android:color/darker_gray"', 'android:textColor="@color/mdm_text_dim"')
        attrs = attrs.replace('android:tint="@color/black"', 'android:tint="@color/mdm_text"')
        for a, b in (("#1a000000", "#1affffff"), ("#10000000", "#14ffffff"), ("#2a000000", "#2affffff"), ("#3a000000", "#2affffff")):
            attrs = attrs.replace(f'="{a}"', f'="{b}"')
        attrs = attrs.replace('android:backgroundTint="#ffced6fb"', 'android:backgroundTint="@color/mdm_hint_box"')
        attrs = attrs.replace('android:background="@color/default_grey_separator"', 'android:background="#1affffff"')
        attrs = attrs.replace('android:background="@drawable/border_bottom"', 'android:background="@drawable/mdm_border_bottom"')
        if 'android:text="@string/jiayingyouxiting"' in attrs:  # page title -> gold, bold, spaced
            attrs = attrs.replace('android:textColor="@color/mdm_text"', 'android:textColor="@color/mdm_gold"')
            attrs += ' android:textStyle="bold" android:letterSpacing="0.25"'
    return attrs

changed = 0
for f in sorted(glob.glob(R("res/layout/*.xml"))):
    base = os.path.basename(f)[:-4]
    s0 = rd(f)
    s = TAG.sub(lambda m: f"<{m.group(1)}{fix_tag(m.group(1), m.group(2), base in APP_LAYOUTS)}{m.group(3)}>", s0)
    if s != s0: wr(f, s); changed += 1
print("layouts changed:", changed)

wr(R("res/drawable/mdm_border_bottom.xml"), """<?xml version="1.0" encoding="utf-8"?>
<layer-list xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:left="-2.0dip" android:top="-2.0dip" android:right="-2.0dip">
        <shape android:shape="rectangle">
            <stroke android:width="1.0px" android:color="#1fffffff" />
            <solid android:color="#00000000" />
        </shape>
    </item>
</layer-list>
""")
s = rd(R("res/values/public.xml"))
did2 = did + 1
wr(R("res/values/public.xml"), s.replace("</resources>", f'    <public type="drawable" name="mdm_border_bottom" id="0x{did2:08x}" />\n</resources>'))

# ---------------- dark activity theme ----------------
p = R("res/values/styles.xml"); s = rd(p)
assert "Theme.MDM" not in s
s = s.replace("</resources>", f"""    <style name="Theme.MDM" parent="@style/Theme.MaterialComponents.NoActionBar">
        <item name="android:textAllCaps">false</item>
        <item name="textAllCaps">false</item>
        <item name="android:forceDarkAllowed">false</item>
        <item name="android:windowLightStatusBar">false</item>
        <item name="android:windowBackground">@color/mdm_bg</item>
        <item name="android:colorBackground">@color/mdm_bg</item>
        <item name="android:statusBarColor">@color/mdm_bg</item>
        <item name="android:navigationBarColor">@color/mdm_bg</item>
        <item name="android:textColorPrimary">@color/mdm_text</item>
        <item name="android:textColorSecondary">@color/mdm_text_dim</item>
        <item name="android:textColor">@color/mdm_text</item>
        <item name="colorPrimary">@color/mdm_gold</item>
        <item name="colorPrimaryDark">@color/mdm_bg</item>
        <item name="colorPrimaryVariant">@color/mdm_gold</item>
        <item name="colorOnPrimary">@color/mdm_on_gold</item>
        <item name="colorSecondary">@color/mdm_gold</item>
        <item name="colorSecondaryVariant">@color/mdm_gold</item>
        <item name="colorOnSecondary">@color/mdm_on_gold</item>
        <item name="colorAccent">@color/mdm_gold</item>
        <item name="colorControlActivated">@color/mdm_gold</item>
        <item name="colorSurface">@color/mdm_surface</item>
        <item name="colorOnSurface">@color/mdm_text</item>
    </style>
</resources>""")
wr(p, s)

p = R("AndroidManifest.xml"); s = rd(p)
ACTS = ["MainApp.MainActivity", "MainApp.LoginActivity", "MainApp.AddGameActivity", "MainApp.ManagePermissionActivity",
        "MainApp.TestConnectionActivity", "ADB.ManageAdbActivityWired", "ADB.ManageAdbActivityWireless",
        "ADB.ManageAdbActivityRoot", "MainApp.OTAActivity"]
for a in ACTS:
    m = re.search(rf'<activity ([^>]*?)android:name="com\.zjx\.jyandroid\.{re.escape(a)}"([^>]*?)(/?)>', s)
    assert m, a
    tag = m.group(0)
    new = re.sub(r'\s*android:theme="[^"]*"', "", tag).replace("<activity ", '<activity android:theme="@style/Theme.MDM" ', 1)
    s = s.replace(tag, new)
s = s.replace('android:roundIcon="@mipmap/ic_launcher_round"', 'android:roundIcon="@drawable/app_logo_1024"')
wr(p, s)

# ---------------- name ----------------
for f in glob.glob(R("res/values*/strings.xml")):
    s0 = rd(f)
    s = re.sub(r'(<string name="(app_name|jiayingyouxiting)">)[^<]*(</string>)', r"\1MDM\3", s0)
    if s != s0: wr(f, s)

# ---------------- images ----------------
im = Image.open(LOGO).convert("RGB")
g = im.convert("L").point(lambda v: 255 if v > 45 else 0)
x0, y0, x1, y1 = g.getbbox()
cx, cy, side = (x0 + x1) / 2, (y0 + y1) / 2, max(x1 - x0, y1 - y0)
def square(pad):
    h = side * (1 + pad) / 2
    return im.crop((int(cx - h), int(cy - h), int(cx + h), int(cy + h)))
square(0.22).resize((1024, 1024), Image.LANCZOS).save(R("res/drawable/app_logo_1024.png"), optimize=True)
square(0.04).resize((512, 512), Image.LANCZOS).save(R("res/drawable/mdm_logo.png"), optimize=True)
print("images ok, bbox", (x0, y0, x1, y1))
