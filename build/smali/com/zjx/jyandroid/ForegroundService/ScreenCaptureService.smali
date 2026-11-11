.class public Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$OrientationChangeCallback;,
        Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "ACTION"

.field private static final DATA:Ljava/lang/String; = "DATA"

.field private static IMAGES_PRODUCED:I = 0x0

.field private static final RESULT_CODE:Ljava/lang/String; = "RESULT_CODE"

.field private static final SCREENCAP_NAME:Ljava/lang/String; = "screencap"

.field private static final SCREENSHOT_THRESHOLD:J = 0x64L

.field private static final START:Ljava/lang/String; = "START"

.field private static final STOP:Ljava/lang/String; = "STOP"

.field private static final TAG:Ljava/lang/String; = "jyandroidlog"

.field static instance:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;


# instance fields
.field public lastGetScreenshotTime:J

.field public lastScreenshot:Landroid/graphics/Bitmap;

.field private mDensity:I

.field private mDisplay:Landroid/view/Display;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mImageReader:Landroid/media/ImageReader;

.field private mMediaProjection:Landroid/media/projection/MediaProjection;

.field private mOrientationChangeCallback:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$OrientationChangeCallback;

.field private mRotation:I

.field private mStoreDir:Ljava/lang/String;

.field private mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field private mWidth:I

.field private newImageAvailable:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->lastGetScreenshotTime:J

    return-void
.end method

.method public static synthetic access$000(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)Landroid/view/Display;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mDisplay:Landroid/view/Display;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)I
    .locals 0

    iget p0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mRotation:I

    return p0
.end method

.method public static synthetic access$102(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;I)I
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mRotation:I

    return p1
.end method

.method public static synthetic access$200(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)Landroid/hardware/display/VirtualDisplay;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)V
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->createVirtualDisplay()V

    return-void
.end method

.method public static synthetic access$500(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$OrientationChangeCallback;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mOrientationChangeCallback:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$OrientationChangeCallback;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)Landroid/media/projection/MediaProjection;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mMediaProjection:Landroid/media/projection/MediaProjection;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$702(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method private createVirtualDisplay()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->i()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mWidth:I

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mHeight:I

    iget v1, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mWidth:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v7

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mMediaProjection:Landroid/media/projection/MediaProjection;

    iget v3, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mWidth:I

    iget v4, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mHeight:I

    iget v5, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mDensity:I

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->getVirtualDisplayFlags()I

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v2, "screencap"

    invoke-virtual/range {v1 .. v9}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-void
.end method

.method public static getStartIntent(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION"

    const-string v1, "START"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "RESULT_CODE"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "DATA"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getStopIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION"

    const-string v1, "STOP"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static getVirtualDisplayFlags()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method private static isStartCommand(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "RESULT_CODE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DATA"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ACTION"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "START"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isStopCommand(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "ACTION"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "STOP"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static sharedInstance()Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->instance:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;

    return-object v0
.end method

.method private startProjection(ILandroid/content/Intent;)V
    .locals 2

    const-string v0, "media_projection"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mMediaProjection:Landroid/media/projection/MediaProjection;

    if-nez v1, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mMediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mDensity:I

    const-string p1, "window"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mDisplay:Landroid/view/Display;

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->createVirtualDisplay()V

    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$OrientationChangeCallback;

    invoke-direct {p1, p0, p0}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$OrientationChangeCallback;-><init>(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mOrientationChangeCallback:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$OrientationChangeCallback;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mOrientationChangeCallback:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$OrientationChangeCallback;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mMediaProjection:Landroid/media/projection/MediaProjection;

    new-instance p2, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback;-><init>(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$1;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v0}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    :cond_1
    return-void
.end method

.method private stopProjection()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$2;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$2;-><init>(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized getScreenshot()Landroid/graphics/Bitmap;
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->lastGetScreenshotTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->lastScreenshot:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    :try_start_2
    iput-boolean v4, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->newImageAvailable:Z

    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    aget-object v6, v5, v4

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    aget-object v7, v5, v4

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v7

    aget-object v4, v5, v4

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    iget v5, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mWidth:I

    mul-int v8, v7, v5

    sub-int/2addr v4, v8

    div-int/2addr v4, v7

    add-int/2addr v5, v4

    iget v4, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->mHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    iput-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->lastScreenshot:Landroid/graphics/Bitmap;

    iput-wide v0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->lastGetScreenshotTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v3}, Landroid/media/Image;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->lastScreenshot:Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Landroid/media/Image;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v0

    :goto_0
    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Landroid/media/Image;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_7
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_2
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_3
    monitor-exit p0

    return-object v2

    :goto_4
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    sput-object p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->instance:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$1;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$1;-><init>(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-static {p1}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->isStartCommand(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/zjx/jyandroid/NotificationUtils;->getNotification(Landroid/content/Context;)Landroidx/core/util/Pair;

    move-result-object p2

    iget-object p3, p2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object p2, p2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Landroid/app/Notification;

    invoke-virtual {p0, p3, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const-string p2, "RESULT_CODE"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string p3, "DATA"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-direct {p0, p2, p1}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->startProjection(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->isStopCommand(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->stopProjection()V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :goto_0
    const/4 p1, 0x2

    return p1
.end method
