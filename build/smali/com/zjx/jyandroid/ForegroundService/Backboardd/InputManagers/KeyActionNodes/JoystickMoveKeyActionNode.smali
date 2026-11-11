.class public Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/JoystickMoveKeyActionNode;
.super Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;
.source "SourceFile"


# instance fields
.field private final associatedMoveButton:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickButton;

.field private final joystickTouchPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/JoystickMoveKeyActionNode;->joystickTouchPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/JoystickMoveKeyActionNode;->associatedMoveButton:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickButton;

    return-void
.end method


# virtual methods
.method public startActionWithKeyCodes(II)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/JoystickMoveKeyActionNode;->joystickTouchPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;

    iget-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/JoystickMoveKeyActionNode;->associatedMoveButton:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickButton;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->buttonPressed(Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickButton;)V

    return-void
.end method

.method public stopActionWithKeyCodes(II)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/JoystickMoveKeyActionNode;->joystickTouchPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;

    iget-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/JoystickMoveKeyActionNode;->associatedMoveButton:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickButton;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->buttonReleased(Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickButton;)V

    return-void
.end method
