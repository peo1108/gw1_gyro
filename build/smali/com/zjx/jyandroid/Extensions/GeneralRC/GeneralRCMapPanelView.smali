.class public Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;
.super Lcom/zjx/jyandroid/base/BaseFloatingView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView$MapPanelViewAdapter;
    }
.end annotation


# instance fields
.field addFingerRegionButton:Landroid/widget/Button;

.field addFireRegionButton:Landroid/widget/Button;

.field exitButton:Landroid/widget/Button;

.field folding:Z

.field mapPanelViewAdapter:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView$MapPanelViewAdapter;

.field resetButton:Landroid/widget/Button;

.field saveButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;->folding:Z

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

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;->folding:Z

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

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;->folding:Z

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

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;->folding:Z

    return-void
.end method


# virtual methods
.method public getMapPanelViewAdapter()Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView$MapPanelViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;->mapPanelViewAdapter:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView$MapPanelViewAdapter;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->onFinishInflate()V

    sget v0, Lcom/zjx/jyandroid/R$id;->cancelButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;->exitButton:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->resetButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;->resetButton:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->saveButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;->saveButton:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->addFingerRegionButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;->addFingerRegionButton:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->addFireRegionButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;->addFireRegionButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;->exitButton:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView$1;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView$1;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;->resetButton:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView$2;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView$2;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;->saveButton:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView$3;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView$3;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;->addFingerRegionButton:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView$4;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView$4;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;->addFireRegionButton:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView$5;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView$5;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMapPanelViewAdapter(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView$MapPanelViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView;->mapPanelViewAdapter:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView$MapPanelViewAdapter;

    return-void
.end method
