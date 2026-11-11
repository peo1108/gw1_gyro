.class public Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/UpTriggerKeyActionNode;
.super Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeTouchPerformActionSingleFinger;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/ITouchTriggerable;


# instance fields
.field public clickDuration:J

.field lastPressedLocation:Lcom/zjx/jyandroid/base/FloatPoint;

.field taskId:J

.field private virtualMouse:Lcom/zjx/jyandroid/ForegroundService/UI/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeTouchPerformActionSingleFinger;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/UpTriggerKeyActionNode;->taskId:J

    new-instance v0, Lcom/zjx/jyandroid/base/FloatPoint;

    invoke-direct {v0}, Lcom/zjx/jyandroid/base/FloatPoint;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/UpTriggerKeyActionNode;->lastPressedLocation:Lcom/zjx/jyandroid/base/FloatPoint;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->y()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/UpTriggerKeyActionNode;->virtualMouse:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    return-void
.end method

.method private performSingleClick()V
    .locals 9

    iget-wide v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/UpTriggerKeyActionNode;->taskId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/UpTriggerKeyActionNode;->taskId:J

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;->started:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeTouchPerformAction;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    iget v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeTouchPerformActionSingleFinger;->fingerIndex:I

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/UpTriggerKeyActionNode;->lastPressedLocation:Lcom/zjx/jyandroid/base/FloatPoint;

    iget v5, v4, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iget v4, v4, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    invoke-virtual {v2, v3, v5, v4}, Lcom/zjx/jyandroid/TouchManager;->o(IFF)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;->started:Z

    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeTouchPerformAction;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->coordinate:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v5, v2

    iget-object v8, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/UpTriggerKeyActionNode;->lastPressedLocation:Lcom/zjx/jyandroid/base/FloatPoint;

    const/16 v6, 0xf

    const/16 v7, 0xf

    invoke-virtual/range {v3 .. v8}, Lcom/zjx/jyandroid/TouchManager;->l(FFIILcom/zjx/jyandroid/base/FloatPoint;)I

    move-result v2

    iput v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeTouchPerformActionSingleFinger;->fingerIndex:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-wide v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/UpTriggerKeyActionNode;->clickDuration:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    monitor-enter p0

    :try_start_2
    iget-wide v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/UpTriggerKeyActionNode;->taskId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeTouchPerformAction;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    iget v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeTouchPerformActionSingleFinger;->fingerIndex:I

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/UpTriggerKeyActionNode;->lastPressedLocation:Lcom/zjx/jyandroid/base/FloatPoint;

    iget v3, v2, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iget v2, v2, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    invoke-virtual {v0, v1, v3, v2}, Lcom/zjx/jyandroid/TouchManager;->o(IFF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;->started:Z

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method


# virtual methods
.method public startActionByTouch(Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/UpTriggerKeyActionNode;->startActionWithKeyCodes(II)V

    return-void
.end method

.method public startActionWithKeyCodes(II)V
    .locals 0

    return-void
.end method

.method public stopActionByTouch(Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/UpTriggerKeyActionNode;->stopActionWithKeyCodes(II)V

    return-void
.end method

.method public stopActionWithKeyCodes(II)V
    .locals 0

    const/16 p1, 0xff

    if-le p2, p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/UpTriggerKeyActionNode;->virtualMouse:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->m()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/UpTriggerKeyActionNode;->performSingleClick()V

    return-void
.end method
