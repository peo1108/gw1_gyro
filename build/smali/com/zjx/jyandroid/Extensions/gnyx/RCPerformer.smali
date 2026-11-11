.class public Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/Extensions/gnyx/RCDataProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer$ViewMover;,
        Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer$SetPriorityHelper;
    }
.end annotation


# instance fields
.field private controlStarted:Z

.field private currentDataNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

.field private currentViewMover:Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer$ViewMover;

.field private gesture:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

.field horizontalRecoilControlThread:Ljava/lang/Thread;

.field private muzzle:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

.field private rcConfigDataProcessor:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

.field private recoilControlThread:Ljava/util/concurrent/ExecutorService;

.field private scope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

.field private specialAccessory:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

.field private started:Z

.field private stock:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

.field private updateConfigHandler:Landroid/os/Handler;

.field private updateConfigThread:Landroid/os/HandlerThread;

.field public viewController:Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;

.field private virtualMouse:Lcom/zjx/jyandroid/ForegroundService/UI/a;

.field private weaponType:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->started:Z

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;->Hippie:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->scope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->None:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->stock:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;->None:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->muzzle:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;->None:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->specialAccessory:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;->STAND:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->gesture:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->Empty:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->weaponType:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->currentDataNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->horizontalRecoilControlThread:Ljava/lang/Thread;

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->controlStarted:Z

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->y()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->virtualMouse:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->recoilControlThread:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->rcConfigDataProcessor:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->updateCurrentDataNode()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Please load rcConfigDataProcessor first"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private declared-synchronized stopHorizontalRecoilControl()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->horizontalRecoilControlThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->horizontalRecoilControlThread:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private updateCurrentDataNode()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->rcConfigDataProcessor:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->recoilControlDataNodeRoot:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->children:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->muzzle:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->children:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->specialAccessory:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->children:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->stock:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->children:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->weaponType:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->children:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->scope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->children:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->gesture:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->currentDataNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    return-void
.end method


# virtual methods
.method public adjustRecoilValue(I)V
    .locals 13

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->currentDataNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->getDataArray()Ljava/util/ArrayList;

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
    iget-object p1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->configUpdater:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$ConfigValueUpdater;

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$ConfigValueUpdater;->setDataArray(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->updateConfigHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->updateConfigHandler:Landroid/os/Handler;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer$1;

    invoke-direct {v1, p0, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getCurrentDataNode()Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->currentDataNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    return-object v0
.end method

.method public getCurrentValue()D
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->currentDataNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->getFirstValueNode()Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlValueNode;

    move-result-object v0

    iget-wide v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlValueNode;->value:D

    return-wide v0
.end method

.method public getGesture()Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->gesture:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    return-object v0
.end method

.method public getMuzzle()Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->muzzle:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    return-object v0
.end method

.method public getRecoilControlValueNodeRoot()Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlValueNode;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->currentDataNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->getFirstValueNode()Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlValueNode;

    move-result-object v0

    return-object v0
.end method

.method public getScope()Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->scope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    return-object v0
.end method

.method public getSpecialAccessory()Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->specialAccessory:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

    return-object v0
.end method

.method public getStock()Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->stock:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    return-object v0
.end method

.method public getWeaponType()Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->weaponType:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    return-object v0
.end method

.method public isControlStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->controlStarted:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->started:Z

    return v0
.end method

.method public setAccessory(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->muzzle:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    iput-object p3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->stock:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->specialAccessory:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->updateCurrentDataNode()V

    return-void
.end method

.method public declared-synchronized setControlStarted(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->controlStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->virtualMouse:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->m()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->currentViewMover:Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer$ViewMover;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer$ViewMover;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_0
    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer$ViewMover;

    invoke-direct {v0, p0, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer$ViewMover;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;Lcom/zjx/jyandroid/Extensions/gnyx/RCDataProvider;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->recoilControlThread:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->currentViewMover:Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer$ViewMover;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->currentViewMover:Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer$ViewMover;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer$ViewMover;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->currentViewMover:Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer$ViewMover;

    :cond_4
    :goto_1
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->controlStarted:Z
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

.method public declared-synchronized setGesture(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->gesture:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->currentDataNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->parentNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->children:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->currentDataNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setMuzzle(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->muzzle:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->updateCurrentDataNode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setScope(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->scope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->currentDataNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->parentNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->parentNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->children:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->children:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->gesture:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->currentDataNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setSpecialAccessory(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->specialAccessory:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->specialAccessory:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->updateCurrentDataNode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setStock(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->stock:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->updateCurrentDataNode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setWeaponType(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->weaponType:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->currentDataNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->parentNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->parentNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->parentNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->children:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->children:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->scope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->children:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->gesture:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->currentDataNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public start()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->started:Z

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

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->updateConfigThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->updateConfigThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->updateConfigHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->started:Z

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
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->started:Z

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->updateConfigHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->updateConfigThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
