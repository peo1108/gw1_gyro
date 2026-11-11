.class public Lo/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

.field public b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationPositionEditorPanel;

.field public c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;
    .locals 1

    iget-object v0, p0, Lo/a;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    return-object v0
.end method

.method public b()V
    .locals 12

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->setDefaultEventReceiverEnabled(Z)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    sget v2, Lcom/zjx/jyandroid/R$layout;->components_holder_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    iput-object v2, p0, Lo/a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v2

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v4

    iget-object v5, p0, Lo/a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-static {}, Ll/b;->i()I

    move-result v2

    or-int/lit8 v11, v2, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x33

    invoke-virtual/range {v4 .. v11}, Ll/b;->d(Lcom/zjx/jyandroid/base/BaseFloatingView;IIIIII)V

    sget v2, Lcom/zjx/jyandroid/R$layout;->macro_operation_position_editor_panel:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationPositionEditorPanel;

    iput-object v1, p0, Lo/a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationPositionEditorPanel;

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v2

    iget-object v3, p0, Lo/a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationPositionEditorPanel;

    const/16 v1, 0xe6

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v6

    const/16 v1, 0x50

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v7

    const/16 v8, 0x31

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v8}, Ll/b;->c(Lcom/zjx/jyandroid/base/BaseFloatingView;IIIII)V

    iget-object v1, p0, Lo/a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationPositionEditorPanel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V

    iget-object v1, p0, Lo/a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationPositionEditorPanel;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationPositionEditorPanel;->b:Landroid/view/View;

    new-instance v2, Lo/a$a;

    invoke-direct {v2, p0, v0}, Lo/a$a;-><init>(Lo/a;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lq/a;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/a;

    iget-object v1, p0, Lo/a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v0, v1}, Lq/a;->f(Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 2

    iget-object v0, p0, Lo/a;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setSelected(Z)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setSelected(Z)V

    :cond_1
    iput-object p1, p0, Lo/a;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    return-void
.end method

.method public e()V
    .locals 2

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v0

    iget-object v1, p0, Lo/a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationPositionEditorPanel;

    invoke-virtual {v0, v1}, Ll/b;->q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v0

    iget-object v1, p0, Lo/a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v0, v1}, Ll/b;->q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationPositionEditorPanel;

    iput-object v0, p0, Lo/a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    return-void
.end method
