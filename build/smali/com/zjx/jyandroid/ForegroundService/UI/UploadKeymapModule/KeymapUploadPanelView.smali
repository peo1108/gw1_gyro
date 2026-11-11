.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;
.super Lcom/zjx/jyandroid/base/BaseFloatingView;
.source "SourceFile"


# instance fields
.field public a:Lcom/zjx/jyandroid/base/Interfaces/ObjectRunnable;

.field public b:Lcom/zjx/jyandroid/base/Interfaces/ObjectRunnable;

.field public c:Lcom/zjx/jyandroid/base/Interfaces/ObjectRunnable;

.field public d:Lcom/zjx/jyandroid/base/Interfaces/ObjectRunnable;

.field public e:Lcom/zjx/jyandroid/base/Interfaces/ObjectRunnable;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;->c:Lcom/zjx/jyandroid/base/Interfaces/ObjectRunnable;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/zjx/jyandroid/base/Interfaces/ObjectRunnable;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;->a:Lcom/zjx/jyandroid/base/Interfaces/ObjectRunnable;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/zjx/jyandroid/base/Interfaces/ObjectRunnable;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;->d:Lcom/zjx/jyandroid/base/Interfaces/ObjectRunnable;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/zjx/jyandroid/base/Interfaces/ObjectRunnable;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;->e:Lcom/zjx/jyandroid/base/Interfaces/ObjectRunnable;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/zjx/jyandroid/base/Interfaces/ObjectRunnable;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;->b:Lcom/zjx/jyandroid/base/Interfaces/ObjectRunnable;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/zjx/jyandroid/base/Interfaces/ObjectRunnable;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public viewDidLoad()V
    .locals 2

    sget v0, Lcom/zjx/jyandroid/R$id;->unlockButtonTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;->f:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->unlockIcon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;->g:Landroid/widget/ImageView;

    sget v0, Lcom/zjx/jyandroid/R$id;->keymapUploadPanelExitLayout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView$a;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v0, Lcom/zjx/jyandroid/R$id;->keymapUploadPanelUnlockLayout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView$b;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView$b;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v0, Lcom/zjx/jyandroid/R$id;->keymapUploadPanelAddMacroLayout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView$c;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView$c;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v0, Lcom/zjx/jyandroid/R$id;->keymapUploadPanelResetLayout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView$d;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView$d;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v0, Lcom/zjx/jyandroid/R$id;->keymapUploadPanelSaveLayout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView$e;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView$e;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
