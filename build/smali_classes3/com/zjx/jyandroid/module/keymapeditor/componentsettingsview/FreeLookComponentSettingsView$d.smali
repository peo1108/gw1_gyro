.class public Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$d;->a:Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object p1, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$d;->a:Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;

    invoke-virtual {p1}, Lu7/a;->getComponent()Lq7/a;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$d;->a:Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;

    invoke-virtual {p1}, Lu7/a;->getComponent()Lq7/a;

    move-result-object p1

    check-cast p1, LK6/b;

    invoke-virtual {p1, p2}, LK6/b;->setNadeGyroMode(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$d;->a:Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->B7:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->G7:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->H7:Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;

    invoke-virtual {p1}, LK6/b;->getNadeGyroSpeed()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->setValue(F)V

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->M7:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->N7:Landroid/widget/Switch;

    invoke-virtual {p1}, LK6/b;->getScrollAdjust()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, v0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->J7:Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;

    invoke-virtual {p1}, LK6/b;->getScrollStep()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->setValue(F)V

    invoke-virtual {p1}, LK6/b;->getScrollAdjust()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    iget-object v2, v0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->I7:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0x8

    iget-object v2, v0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->K7:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    const/16 v1, 0x8

    iget-object v2, v0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->B7:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->G7:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->I7:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->K7:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->M7:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
