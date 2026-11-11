.class public LK6/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static currentPosture:I

.field private static volatile instance:LK6/m;

.field public static isHoldingGun:Z


# instance fields
.field public volatile acceptThread:Ljava/lang/Thread;

.field public cameraGyroActive:Z

.field public cameraGyroDispScale:F

.field public cameraGyroMode:I

.field public volatile connectedClient:Landroid/net/LocalSocket;

.field public crazyTapLastTick:J

.field public volatile disconnectToasted:Z

.field public volatile freeLookHeld:Z

.field public volatile freeLookIsNade:Z

.field public gyroInvert:Z

.field public volatile gyroOffWhenDriving:Z

.field public volatile gyroOffWhenNoGun:Z

.field public volatile gyroRunning:Z

.field public gyroScale:F

.field public volatile gyroSwipeOverride:Z

.field public gyroThread:Ljava/lang/Thread;

.field public heldVx:F

.field public heldVy:F

.field public holdExpiryNs:J

.field public isRCActive:Z

.field public lastMoveNs:J

.field public nadeGyroActive:Z

.field public volatile nadeServerHeld:Z

.field public nadeTouchTarget:LH6/a;

.field public volatile out:Ljava/io/OutputStream;

.field public pendingDx:F

.field public pendingDy:F

.field public volatile rcByGyro:Z

.field public volatile rcLastTickMs:J

.field public volatile rcRateDx:F

.field public volatile rcRateDy:F

.field public volatile scrollAdjustActive:Z

.field public scrollBasePull:I

.field public scrollExtra:I

.field public scrollStep:I

.field public volatile scrollTarget:I

.field public serverRefCount:I

.field public volatile serverRunning:Z

