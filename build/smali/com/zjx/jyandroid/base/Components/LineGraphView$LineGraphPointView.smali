.class public Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/base/Components/LineGraphView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LineGraphPointView"
.end annotation


# instance fields
.field private absoluteCoordinate:Lcom/zjx/jyandroid/base/FloatPoint;

.field gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private selected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 4
    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 p2, 0x1

    .line 8
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 9
    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 p2, 0x1

    .line 13
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 14
    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 17
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 p2, 0x1

    .line 18
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 19
    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 20
    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;)Lcom/zjx/jyandroid/base/FloatPoint;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->absoluteCoordinate:Lcom/zjx/jyandroid/base/FloatPoint;

    return-object p0
.end method


# virtual methods
.method public getAbsoluteCoordinate()Lcom/zjx/jyandroid/base/FloatPoint;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->absoluteCoordinate:Lcom/zjx/jyandroid/base/FloatPoint;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->selected:Z

    return v0
.end method

.method public setAbsoluteCoordinate(Lcom/zjx/jyandroid/base/FloatPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->absoluteCoordinate:Lcom/zjx/jyandroid/base/FloatPoint;

    return-void
.end method

.method public setSelected(Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->selected:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->selected:Z

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-wide/high16 v1, 0x3ff8000000000000L    # 1.5

    if-eqz p1, :cond_1

    iget p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-double v3, p1

    mul-double/2addr v3, v1

    :goto_0
    double-to-int p1, v3

    goto :goto_1

    :cond_1
    iget p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-double v3, p1

    div-double/2addr v3, v1

    goto :goto_0

    :goto_1
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
