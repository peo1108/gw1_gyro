.class public Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$RecoilValueLineGraphPointView;
.super Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecoilValueLineGraphPointView"
.end annotation


# instance fields
.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$RecoilValueLineGraphPointView;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    .line 2
    invoke-direct {p0, p2}, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 4
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$RecoilValueLineGraphPointView;->textView:Landroid/widget/TextView;

    const/high16 p2, 0x40e00000    # 7.0f

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 6
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$RecoilValueLineGraphPointView;->textView:Landroid/widget/TextView;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$RecoilValueLineGraphPointView;->textView:Landroid/widget/TextView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    .line 8
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$RecoilValueLineGraphPointView;->textView:Landroid/widget/TextView;

    new-instance p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/16 v0, 0x3e8

    const/16 v1, 0xc8

    invoke-direct {p2, v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$RecoilValueLineGraphPointView;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$RecoilValueLineGraphPointView;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 11
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    .line 12
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setId(I)V

    .line 13
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 14
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 15
    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$RecoilValueLineGraphPointView;->textView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x6

    invoke-virtual {p1, p2, v0, v3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 16
    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$RecoilValueLineGraphPointView;->textView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    const/16 p2, 0x14

    invoke-static {p2}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result p2

    neg-int v5, p2

    const/4 v2, 0x3

    const/4 v4, 0x3

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 17
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$RecoilValueLineGraphPointView;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    .line 19
    invoke-direct {p0, p2, p3}, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$RecoilValueLineGraphPointView;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    .line 21
    invoke-direct {p0, p2, p3, p4}, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$RecoilValueLineGraphPointView;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    .line 23
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private updateTextView()V
    .locals 4

    invoke-virtual {p0}, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->getAbsoluteCoordinate()Lcom/zjx/jyandroid/base/FloatPoint;

    move-result-object v0

    iget v0, v0, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%.2f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->getAbsoluteCoordinate()Lcom/zjx/jyandroid/base/FloatPoint;

    move-result-object v1

    iget v1, v1, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$RecoilValueLineGraphPointView;->textView:Landroid/widget/TextView;

    sget v3, Lcom/zjx/jyandroid/R$string;->adjust_dynamic_rc_value_view_text8:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$RecoilValueLineGraphPointView;->textView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public setAbsoluteCoordinate(Lcom/zjx/jyandroid/base/FloatPoint;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->setAbsoluteCoordinate(Lcom/zjx/jyandroid/base/FloatPoint;)V

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$RecoilValueLineGraphPointView;->updateTextView()V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->setSelected(Z)V

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$RecoilValueLineGraphPointView;->updateTextView()V

    return-void
.end method
