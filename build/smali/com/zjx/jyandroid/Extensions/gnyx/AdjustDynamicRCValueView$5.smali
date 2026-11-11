.class Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;Landroid/os/Handler;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView$5;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView$5;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView$5;->val$handler:Landroid/os/Handler;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView$5;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;->lineGraphView:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->getIndexesOfSelectedPoints()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView$5;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;

    iget-object v4, v4, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;->dataArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView$5;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;

    iget-object v5, v5, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;->dataArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView$5;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;->lineGraphView:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->reloadData()V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView$5;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;->lineGraphView:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-virtual {v2, v1}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->addSelectedPointsAtIndexes(Ljava/util/Set;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView$5;->val$handler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
