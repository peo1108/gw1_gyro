"""Resources for the gg2 recognition port: strings (+ fixed public ids) and the Force Red Dot cell."""
import sys

B = sys.argv[1]

IDS = [
    ("pubg_data_name_grip_ergonomic", 0x7F1103A8),
    ("pubg_data_name_muzzle_brake", 0x7F1103A9),
    ("pubg_data_name_muzzle_extender", 0x7F1103AA),
    ("pubg_data_name_stock_heavy", 0x7F1103AB),
    ("force_red_dot_recognition", 0x7F1103AC),
    ("force_red_dot_recognition_subtitle", 0x7F1103AD),
]
# default locale holds Vietnamese for the MDM-only UI strings (same as gyro_* strings)
TEXT = {
    "values": ["Ergonomic", "Brake", "Extender", "Heavy Stock",
               "Ép nhận diện Red Dot",
               "Scope không khớp mẫu nào sẽ được tính là Red Dot / Holo"],
    "values-en": ["Ergonomic", "Brake", "Extender", "Heavy Stock",
                  "Force Red Dot Recognition",
                  "Unmatched scopes are treated as Red Dot / Holographic"],
    "values-vi": ["Công thái học", "Hãm", "Kéo dài", "Báng nặng",
                  "Ép nhận diện Red Dot",
                  "Scope không khớp mẫu nào sẽ được tính là Red Dot / Holo"],
    "values-zh": ["工学", "制退器", "延长管", "重型枪托",
                  "强制红点识别", "无法匹配的倍镜按红点/全息处理"],
    "values-zh-rTW": ["工學", "制退器", "延長管", "重型槍托",
                      "強制紅點識別", "無法匹配的倍鏡按紅點/全息處理"],
}


def rd(p):
    return open(f"{B}/{p}", encoding="utf-8").read()


def wr(p, s):
    open(f"{B}/{p}", "w", encoding="utf-8", newline="\n").write(s)


pub = rd("res/values/public.xml")
for name, rid in IDS:
    assert f'name="{name}"' not in pub, name
    assert f'id="{hex(rid)}"' not in pub, hex(rid)
add = "".join(f'    <public type="string" name="{n}" id="{hex(r)}" />\n' for n, r in IDS)
pub = pub.replace("</resources>", add + "</resources>")
wr("res/values/public.xml", pub)

for d, texts in TEXT.items():
    p = f"res/{d}/strings.xml"
    s = rd(p)
    add = "".join(f'    <string name="{n}">{t}</string>\n' for (n, _), t in zip(IDS, texts))
    s = s.replace("</resources>", add + "</resources>")
    wr(p, s)

lay = "res/layout/pubg_extension_settings_view.xml"
s = rd(lay)
anchor = '<View android:id="@id/view16" android:background="#17ffffff" android:layout_width="fill_parent" android:layout_height="1.0px" />\n'
assert s.count(anchor) == 1
cell = (
    '                <com.zjx.jyandroid.base.Components.TextWithSwitchView android:tag="forceRedDotRecognitionCell" '
    'android:layout_width="fill_parent" android:layout_height="40.0dip" app:showSubtitle="true" '
    'app:subtitleSize="@dimen/font_size_subtext_phone" app:subtitleText="@string/force_red_dot_recognition_subtitle" '
    'app:subtitleTextColor="#ffffffff" app:titleSize="@dimen/font_size_text_phone" '
    'app:titleText="@string/force_red_dot_recognition" app:titleTextColor="#ffffffff" />\n'
    '                <View android:background="#17ffffff" android:layout_width="fill_parent" android:layout_height="1.0px" />\n'
)
s = s.replace(anchor, anchor + cell)
wr(lay, s)
print("strings, public ids and layout cell added")
