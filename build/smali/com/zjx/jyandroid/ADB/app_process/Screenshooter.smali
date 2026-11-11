.class public Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static surfaceControlClass:Ljava/lang/Class;


# instance fields
.field asBitmapMethod:Ljava/lang/reflect/Method;

.field buildMethod:Ljava/lang/reflect/Method;

.field captureDisplayMethod:Ljava/lang/reflect/Method;

.field displayCaptureArgsBuilderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field displayCaptureArgsBuilderClassConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field displayCaptureArgsClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field getPhysicalDisplayIdsMethod:Ljava/lang/reflect/Method;

.field getPhysicalDisplayTokenMethod:Ljava/lang/reflect/Method;

.field screenshotHardwareBufferClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field screenshotMethod:Ljava/lang/reflect/Method;

.field sdkVersion:I

.field setPixelFormatMethod:Ljava/lang/reflect/Method;

.field setSizeMethod:Ljava/lang/reflect/Method;

.field setSourceCropMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BlockedPrivateApi"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->sdkVersion:I

    const/16 v1, 0x1f

    const-class v2, Landroid/graphics/Rect;

    if-lt v0, v1, :cond_3

    const/16 v1, 0x22

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    :try_start_0
    sget-object v0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->surfaceControlClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-wide v0, -0x7cf7dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-wide v4, -0x7fa7dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const-class v4, Ljava/lang/String;

    const-class v5, Ljava/lang/String;

    const-class v6, Ljava/lang/String;

    const-class v7, Ljava/lang/ClassLoader;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-wide v4, -0x80c7dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    filled-new-array/range {v6 .. v12}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    const-wide v4, -0x82b7dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->surfaceControlClass:Ljava/lang/Class;

    const-class v0, Ljava/lang/Runtime;

    const-wide v4, -0x8557dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const-class v4, Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    filled-new-array {v4, v5}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    sget-object v4, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->surfaceControlClass:Ljava/lang/Class;

    const-wide v5, -0x8627dacc755L

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    :goto_0
    const-wide v0, -0x8727dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->displayCaptureArgsClass:Ljava/lang/Class;

    const-wide v0, -0x8a27dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->displayCaptureArgsBuilderClass:Ljava/lang/Class;

    const-wide v0, -0x8da7dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->screenshotHardwareBufferClass:Ljava/lang/Class;

    const-wide v0, -0x9107dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-wide v4, -0x92d7dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->displayCaptureArgsClass:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->captureDisplayMethod:Ljava/lang/reflect/Method;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->surfaceControlClass:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-wide v0, -0x93c7dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->surfaceControlClass:Ljava/lang/Class;

    :cond_2
    const-wide v0, -0x9587dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->displayCaptureArgsClass:Ljava/lang/Class;

    const-wide v0, -0x9877dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->displayCaptureArgsBuilderClass:Ljava/lang/Class;

    const-wide v0, -0x9be7dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->screenshotHardwareBufferClass:Ljava/lang/Class;

    sget-object v0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->surfaceControlClass:Ljava/lang/Class;

    const-wide v4, -0x9f37dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->displayCaptureArgsClass:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->captureDisplayMethod:Ljava/lang/reflect/Method;

    :goto_1
    sget-object v0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->surfaceControlClass:Ljava/lang/Class;

    const-wide v4, -0xa027dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->getPhysicalDisplayIdsMethod:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->surfaceControlClass:Ljava/lang/Class;

    const-wide v4, -0xa187dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->getPhysicalDisplayTokenMethod:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->displayCaptureArgsBuilderClass:Ljava/lang/Class;

    const-class v1, Landroid/os/IBinder;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->displayCaptureArgsBuilderClassConstructor:Ljava/lang/reflect/Constructor;

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->displayCaptureArgsBuilderClass:Ljava/lang/Class;

    const-wide v4, -0xa307dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->setSizeMethod:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->displayCaptureArgsBuilderClass:Ljava/lang/Class;

    const-wide v5, -0xa387dacc755L

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->setPixelFormatMethod:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->displayCaptureArgsBuilderClass:Ljava/lang/Class;

    const-wide v4, -0xa477dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->setSourceCropMethod:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->displayCaptureArgsBuilderClass:Ljava/lang/Class;

    const-wide v1, -0xa557dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->buildMethod:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->screenshotHardwareBufferClass:Ljava/lang/Class;

    const-wide v1, -0xa5b7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->asBitmapMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_3
    const-wide v0, -0xa647dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    const-wide v0, -0xa7b7dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-wide v3, -0xa977dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3, v3, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->screenshotMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_3
    return-void
.end method


# virtual methods
.method public getScreenshot(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 5

    iget v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->sdkVersion:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    :try_start_0
    iget-object p2, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->getPhysicalDisplayIdsMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p2, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [J

    array-length v0, p2

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->getPhysicalDisplayTokenMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    aget-wide v3, p2, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/IBinder;

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->displayCaptureArgsBuilderClassConstructor:Ljava/lang/reflect/Constructor;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->setSizeMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->setSourceCropMethod:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->setPixelFormatMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->buildMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p2, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->captureDisplayMethod:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v2

    :cond_1
    iget-object p2, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->asBitmapMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p2, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v2

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/Screenshooter;->screenshotMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, v1, v3, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    return-object v2
.end method
