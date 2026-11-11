.class Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewMover"
.end annotation


# instance fields
.field private final INTERVAL:I

.field private accumulatedValue:D

.field private cancel:Z

.field private curr:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;

.field private currentMillisecond:J

.field private final dataProvider:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataProvider;

.field private rootValueNode:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;

.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->currentMillisecond:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->accumulatedValue:D

    const/16 p1, 0xa

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->INTERVAL:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->cancel:Z

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->dataProvider:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataProvider;

    invoke-interface {p2}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataProvider;->getRecoilControlValueNodeRoot()Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->rootValueNode:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->curr:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;

    return-void
.end method

.method private updateCurrAndRootValueNode()V
    .locals 5

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->dataProvider:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataProvider;

    invoke-interface {v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataProvider;->getRecoilControlValueNodeRoot()Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->rootValueNode:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;

    if-eq v0, v1, :cond_0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->rootValueNode:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->curr:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;

    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->curr:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;->next:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;

    if-eqz v0, :cond_1

    iget-wide v1, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;->timeMillisecond:J

    iget-wide v3, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->currentMillisecond:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->curr:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->curr:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;->next:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;

    if-eqz v0, :cond_1

    iget-wide v1, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;->timeMillisecond:J

    iget-wide v3, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->currentMillisecond:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->curr:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->cancel:Z

    return-void
.end method

.method public run()V
    .locals 12

    const-wide/16 v0, 0x0

    :cond_0
    move-wide v2, v0

    :goto_0
    :try_start_0
    iget-boolean v4, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->cancel:Z

    if-nez v4, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->updateCurrAndRootValueNode()V

    iget-wide v6, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->accumulatedValue:D

    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->curr:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;

    iget-wide v8, v8, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;->value:D

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->accumulatedValue:D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v6, v8

    if-ltz v8, :cond_1

    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;

    iget-object v8, v8, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->viewController:Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;

    double-to-int v6, v6

    const/4 v7, 0x0

    invoke-interface {v8, v7, v6}, Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;->movedRelativeRaw(II)V

    iget-wide v6, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->accumulatedValue:D

    double-to-int v8, v6

    int-to-double v8, v8

    sub-double/2addr v6, v8

    iput-wide v6, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->accumulatedValue:D

    :cond_1
    iget-wide v6, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->currentMillisecond:J

    const-wide/16 v8, 0xa

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->currentMillisecond:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    sub-long/2addr v8, v6

    sub-long/2addr v8, v2

    long-to-int v2, v8

    if-lez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    int-to-long v5, v2

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v7, v3

    sub-long/2addr v7, v5

    move-wide v2, v7

    goto :goto_0

    :catch_0
    :cond_2
    return-void
.end method
