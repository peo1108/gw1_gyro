# -*- coding: utf-8 -*-
import os
W=r"C:\Users\cam\AppData\Local\Temp\claude\2084aae2c75622f3\a848ad98-05ba-49c9-a69b-3c1280683772\scratchpad\port\build_gg1"
V=os.path.join(W,"res","values")
def rd(p): return open(p,encoding="utf-8").read()
def wr(p,s): open(p,"w",encoding="utf-8",newline="\n").write(s)

GYROUI='''.class public LK6/GyroUI;
.super Ljava/lang/Object;


.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installRecoilCell(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f090427

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :c2

    check-cast v0, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v0, v0, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "gw2_gyro"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "invert"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance v1, LK6/GyroInvL;

    invoke-direct {v1}, LK6/GyroInvL;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :c2
    const v0, 0x7f090429

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :c3

    check-cast v0, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v0, v0, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "gw2_gyro"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "hrecoil"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance v1, LK6/GyroHRecoilL;

    invoke-direct {v1}, LK6/GyroHRecoilL;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :c3
    const v0, 0x7f090428

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :done

    check-cast v0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v0, v0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "gw2_gyro"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "sens"

    const/4 v3, 0x5

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    new-instance v1, LK6/GyroSensL;

    invoke-direct {v1}, LK6/GyroSensL;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    :done
    return-void
.end method

.method public static hideView(Landroid/view/View;)V
    .locals 1

    if-eqz p0, :e

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :e
    return-void
.end method
'''
wr(os.path.join(W,"smali_classes3","K6","GyroUI.smali"),GYROUI)
print("GyroUI rewritten")

HREC_L='''.class public LK6/GyroHRecoilL;
.super Ljava/lang/Object;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p2}, LK6/m;->setHRecoil(Z)V

    return-void
.end method
'''
wr(os.path.join(W,"smali_classes3","K6","GyroHRecoilL.smali"),HREC_L)
print("GyroHRecoilL written")

# K6/m wantHRecoil + setHRecoil
p=os.path.join(W,"smali_classes3","K6","m.smali"); s=rd(p)
if "->wantHRecoil(" not in s:
    s=s.rstrip()+'''

.method public static wantHRecoil()Z
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gw2_gyro"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "hrecoil"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setHRecoil(Z)V
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gw2_gyro"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hrecoil"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method'''
    wr(p,s); print("K6/m wantHRecoil+setHRecoil added")
else: print("K6/m hrecoil methods exist")

# pubg/i.<init> auto-enable
p=os.path.join(W,"smali","com","zjx","jyandroid","Extensions","pubg","i.smali"); s=rd(p)
anc="    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/i;->A()V\n\n    return-void"
new="    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/i;->A()V\n\n    invoke-static {}, LK6/m;->wantHRecoil()Z\n\n    move-result v0\n\n    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->h:Z\n\n    return-void"
if "LK6/m;->wantHRecoil()Z" in s: print("pubg/i init hook present")
elif anc in s: s=s.replace(anc,new,1); wr(p,s); print("pubg/i <init> auto-enable hooked")
else: raise SystemExit("pubg/i init anchor not found")

# resources
p=os.path.join(V,"ids.xml"); s=rd(p)
if 'name="gyroHRecoilCell"' not in s: s=s.replace("</resources>",'    <item type="id" name="gyroHRecoilCell" />\n</resources>',1); wr(p,s); print("ids +")
p=os.path.join(V,"strings.xml"); s=rd(p)
if 'name="gyro_hrecoil_title"' not in s: s=s.replace("</resources>",'    <string name="gyro_hrecoil_title">'+u"Gi\u1ea3m gi\u1eadt ngang (gyro)"+'</string>\n</resources>',1); wr(p,s); print("strings +")
p=os.path.join(V,"public.xml"); s=rd(p)
add=""
if 'name="gyroHRecoilCell"' not in s: add+='    <public type="id" name="gyroHRecoilCell" id="0x7f090429" />\n'
if 'name="gyro_hrecoil_title"' not in s: add+='    <public type="string" name="gyro_hrecoil_title" id="0x7f1103a7" />\n'
if add: s=s.replace("</resources>",add+"</resources>",1); wr(p,s); print("public +")
p=os.path.join(W,"res","layout","pubg_extension_settings_view.xml"); s=rd(p)
if '@id/gyroHRecoilCell' not in s:
    inv='<com.zjx.jyandroid.base.Components.TextWithSwitchView android:id="@id/gyroInvertCell" android:layout_width="fill_parent" android:layout_height="40.0dip" app:showSubtitle="false" app:titleSize="@dimen/font_size_text_phone" app:titleText="@string/gyro_invert_title" app:titleTextColor="#ffffffff" />'
    hr='<com.zjx.jyandroid.base.Components.TextWithSwitchView android:id="@id/gyroHRecoilCell" android:layout_width="fill_parent" android:layout_height="40.0dip" app:showSubtitle="false" app:titleSize="@dimen/font_size_text_phone" app:titleText="@string/gyro_hrecoil_title" app:titleTextColor="#ffffffff" />'
    s=s.replace(inv, inv+"\n                "+hr,1); wr(p,s); print("layout +")
print("HRECOIL DONE")
