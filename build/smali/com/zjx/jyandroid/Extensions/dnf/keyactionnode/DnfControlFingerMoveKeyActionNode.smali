.class public Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;
.super Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeTouchPerformActionSingleFinger;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/ITouchTriggerable;


# instance fields
.field mouseMoveInputManager:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

.field private taskId:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeTouchPerformActionSingleFinger;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;->mouseMoveInputManager:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;->taskId:I

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;->x:I

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;->y:I

    return-void
.end method


# virtual methods
.method public startActionByTouch(Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;->startActionWithKeyCodes(II)V

    return-void
.end method

.method public declared-synchronized startActionWithKeyCodes(II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget p1, p0, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;->taskId:I

    :goto_0
    iget p2, p0, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;->taskId:I

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;->mouseMoveInputManager:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    iget v0, p0, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;->x:I

    iget v1, p0, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;->y:I

    invoke-virtual {p2, v0, v1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->movedRelative(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x14

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public stopActionByTouch(Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;->stopActionWithKeyCodes(II)V

    return-void
.end method

.method public stopActionWithKeyCodes(II)V
    .locals 0

    iget p1, p0, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;->taskId:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;->taskId:I

    return-void
.end method
