.class public Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$e;->a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pointOnMove(Lcom/zjx/jyandroid/base/Components/LineGraphView;ILcom/zjx/jyandroid/base/FloatPoint;Lcom/zjx/jyandroid/base/FloatPoint;)Lcom/zjx/jyandroid/base/FloatPoint;
    .locals 4

    if-nez p2, :cond_0

    const/4 p1, 0x0

    iput p1, p4, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p2, 0x1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$e;->a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    if-ge p3, v0, :cond_1

    invoke-virtual {p1, p3}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->getAbsoluteCoordinateAtIndex(I)Lcom/zjx/jyandroid/base/FloatPoint;

    move-result-object p3

    iget v0, p4, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iget p3, p3, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    cmpl-float v0, v0, p3

    if-lez v0, :cond_1

    sub-float/2addr p3, v1

    iput p3, p4, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    :cond_1
    add-int/lit8 p3, p2, -0x1

    if-ltz p3, :cond_2

    invoke-virtual {p1, p3}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->getAbsoluteCoordinateAtIndex(I)Lcom/zjx/jyandroid/base/FloatPoint;

    move-result-object p1

    iget p3, p4, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iget p1, p1, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    cmpg-float p3, p3, p1

    if-gez p3, :cond_2

    add-float/2addr p1, v1

    iput p1, p4, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$e;->a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;->o:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iget p3, p4, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    float-to-double v0, p3

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$e;->a:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;->o:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iget p2, p4, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p4
.end method
