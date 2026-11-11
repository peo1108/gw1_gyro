.class public Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$j;
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

    iput-object p1, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$j;->a:Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$j;->a:Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;

    invoke-virtual {p1}, Lu7/a;->getComponent()Lq7/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, LK6/b;

    invoke-virtual {v0, p2}, LK6/b;->setScrollAdjust(Z)V

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    iget-object p1, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$j;->a:Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;

    iget-object p1, p1, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->I7:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
