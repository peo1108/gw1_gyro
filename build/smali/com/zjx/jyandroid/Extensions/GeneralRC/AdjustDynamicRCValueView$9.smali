.class Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphViewDataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$9;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public numberOfPointsInGraphView(Lcom/zjx/jyandroid/base/Components/LineGraphView;)I
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$9;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->dataArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1
.end method

.method public pointAtIndex(Lcom/zjx/jyandroid/base/Components/LineGraphView;I)Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;
    .locals 3

    new-instance v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$RecoilValueLineGraphPointView;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$9;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$RecoilValueLineGraphPointView;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;Landroid/content/Context;)V

    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v2

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v1

    invoke-direct {p1, v2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/zjx/jyandroid/base/FloatPoint;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$9;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->dataArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$9;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->dataArray:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->floatValue()F

    move-result p2

    invoke-direct {p1, v1, p2}, Lcom/zjx/jyandroid/base/FloatPoint;-><init>(FF)V

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$RecoilValueLineGraphPointView;->setAbsoluteCoordinate(Lcom/zjx/jyandroid/base/FloatPoint;)V

    return-object v0
.end method
