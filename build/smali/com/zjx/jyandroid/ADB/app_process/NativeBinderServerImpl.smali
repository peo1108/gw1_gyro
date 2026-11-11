.class public Lcom/zjx/jyandroid/ADB/app_process/NativeBinderServerImpl;
.super Lcom/zjx/jyandroid/NativeBinderServer$Stub;
.source "SourceFile"


# instance fields
.field grabbing:Z

.field screenshooter:Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zjx/jyandroid/NativeBinderServer$Stub;-><init>()V

    new-instance v0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/NativeBinderServerImpl;->screenshooter:Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ADB/app_process/NativeBinderServerImpl;->grabbing:Z

    return-void
.end method


# virtual methods
.method public executeShellCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getScreenshot(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/NativeBinderServerImpl;->screenshooter:Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;

    invoke-virtual {v0, p1, p2}, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->getScreenshot(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized setGrabbingTouchEvent(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/ADB/app_process/NativeBinderServerImpl;->grabbing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ADB/app_process/NativeBinderServerImpl;->grabbing:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/zjx/jyandroid/TouchService$EventManager;->startGrabbingTouchEventAndSendToApplication()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/zjx/jyandroid/TouchService$EventManager;->stopGrabbingTouchEvent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
