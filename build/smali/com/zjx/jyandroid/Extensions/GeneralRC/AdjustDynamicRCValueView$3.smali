.class Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/slider/RangeSlider$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->onFinishInflate()V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$3;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/google/android/material/slider/RangeSlider;FZ)V
    .locals 4
    .param p1    # Lcom/google/android/material/slider/RangeSlider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p1}, Lcom/google/android/material/slider/RangeSlider;->getValues()Ljava/util/List;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$3;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    iget-object p2, p2, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->lineGraphView:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-virtual {p2}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->getRangeRect()Lcom/zjx/jyandroid/base/FloatRect;

    move-result-object p2

    .line 4
    iget-object p3, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$3;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    iget-object p3, p3, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->lineGraphView:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    new-instance v0, Lcom/zjx/jyandroid/base/FloatRect;

    iget v1, p2, Lcom/zjx/jyandroid/base/FloatRect;->left:F

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget p2, p2, Lcom/zjx/jyandroid/base/FloatRect;->right:F

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {v0, v1, v2, p2, p1}, Lcom/zjx/jyandroid/base/FloatRect;-><init>(FFFF)V

    invoke-virtual {p3, v0}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->setRangeRect(Lcom/zjx/jyandroid/base/FloatRect;)V

    return-void
.end method

.method public bridge synthetic onValueChange(Ljava/lang/Object;FZ)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/material/slider/RangeSlider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$3;->onValueChange(Lcom/google/android/material/slider/RangeSlider;FZ)V

    return-void
.end method
