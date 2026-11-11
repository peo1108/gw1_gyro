.class public Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;
.super Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;
.source "SourceFile"


# instance fields
.field public horizontalSensitivityAfterSwitch:I

.field public horizontalSensitivityBeforeSwitch:I

.field final mode:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;

.field public switched:Z

.field public verticalSensitivityAfterSwitch:I

.field public verticalSensitivityBeforeSwitch:I

.field final viewToSwitchSensitivity:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;)V
    .locals 1

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;-><init>()V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->horizontalSensitivityAfterSwitch:I

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->verticalSensitivityAfterSwitch:I

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->horizontalSensitivityBeforeSwitch:I

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->verticalSensitivityBeforeSwitch:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->switched:Z

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->viewToSwitchSensitivity:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->mode:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;

    return-void
.end method

.method private switchSensitivity(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->viewToSwitchSensitivity:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->getHorizontalSensitivity()I

    move-result p1

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->horizontalSensitivityBeforeSwitch:I

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->viewToSwitchSensitivity:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->getVerticalSensitivity()I

    move-result p1

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->verticalSensitivityBeforeSwitch:I

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->viewToSwitchSensitivity:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->horizontalSensitivityAfterSwitch:I

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->setHorizontalSensitivity(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->viewToSwitchSensitivity:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->verticalSensitivityAfterSwitch:I

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->setVerticalSensitivity(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->viewToSwitchSensitivity:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->horizontalSensitivityBeforeSwitch:I

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->setHorizontalSensitivity(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->viewToSwitchSensitivity:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->verticalSensitivityBeforeSwitch:I

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->setVerticalSensitivity(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public startActionWithKeyCodes(II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->mode:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;

    sget-object p2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    invoke-direct {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->switchSensitivity(Z)V

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->switched:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    sget-object p2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;

    if-ne p1, p2, :cond_2

    iget-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->switched:Z

    const/4 p2, 0x0

    if-nez p1, :cond_1

    invoke-direct {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->switchSensitivity(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->switchSensitivity(Z)V

    :goto_0
    iget-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->switched:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->switched:Z

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopActionWithKeyCodes(II)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->mode:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;

    sget-object p2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->switchSensitivity(Z)V

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->switched:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
