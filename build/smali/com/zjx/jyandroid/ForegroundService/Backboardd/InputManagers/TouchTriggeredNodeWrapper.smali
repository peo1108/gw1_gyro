.class public Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field blockTouch:Z

.field disabled:Z

.field private receiveOutsideEvents:Z

.field started:Z

.field public touchRect:Landroid/graphics/Rect;

.field triggerIndex:I

.field public triggerKeyActionNode:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/ITouchTriggerable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->triggerIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->started:Z

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->receiveOutsideEvents:Z

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->blockTouch:Z

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->disabled:Z

    return-void
.end method


# virtual methods
.method public isBlockTouch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->blockTouch:Z

    return v0
.end method

.method public isDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->disabled:Z

    return v0
.end method

.method public isReceiveOutsideEvents()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->receiveOutsideEvents:Z

    return v0
.end method

.method public setBlockTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->blockTouch:Z

    return-void
.end method

.method public setDisabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->disabled:Z

    return-void
.end method

.method public touchOccurred(Ljava/util/concurrent/ExecutorService;Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)Z
    .locals 7

    sget-object v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->down:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->started:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->disabled:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->started:Z

    iput p3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->triggerIndex:I

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper$1;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->blockTouch:Z

    return p1

    :cond_2
    sget-object v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->up:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    if-ne p2, v0, :cond_3

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->triggerIndex:I

    if-ne p3, v0, :cond_3

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->started:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->started:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->triggerIndex:I

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper$2;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper$2;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->blockTouch:Z

    return p1

    :cond_3
    return v1
.end method
