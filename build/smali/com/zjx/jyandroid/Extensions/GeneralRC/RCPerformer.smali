.class public Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;
    }
.end annotation


# instance fields
.field private controlStarted:Z

.field private currentDataNode:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;

.field private currentViewMover:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;

.field public gesture:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

.field private rcConfigDataProcessor:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;

.field private recoilControlThread:Ljava/util/concurrent/ExecutorService;

.field private selectedConfigIndex:I

.field private started:Z

.field private updateConfigHandler:Landroid/os/Handler;

.field private updateConfigThread:Landroid/os/HandlerThread;

.field public viewController:Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;

.field private virtualMouse:Lcom/zjx/jyandroid/ForegroundService/UI/a;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->started:Z

    sget-object v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;->STAND:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->gesture:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->selectedConfigIndex:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->currentDataNode:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->controlStarted:Z

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->y()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->virtualMouse:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->recoilControlThread:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->rcConfigDataProcessor:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->updateCurrentDataNode()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Please load rcConfigDataProcessor first"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private updateCurrentDataNode()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->gesture:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;->STAND:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->rcConfigDataProcessor:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->dataNodes:Ljava/util/List;

    iget v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->selectedConfigIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->currentDataNode:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;->CROUCH:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->rcConfigDataProcessor:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->dataNodesCrouch:Ljava/util/List;

    iget v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->selectedConfigIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->currentDataNode:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;->PRONE:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->rcConfigDataProcessor:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->dataNodesProne:Ljava/util/List;

    iget v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->selectedConfigIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->currentDataNode:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public adjustRecoilValue(I)V
    .locals 13

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->currentDataNode:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->getDataArray()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    int-to-double v7, p1

    add-double/2addr v7, v5

    const-wide/16 v9, 0x0

    cmpl-double p1, v5, v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    if-nez p1, :cond_0

    move-wide v5, v11

    goto :goto_0

    :cond_0
    div-double v5, v7, v5

    :goto_0
    cmpl-double p1, v5, v9

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move-wide v11, v5

    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move p1, v4

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    mul-double/2addr v5, v11

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    iget-object p1, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->configUpdater:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$ConfigValueUpdater;

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1, v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$ConfigValueUpdater;->setDataArray(Ljava/util/ArrayList;)V

    :try_start_0
    iget-object p1, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->configUpdater:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$ConfigValueUpdater;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$ConfigValueUpdater;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$1;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$1;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to flush recoil control data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public getCurrentConfigName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->currentDataNode:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentDataNode()Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->currentDataNode:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;

    return-object v0
.end method

.method public getCurrentValue()D
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->currentDataNode:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->getFirstValueNode()Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;

    move-result-object v0

    iget-wide v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;->value:D

    return-wide v0
.end method

.method public getGesture()Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->gesture:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    return-object v0
.end method

.method public getRecoilControlValueNodeRoot()Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->currentDataNode:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->getFirstValueNode()Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedConfigIndex()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->selectedConfigIndex:I

    return v0
.end method

.method public isControlStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->controlStarted:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->started:Z

    return v0
.end method

.method public declared-synchronized setControlStarted(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->controlStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->virtualMouse:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->m()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->currentViewMover:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_0
    new-instance v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;

    invoke-direct {v0, p0, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataProvider;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->recoilControlThread:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->currentViewMover:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->currentViewMover:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->currentViewMover:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer$ViewMover;

    :cond_4
    :goto_1
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->controlStarted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public setGesture(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->gesture:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->updateCurrentDataNode()V

    return-void
.end method

.method public setSelectedConfigIndex(I)V
    .locals 1

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iput p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->selectedConfigIndex:I

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->updateCurrentDataNode()V

    return-void
.end method

.method public start()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->started:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "updateConfigThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->updateConfigThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->updateConfigThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->updateConfigHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->started:Z

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->started:Z

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->updateConfigHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->updateConfigThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
