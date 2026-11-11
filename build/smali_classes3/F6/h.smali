.class public abstract Lf6/h;
.super Lf6/q;
.source "SourceFile"


# instance fields
.field public A7:I

.field public B7:I

.field public C7:Z

.field public D7:Z

.field public E7:I

.field public F7:I

.field public l7:Landroid/graphics/drawable/GradientDrawable;

.field public m7:Landroid/widget/TextView;

.field public n7:I

.field public o7:I

.field public p7:I

.field public q7:I

.field public r7:Landroid/view/View;

.field public s7:Landroid/view/View;

.field public t7:Landroid/view/View;

.field public u7:Landroid/view/View;

.field public v7:Landroid/view/View;

.field public w7:Landroid/view/View;

.field public x7:Landroid/view/View;

.field public y7:I

.field public z7:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lf6/q;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lf6/h;->n7:I

    .line 3
    iput v0, p0, Lf6/h;->o7:I

    .line 4
    iput v0, p0, Lf6/h;->p7:I

    .line 5
    iput v0, p0, Lf6/h;->q7:I

    .line 6
    iput-boolean v0, p0, Lf6/h;->C7:Z

    .line 7
    iput-boolean v0, p0, Lf6/h;->D7:Z

    .line 8
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v1, p0, Lf6/h;->l7:Landroid/graphics/drawable/GradientDrawable;

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 10
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lf6/h;->t7:Landroid/view/View;

    .line 11
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object v1, p0, Lf6/h;->l7:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object v1, p0, Lf6/h;->t7:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 14
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lf6/h;->m7:Landroid/widget/TextView;

    const/high16 v3, 0x41400000    # 12.0f

    .line 15
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 16
    iget-object v1, p0, Lf6/h;->m7:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    iget-object v1, p0, Lf6/h;->m7:Landroid/widget/TextView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 18
    iget-object v1, p0, Lf6/h;->m7:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 19
    iget-object v1, p0, Lf6/h;->m7:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setTextAlignment(I)V

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/zjx/jyandroid/e$c;->m:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const v4, -0xff0100

    invoke-static {v1, v4, v0}, Lcom/zjx/jyandroid/base/util/b;->q(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 21
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lf6/h;->u7:Landroid/view/View;

    .line 22
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 23
    iget-object v1, p0, Lf6/h;->u7:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setId(I)V

    .line 24
    iget-object v1, p0, Lf6/h;->u7:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v5, 0x1e

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lf6/h;->v7:Landroid/view/View;

    .line 26
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 27
    iget-object v1, p0, Lf6/h;->v7:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setId(I)V

    .line 28
    iget-object v1, p0, Lf6/h;->v7:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lf6/h;->x7:Landroid/view/View;

    .line 30
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 31
    iget-object v1, p0, Lf6/h;->x7:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setId(I)V

    .line 32
    iget-object v1, p0, Lf6/h;->x7:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lf6/h;->w7:Landroid/view/View;

    .line 34
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 35
    iget-object p1, p0, Lf6/h;->w7:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 36
    iget-object p1, p0, Lf6/h;->w7:Landroid/view/View;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lf6/h;->r7:Landroid/view/View;

    .line 38
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const v1, 0x1869f

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    iget-object p1, p0, Lf6/h;->r7:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/zjx/jyandroid/e$c;->m:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 40
    iget-object p1, p0, Lf6/h;->r7:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 41
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lf6/h;->s7:Landroid/view/View;

    .line 42
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    iget-object p1, p0, Lf6/h;->s7:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zjx/jyandroid/e$c;->m:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 44
    iget-object p1, p0, Lf6/h;->s7:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 45
    iget-object p1, p0, Lf6/h;->r7:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    iget-object p1, p0, Lf6/h;->s7:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 47
    iget-object p1, p0, Lf6/h;->m7:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 48
    iget-object p1, p0, Lf6/h;->s7:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 49
    iget-object p1, p0, Lf6/h;->r7:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 50
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    .line 51
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setId(I)V

    .line 52
    new-instance v0, Landroidx/constraintlayout/widget/f;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/f;-><init>()V

    .line 53
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/f;->H(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 54
    iget-object v1, p0, Lf6/h;->m7:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v4, 0x6

    invoke-virtual {v0, v1, v4, p1, v4}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    .line 55
    iget-object v1, p0, Lf6/h;->m7:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v5, 0x7

    invoke-virtual {v0, v1, v5, p1, v5}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    .line 56
    iget-object v1, p0, Lf6/h;->m7:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v6, 0x3

    invoke-virtual {v0, v1, v6, p1, v6}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    .line 57
    iget-object v1, p0, Lf6/h;->m7:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v3, p1, v3}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    .line 58
    iget-object v1, p0, Lf6/h;->r7:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v4, p1, v4}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    .line 59
    iget-object v1, p0, Lf6/h;->r7:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v5, p1, v5}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    .line 60
    iget-object v1, p0, Lf6/h;->r7:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v6, p1, v6}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    .line 61
    iget-object v1, p0, Lf6/h;->r7:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v3, p1, v3}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    .line 62
    iget-object v1, p0, Lf6/h;->s7:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v4, p1, v4}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    .line 63
    iget-object v1, p0, Lf6/h;->s7:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v5, p1, v5}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    .line 64
    iget-object v1, p0, Lf6/h;->s7:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v6, p1, v6}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    .line 65
    iget-object v1, p0, Lf6/h;->s7:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v3, p1, v3}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    .line 66
    iget-object p1, p0, Lf6/h;->u7:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v6, v1, v6}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    .line 67
    iget-object p1, p0, Lf6/h;->u7:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v4, v1, v4}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    .line 68
    iget-object p1, p0, Lf6/h;->u7:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v5, v1, v5}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    .line 69
    iget-object p1, p0, Lf6/h;->v7:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v2, v1, v2}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    .line 70
    iget-object p1, p0, Lf6/h;->v7:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v6, v1, v6}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    .line 71
    iget-object p1, p0, Lf6/h;->v7:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v3, v1, v3}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    .line 72
    iget-object p1, p0, Lf6/h;->w7:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v3, v1, v3}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    .line 73
    iget-object p1, p0, Lf6/h;->w7:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v4, v1, v4}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    .line 74
    iget-object p1, p0, Lf6/h;->w7:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v5, v1, v5}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    .line 75
    iget-object p1, p0, Lf6/h;->x7:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v0, p1, v1, v4, v1}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    .line 76
    iget-object p1, p0, Lf6/h;->x7:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v6, v1, v6}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    .line 77
    iget-object p1, p0, Lf6/h;->x7:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v3, v1, v3}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    .line 78
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/f;->r(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 79
    iget-object p1, p0, Lf6/h;->u7:Landroid/view/View;

    new-instance v0, Lf6/h$a;

    invoke-direct {v0, p0}, Lf6/h$a;-><init>(Lf6/h;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 80
    iget-object p1, p0, Lf6/h;->v7:Landroid/view/View;

    new-instance v0, Lf6/h$b;

    invoke-direct {v0, p0}, Lf6/h$b;-><init>(Lf6/h;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 81
    iget-object p1, p0, Lf6/h;->w7:Landroid/view/View;

    new-instance v0, Lf6/h$c;

    invoke-direct {v0, p0}, Lf6/h$c;-><init>(Lf6/h;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 82
    iget-object p1, p0, Lf6/h;->x7:Landroid/view/View;

    new-instance v0, Lf6/h$d;

    invoke-direct {v0, p0}, Lf6/h$d;-><init>(Lf6/h;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 83
    invoke-virtual {p0, v3}, Lf6/h;->setSelectedBorderWidth(I)V

    .line 84
    invoke-virtual {p0, v3}, Lf6/h;->setUnselectedBorderWidth(I)V

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zjx/jyandroid/e$c;->O:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lf6/h;->setSelectedBackgroundColor(I)V

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zjx/jyandroid/e$c;->a:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lf6/h;->setUnselectedBackgroundColor(I)V

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zjx/jyandroid/e$c;->O:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lf6/h;->setSelectedBorderColor(I)V

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zjx/jyandroid/e$c;->m:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lf6/h;->setUnselectedBorderColor(I)V

    .line 89
    invoke-virtual {p0, v2}, Lf6/h;->setResizeIndicatorHidden(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Li/S;
        .end annotation
    .end param

    .line 90
    invoke-direct {p0, p1, p2}, Lf6/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 91
    iput p1, p0, Lf6/h;->n7:I

    .line 92
    iput p1, p0, Lf6/h;->o7:I

    .line 93
    iput p1, p0, Lf6/h;->p7:I

    .line 94
    iput p1, p0, Lf6/h;->q7:I

    .line 95
    iput-boolean p1, p0, Lf6/h;->C7:Z

    .line 96
    iput-boolean p1, p0, Lf6/h;->D7:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Li/S;
        .end annotation
    .end param

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lf6/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 98
    iput p1, p0, Lf6/h;->n7:I

    .line 99
    iput p1, p0, Lf6/h;->o7:I

    .line 100
    iput p1, p0, Lf6/h;->p7:I

    .line 101
    iput p1, p0, Lf6/h;->q7:I

    .line 102
    iput-boolean p1, p0, Lf6/h;->C7:Z

    .line 103
    iput-boolean p1, p0, Lf6/h;->D7:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Li/S;
        .end annotation
    .end param

    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Lf6/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 105
    iput p1, p0, Lf6/h;->n7:I

    .line 106
    iput p1, p0, Lf6/h;->o7:I

    .line 107
    iput p1, p0, Lf6/h;->p7:I

    .line 108
    iput p1, p0, Lf6/h;->q7:I

    .line 109
    iput-boolean p1, p0, Lf6/h;->C7:Z

    .line 110
    iput-boolean p1, p0, Lf6/h;->D7:Z

    return-void
.end method

.method public static getDefaultSize()Landroid/util/Size;
    .locals 3

    invoke-static {}, LA6/b;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    new-instance v1, Landroid/util/Size;

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v2

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method private setDragIndicatorVisibility(I)V
    .locals 1

    iget-object v0, p0, Lf6/h;->u7:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lf6/h;->v7:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lf6/h;->x7:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lf6/h;->w7:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public E0()Z
    .locals 1

    iget-boolean v0, p0, Lf6/h;->D7:Z

    return v0
.end method

.method public F0()Z
    .locals 1

    iget-boolean v0, p0, Lf6/h;->C7:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public G0(II)V
    .locals 3

    iput p1, p0, Lf6/h;->p7:I

    iput p2, p0, Lf6/h;->q7:I

    iget-object v0, p0, Lf6/h;->l7:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lf6/h;->o7:I

    iget v2, p0, Lf6/h;->n7:I

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    return-void
.end method

.method public H0(Ljava/util/LinkedList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lf6/k;->y0(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lf6/h$e;

    invoke-direct {v0, p0, p1}, Lf6/h$e;-><init>(Lf6/h;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getRadius()I
    .locals 1

    invoke-virtual {p0}, Lq6/a;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getResizeIndicatorSize()I
    .locals 1

    iget-object v0, p0, Lf6/h;->u7:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v0
.end method

.method public getSelectedBackgroundColor()I
    .locals 1

    iget v0, p0, Lf6/h;->E7:I

    return v0
.end method

.method public getSelectedBorderColor()I
    .locals 1

    iget v0, p0, Lf6/h;->z7:I

    return v0
.end method

.method public getSelectedBorderWidth()I
    .locals 1

    iget v0, p0, Lf6/h;->B7:I

    return v0
.end method

.method public getUnselectedBackgroundColor()I
    .locals 1

    iget v0, p0, Lf6/h;->F7:I

    return v0
.end method

.method public getUnselectedBorderColor()I
    .locals 1

    iget v0, p0, Lf6/h;->y7:I

    return v0
.end method

.method public getUnselectedBorderWidth()I
    .locals 1

    iget v0, p0, Lf6/h;->A7:I

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lf6/h;->l7:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 4

    iput p1, p0, Lf6/h;->n7:I

    iget-object v0, p0, Lf6/h;->l7:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lf6/h;->o7:I

    iget v2, p0, Lf6/h;->p7:I

    int-to-float v2, v2

    iget v3, p0, Lf6/h;->q7:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 4

    iput p1, p0, Lf6/h;->o7:I

    iget-object v0, p0, Lf6/h;->l7:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lf6/h;->n7:I

    iget v2, p0, Lf6/h;->p7:I

    int-to-float v2, v2

    iget v3, p0, Lf6/h;->q7:I

    int-to-float v3, v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    return-void
.end method

.method public setDisablePositioningLine(Z)V
    .locals 1

    iput-boolean p1, p0, Lf6/h;->D7:Z

    iget-boolean v0, p0, Lf6/g;->V6:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lf6/h;->r7:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lf6/h;->s7:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lf6/h;->r7:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lf6/h;->s7:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRadius(I)V
    .locals 5

    invoke-virtual {p0}, Lq6/a;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    new-instance v2, Landroid/graphics/Rect;

    div-int/lit8 p1, p1, 0x2

    sub-int v3, v1, p1

    sub-int v4, v0, p1

    add-int/2addr v1, p1

    add-int/2addr v0, p1

    invoke-direct {v2, v3, v4, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v2}, Lf6/g;->setFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setResizeIndicatorHidden(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lf6/h;->C7:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lf6/h;->setDragIndicatorVisibility(I)V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lf6/g;->V6:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lf6/h;->setDragIndicatorVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setResizeIndicatorSize(I)V
    .locals 2

    iget-object v0, p0, Lf6/h;->u7:Landroid/view/View;

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v1, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lf6/h;->v7:Landroid/view/View;

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v1, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lf6/h;->x7:Landroid/view/View;

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v1, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lf6/h;->w7:Landroid/view/View;

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v1, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    invoke-virtual {p0}, Lf6/g;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_2

    invoke-super {p0, p1}, Lf6/g;->setSelected(Z)V

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lf6/h;->D7:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lf6/h;->s7:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lf6/h;->r7:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget p1, p0, Lf6/h;->z7:I

    invoke-virtual {p0, p1}, Lf6/h;->setBorderColor(I)V

    iget p1, p0, Lf6/h;->B7:I

    invoke-virtual {p0, p1}, Lf6/h;->setBorderWidth(I)V

    iget p1, p0, Lf6/h;->E7:I

    invoke-virtual {p0, p1}, Lf6/h;->setBackgroundColor(I)V

    iget-boolean p1, p0, Lf6/h;->C7:Z

    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Lf6/h;->setDragIndicatorVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lf6/h;->s7:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lf6/h;->r7:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget p1, p0, Lf6/h;->y7:I

    invoke-virtual {p0, p1}, Lf6/h;->setBorderColor(I)V

    iget p1, p0, Lf6/h;->A7:I

    invoke-virtual {p0, p1}, Lf6/h;->setBorderWidth(I)V

    iget p1, p0, Lf6/h;->F7:I

    invoke-virtual {p0, p1}, Lf6/h;->setBackgroundColor(I)V

    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lf6/h;->setDragIndicatorVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSelectedBackgroundColor(I)V
    .locals 1

    invoke-virtual {p0}, Lf6/g;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lf6/h;->setBackgroundColor(I)V

    :cond_0
    iput p1, p0, Lf6/h;->E7:I

    return-void
.end method

.method public setSelectedBorderColor(I)V
    .locals 1

    invoke-virtual {p0}, Lf6/g;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lf6/h;->setBorderColor(I)V

    :cond_0
    iput p1, p0, Lf6/h;->z7:I

    return-void
.end method

.method public setSelectedBorderWidth(I)V
    .locals 1

    invoke-virtual {p0}, Lf6/g;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lf6/h;->setBorderWidth(I)V

    :cond_0
    iput p1, p0, Lf6/h;->B7:I

    return-void
.end method

.method public setTextLabelText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lf6/h;->m7:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setUnselectedBackgroundColor(I)V
    .locals 1

    invoke-virtual {p0}, Lf6/g;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lf6/h;->setBackgroundColor(I)V

    :cond_0
    iput p1, p0, Lf6/h;->F7:I

    return-void
.end method

.method public setUnselectedBorderColor(I)V
    .locals 1

    invoke-virtual {p0}, Lf6/g;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lf6/h;->setBorderColor(I)V

    :cond_0
    iput p1, p0, Lf6/h;->y7:I

    return-void
.end method

.method public setUnselectedBorderWidth(I)V
    .locals 1

    invoke-virtual {p0}, Lf6/g;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lf6/h;->setBorderWidth(I)V

    :cond_0
    iput p1, p0, Lf6/h;->A7:I

    return-void
.end method
