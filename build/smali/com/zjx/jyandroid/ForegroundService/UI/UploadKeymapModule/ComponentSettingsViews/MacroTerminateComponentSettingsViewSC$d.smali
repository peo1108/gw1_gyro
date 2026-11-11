.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroTerminateComponentSettingsViewSC$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroTerminateComponentSettingsViewSC;->updateViewByComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

.field public final synthetic b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/r;

.field public final synthetic c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroTerminateComponentSettingsViewSC;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroTerminateComponentSettingsViewSC;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroTerminateComponentSettingsViewSC$d;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroTerminateComponentSettingsViewSC;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroTerminateComponentSettingsViewSC$d;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    iput-object p3, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroTerminateComponentSettingsViewSC$d;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    const-class v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroTerminateComponentSettingsViewSC$d;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroTerminateComponentSettingsViewSC;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->keymapEditor:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->E(Ljava/util/List;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroTerminateComponentSettingsViewSC$d;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroTerminateComponentSettingsViewSC;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->keymapEditor:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->l:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroTerminateComponentSettingsViewSC$d;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroTerminateComponentSettingsViewSC;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->containerView:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroTerminateComponentSettingsViewSC$d;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroTerminateComponentSettingsViewSC;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->keymapEditor:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    sget v1, Lcom/zjx/jyandroid/R$layout;->confirm_cancel_floating_view:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;

    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroTerminateComponentSettingsViewSC$d$a;

    invoke-direct {p1, p0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroTerminateComponentSettingsViewSC$d$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroTerminateComponentSettingsViewSC$d;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;)V

    invoke-virtual {v1, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;->setOnButtonClickedListener(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView$c;)V

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v0

    const/16 p1, 0x82

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v4

    const/16 p1, 0x32

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v5

    const/16 v6, 0x51

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Ll/b;->c(Lcom/zjx/jyandroid/base/BaseFloatingView;IIIII)V

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    const-wide/16 v0, 0x1388

    sget-object v2, Lcom/zjx/jyandroid/base/util/ToastView$a;->a:Lcom/zjx/jyandroid/base/util/ToastView$a;

    const-string v3, "\u8bf7\u5355\u51fb\u9009\u4e2d\u8981\u7ed1\u5b9a\u7684\u5b8f\u540e\u70b9\u51fb\u4e0b\u65b9\u7684\"\u786e\u5b9a\"\u6309\u94ae"

    invoke-direct {p1, v3, v0, v1, v2}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;JLcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void
.end method
