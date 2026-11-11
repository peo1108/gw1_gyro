.class public abstract Lf6/g;
.super Lq6/a;
.source "SourceFile"

# interfaces
.implements Lf6/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf6/g$b;
    }
.end annotation


# instance fields
.field public T6:Lg6/a;

.field public U6:Lf6/g$b;

.field public V6:Z

.field public W6:Lf6/a;

.field public X6:Z

.field public Y6:Landroid/view/View$OnTouchListener;

.field public Z6:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lu6/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public a7:Z

.field public b7:Lu6/d;

.field public c7:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lg6/a;

    invoke-direct {p1}, Lg6/a;-><init>()V

    iput-object p1, p0, Lf6/g;->T6:Lg6/a;

    .line 3
    new-instance p1, Lf6/g$b;

    .line 4
    invoke-direct {p1, p0}, Lf6/g$b;-><init>(Lf6/g;)V

    .line 5
    iput-object p1, p0, Lf6/g;->U6:Lf6/g$b;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lf6/g;->X6:Z

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lf6/g;->a7:Z

    .line 8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lf6/g;->Z6:Ljava/util/HashSet;

    .line 9
    iput-boolean p1, p0, Lf6/g;->c7:Z

    .line 10
    new-instance p1, Lf6/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lf6/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lf6/g;->W6:Lf6/a;

    .line 11
    new-instance v0, Lf6/g$a;

    invoke-direct {v0, p0}, Lf6/g$a;-><init>(Lf6/g;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Li/S;
        .end annotation
    .end param

    .line 12
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    new-instance p1, Lg6/a;

    invoke-direct {p1}, Lg6/a;-><init>()V

    iput-object p1, p0, Lf6/g;->T6:Lg6/a;

    .line 14
    new-instance p1, Lf6/g$b;

    .line 15
    invoke-direct {p1, p0}, Lf6/g$b;-><init>(Lf6/g;)V

    .line 16
    iput-object p1, p0, Lf6/g;->U6:Lf6/g$b;

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lf6/g;->X6:Z

    const/4 p2, 0x1

    .line 18
    iput-boolean p2, p0, Lf6/g;->a7:Z

    .line 19
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lf6/g;->Z6:Ljava/util/HashSet;

    .line 20
    iput-boolean p1, p0, Lf6/g;->c7:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Li/S;
        .end annotation
    .end param

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance p1, Lg6/a;

    invoke-direct {p1}, Lg6/a;-><init>()V

    iput-object p1, p0, Lf6/g;->T6:Lg6/a;

    .line 23
    new-instance p1, Lf6/g$b;

    .line 24
    invoke-direct {p1, p0}, Lf6/g$b;-><init>(Lf6/g;)V

    .line 25
    iput-object p1, p0, Lf6/g;->U6:Lf6/g$b;

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lf6/g;->X6:Z

    const/4 p2, 0x1

    .line 27
    iput-boolean p2, p0, Lf6/g;->a7:Z

    .line 28
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lf6/g;->Z6:Ljava/util/HashSet;

    .line 29
    iput-boolean p1, p0, Lf6/g;->c7:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Li/S;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    new-instance p1, Lg6/a;

    invoke-direct {p1}, Lg6/a;-><init>()V

    iput-object p1, p0, Lf6/g;->T6:Lg6/a;

    .line 32
    new-instance p1, Lf6/g$b;

    .line 33
    invoke-direct {p1, p0}, Lf6/g$b;-><init>(Lf6/g;)V

    .line 34
    iput-object p1, p0, Lf6/g;->U6:Lf6/g$b;

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lf6/g;->X6:Z

    const/4 p2, 0x1

    .line 36
    iput-boolean p2, p0, Lf6/g;->a7:Z

    .line 37
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lf6/g;->Z6:Ljava/util/HashSet;

    .line 38
    iput-boolean p1, p0, Lf6/g;->c7:Z

    return-void
.end method

.method public static synthetic t0(Lf6/g;)Z
    .locals 0

    iget-boolean p0, p0, Lf6/g;->a7:Z

    return p0
.end method


# virtual methods
.method public c()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lf6/g;->T6:Lg6/a;

    invoke-virtual {p0}, Lq6/a;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg6/a;->g(Landroid/graphics/Rect;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lf6/g;->T6:Lg6/a;

    invoke-virtual {v1}, Lg6/a;->d()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/util/b;->T(Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public d(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lf6/g;->T6:Lg6/a;

    invoke-virtual {v0, p1}, Lg6/a;->c(Ljava/util/Map;)V

    iget-object p1, p0, Lf6/g;->T6:Lg6/a;

    invoke-virtual {p1}, Lg6/a;->e()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf6/g;->setFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getComponentViews()[Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lf6/g;->W6:Lf6/a;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    return-object v1
.end method

.method public getUUID()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lf6/g;->T6:Lg6/a;

    invoke-virtual {v0}, Lg6/a;->f()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lf6/g;->V6:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lf6/g;->Y6:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_0
    iget-object v0, p0, Lf6/g;->U6:Lf6/g$b;

    invoke-virtual {v0, p0, p1}, Lf6/g$b;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lf6/g;->Z6:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu6/c$a;

    invoke-interface {v1, p0, p1}, Lu6/c$a;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public setFrame(Landroid/graphics/Rect;)V
    .locals 7

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$h;->j()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v3

    if-gt v1, v3, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p1, Landroid/graphics/Rect;->right:I

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v2

    if-gt v1, v2, :cond_1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->right:I

    const/4 v2, 0x0

    const/16 v3, 0x14

    if-ge v1, v3, :cond_2

    new-instance v1, Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v4, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, v1

    goto :goto_0

    :cond_2
    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    if-le v1, v4, :cond_3

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int v5, v1, v5

    iget v6, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v5, v6, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, v4

    :cond_3
    :goto_0
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    if-le v1, v4, :cond_4

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, v0, v3

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {v1, v2, v3, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, v1

    goto :goto_1

    :cond_4
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v3, :cond_5

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, v0

    :cond_5
    :goto_1
    invoke-super {p0, p1}, Lq6/a;->setFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    invoke-virtual {p0}, Lf6/g;->isSelected()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lf6/g;->V6:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lf6/g;->X6:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lf6/g;->W6:Lf6/a;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lf6/g;->x0()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lf6/g;->X6:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lf6/g;->W6:Lf6/a;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public u0(Lu6/c$a;)V
    .locals 1

    iget-object v0, p0, Lf6/g;->Z6:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public v0()V
    .locals 0

    return-void
.end method

.method public w0(Lu6/c$a;)V
    .locals 1

    iget-object v0, p0, Lf6/g;->Z6:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public x0()V
    .locals 2

    invoke-static {p0}, Lf6/a;->c(Lf6/g;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lf6/g;->W6:Lf6/a;

    invoke-virtual {v1, v0}, Lq6/b;->setFrame(Landroid/graphics/Rect;)V

    return-void
.end method
