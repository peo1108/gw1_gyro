.class public Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field protected frame:Landroid/graphics/Rect;

.field private onFrameChangedListener:Lcom/zjx/jyandroid/base/Interfaces/OnFrameChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

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
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public getFrame()Landroid/graphics/Rect;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getOnFrameChangedListener()Lcom/zjx/jyandroid/base/Interfaces/OnFrameChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->onFrameChangedListener:Lcom/zjx/jyandroid/base/Interfaces/OnFrameChangedListener;

    return-object v0
.end method

.method public setFrame(IIII)V
    .locals 1

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setFrame(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setX(F)V

    .line 4
    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setY(F)V

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    invoke-super {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object v0, p0, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->onFrameChangedListener:Lcom/zjx/jyandroid/base/Interfaces/OnFrameChangedListener;

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0, p0, p1}, Lcom/zjx/jyandroid/base/Interfaces/OnFrameChangedListener;->onFrameChanged(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setOnFrameChangedListener(Lcom/zjx/jyandroid/base/Interfaces/OnFrameChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->onFrameChangedListener:Lcom/zjx/jyandroid/base/Interfaces/OnFrameChangedListener;

    return-void
.end method

.method public setOrigin(II)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    :goto_0
    int-to-float v2, p1

    .line 5
    invoke-virtual {p0, v2}, Landroid/view/View;->setX(F)V

    int-to-float v2, p2

    .line 6
    invoke-virtual {p0, v2}, Landroid/view/View;->setY(F)V

    .line 7
    iget-object v2, p0, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->onFrameChangedListener:Lcom/zjx/jyandroid/base/Interfaces/OnFrameChangedListener;

    if-eqz v2, :cond_1

    .line 8
    new-instance v3, Landroid/graphics/Rect;

    add-int/2addr v1, p1

    add-int/2addr v0, p2

    invoke-direct {v3, p1, p2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v2, p0, v3}, Lcom/zjx/jyandroid/base/Interfaces/OnFrameChangedListener;->onFrameChanged(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public setOrigin(Landroid/graphics/Point;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setOrigin(II)V

    return-void
.end method
