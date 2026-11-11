.class public Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfSwitchMoveFocusKeyActionNode;
.super Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeTouchPerformActionSingleFinger;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/ITouchTriggerable;


# instance fields
.field public bindWorker:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

.field public joystickTouchPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;

.field mouseMoveInputManager:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeTouchPerformActionSingleFinger;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfSwitchMoveFocusKeyActionNode;->mouseMoveInputManager:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    return-void
.end method


# virtual methods
.method public startActionByTouch(Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfSwitchMoveFocusKeyActionNode;->startActionWithKeyCodes(II)V

    return-void
.end method

.method public declared-synchronized startActionWithKeyCodes(II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfSwitchMoveFocusKeyActionNode;->joystickTouchPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->setPause(Z)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfSwitchMoveFocusKeyActionNode;->mouseMoveInputManager:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfSwitchMoveFocusKeyActionNode;->bindWorker:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->addMouseMoveFingerManagerAndSetCurrentManager(Lcom/zjx/jyandroid/base/Interfaces/FocusableMoveEventHandling;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfSwitchMoveFocusKeyActionNode;->mouseMoveInputManager:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->movedRelativeRaw(II)V

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;->started:Z
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

.method public stopActionByTouch(Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfSwitchMoveFocusKeyActionNode;->stopActionWithKeyCodes(II)V

    return-void
.end method

.method public stopActionWithKeyCodes(II)V
    .locals 0

    iget-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;->started:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfSwitchMoveFocusKeyActionNode;->mouseMoveInputManager:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfSwitchMoveFocusKeyActionNode;->bindWorker:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->removeMouseMoveFingerManagerAndSetCurrentManager(Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;)V

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfSwitchMoveFocusKeyActionNode;->joystickTouchPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->setPause(Z)V

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;->started:Z

    return-void
.end method
