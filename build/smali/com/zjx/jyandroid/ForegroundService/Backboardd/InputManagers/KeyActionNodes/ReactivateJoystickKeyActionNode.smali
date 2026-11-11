.class public Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/ReactivateJoystickKeyActionNode;
.super Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;
.source "SourceFile"


# instance fields
.field private final joystickTouchPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;

.field private final latency:I


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;I)V
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/ReactivateJoystickKeyActionNode;->joystickTouchPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/ReactivateJoystickKeyActionNode;->latency:I

    return-void
.end method


# virtual methods
.method public startActionWithKeyCodes(II)V
    .locals 0

    :try_start_0
    iget p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/ReactivateJoystickKeyActionNode;->latency:I

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/ReactivateJoystickKeyActionNode;->joystickTouchPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->reactivate()V

    return-void
.end method

.method public stopActionWithKeyCodes(II)V
    .locals 0

    return-void
.end method
