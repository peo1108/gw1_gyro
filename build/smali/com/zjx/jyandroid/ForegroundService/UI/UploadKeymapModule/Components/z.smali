.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;
.super Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;
.source "SourceFile"


# instance fields
.field public a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/A;

.field public b:Landroid/graphics/Point;

.field public c:Lr/L0$a;

.field public d:I

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lr/L0;

    invoke-direct {v0}, Lr/L0;-><init>()V

    .line 3
    invoke-virtual {v0}, Lr/L0;->o()Lr/L0$a;

    move-result-object v1

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->c:Lr/L0$a;

    .line 4
    invoke-virtual {v0}, Lr/L0;->n()I

    move-result v1

    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->d:I

    .line 5
    invoke-virtual {v0}, Lr/L0;->p()Z

    move-result v1

    iput-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->e:Z

    .line 6
    invoke-virtual {v0}, Lr/L0;->m()I

    move-result v1

    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->f:I

    .line 7
    invoke-virtual {v0}, Lr/L0;->l()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->b:Landroid/graphics/Point;

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zjx/jyandroid/R$color;->swipe_touch_point_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBackgroundColor(I)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zjx/jyandroid/R$color;->swipe_touch_point_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBackgroundColor(I)V

    .line 10
    sget v0, Lcom/zjx/jyandroid/R$string;->empty:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setTextLabelText(Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/A;

    invoke-direct {v0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/A;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/A;

    .line 12
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z$a;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;)V

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setOnFrameChangedListener(Lcom/zjx/jyandroid/base/Interfaces/OnFrameChangedListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance p1, Lr/L0;

    invoke-direct {p1}, Lr/L0;-><init>()V

    .line 15
    invoke-virtual {p1}, Lr/L0;->o()Lr/L0$a;

    move-result-object p2

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->c:Lr/L0$a;

    .line 16
    invoke-virtual {p1}, Lr/L0;->n()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->d:I

    .line 17
    invoke-virtual {p1}, Lr/L0;->p()Z

    move-result p2

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->e:Z

    .line 18
    invoke-virtual {p1}, Lr/L0;->m()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->f:I

    .line 19
    invoke-virtual {p1}, Lr/L0;->l()Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->b:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance p1, Lr/L0;

    invoke-direct {p1}, Lr/L0;-><init>()V

    .line 22
    invoke-virtual {p1}, Lr/L0;->o()Lr/L0$a;

    move-result-object p2

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->c:Lr/L0$a;

    .line 23
    invoke-virtual {p1}, Lr/L0;->n()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->d:I

    .line 24
    invoke-virtual {p1}, Lr/L0;->p()Z

    move-result p2

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->e:Z

    .line 25
    invoke-virtual {p1}, Lr/L0;->m()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->f:I

    .line 26
    invoke-virtual {p1}, Lr/L0;->l()Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->b:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    new-instance p1, Lr/L0;

    invoke-direct {p1}, Lr/L0;-><init>()V

    .line 29
    invoke-virtual {p1}, Lr/L0;->o()Lr/L0$a;

    move-result-object p2

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->c:Lr/L0$a;

    .line 30
    invoke-virtual {p1}, Lr/L0;->n()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->d:I

    .line 31
    invoke-virtual {p1}, Lr/L0;->p()Z

    move-result p2

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->e:Z

    .line 32
    invoke-virtual {p1}, Lr/L0;->m()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->f:I

    .line 33
    invoke-virtual {p1}, Lr/L0;->l()Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->b:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->e:Z

    return v0
.end method

.method public b(II)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->b:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    iput p2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->c()V

    return-void
.end method

.method public final c()V
    .locals 7

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/A;->getDefaultSize()Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/A;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->b:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->b:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->b:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->b:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v6, v0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getComponentViews()[Landroid/view/View;
    .locals 3

    invoke-super {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->getComponentViews()[Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    array-length v0, v0

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/A;

    aput-object v2, v1, v0

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public getEndPoint()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->b:Landroid/graphics/Point;

    return-object v0
.end method

.method public getEndpointView()Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/A;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/A;

    return-object v0
.end method

.method public getSwipeDuration()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->f:I

    return v0
.end method

.method public getTriggerLatency()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->d:I

    return v0
.end method

.method public getType()Lr/L0$a;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->c:Lr/L0$a;

    return-object v0
.end method

.method public setEndPoint(Landroid/graphics/Point;)V
    .locals 1

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->b(II)V

    return-void
.end method

.method public setEndpointView(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/A;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/A;

    return-void
.end method

.method public setMouseModeHorizontalSwipe(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->e:Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelected(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/A;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->c()V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/A;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelected(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/A;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSwipeDuration(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->f:I

    return-void
.end method

.method public setTriggerLatency(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->d:I

    return-void
.end method

.method public setType(Lr/L0$a;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->c:Lr/L0$a;

    return-void
.end method
