.class Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;->eventOccurred(Ljava/util/LinkedList;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;

.field final synthetic val$selectedIndexes:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;Ljava/util/Set;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView$21;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView$21;->val$selectedIndexes:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView$21;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;->lineGraphView:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->reloadData()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView$21;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView;->lineGraphView:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustDynamicRCValueView$21;->val$selectedIndexes:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->addSelectedPointsAtIndexes(Ljava/util/Set;)V

    return-void
.end method
