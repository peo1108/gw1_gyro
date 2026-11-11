.class public LK6/i;
.super Lr7/a;
.source "SourceFile"

# interfaces
.implements LL6/f;
.implements Lr7/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LK6/i$c;
    }
.end annotation


# instance fields
.field public h7:LK6/i$c;

.field public i7:Landroid/view/View;

.field public j7:Landroid/view/View;

.field public k7:Landroid/graphics/drawable/GradientDrawable;

.field public l7:LM6/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Li/P;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lr7/a;-><init>(Landroid/content/Context;)V

    new-instance v0, LM6/i;

    invoke-direct {v0}, LM6/i;-><init>()V

    iput-object v0, p0, LK6/i;->l7:LM6/i;

    new-instance v0, LK6/i$c;

    invoke-direct {v0, p1}, LK6/i$c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LK6/i;->h7:LK6/i$c;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setId(I)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v1, p0, LK6/i;->k7:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v1, p0, LK6/i;->k7:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, LK6/i;->i7:Landroid/view/View;

    sget v2, Lcom/zjx/jyandroid/e$c;->g:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->r(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, LK6/i;->i7:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, LK6/i;->i7:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/16 v3, 0x14

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v2, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, LK6/i;->i7:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, LK6/i;->j7:Landroid/view/View;

    sget p1, Lcom/zjx/jyandroid/e$c;->g:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->r(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, LK6/i;->j7:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, LK6/i;->j7:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v2

    invoke-direct {v1, v5, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, LK6/i;->j7:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    new-instance p1, Landroidx/constraintlayout/widget/f;

    invoke-direct {p1}, Landroidx/constraintlayout/widget/f;-><init>()V

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/f;->H(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v1, p0, LK6/i;->h7:LK6/i$c;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {p1, v1, v3, v2, v3}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    iget-object v1, p0, LK6/i;->h7:LK6/i$c;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v4, 0x4

    invoke-virtual {p1, v1, v4, v2, v4}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    iget-object v1, p0, LK6/i;->h7:LK6/i$c;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v5, 0x6

    invoke-virtual {p1, v1, v5, v2, v5}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    iget-object v1, p0, LK6/i;->h7:LK6/i$c;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v6, 0x7

    invoke-virtual {p1, v1, v6, v2, v6}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    iget-object v1, p0, LK6/i;->i7:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p1, v1, v3, v2, v3}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    iget-object v1, p0, LK6/i;->i7:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p1, v1, v5, v2, v5}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    iget-object v1, p0, LK6/i;->i7:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p1, v1, v6, v2, v6}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    iget-object v1, p0, LK6/i;->j7:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p1, v1, v4, v2, v4}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    iget-object v1, p0, LK6/i;->j7:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p1, v1, v5, v2, v5}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    iget-object v1, p0, LK6/i;->j7:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p1, v1, v6, v2, v6}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/f;->r(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {p0, v0}, LK6/i;->setSelected(Z)V

    iget-object p1, p0, LK6/i;->i7:Landroid/view/View;

    new-instance v0, LK6/i$a;

    invoke-direct {v0, p0}, LK6/i$a;-><init>(LK6/i;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, LK6/i;->j7:Landroid/view/View;

    new-instance v0, LK6/i$b;

    invoke-direct {v0, p0}, LK6/i$b;-><init>(LK6/i;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, LK6/i;->l7:LM6/i;

    invoke-virtual {p0, p1}, Lr7/a;->B0(Lm7/c;)V

    const-string p1, "com.zjx.app:scp"

    invoke-virtual {p0, p1}, Lr7/a;->setComponentIdentifier(Ljava/lang/String;)V

    return-void
.end method

.method public static E0()Ljava/lang/String;
    .locals 1

    const-string v0, "com.zjx.app:scp"

    return-object v0
.end method


# virtual methods
.method public A0(Li7/e;)V
    .locals 0

    return-void
.end method

.method public D()Z
    .locals 1

    iget-object v0, p0, LK6/i;->l7:LM6/i;

    invoke-virtual {v0}, LM6/i;->D()Z

    move-result v0

    return v0
.end method

.method public J()Z
    .locals 1

    iget-object v0, p0, LK6/i;->l7:LM6/i;

    invoke-virtual {v0}, LM6/i;->J()Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lr7/a;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LK6/i;->h7:LK6/i$c;

    invoke-static {v0, p1}, Lcom/zjx/jyandroid/base/util/b;->U(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getAutoReleaseInterval()I
    .locals 1

    iget-object v0, p0, LK6/i;->l7:LM6/i;

    invoke-virtual {v0}, LM6/i;->getAutoReleaseInterval()I

    move-result v0

    return v0
.end method

.method public getDefaultSize()Landroid/util/Size;
    .locals 3

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v1

    const/16 v2, 0x96

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getMinHeight()I
    .locals 1

    const/16 v0, 0x3c

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v0

    return v0
.end method

.method public getSensitivity()I
    .locals 1

    iget-object v0, p0, LK6/i;->l7:LM6/i;

    invoke-virtual {v0}, LM6/i;->getSensitivity()I

    move-result v0

    return v0
.end method

.method public getSettingsViewLayoutResourceId()I
    .locals 1

    sget v0, Lcom/zjx/jyandroid/e$h;->X0:I

    return v0
.end method

.method public setAutoReleaseInterval(I)V
    .locals 1

    iget-object v0, p0, LK6/i;->l7:LM6/i;

    invoke-virtual {v0, p1}, LM6/i;->setAutoReleaseInterval(I)V

    return-void
.end method

.method public setIndicatorVisibility(I)V
    .locals 1

    iget-object v0, p0, LK6/i;->i7:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LK6/i;->j7:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setInvertYAxis(Z)V
    .locals 1

    iget-object v0, p0, LK6/i;->l7:LM6/i;

    invoke-virtual {v0, p1}, LM6/i;->setInvertYAxis(Z)V

    return-void
.end method

.method public setResetOnEdge(Z)V
    .locals 1

    iget-object v0, p0, LK6/i;->l7:LM6/i;

    invoke-virtual {v0, p1}, LM6/i;->setResetOnEdge(Z)V

    return-void
.end method

.method public setScrollFromLastPosition(Z)V
    .locals 1

    iget-object v0, p0, LK6/i;->l7:LM6/i;

    invoke-virtual {v0, p1}, LM6/i;->setScrollFromLastPosition(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 3

    invoke-super {p0, p1}, Lr7/a;->setSelected(Z)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, LK6/i;->k7:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p1, p0, LK6/i;->k7:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v1, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p0, v0}, LK6/i;->setIndicatorVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LK6/i;->k7:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v2, 0x32000000

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p1, p0, LK6/i;->k7:Landroid/graphics/drawable/GradientDrawable;

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p0, v1}, LK6/i;->setIndicatorVisibility(I)V

    :goto_0
    return-void
.end method

.method public setSensitivity(I)V
    .locals 1

    iget-object v0, p0, LK6/i;->l7:LM6/i;

    invoke-virtual {v0, p1}, LM6/i;->setSensitivity(I)V

    return-void
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, LK6/i;->l7:LM6/i;

    invoke-virtual {v0}, LM6/i;->y()Z

    move-result v0

    return v0
.end method
