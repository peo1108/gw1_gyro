.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/NormalTouchPointComponentSettingsView$w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/NormalTouchPointComponentSettingsView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/NormalTouchPointComponentSettingsView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/NormalTouchPointComponentSettingsView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/NormalTouchPointComponentSettingsView$w;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/NormalTouchPointComponentSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/NormalTouchPointComponentSettingsView$w;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/NormalTouchPointComponentSettingsView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/zjx/jyandroid/R$layout;->edit_crazy_tap_weapons_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/zjx/jyandroid/Extensions/pubg/EditCrazyTapWeaponsView;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v5

    const/16 v6, 0x33

    invoke-static {}, Ll/b;->i()I

    move-result v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, v8

    invoke-virtual/range {v0 .. v7}, Ll/b;->d(Lcom/zjx/jyandroid/base/BaseFloatingView;IIIIII)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/NormalTouchPointComponentSettingsView$w;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/NormalTouchPointComponentSettingsView;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->component:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;

    invoke-virtual {v8, v0}, Lcom/zjx/jyandroid/Extensions/pubg/EditCrazyTapWeaponsView;->setComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;)V

    iget-object v0, v8, Lcom/zjx/jyandroid/Extensions/pubg/EditCrazyTapWeaponsView;->a:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/NormalTouchPointComponentSettingsView$w$a;

    invoke-direct {v1, p0, v8, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/NormalTouchPointComponentSettingsView$w$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/NormalTouchPointComponentSettingsView$w;Lcom/zjx/jyandroid/Extensions/pubg/EditCrazyTapWeaponsView;Ll/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lcom/zjx/jyandroid/Extensions/pubg/EditCrazyTapWeaponsView;->b:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/NormalTouchPointComponentSettingsView$w$b;

    invoke-direct {v1, p0, p1, v8}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/NormalTouchPointComponentSettingsView$w$b;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/NormalTouchPointComponentSettingsView$w;Ll/b;Lcom/zjx/jyandroid/Extensions/pubg/EditCrazyTapWeaponsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
