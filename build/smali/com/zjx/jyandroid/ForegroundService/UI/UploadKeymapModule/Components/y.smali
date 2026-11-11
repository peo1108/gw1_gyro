.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;
.super Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y$c;
    }
.end annotation


# static fields
.field public static final j:Landroid/util/Size;

.field public static final k:I = 0x32000000

.field public static final l:I


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public d:I

.field public e:Z

.field public f:Landroid/graphics/drawable/GradientDrawable;

.field public g:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y$c;

.field public h:Landroid/view/View;

.field public i:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v1

    const/16 v2, 0x96

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->j:Landroid/util/Size;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lr/F0;

    invoke-direct {v0}, Lr/F0;-><init>()V

    .line 3
    iget v1, v0, Lr/F0;->b:I

    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->a:I

    .line 4
    iget-boolean v1, v0, Lr/F0;->c:Z

    iput-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->b:Z

    .line 5
    iget-boolean v1, v0, Lr/F0;->d:Z

    iput-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->c:Z

    .line 6
    iget v1, v0, Lr/F0;->e:I

    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->d:I

    .line 7
    iget-boolean v0, v0, Lr/F0;->f:Z

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->e:Z

    .line 8
    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y$c;

    invoke-direct {v0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y$c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->g:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y$c;

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 11
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setId(I)V

    .line 12
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->f:Landroid/graphics/drawable/GradientDrawable;

    .line 13
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 14
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->f:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 15
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->h:Landroid/view/View;

    .line 16
    sget v2, Lcom/zjx/jyandroid/R$color;->jy_blue_1:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 17
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->h:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 18
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->h:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/16 v3, 0x14

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v2, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->h:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 20
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->i:Landroid/view/View;

    .line 21
    sget p1, Lcom/zjx/jyandroid/R$color;->jy_blue_1:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 22
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->i:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 23
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->i:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v2

    invoke-direct {v1, v5, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->i:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 25
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 26
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 27
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->g:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y$c;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {p1, v1, v3, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 28
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->g:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y$c;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v4, 0x4

    invoke-virtual {p1, v1, v4, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 29
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->g:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y$c;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v5, 0x6

    invoke-virtual {p1, v1, v5, v2, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 30
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->g:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y$c;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v6, 0x7

    invoke-virtual {p1, v1, v6, v2, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 31
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p1, v1, v3, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 32
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p1, v1, v5, v2, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 33
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p1, v1, v6, v2, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 34
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p1, v1, v4, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 35
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p1, v1, v5, v2, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 36
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p1, v1, v6, v2, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 37
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->setSelected(Z)V

    .line 39
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->h:Landroid/view/View;

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y$a;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 40
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->i:Landroid/view/View;

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y$b;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y$b;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance p1, Lr/F0;

    invoke-direct {p1}, Lr/F0;-><init>()V

    .line 43
    iget p2, p1, Lr/F0;->b:I

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->a:I

    .line 44
    iget-boolean p2, p1, Lr/F0;->c:Z

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->b:Z

    .line 45
    iget-boolean p2, p1, Lr/F0;->d:Z

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->c:Z

    .line 46
    iget p2, p1, Lr/F0;->e:I

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->d:I

    .line 47
    iget-boolean p1, p1, Lr/F0;->f:Z

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance p1, Lr/F0;

    invoke-direct {p1}, Lr/F0;-><init>()V

    .line 50
    iget p2, p1, Lr/F0;->b:I

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->a:I

    .line 51
    iget-boolean p2, p1, Lr/F0;->c:Z

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->b:Z

    .line 52
    iget-boolean p2, p1, Lr/F0;->d:Z

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->c:Z

    .line 53
    iget p2, p1, Lr/F0;->e:I

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->d:I

    .line 54
    iget-boolean p1, p1, Lr/F0;->f:Z

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    new-instance p1, Lr/F0;

    invoke-direct {p1}, Lr/F0;-><init>()V

    .line 57
    iget p2, p1, Lr/F0;->b:I

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->a:I

    .line 58
    iget-boolean p2, p1, Lr/F0;->c:Z

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->b:Z

    .line 59
    iget-boolean p2, p1, Lr/F0;->d:Z

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->c:Z

    .line 60
    iget p2, p1, Lr/F0;->e:I

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->d:I

    .line 61
    iget-boolean p1, p1, Lr/F0;->f:Z

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->e:Z

    return-void
.end method

.method public static getDefaultSize()Landroid/util/Size;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->j:Landroid/util/Size;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->e:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->b:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->c:Z

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->g:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y$c;

    invoke-static {v0, p1}, Lcom/zjx/jyandroid/base/util/b;->N(Landroid/view/View;Landroid/view/MotionEvent;)Z

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

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->d:I

    return v0
.end method

.method public getSensitivity()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->a:I

    return v0
.end method

.method public setAutoReleaseInterval(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->d:I

    return-void
.end method

.method public setIndicatorVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->i:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setInvertYAxis(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->e:Z

    return-void
.end method

.method public setResetOnEdge(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->b:Z

    return-void
.end method

.method public setScrollFromLastPosition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->c:Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setSelected(Z)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->f:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->f:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v1, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->setIndicatorVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->f:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v2, 0x32000000

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->f:Landroid/graphics/drawable/GradientDrawable;

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->setIndicatorVisibility(I)V

    :goto_0
    return-void
.end method

.method public setSensitivity(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->a:I

    return-void
.end method

.method public updateDeleteButtonViewPosition()V
    .locals 8

    invoke-virtual {p0}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/a;->getDefaultSize()Landroid/util/Size;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x14

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sget-object v5, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y$c;->a:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v4, v6

    iget v6, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v6, v6, -0x14

    iget v7, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v7, v0

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v0

    add-int/2addr v7, v0

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v7, v0

    invoke-direct {v2, v3, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->deleteButtonView:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/a;

    invoke-virtual {v0, v2}, Lcom/zjx/jyandroid/base/CustomViews/MImageView;->setFrame(Landroid/graphics/Rect;)V

    return-void
.end method
