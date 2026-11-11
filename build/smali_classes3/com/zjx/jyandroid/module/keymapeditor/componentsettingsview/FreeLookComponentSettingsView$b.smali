.class public Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->u0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$b;->a:Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;F)F
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$b;->a:Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;

    invoke-virtual {p1}, Lu7/a;->getComponent()Lq7/a;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$b;->a:Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;

    invoke-virtual {p1}, Lu7/a;->getComponent()Lq7/a;

    move-result-object p1

    check-cast p1, LK6/b;

    float-to-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, LK6/b;->setSensitivity(F)V

    return p2
.end method