.field public volatile serverSocket:Landroid/net/LocalServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, LK6/m;->isHoldingGun:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static floatToLEBytes(F)[B
    .locals 4

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/4 v1, 0x4

    new-array v2, v1, [B

    const/4 v1, 0x0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    const/4 v1, 0x1

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/4 v1, 0x2

    shr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/4 v1, 0x3

    shr-int/lit8 v3, v0, 0x18

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    return-object v2
.end method

.method public static getInstance()LK6/m;
    .locals 2

    sget-object v0, LK6/m;->instance:LK6/m;

    if-nez v0, :cond_1

    const-class v0, LK6/m;

    monitor-enter v0

    :try_start_0
    sget-object v1, LK6/m;->instance:LK6/m;

    if-nez v1, :cond_0

    new-instance v1, LK6/m;

    invoke-direct {v1}, LK6/m;-><init>()V

    sput-object v1, LK6/m;->instance:LK6/m;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, LK6/m;->instance:LK6/m;

    :cond_1
    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public acceptLoop()V
    .locals 9

    :goto_0
    iget-boolean v2, p0, LK6/m;->serverRunning:Z

    if-eqz v2, :cond_3

    :try_start_0
    iget-object v2, p0, LK6/m;->serverSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    monitor-enter p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    iget-object v2, p0, LK6/m;->connectedClient:Landroid/net/LocalSocket;

    if-eqz v2, :cond_0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    :cond_0
    :try_start_5
    iput-object v0, p0, LK6/m;->connectedClient:Landroid/net/LocalSocket;

    iput-object v1, p0, LK6/m;->out:Ljava/io/OutputStream;

    monitor-exit p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-boolean v0, p0, LK6/m;->serverRunning:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, LK6/m;->disconnectToasted:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, LK6/m;->disconnectToasted:Z

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, LK6/p;

    if-eqz v0, :cond_2

    const-string v8, "7\u0098S\u00d8|\u0014\u00b7\'\u00a7L\u00f3g\u0018\u00863\u00c9O\u00f3"

    invoke-static/range {v8 .. v8}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "\u0008\u00a2W\u00ce`\u0015\u008d6\u00b6J\u00f8)\u0002\u008cp\u00daS\u00e5k"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/zjx/buildtier/L;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v8, "7\u0098S\u00d8|\u0014\u00b76\u00adA\u00f2l\u0015\u00975\u00d9"

    invoke-static/range {v8 .. v8}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "\u0019\u00a8Z\u00cfk\u0018\u009c0\u00a6\u000f\u00e8fV\u0084)\u00cfE"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/zjx/buildtier/L;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    sget-object v0, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v3, v1, v0}, LK6/p;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_1
    :try_start_6
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    goto :goto_0

    :catch_3
    iget-boolean v2, p0, LK6/m;->serverRunning:Z

    if-eqz v2, :cond_3

    :try_start_7
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    :catch_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_3
    :goto_2
    return-void
.end method

.method public acquireServer()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, LK6/m;->serverRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LK6/m;->serverRefCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    monitor-exit p0

    invoke-virtual {p0}, LK6/m;->startServer()Z

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public activate(FI)V
    .locals 2

    invoke-virtual {p0}, LK6/m;->startServer()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, LK6/m;->nadeGyroActive:Z

    invoke-virtual {p0}, LK6/m;->updateCameraGyroScale()V

    iget p1, p0, LK6/m;->cameraGyroDispScale:F

    iput p1, p0, LK6/m;->gyroScale:F

    invoke-virtual {p0}, LK6/m;->ensureFlushTimer()V

    return-void
.end method

.method public deactivate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LK6/m;->nadeGyroActive:Z

    iput v0, p0, LK6/m;->gyroScale:F

    invoke-virtual {p0, v0, v0}, LK6/m;->sendGyro(FF)V

    invoke-virtual {p0}, LK6/m;->ensureFlushTimer()V

    return-void
.end method

.method public declared-synchronized ensureFlushTimer()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, LK6/m;->isGyroPathActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, LK6/m;->gyroThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, LK6/m;->pendingDx:F

    iput v1, p0, LK6/m;->pendingDy:F

    iput v1, p0, LK6/m;->heldVx:F

    iput v1, p0, LK6/m;->heldVy:F

    const-wide/16 v1, 0x0

    iput-wide v1, p0, LK6/m;->lastMoveNs:J

    iput-wide v1, p0, LK6/m;->holdExpiryNs:J

    const/4 v1, 0x1

    iput-boolean v1, p0, LK6/m;->gyroRunning:Z

    new-instance v1, LK6/n;

    invoke-direct {v1, p0}, LK6/n;-><init>(LK6/m;)V

    iput-object v1, p0, LK6/m;->gyroThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, LK6/m;->gyroRunning:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ensureHookForActiveGame()V
    .locals 2

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, LK6/m;->connectedClient:Landroid/net/LocalSocket;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/zjx/gw2lic/GyroInjector;->onGyroEnabledInGame(Landroid/content/Context;Z)V

    if-nez v1, :cond_1

    invoke-virtual {p0}, LK6/m;->scheduleConnectWatchdog()V

    :cond_1
    return-void
.end method

.method public flushPending()V
    .locals 13

    monitor-enter p0

    :try_start_0
    iget v0, p0, LK6/m;->pendingDx:F

    iget v1, p0, LK6/m;->pendingDy:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const/4 v4, 0x0

    cmpl-float v5, v0, v4

    if-nez v5, :cond_0

    cmpl-float v5, v1, v4

    if-eqz v5, :cond_3

    :cond_0
    iget-wide v6, p0, LK6/m;->lastMoveNs:J

    iput-wide v2, p0, LK6/m;->lastMoveNs:J

    const-wide/16 v8, 0x0

    cmp-long v12, v6, v8

    if-nez v12, :cond_1

    const-wide/32 v6, 0x4c4b40

    goto :goto_0

    :cond_1
    sub-long v6, v2, v6

    :goto_0
    long-to-float v8, v6

    const v9, 0x3089705f    # 1.0E-9f

    mul-float v8, v8, v9

    const v9, 0x3a83126f    # 0.001f

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    const v9, 0x3d4ccccd    # 0.05f

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    div-float v0, v0, v8

    div-float v1, v1, v8

    iput v0, p0, LK6/m;->heldVx:F

    iput v1, p0, LK6/m;->heldVy:F

    const/4 v12, 0x1

    shr-long v10, v6, v12

    add-long/2addr v6, v10

    const-wide/32 v10, 0x5f5e100

    cmp-long v12, v6, v10

    if-lez v12, :cond_2

    move-wide v6, v10

    :cond_2
    add-long/2addr v6, v2

    iput-wide v6, p0, LK6/m;->holdExpiryNs:J

    const/4 v4, 0x0

    iput v4, p0, LK6/m;->pendingDx:F

    iput v4, p0, LK6/m;->pendingDy:F

    goto :goto_1

    :cond_3
    iget-wide v6, p0, LK6/m;->holdExpiryNs:J

    cmp-long v8, v2, v6

    if-ltz v8, :cond_4

    const/4 v4, 0x0

    iput v4, p0, LK6/m;->heldVx:F

    iput v4, p0, LK6/m;->heldVy:F

    :cond_4
    iget v0, p0, LK6/m;->heldVx:F

    iget v1, p0, LK6/m;->heldVy:F

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, LK6/m;->rcLastTickMs:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x19

    cmp-long v6, v2, v4

    if-gez v6, :cond_5

    iget v6, p0, LK6/m;->rcRateDx:F

    add-float/2addr v0, v6

    iget v6, p0, LK6/m;->rcRateDy:F

    add-float/2addr v1, v6

    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0, v1}, LK6/m;->sendGyro(FF)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public flushScrollSmooth()V
    .locals 9

    iget-boolean v0, p0, LK6/m;->scrollAdjustActive:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, LK6/m;->nadeTouchTarget:LH6/a;

    if-eqz v0, :cond_4

    iget-boolean v1, v0, LH6/a;->D6:Z

    if-eqz v1, :cond_4

    iget v1, p0, LK6/m;->scrollTarget:I

    iget v2, p0, LK6/m;->scrollExtra:I

    sub-int v3, v1, v2

    if-eqz v3, :cond_4

    const/16 v4, 0x8

    if-le v3, v4, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    neg-int v5, v4

    if-ge v3, v5, :cond_1

    move v3, v5

    :cond_1
    :goto_0
    add-int v2, v2, v3

    iput v2, p0, LK6/m;->scrollExtra:I

    iget v4, v0, LH6/a;->V6:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    const/4 v4, 0x1

    :cond_2
    const/16 v5, 0x59

    if-le v4, v5, :cond_3

    const/16 v4, 0x59

    :cond_3
    int-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    int-to-double v7, v3

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v4, v5

    neg-int v4, v4

    invoke-virtual {v0, v4, v3}, LH6/a;->f(II)V

    :cond_4
    return-void
