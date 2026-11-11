.class public final Lcom/zjx/gw2lic/UsbGrant;
.super Ljava/lang/Object;
.source "UsbGrant.java"


# static fields
.field private static final ATTEMPT_TIMEOUT_MS:J = 0x1f40L

.field private static final DEBOUNCE_MS:J = 0x4b0L

.field private static volatile DEBUG:Z = false

.field private static final IN_FLIGHT:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final MAX_ATTEMPTS:I = 0x6

.field private static final POLL_MS:J = 0x190L

.field private static final QUIET_MS:J = 0x384L

.field private static final RLOCK:Ljava/lang/Object;

.field private static final SETTLE_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "Gw2Usb"

.field private static final WATCH_MS:J = 0x2ee0L

.field private static sDeadlineMs:J

.field private static sLastEventMs:J

.field private static sMain:Landroid/os/Handler;

.field private static sWatching:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/zjx/gw2lic/UsbGrant;->IN_FLIGHT:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 243
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zjx/gw2lic/UsbGrant;->RLOCK:Ljava/lang/Object;

    .line 244
    sput-boolean v1, Lcom/zjx/gw2lic/UsbGrant;->sWatching:Z

    const-wide/16 v0, 0x0

    .line 245
    sput-wide v0, Lcom/zjx/gw2lic/UsbGrant;->sDeadlineMs:J

    .line 246
    sput-wide v0, Lcom/zjx/gw2lic/UsbGrant;->sLastEventMs:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/zjx/gw2lic/UsbGrant;->watchLoop(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/zjx/gw2lic/UsbGrant;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 41
    sget-object v0, Lcom/zjx/gw2lic/UsbGrant;->RLOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .line 41
    sput-boolean p0, Lcom/zjx/gw2lic/UsbGrant;->sWatching:Z

    return p0
.end method

.method static synthetic access$400(Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/zjx/gw2lic/UsbGrant;->closeIfConnected(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/zjx/gw2lic/UsbGrant;->connect(Ljava/lang/Object;)V

    return-void
.end method

.method private static closeIfConnected(Ljava/lang/Object;)V
    .locals 3

    .line 434
    :try_start_0
    invoke-static {p0}, Lcom/zjx/gw2lic/UsbGrant;->usbConnector(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 435
    invoke-static {p0}, Lcom/zjx/gw2lic/UsbGrant;->connectionOpen(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "i"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private static connect(Ljava/lang/Object;)V
    .locals 3

    .line 445
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "i"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static connectionOpen(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 389
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "d"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 390
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 391
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static deviceAttached(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 396
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "q"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 397
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static devicePresent(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    .line 413
    :try_start_0
    invoke-static {p0}, Lcom/zjx/gw2lic/UsbGrant;->usbConnector(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 414
    invoke-static {p0}, Lcom/zjx/gw2lic/UsbGrant;->deviceAttached(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method private static findGrant(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 178
    const-string v0, "grantDevicePermission"

    :try_start_0
    const-class v1, Landroid/hardware/usb/UsbDevice;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    .line 180
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p0, v4

    .line 181
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 182
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 183
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    aget-object v6, v6, v3

    const-class v7, Landroid/hardware/usb/UsbDevice;

    if-ne v6, v7, :cond_0

    return-object v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 187
    :cond_1
    throw v1
.end method

.method private static grantInternal(Landroid/content/Context;)V
    .locals 9

    .line 102
    const-string v0, "Gw2Usb"

    .line 0
    const-string v1, "grantNow: rc="

    const-string v2, "grantNow: su -c "

    const-string v3, "CLASSPATH="

    .line 102
    sget-object v4, Lcom/zjx/gw2lic/UsbGrant;->IN_FLIGHT:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    .line 104
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 105
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object p0

    .line 107
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " app_process /system/bin com.zjx.gw2lic.UsbGrant "

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 109
    sget-boolean v3, Lcom/zjx/gw2lic/UsbGrant;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1
    new-instance v2, Ljava/lang/ProcessBuilder;

    const-string v3, "su"

    const-string v7, "-c"

    filled-new-array {v3, v7, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 112
    invoke-virtual {v2, v6}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 113
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p0

    .line 115
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 116
    new-instance v3, Ljava/lang/Thread;

    new-instance v7, Lcom/zjx/gw2lic/UsbGrant$1;

    invoke-direct {v7, v2}, Lcom/zjx/gw2lic/UsbGrant$1;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 127
    invoke-virtual {v3, v6}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 128
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 129
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x6

    invoke-virtual {p0, v6, v7, v2}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 130
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    sget-boolean p0, Lcom/zjx/gw2lic/UsbGrant;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "grantNow: timeout"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :cond_2
    sget-boolean v2, Lcom/zjx/gw2lic/UsbGrant;->DEBUG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :cond_3
    :goto_0
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 133
    :try_start_1
    sget-boolean v1, Lcom/zjx/gw2lic/UsbGrant;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "grantNow: no root / exec failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    :cond_4
    sget-object p0, Lcom/zjx/gw2lic/UsbGrant;->IN_FLIGHT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_1
    return-void

    :catchall_1
    move-exception p0

    sget-object v0, Lcom/zjx/gw2lic/UsbGrant;->IN_FLIGHT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 136
    throw p0
.end method

.method public static grantNow(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-static {p0}, Lcom/zjx/gw2lic/UsbGrant;->refreshDebug(Ljava/lang/Object;)V

    .line 82
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "auto_connect_device"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 83
    :cond_1
    invoke-static {p0}, Lcom/zjx/gw2lic/UsbGrant;->grantInternal(Landroid/content/Context;)V

    return-void
.end method

.method public static grantNowForce(Landroid/content/Context;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-static {p0}, Lcom/zjx/gw2lic/UsbGrant;->refreshDebug(Ljava/lang/Object;)V

    .line 98
    invoke-static {p0}, Lcom/zjx/gw2lic/UsbGrant;->grantInternal(Landroid/content/Context;)V

    return-void
.end method

.method private static isConnected(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    .line 403
    :try_start_0
    invoke-static {p0}, Lcom/zjx/gw2lic/UsbGrant;->usbConnector(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 404
    invoke-static {p0}, Lcom/zjx/gw2lic/UsbGrant;->connectionOpen(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method private static isHealthy(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    .line 423
    :try_start_0
    invoke-static {p0}, Lcom/zjx/gw2lic/UsbGrant;->usbConnector(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    .line 425
    :cond_0
    invoke-static {p0}, Lcom/zjx/gw2lic/UsbGrant;->connectionOpen(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/zjx/gw2lic/UsbGrant;->deviceAttached(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :catchall_0
    :cond_1
    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x2

    if-eqz p0, :cond_3

    .line 142
    array-length v1, p0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 144
    :try_start_0
    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 149
    :try_start_1
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 150
    const-string v3, "getService"

    const-class v4, Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v3, "usb"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 151
    const-string v3, "android.hardware.usb.IUsbManager$Stub"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 152
    const-string v5, "asInterface"

    const-class v6, Landroid/os/IBinder;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 153
    const-string v3, "android.hardware.usb.IUsbManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 154
    const-string v4, "getDeviceList"

    const-class v5, Landroid/os/Bundle;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 155
    invoke-static {v3}, Lcom/zjx/gw2lic/UsbGrant;->findGrant(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 157
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 158
    const-class v6, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 159
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v6, v1

    :catchall_0
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 161
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 162
    instance-of v8, v7, Landroid/hardware/usb/UsbDevice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_1

    .line 163
    :try_start_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 172
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[gw2usb] granted "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " device(s) to uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 173
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void

    :catchall_1
    move-exception p0

    .line 168
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[gw2usb] grant error: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    return-void

    .line 145
    :catchall_2
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    .line 142
    :cond_3
    :goto_1
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static onUsbEvent(Ljava/lang/Object;)V
    .locals 6

    const-string v0, "event: watching="

    if-nez p0, :cond_0

    return-void

    .line 264
    :cond_0
    invoke-static {p0}, Lcom/zjx/gw2lic/UsbGrant;->refreshDebug(Ljava/lang/Object;)V

    .line 268
    instance-of v1, p0, Landroid/content/Context;

    if-eqz v1, :cond_1

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    nop

    :cond_1
    if-eqz v1, :cond_2

    .line 273
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/zjx/gw2lic/devicehid/DirectHid;->isNoDevice(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 274
    invoke-static {v1}, Lcom/zjx/gw2lic/devicehid/DirectHid;->onUsbEvent(Landroid/content/Context;)V

    return-void

    .line 277
    :cond_2
    invoke-static {}, Lcom/zjx/gw2lic/Gw2KbdSync;->onUsbChange()V

    sget-object v1, Lcom/zjx/gw2lic/UsbGrant;->RLOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 278
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/zjx/gw2lic/UsbGrant;->sLastEventMs:J

    const-wide/16 v4, 0x2ee0

    add-long/2addr v2, v4

    .line 279
    sput-wide v2, Lcom/zjx/gw2lic/UsbGrant;->sDeadlineMs:J

    .line 280
    sget-boolean v2, Lcom/zjx/gw2lic/UsbGrant;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "Gw2Usb"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/zjx/gw2lic/UsbGrant;->sWatching:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " open="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-static {p0}, Lcom/zjx/gw2lic/UsbGrant;->isConnected(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " present="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-static {p0}, Lcom/zjx/gw2lic/UsbGrant;->devicePresent(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_3
    sget-boolean v0, Lcom/zjx/gw2lic/UsbGrant;->sWatching:Z

    if-eqz v0, :cond_4

    monitor-exit v1

    return-void

    .line 284
    :cond_4
    invoke-static {p0}, Lcom/zjx/gw2lic/UsbGrant;->isHealthy(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    monitor-exit v1

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 285
    sput-boolean v0, Lcom/zjx/gw2lic/UsbGrant;->sWatching:Z

    .line 286
    sget-object v2, Lcom/zjx/gw2lic/UsbGrant;->sMain:Landroid/os/Handler;

    if-nez v2, :cond_6

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/zjx/gw2lic/UsbGrant;->sMain:Landroid/os/Handler;

    .line 287
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/zjx/gw2lic/UsbGrant$2;

    invoke-direct {v2, p0}, Lcom/zjx/gw2lic/UsbGrant$2;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 295
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 296
    const-string p0, "gw2-usb-reconnect"

    invoke-virtual {v1, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_0
    move-exception p0

    .line 287
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static refreshDebug(Ljava/lang/Object;)V
    .locals 2

    .line 55
    :try_start_0
    instance-of v0, p0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/io/File;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "usb_debug"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    sput-boolean p0, Lcom/zjx/gw2lic/UsbGrant;->DEBUG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private static runOnMainSync(Ljava/lang/Runnable;)V
    .locals 3

    .line 361
    sget-object v0, Lcom/zjx/gw2lic/UsbGrant;->RLOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_0
    sget-object v1, Lcom/zjx/gw2lic/UsbGrant;->sMain:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/zjx/gw2lic/UsbGrant;->sMain:Landroid/os/Handler;

    .line 363
    :cond_0
    sget-object v1, Lcom/zjx/gw2lic/UsbGrant;->sMain:Landroid/os/Handler;

    .line 364
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 366
    new-instance v2, Lcom/zjx/gw2lic/UsbGrant$5;

    invoke-direct {v2, p0, v0}, Lcom/zjx/gw2lic/UsbGrant$5;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 373
    :try_start_1
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f40

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p0

    .line 364
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static sleep(J)V
    .locals 0

    .line 378
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static usbConnector(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 383
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "n"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 384
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static watchLoop(Ljava/lang/Object;)V
    .locals 15

    const-wide/16 v0, 0x1f4

    .line 301
    invoke-static {v0, v1}, Lcom/zjx/gw2lic/UsbGrant;->sleep(J)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    move v4, v0

    .line 306
    :goto_0
    sget-boolean v5, Lcom/zjx/gw2lic/UsbGrant;->DEBUG:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 307
    invoke-static {p0}, Lcom/zjx/gw2lic/UsbGrant;->devicePresent(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v3, :cond_1

    .line 310
    const-string v3, "Gw2Usb"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "watch: devicePresent="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne v5, v6, :cond_0

    move v8, v6

    goto :goto_1

    :cond_0
    move v8, v0

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " open="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/zjx/gw2lic/UsbGrant;->isConnected(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 313
    :cond_1
    invoke-static {p0}, Lcom/zjx/gw2lic/UsbGrant;->isHealthy(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 314
    sget-boolean p0, Lcom/zjx/gw2lic/UsbGrant;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Gw2Usb"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "watch: healthy after "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " attempt(s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 317
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 319
    sget-object v5, Lcom/zjx/gw2lic/UsbGrant;->RLOCK:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-wide v9, Lcom/zjx/gw2lic/UsbGrant;->sLastEventMs:J

    sget-wide v11, Lcom/zjx/gw2lic/UsbGrant;->sDeadlineMs:J

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sub-long v9, v7, v9

    const-wide/16 v13, 0x384

    cmp-long v9, v9, v13

    if-gez v9, :cond_5

    sub-long/2addr v11, v7

    const-wide/16 v9, 0x7d0

    cmp-long v9, v11, v9

    if-gtz v9, :cond_4

    goto :goto_2

    :cond_4
    move v6, v0

    .line 324
    :cond_5
    :goto_2
    invoke-static {p0}, Lcom/zjx/gw2lic/UsbGrant;->devicePresent(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz v6, :cond_8

    const/4 v6, 0x6

    if-ge v4, v6, :cond_8

    sub-long v9, v7, v1

    const-wide/16 v11, 0x4b0

    cmp-long v6, v9, v11

    if-ltz v6, :cond_8

    add-int/lit8 v4, v4, 0x1

    .line 328
    sget-boolean v1, Lcom/zjx/gw2lic/UsbGrant;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "Gw2Usb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "watch: attempt "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_6
    new-instance v1, Lcom/zjx/gw2lic/UsbGrant$3;

    invoke-direct {v1, p0}, Lcom/zjx/gw2lic/UsbGrant$3;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/zjx/gw2lic/UsbGrant;->runOnMainSync(Ljava/lang/Runnable;)V

    move-wide v1, v7

    goto/16 :goto_0

    .line 341
    :cond_7
    invoke-static {p0}, Lcom/zjx/gw2lic/UsbGrant;->isConnected(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 342
    new-instance v6, Lcom/zjx/gw2lic/UsbGrant$4;

    invoke-direct {v6, p0}, Lcom/zjx/gw2lic/UsbGrant$4;-><init>(Ljava/lang/Object;)V

    invoke-static {v6}, Lcom/zjx/gw2lic/UsbGrant;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 348
    :cond_8
    monitor-enter v5

    :try_start_1
    sget-wide v6, Lcom/zjx/gw2lic/UsbGrant;->sDeadlineMs:J

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-ltz v5, :cond_a

    .line 350
    sget-boolean p0, Lcom/zjx/gw2lic/UsbGrant;->DEBUG:Z

    if-eqz p0, :cond_9

    const-string p0, "Gw2Usb"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "watch: window closed, attempts="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void

    :cond_a
    const-wide/16 v5, 0x190

    .line 353
    invoke-static {v5, v6}, Lcom/zjx/gw2lic/UsbGrant;->sleep(J)V

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    .line 348
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 319
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
