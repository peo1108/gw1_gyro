.class public abstract Lf6/q;
.super Lf6/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf6/q$b;
    }
.end annotation


# static fields
.field public static final k7:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public e7:Lg6/H$a;

.field public f7:Landroid/graphics/Point;

.field public g7:Lf6/q$b;

.field public h7:Z

.field public i7:Lg6/H$b;

.field public j7:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x4b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lf6/q;->k7:Landroid/util/Range;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lf6/k;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Lg6/H$a;->X:Lg6/H$a;

    iput-object p1, p0, Lf6/q;->e7:Lg6/H$a;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lf6/q;->h7:Z

    .line 4
    sget-object v0, Lg6/H$b;->X:Lg6/H$b;

    iput-object v0, p0, Lf6/q;->i7:Lg6/H$b;

    .line 5
    iput p1, p0, Lf6/q;->j7:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Li/S;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0, p1, p2}, Lf6/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    sget-object p1, Lg6/H$a;->X:Lg6/H$a;

    iput-object p1, p0, Lf6/q;->e7:Lg6/H$a;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lf6/q;->h7:Z

    .line 9
    sget-object p2, Lg6/H$b;->X:Lg6/H$b;

    iput-object p2, p0, Lf6/q;->i7:Lg6/H$b;

    .line 10
    iput p1, p0, Lf6/q;->j7:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Li/S;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lf6/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    sget-object p1, Lg6/H$a;->X:Lg6/H$a;

    iput-object p1, p0, Lf6/q;->e7:Lg6/H$a;

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lf6/q;->h7:Z

    .line 14
    sget-object p2, Lg6/H$b;->X:Lg6/H$b;

    iput-object p2, p0, Lf6/q;->i7:Lg6/H$b;

    .line 15
    iput p1, p0, Lf6/q;->j7:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Li/S;
        .end annotation
    .end param

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lf6/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 17
    sget-object p1, Lg6/H$a;->X:Lg6/H$a;

    iput-object p1, p0, Lf6/q;->e7:Lg6/H$a;

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lf6/q;->h7:Z

    .line 19
    sget-object p2, Lg6/H$b;->X:Lg6/H$b;

    iput-object p2, p0, Lf6/q;->i7:Lg6/H$b;

    .line 20
    iput p1, p0, Lf6/q;->j7:I

    return-void
.end method


# virtual methods
.method public C0()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lf6/q;->h7:Z

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lf6/q;->h7:Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lf6/q;->g7:Lf6/q$b;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lf6/q;->g7:Lf6/q$b;

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public D0()V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lf6/q;->h7:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf6/q;->h7:Z

    new-instance v1, Lf6/q$b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lf6/q$b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lf6/q;->g7:Lf6/q$b;

    sget-object v1, Lf6/q$b;->G7:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v3, p0, Lf6/q;->g7:Lf6/q$b;

    new-instance v4, Lf6/q$a;

    invoke-direct {v4, p0}, Lf6/q$a;-><init>(Lf6/q;)V

    invoke-virtual {v3, v4}, Lq6/a;->setOnFrameChangedListener(Lu6/e;)V

    invoke-virtual {p0}, Lf6/q;->getMouseDisplayPosition()Landroid/graphics/Point;

    move-result-object v3

    iget-object v4, p0, Lf6/q;->g7:Lf6/q$b;

    new-instance v5, Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v2, 0x2

    sub-int v7, v6, v7

    iget v3, v3, Landroid/graphics/Point;->y:I

    div-int/lit8 v8, v1, 0x2

    sub-int v8, v3, v8

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v6, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v1

    invoke-direct {v5, v7, v8, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Lf6/g;->setFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lf6/q;->g7:Lf6/q$b;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lf6/q;->g7:Lf6/q$b;

    invoke-virtual {v1, v0}, Lf6/h;->setSelected(Z)V

    :cond_1
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMouseDisplayLatency()I
    .locals 1

    iget v0, p0, Lf6/q;->j7:I

    return v0
.end method

.method public getMouseDisplayMode()Lg6/H$a;
    .locals 1

    iget-object v0, p0, Lf6/q;->e7:Lg6/H$a;

    return-object v0
.end method

.method public getMouseDisplayPosition()Landroid/graphics/Point;
    .locals 3

    iget-object v0, p0, Lf6/q;->f7:Landroid/graphics/Point;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Lq6/a;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x64

    invoke-virtual {p0}, Lq6/a;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lf6/q;->f7:Landroid/graphics/Point;

    :cond_0
    iget-object v0, p0, Lf6/q;->f7:Landroid/graphics/Point;

    return-object v0
.end method

.method public getMouseDisplayTriggerType()Lg6/H$b;
    .locals 1

    iget-object v0, p0, Lf6/q;->i7:Lg6/H$b;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Lf6/q;->h7:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lf6/q;->g7:Lf6/q$b;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public setMouseDisplayLatency(I)V
    .locals 0

    iput p1, p0, Lf6/q;->j7:I

    return-void
.end method

.method public setMouseDisplayMode(Lg6/H$a;)V
    .locals 1

    iput-object p1, p0, Lf6/q;->e7:Lg6/H$a;

    sget-object v0, Lg6/H$a;->Y:Lg6/H$a;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lf6/g;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lf6/q;->D0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lf6/q;->C0()V

    :goto_0
    return-void
.end method

.method public setMouseDisplayPosition(Landroid/graphics/Point;)V
    .locals 8

    iget-object v0, p0, Lf6/q;->g7:Lf6/q$b;

    if-eqz v0, :cond_0

    invoke-static {}, Lf6/q$b;->getDefaultSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    sget-object v1, Lf6/q$b;->G7:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v2, p0, Lf6/q;->g7:Lf6/q$b;

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x2

    sub-int v5, v4, v0

    iget v6, p1, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    sub-int v7, v6, v1

    add-int/2addr v4, v0

    add-int/2addr v6, v1

    invoke-direct {v3, v5, v7, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Lf6/g;->setFrame(Landroid/graphics/Rect;)V

    :cond_0
    iput-object p1, p0, Lf6/q;->f7:Landroid/graphics/Point;

    return-void
.end method

.method public setMouseDisplayTriggerType(Lg6/H$b;)V
    .locals 0

    iput-object p1, p0, Lf6/q;->i7:Lg6/H$b;

    return-void
.end method
