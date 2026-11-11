.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;
.super Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$g;
    }
.end annotation


# static fields
.field public static final s:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final t:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final u:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final v:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final w:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Z

.field public b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$g;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;

.field public h:I

.field public i:I

.field public j:I

.field public k:Lr/q$b;

.field public l:Lr/q$a;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/Range;

    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x5dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->s:Landroid/util/Range;

    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->t:Landroid/util/Range;

    new-instance v0, Landroid/util/Range;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->u:Landroid/util/Range;

    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->v:Landroid/util/Range;

    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->w:Landroid/util/Range;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;-><init>(Landroid/content/Context;)V

    const v0, 0xfa01

    .line 2
    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->q:I

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->b:Ljava/util/Set;

    .line 4
    new-instance v0, Lr/q;

    invoke-direct {v0}, Lr/q;-><init>()V

    .line 5
    invoke-virtual {v0}, Lr/q;->r()I

    move-result v1

    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->h:I

    .line 6
    invoke-virtual {v0}, Lr/q;->B()I

    move-result v1

    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->i:I

    .line 7
    invoke-virtual {v0}, Lr/q;->x()I

    move-result v1

    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->j:I

    .line 8
    invoke-virtual {v0}, Lr/q;->z()Lr/q$b;

    move-result-object v1

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->k:Lr/q$b;

    .line 9
    invoke-virtual {v0}, Lr/q;->w()Lr/q$a;

    move-result-object v1

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->l:Lr/q$a;

    .line 10
    invoke-virtual {v0}, Lr/q;->t()I

    move-result v1

    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->m:I

    .line 11
    invoke-virtual {v0}, Lr/q;->u()I

    move-result v1

    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->n:I

    .line 12
    invoke-virtual {v0}, Lr/q;->A()I

    move-result v1

    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->o:I

    .line 13
    invoke-virtual {v0}, Lr/q;->s()I

    move-result v1

    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->p:I

    .line 14
    invoke-virtual {v0}, Lr/q;->v()I

    move-result v1

    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->q:I

    .line 15
    invoke-virtual {v0}, Lr/q;->y()I

    move-result v0

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->r:I

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zjx/jyandroid/R$color;->joystick_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBackgroundColor(I)V

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zjx/jyandroid/R$color;->transparent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBackgroundColor(I)V

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zjx/jyandroid/R$color;->transparent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBorderColor(I)V

    .line 19
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->c:Landroid/widget/ImageView;

    .line 20
    sget v1, Lcom/zjx/jyandroid/R$drawable;->joystick_component:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc8

    .line 22
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 23
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 24
    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->c:Landroid/widget/ImageView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/zjx/jyandroid/R$color;->border_jy:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v2, -0xff0100

    invoke-static {v0, v2, v1}, Lcom/zjx/jyandroid/base/util/b;->k(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 27
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->d:Landroid/view/View;

    .line 28
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 29
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->d:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 30
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->d:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/16 v3, 0x28

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->e:Landroid/view/View;

    .line 32
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 33
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->e:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 34
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->e:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->g:Landroid/view/View;

    .line 36
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 37
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->g:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 38
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->g:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->f:Landroid/view/View;

    .line 40
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 41
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->f:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 42
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->f:Landroid/view/View;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 44
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 45
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v2, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 46
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v3, 0x7

    invoke-virtual {p1, v0, v3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 47
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v4, 0x3

    invoke-virtual {p1, v0, v4, v1, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 48
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v5, 0x4

    invoke-virtual {p1, v0, v5, v1, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 49
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainPercentWidth(IF)V

    .line 50
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainPercentHeight(IF)V

    .line 51
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v4, v1, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 52
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v2, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 53
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 54
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v6, 0x1

    invoke-virtual {p1, v0, v6, v1, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 55
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v4, v1, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 56
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v5, v1, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 57
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v5, v1, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 58
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v2, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 59
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 60
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 61
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v4, v1, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 62
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v5, v1, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 63
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const/16 p1, 0x8

    .line 64
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->setIndicatorVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->d:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$a;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 66
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->e:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$b;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$b;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 67
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->f:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$c;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$c;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 68
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->g:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$d;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$d;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 69
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    const/16 p1, -0x1f

    .line 70
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->q:I

    .line 71
    iput-boolean v6, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0xfa01

    .line 73
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->q:I

    .line 74
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->b:Ljava/util/Set;

    .line 75
    new-instance p1, Lr/q;

    invoke-direct {p1}, Lr/q;-><init>()V

    .line 76
    invoke-virtual {p1}, Lr/q;->r()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->h:I

    .line 77
    invoke-virtual {p1}, Lr/q;->B()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->i:I

    .line 78
    invoke-virtual {p1}, Lr/q;->x()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->j:I

    .line 79
    invoke-virtual {p1}, Lr/q;->z()Lr/q$b;

    move-result-object p2

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->k:Lr/q$b;

    .line 80
    invoke-virtual {p1}, Lr/q;->w()Lr/q$a;

    move-result-object p2

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->l:Lr/q$a;

    .line 81
    invoke-virtual {p1}, Lr/q;->t()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->m:I

    .line 82
    invoke-virtual {p1}, Lr/q;->u()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->n:I

    .line 83
    invoke-virtual {p1}, Lr/q;->A()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->o:I

    .line 84
    invoke-virtual {p1}, Lr/q;->s()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->p:I

    .line 85
    invoke-virtual {p1}, Lr/q;->v()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->q:I

    .line 86
    invoke-virtual {p1}, Lr/q;->y()I

    move-result p1

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->r:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0xfa01

    .line 88
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->q:I

    .line 89
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->b:Ljava/util/Set;

    .line 90
    new-instance p1, Lr/q;

    invoke-direct {p1}, Lr/q;-><init>()V

    .line 91
    invoke-virtual {p1}, Lr/q;->r()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->h:I

    .line 92
    invoke-virtual {p1}, Lr/q;->B()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->i:I

    .line 93
    invoke-virtual {p1}, Lr/q;->x()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->j:I

    .line 94
    invoke-virtual {p1}, Lr/q;->z()Lr/q$b;

    move-result-object p2

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->k:Lr/q$b;

    .line 95
    invoke-virtual {p1}, Lr/q;->w()Lr/q$a;

    move-result-object p2

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->l:Lr/q$a;

    .line 96
    invoke-virtual {p1}, Lr/q;->t()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->m:I

    .line 97
    invoke-virtual {p1}, Lr/q;->u()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->n:I

    .line 98
    invoke-virtual {p1}, Lr/q;->A()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->o:I

    .line 99
    invoke-virtual {p1}, Lr/q;->s()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->p:I

    .line 100
    invoke-virtual {p1}, Lr/q;->v()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->q:I

    .line 101
    invoke-virtual {p1}, Lr/q;->y()I

    move-result p1

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->r:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0xfa01

    .line 103
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->q:I

    .line 104
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->b:Ljava/util/Set;

    .line 105
    new-instance p1, Lr/q;

    invoke-direct {p1}, Lr/q;-><init>()V

    .line 106
    invoke-virtual {p1}, Lr/q;->r()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->h:I

    .line 107
    invoke-virtual {p1}, Lr/q;->B()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->i:I

    .line 108
    invoke-virtual {p1}, Lr/q;->x()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->j:I

    .line 109
    invoke-virtual {p1}, Lr/q;->z()Lr/q$b;

    move-result-object p2

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->k:Lr/q$b;

    .line 110
    invoke-virtual {p1}, Lr/q;->w()Lr/q$a;

    move-result-object p2

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->l:Lr/q$a;

    .line 111
    invoke-virtual {p1}, Lr/q;->t()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->m:I

    .line 112
    invoke-virtual {p1}, Lr/q;->u()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->n:I

    .line 113
    invoke-virtual {p1}, Lr/q;->A()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->o:I

    .line 114
    invoke-virtual {p1}, Lr/q;->s()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->p:I

    .line 115
    invoke-virtual {p1}, Lr/q;->v()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->q:I

    .line 116
    invoke-virtual {p1}, Lr/q;->y()I

    move-result p1

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->r:I

    return-void
.end method

.method public static getDefaultSize()Landroid/util/Size;
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$c;->k()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0xc8

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v2

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x104

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v2

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$g;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$g;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public broadcastKeyCodeArrayChangedNotification()V
    .locals 4

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$g;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$e;

    invoke-direct {v3, p0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$e;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$g;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->q:I

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->broadcastKeyCodeArrayChangedNotification()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->c:Landroid/widget/ImageView;

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

.method public getDelayResponseTime()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->h:I

    return v0
.end method

.method public getEastKeyCode()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->p:I

    return v0
.end method

.method public getNorthKeyCode()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->m:I

    return v0
.end method

.method public getSouthKeyCode()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->n:I

    return v0
.end method

.method public getSwitchRadiusKeyCode()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->q:I

    return v0
.end method

.method public getSwitchRadiusMode()Lr/q$a;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->l:Lr/q$a;

    return-object v0
.end method

.method public getSwitchRadiusRatio()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->j:I

    return v0
.end method

.method public getTotalMoveStep()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->r:I

    return v0
.end method

.method public getTriggerMode()Lr/q$b;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->k:Lr/q$b;

    return-object v0
.end method

.method public getWestKeyCode()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->o:I

    return v0
.end method

.method public getZeroRadiusRatio()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->i:I

    return v0
.end method

.method public onKeyEvent(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V
    .locals 1

    iget-boolean v0, p1, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;->down:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget p1, p1, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;->usage:I

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->q:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->a:Z

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->broadcastKeyCodeArrayChangedNotification()V

    :cond_1
    return-void
.end method

.method public setDelayResponseTime(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->h:I

    return-void
.end method

.method public setFrame(Landroid/graphics/Rect;)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    sget-object v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->s:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v0, v2, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->i()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-gez v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-int v1, v1

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v1, v4, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    move-object p1, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-le v1, v3, :cond_2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v4, v1, v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v4, v5, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-le v1, v3, :cond_3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, v0, v3

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {v1, v2, v3, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_2
    move-object p1, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    if-gez v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v0

    invoke-direct {v1, v2, v0, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_2

    :cond_4
    :goto_3
    invoke-super {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    :cond_5
    :goto_4
    return-void
.end method

.method public setIndicatorVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelected(Z)V

    if-nez p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->setIndicatorVisibility(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    const-string v0, "\u6b64\u8f6e\u76d8\u952e\u4e3a\u63a7\u5236\u65b9\u5411\u529f\u80fd\uff0c\u4e00\u65e6\u5220\u9664\u5c06\u4e0d\u53ef\u63a7\u5236\u65b9\u5411\u8d70\u4f4d\u3002\u5220\u9664\u540e\u53ef\u91cd\u65b0\u6dfb\u52a0"

    invoke-direct {p1, v0}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->setIndicatorVisibility(I)V

    :goto_0
    return-void
.end method

.method public setSwitchRadiusKeyCode(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->q:I

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->broadcastKeyCodeArrayChangedNotification()V

    return-void
.end method

.method public setSwitchRadiusMode(Lr/q$a;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->l:Lr/q$a;

    return-void
.end method

.method public setSwitchRadiusRatio(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->j:I

    return-void
.end method

.method public setTotalMoveStep(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->r:I

    return-void
.end method

.method public setTriggerMode(Lr/q$b;)V
    .locals 1

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->k:Lr/q$b;

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$f;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x52

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->m:I

    const/16 p1, 0x51

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->n:I

    const/16 p1, 0x50

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->o:I

    const/16 p1, 0x4f

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->p:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x1a

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->m:I

    const/16 p1, 0x16

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->n:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->o:I

    const/4 p1, 0x7

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->p:I

    :goto_0
    return-void
.end method

.method public setZeroRadiusRatio(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->i:I

    return-void
.end method
