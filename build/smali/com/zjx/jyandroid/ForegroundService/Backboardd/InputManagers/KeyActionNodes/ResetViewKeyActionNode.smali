.class public Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/ResetViewKeyActionNode;
.super Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;
.source "SourceFile"


# instance fields
.field public latency:I

.field private final viewToReset:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveEventHandling;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveEventHandling;)V
    .locals 1

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/ResetViewKeyActionNode;->latency:I

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/ResetViewKeyActionNode;->viewToReset:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveEventHandling;

    return-void
.end method


# virtual methods
.method public startActionWithKeyCodes(II)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/ResetViewKeyActionNode;->viewToReset:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveEventHandling;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveEventHandling;->isFocusing()Z

    move-result p1

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/ResetViewKeyActionNode;->latency:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_1

    int-to-long p1, p1

    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/ResetViewKeyActionNode;->viewToReset:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveEventHandling;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveEventHandling;->onFocusLose()V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/ResetViewKeyActionNode;->viewToReset:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveEventHandling;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveEventHandling;->onFocusGain()V

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public stopActionWithKeyCodes(II)V
    .locals 0

    return-void
.end method
