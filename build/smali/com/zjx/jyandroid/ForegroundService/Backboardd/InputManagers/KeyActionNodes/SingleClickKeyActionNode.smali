.class public Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SingleClickKeyActionNode;
.super Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeTouchPerformActionSingleFinger;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/ITouchTriggerable;


# instance fields
.field public clickDuration:I

.field lock:Ljava/util/concurrent/locks/ReentrantLock;

.field public triggerLatency:I

.field virtualMouse:Lcom/zjx/jyandroid/ForegroundService/UI/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeTouchPerformActionSingleFinger;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SingleClickKeyActionNode;->triggerLatency:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SingleClickKeyActionNode;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->y()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SingleClickKeyActionNode;->virtualMouse:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    return-void
.end method


# virtual methods
.method public startActionByTouch(Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SingleClickKeyActionNode;->startActionWithKeyCodes(II)V

    return-void
.end method

.method public startActionWithKeyCodes(II)V
    .locals 9

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SingleClickKeyActionNode;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;->started:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SingleClickKeyActionNode;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    const/16 p1, 0xff

    if-le p2, p1, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SingleClickKeyActionNode;->virtualMouse:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->m()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SingleClickKeyActionNode;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;->started:Z

    iget p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SingleClickKeyActionNode;->triggerLatency:I

    const/4 p2, 0x0

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SingleClickKeyActionNode;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :try_start_0
    iget p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SingleClickKeyActionNode;->triggerLatency:I

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SingleClickKeyActionNode;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    goto :goto_0

    :catch_0
    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;->started:Z

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeTouchPerformAction;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->coordinate:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/16 v2, 0xf

    invoke-virtual {p1, v1, v0, v2, v2}, Lcom/zjx/jyandroid/TouchManager;->k(FFII)I

    move-result v4

    :try_start_1
    iget p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SingleClickKeyActionNode;->clickDuration:I

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeTouchPerformAction;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->coordinate:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v5, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float v6, p1

    const/16 v7, 0xf

    const/16 v8, 0xf

    invoke-virtual/range {v3 .. v8}, Lcom/zjx/jyandroid/TouchManager;->q(IFFII)V

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;->started:Z

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SingleClickKeyActionNode;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public stopActionByTouch(Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SingleClickKeyActionNode;->stopActionWithKeyCodes(II)V

    return-void
.end method

.method public stopActionWithKeyCodes(II)V
    .locals 0

    return-void
.end method