.end method

.method public initFromPrefs()V
    .locals 4

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/gw2lic/GyroInjector;->warmDetectAsync(Landroid/content/Context;)V

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;-><init>()V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->getGyroInvert()Z

    move-result v1

    iput-boolean v1, p0, LK6/m;->gyroInvert:Z

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->getGyroOffWhenNoGun()Z

    move-result v1

    iput-boolean v1, p0, LK6/m;->gyroOffWhenNoGun:Z

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v2

    const-string v3, "gw2_drivekey2"

    const/4 v1, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "gyroOffWhenDriving"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, LK6/m;->gyroOffWhenDriving:Z

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->getRcByGyro()Z

    move-result v1

    iput-boolean v1, p0, LK6/m;->rcByGyro:Z

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->getConnectionMode()I

    move-result v1

    invoke-virtual {p0, v1}, LK6/m;->setConnectionMode(I)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->getCameraGyroMode()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, LK6/m;->setCameraGyroMode(I)V

    :cond_0
    return-void
.end method

.method public isFiringActive()Z
    .locals 6

    iget-boolean v0, p0, LK6/m;->isRCActive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, LK6/m;->crazyTapLastTick:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x64

    cmp-long v2, v4, v0

    if-gez v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isGyroPathActive()Z
    .locals 2

    iget-boolean v0, p0, LK6/m;->nadeGyroActive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, LK6/m;->freeLookIsNade:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-boolean v0, p0, LK6/m;->gyroSwipeOverride:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, LK6/m;->cameraGyroActive:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, LK6/m;->gyroOffWhenNoGun:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, LK6/m;->freeLookHeld:Z

    if-nez v0, :cond_2

    sget-boolean v0, LK6/m;->isHoldingGun:Z

    if-eqz v0, :cond_4

    :cond_2
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->F()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->u()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v0, p0, LK6/m;->cameraGyroMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, LK6/m;->isFiringActive()Z

    move-result v0

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public maybeScrollAdjust(I)Z
    .locals 3

    iget-boolean v0, p0, LK6/m;->scrollAdjustActive:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, LK6/m;->freeLookIsNade:Z

    if-eqz v0, :cond_2

    iget v0, p0, LK6/m;->scrollStep:I

    if-ltz p1, :cond_0

    neg-int v0, v0

    :cond_0
    iget v1, p0, LK6/m;->scrollTarget:I

    add-int v1, v1, v0

    iget v2, p0, LK6/m;->scrollBasePull:I

    neg-int v2, v2

    if-ge v1, v2, :cond_1

    move v1, v2

    :cond_1
    iput v1, p0, LK6/m;->scrollTarget:I

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public releaseServer()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, LK6/m;->serverRefCount:I

    if-gtz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LK6/m;->serverRefCount:I

    if-nez v0, :cond_1

    monitor-exit p0

    invoke-virtual {p0}, LK6/m;->stopServer()V

    return-void

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public scheduleConnectWatchdog()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, LK6/q;

    invoke-direct {v1, p0}, LK6/q;-><init>(LK6/m;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public sendGyro(FF)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LK6/m;->out:Ljava/io/OutputStream;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-static {p1}, LK6/m;->floatToLEBytes(F)[B

    move-result-object v2

    invoke-static {p2}, LK6/m;->floatToLEBytes(F)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v2, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v4, v1, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    return-void

    :catch_0
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, LK6/m;->connectedClient:Landroid/net/LocalSocket;

    if-eqz v0, :cond_1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_1
    :cond_1
    :try_start_4
    const/4 v0, 0x0

    iput-object v0, p0, LK6/m;->connectedClient:Landroid/net/LocalSocket;

    iput-object v0, p0, LK6/m;->out:Ljava/io/OutputStream;

    iget-boolean v1, p0, LK6/m;->disconnectToasted:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, LK6/m;->disconnectToasted:Z

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, LK6/p;

    const-string v6, "7\u0098S\u00d8|\u0014\u00b79\u00ad\\\u00e8"

    invoke-static/range {v6 .. v6}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "\u001d\u00beF\u00ce.\u001f\u0081&\u00a1@\u00f2g\u0013\u0080$\u00d8N\u00bb$\u0002\u00a9\"\u00ccF\u00fa\u0096\u0002\u00bef\u00c7O\u00ad\u008e\u0008\u00a1\"\u00c6"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/zjx/buildtier/L;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/zjx/jyandroid/base/util/ToastView$a;->d:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v2, v3, v4}, LK6/p;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendRcGyro(II)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LK6/m;->nadeGyroActive:Z

    if-eqz v0, :cond_0

    iget v0, p0, LK6/m;->gyroScale:F

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, LK6/m;->cameraGyroActive:Z

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    iget v0, p0, LK6/m;->cameraGyroDispScale:F

    :goto_0
    int-to-float v1, p1

    mul-float v1, v1, v0

    const/high16 v2, 0x42480000    # 50.0f

    mul-float v1, v1, v2

    int-to-float v3, p2

    neg-float v3, v3

    mul-float v3, v3, v0

    mul-float v3, v3, v2

    iput v1, p0, LK6/m;->rcRateDx:F

    iput v3, p0, LK6/m;->rcRateDy:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LK6/m;->rcLastTickMs:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendScaledGyro(II)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LK6/m;->nadeGyroActive:Z

    if-eqz v0, :cond_0

    iget v0, p0, LK6/m;->gyroScale:F

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, LK6/m;->cameraGyroActive:Z

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    iget v0, p0, LK6/m;->cameraGyroDispScale:F

    :goto_0
    int-to-float v1, p1

    mul-float v1, v1, v0

    int-to-float v2, p2

    neg-float v2, v2

    mul-float v2, v2, v0

    iget v0, p0, LK6/m;->pendingDx:F

    add-float v0, v0, v1

    iput v0, p0, LK6/m;->pendingDx:F

    iget v0, p0, LK6/m;->pendingDy:F

    add-float v0, v0, v2

    iput v0, p0, LK6/m;->pendingDy:F

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCameraGyroMode(I)V
    .locals 3

    iget v0, p0, LK6/m;->cameraGyroMode:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, LK6/m;->cameraGyroMode:I

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, LK6/m;->ensureFlushTimer()V

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, LK6/m;->cameraGyroActive:Z

    invoke-virtual {p0}, LK6/m;->updateCameraGyroScale()V

    invoke-virtual {p0}, LK6/m;->acquireServer()V

    invoke-virtual {p0}, LK6/m;->ensureFlushTimer()V

    invoke-virtual {p0}, LK6/m;->ensureHookForActiveGame()V

    return-void

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, LK6/m;->cameraGyroActive:Z

    invoke-virtual {p0}, LK6/m;->ensureFlushTimer()V

    invoke-virtual {p0}, LK6/m;->releaseServer()V

    return-void
.end method

.method public setConnectionMode(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zjx/gw2lic/GyroInjector;->setUseModule(ZLandroid/content/Context;)V

    return-void
.end method

.method public setGyroInvert(Z)V
    .locals 0

    iput-boolean p1, p0, LK6/m;->gyroInvert:Z

    return-void
.end method

.method public setGyroOffWhenDriving(Z)V
    .locals 2

    iput-boolean p1, p0, LK6/m;->gyroOffWhenDriving:Z

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gw2_drivekey2"

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gyroOffWhenDriving"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setGyroOffWhenNoGun(Z)V
    .locals 0

    iput-boolean p1, p0, LK6/m;->gyroOffWhenNoGun:Z

    invoke-virtual {p0}, LK6/m;->ensureFlushTimer()V

    return-void
.end method

.method public setGyroSwipeOverride(Z)V
    .locals 0

    iput-boolean p1, p0, LK6/m;->gyroSwipeOverride:Z

    invoke-virtual {p0}, LK6/m;->ensureFlushTimer()V

    return-void
.end method

.method public setNadeServerWanted(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LK6/m;->nadeServerHeld:Z

    iput-boolean p1, p0, LK6/m;->nadeServerHeld:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LK6/m;->acquireServer()V

    return-void

    :cond_0
    invoke-virtual {p0}, LK6/m;->releaseServer()V

    return-void

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setRcByGyro(Z)V
    .locals 0

    iput-boolean p1, p0, LK6/m;->rcByGyro:Z

    return-void
.end method

.method public startServer()Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/zjx/gw2lic/GyroInjector;->setGyroWanted(Z)V

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/gw2lic/GyroInjector;->ensureInjected(Landroid/content/Context;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LK6/m;->serverRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LK6/m;->serverSocket:Landroid/net/LocalServerSocket;

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    new-instance v3, Landroid/net/LocalServerSocket;

    const-string v0, "\u0005\u0098G\u00c4`\u0008\u0087\'\u009dL\u00fde\u001f\u0081\u000f\u00deB\u00f6j"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, LK6/m;->serverSocket:Landroid/net/LocalServerSocket;

    const/4 v0, 0x1

    iput-boolean v0, p0, LK6/m;->serverRunning:Z

    new-instance v1, LK6/o;

    invoke-direct {v1, p0}, LK6/o;-><init>(LK6/m;)V

    iput-object v1, p0, LK6/m;->acceptThread:Ljava/lang/Thread;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, LK6/m;->serverRunning:Z

    iput-object v0, p0, LK6/m;->serverSocket:Landroid/net/LocalServerSocket;

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopServer()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zjx/gw2lic/GyroInjector;->setGyroWanted(Z)V

    iput-boolean v0, p0, LK6/m;->serverRunning:Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LK6/m;->connectedClient:Landroid/net/LocalSocket;

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    iget-object v0, p0, LK6/m;->serverSocket:Landroid/net/LocalServerSocket;

    if-eqz v0, :cond_1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    :cond_1
    :try_start_4
    const/4 v0, 0x0

    iput-object v0, p0, LK6/m;->connectedClient:Landroid/net/LocalSocket;

    iput-object v0, p0, LK6/m;->out:Ljava/io/OutputStream;

    iput-object v0, p0, LK6/m;->serverSocket:Landroid/net/LocalServerSocket;

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateCameraGyroScale()V
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gw2_gyro"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sens"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3a1d4952

    mul-float v2, v0, v1

    iput v2, p0, LK6/m;->cameraGyroDispScale:F

    return-void
.end method

.method public static rcOut(Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;II)V
    .locals 2

    invoke-static {}, LK6/m;->getInstance()LK6/m;

    move-result-object v0

    invoke-virtual {v0}, LK6/m;->isGyroPathActive()Z

    move-result v1

    if-eqz v1, :normal

    iget-boolean v1, v0, LK6/m;->rcByGyro:Z

    if-eqz v1, :normal

    iget-object v1, v0, LK6/m;->connectedClient:Landroid/net/LocalSocket;

    if-eqz v1, :normal

    iget-boolean v1, v0, LK6/m;->gyroInvert:Z

    if-nez v1, :skipneg

    neg-int p1, p1

    neg-int p2, p2

    :skipneg
    invoke-virtual {v0, p1, p2}, LK6/m;->sendRcGyro(II)V

    return-void

    :normal
    invoke-interface {p0, p1, p2}, Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;->movedRelativeRaw(II)V

    return-void
.end method

.method public static setRecoilGyro(Z)V
    .locals 2

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;-><init>()V

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->setRcByGyro(Z)V

    invoke-static {}, LK6/m;->getInstance()LK6/m;

    move-result-object v0

    if-eqz p0, :off

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LK6/m;->setConnectionMode(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LK6/m;->setCameraGyroMode(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LK6/m;->setRcByGyro(Z)V

    return-void

    :off
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LK6/m;->setRcByGyro(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LK6/m;->setCameraGyroMode(I)V

    return-void
.end method

.method public static setInvertPref(Z)V
    .locals 3

    invoke-static {}, LK6/m;->getInstance()LK6/m;

    move-result-object v0

    invoke-virtual {v0, p0}, LK6/m;->setGyroInvert(Z)V

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gw2_gyro"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "invert"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static applyGyroInvert()V
    .locals 4

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gw2_gyro"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "invert"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, LK6/m;->getInstance()LK6/m;

    move-result-object v1

    invoke-virtual {v1, v0}, LK6/m;->setGyroInvert(Z)V

    return-void
.end method

.method public static setModulePref(Z)V
    .locals 3

    invoke-static {}, LK6/m;->getInstance()LK6/m;

    move-result-object v0

    invoke-virtual {v0, p0}, LK6/m;->setConnectionMode(I)V

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gw2_gyro"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "useModule"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static applyConnMode()V
    .locals 4

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gw2_gyro"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "useModule"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, LK6/m;->getInstance()LK6/m;

    move-result-object v1

    invoke-virtual {v1, v0}, LK6/m;->setConnectionMode(I)V

    return-void
.end method

.method public static setGyroSens(I)V
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gw2_gyro"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sens"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, LK6/m;->getInstance()LK6/m;

    move-result-object v0

    invoke-virtual {v0}, LK6/m;->updateCameraGyroScale()V

    return-void
.end method

.method public static wantHRecoil()Z
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gw2_gyro"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "hrecoil"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setHRecoil(Z)V
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gw2_gyro"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hrecoil"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method