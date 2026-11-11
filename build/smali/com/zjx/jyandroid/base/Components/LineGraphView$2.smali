.class Lcom/zjx/jyandroid/base/Components/LineGraphView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/base/Components/LineGraphView;->updateGraphDisplayByPoints(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/base/Components/LineGraphView;

.field final synthetic val$points:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/base/Components/LineGraphView;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$2;->this$0:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    iput-object p2, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$2;->val$points:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$2;->this$0:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-static {v0}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->access$100(Lcom/zjx/jyandroid/base/Components/LineGraphView;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$2;->this$0:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-static {v1}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->access$300(Lcom/zjx/jyandroid/base/Components/LineGraphView;)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$2;->this$0:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-static {v1}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->access$200(Lcom/zjx/jyandroid/base/Components/LineGraphView;)F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    add-float/2addr v1, p2

    iget-object p2, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$2;->this$0:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-static {p2}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->access$400(Lcom/zjx/jyandroid/base/Components/LineGraphView;)F

    move-result p2

    sub-float/2addr v1, p2

    const/4 p2, 0x0

    cmpg-float v2, v0, p2

    if-gez v2, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$2;->this$0:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$2;->this$0:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    :cond_2
    :goto_0
    cmpg-float v2, v1, p2

    if-gez v2, :cond_3

    move v1, p2

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$2;->this$0:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr p2, v2

    cmpl-float p2, v1, p2

    if-lez p2, :cond_4

    iget-object p2, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$2;->this$0:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float v1, p2, v1

    :cond_4
    :goto_1
    move-object p2, p1

    check-cast p2, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;

    iget-object v2, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$2;->this$0:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    new-instance v3, Lcom/zjx/jyandroid/base/FloatPoint;

    invoke-direct {v3, v0, v1}, Lcom/zjx/jyandroid/base/FloatPoint;-><init>(FF)V

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->convertToAbsoluteCoordinate(Lcom/zjx/jyandroid/base/FloatPoint;)Lcom/zjx/jyandroid/base/FloatPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$2;->this$0:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-static {v1}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->access$600(Lcom/zjx/jyandroid/base/Components/LineGraphView;)Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphViewDelegate;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$2;->this$0:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-static {v1}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->access$600(Lcom/zjx/jyandroid/base/Components/LineGraphView;)Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphViewDelegate;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$2;->this$0:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    iget-object v3, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$2;->val$points:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$2;->this$0:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    new-instance v5, Lcom/zjx/jyandroid/base/FloatPoint;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/zjx/jyandroid/base/FloatPoint;-><init>(FF)V

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->convertToAbsoluteCoordinate(Lcom/zjx/jyandroid/base/FloatPoint;)Lcom/zjx/jyandroid/base/FloatPoint;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphViewDelegate;->pointOnMove(Lcom/zjx/jyandroid/base/Components/LineGraphView;ILcom/zjx/jyandroid/base/FloatPoint;Lcom/zjx/jyandroid/base/FloatPoint;)Lcom/zjx/jyandroid/base/FloatPoint;

    move-result-object v0

    :cond_5
    invoke-virtual {p2, v0}, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->setAbsoluteCoordinate(Lcom/zjx/jyandroid/base/FloatPoint;)V

    iget-object p2, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$2;->this$0:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-virtual {p2, v0}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->convertToRelativeCoordinate(Lcom/zjx/jyandroid/base/FloatPoint;)Lcom/zjx/jyandroid/base/FloatPoint;

    move-result-object p2

    iget v0, p2, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    iget p2, p2, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$2;->this$0:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->access$102(Lcom/zjx/jyandroid/base/Components/LineGraphView;F)F

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$2;->this$0:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->access$202(Lcom/zjx/jyandroid/base/Components/LineGraphView;F)F

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$2;->this$0:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->access$302(Lcom/zjx/jyandroid/base/Components/LineGraphView;F)F

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$2;->this$0:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {v0, p2}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->access$402(Lcom/zjx/jyandroid/base/Components/LineGraphView;F)F

    check-cast p1, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;

    iget-object p2, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$2;->this$0:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-static {p2}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->access$500(Lcom/zjx/jyandroid/base/Components/LineGraphView;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$2;->this$0:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-virtual {p2}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->clearSelectedPoints()V

    :cond_7
    iget-object p2, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView$2;->this$0:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-virtual {p2, p1}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->addSelectedPoint(Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;)V

    :goto_2
    const/4 p1, 0x1

    return p1
.end method
