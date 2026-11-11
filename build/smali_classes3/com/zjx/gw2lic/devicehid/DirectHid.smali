.class public final Lcom/zjx/gw2lic/devicehid/DirectHid;
.super Ljava/lang/Object;
.source "DirectHid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;,
        Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;
    }
.end annotation


# static fields
.field private static volatile DEBUG:Z = false

.field private static final LOCK:Ljava/lang/Object;

.field private static final MAX_SCANS:I = 0x8

.field private static final POLL_MS:J = 0x2bcL

.field private static final QUIET_MS:J = 0x9c4L

.field private static final SETTLE_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "Gw2Direct"

.field private static final WATCH_MS:J = 0x2ee0L

.field private static final WLOCK:Ljava/lang/Object;

.field private static final sClaims:Ljava/util/Map;

.field private static volatile sConnM:Ljava/lang/reflect/Method;

.field private static volatile sConnectedSynced:Z

.field private static sCtx:Landroid/content/Context;

.field private static sDeadlineMs:J

.field private static sDispatch:Ljava/util/concurrent/ExecutorService;

.field private static sExec:Ljava/util/concurrent/ExecutorService;

.field private static volatile sGuardOk:Z

.field private static volatile sKbdM:Ljava/lang/reflect/Method;

.field private static final sKeepAliveStarted:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDeviceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastEventMs:J

.field private static volatile sMouseM:Ljava/lang/reflect/Method;

.field private static final sPinNames:Ljava/util/Set;

.field private static final sPins:Ljava/util/List;

.field private static volatile sRunning:Z

.field private static final sScanQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sWatching:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->sClaims:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->sPins:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->sPinNames:Ljava/util/Set;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->LOCK:Ljava/lang/Object;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->sScanQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 55
    sput-boolean v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->sRunning:Z

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->WLOCK:Ljava/lang/Object;

    .line 155
    sput-boolean v1, Lcom/zjx/gw2lic/devicehid/DirectHid;->sWatching:Z

    const-wide/16 v2, 0x0

    .line 156
    sput-wide v2, Lcom/zjx/gw2lic/devicehid/DirectHid;->sDeadlineMs:J

    .line 157
    sput-wide v2, Lcom/zjx/gw2lic/devicehid/DirectHid;->sLastEventMs:J

    .line 275
    sput-boolean v1, Lcom/zjx/gw2lic/devicehid/DirectHid;->sGuardOk:Z

    .line 401
    sput-boolean v1, Lcom/zjx/gw2lic/devicehid/DirectHid;->sConnectedSynced:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->sKeepAliveStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 41
    sget-object v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->sScanQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)Z
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/zjx/gw2lic/devicehid/DirectHid;->scan(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(I[B)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/zjx/gw2lic/devicehid/DirectHid;->dispatchKeyboard(I[B)V

    return-void
.end method

.method static synthetic access$1100(IIII)V
    .locals 0

    .line 41
    invoke-static {p0, p1, p2, p3}, Lcom/zjx/gw2lic/devicehid/DirectHid;->dispatchMouse(IIII)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/zjx/gw2lic/devicehid/DirectHid;->refreshDebug(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/zjx/gw2lic/devicehid/DirectHid;->diag(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/zjx/gw2lic/devicehid/DirectHid;->watchLoop(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/Object;
    .locals 1

    .line 41
    sget-object v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->WLOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0

    .line 41
    sput-boolean p0, Lcom/zjx/gw2lic/devicehid/DirectHid;->sWatching:Z

    return p0
.end method

.method static synthetic access$900(Landroid/hardware/usb/UsbDeviceConnection;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lcom/zjx/gw2lic/devicehid/DirectHid;->deviceReadLoop(Landroid/hardware/usb/UsbDeviceConnection;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static applyUsbOn()V
    .locals 5

    :try_start_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ")\u00b2"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "w\u00a4"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "<\u00a8F\u0081h[\u0081;\u00e2\u0000\u00efp\u0005\u00cc2\u00c8Y\u00b8q\u0002\u00bcd\u00dc@\u00e4\u0096\u000f\u00bc5\u009c\n\u00a2\u008a\u0008\u00a3$\u00dc4\u00eb\u009a\u000c\u00bbN\u00c6z\u00b8\u00d09\u00a5\u0017\u00c1r\u0016\u0084x\u00aa\\\u00bf2Y\u00c4w\u00a6\u000f\u00a1\'\u0010\u008e \u00de\u0013\u00b5g\u000c\u00b4&\u0096\u000e\u00a1\u00ddT\u00f7k\u00c2g\u00f8\u00d7\u0008\u00bd[\u00d9u\u00e3\u00dc\u0015\u00beX\u00c4{\u00f3\u008bt\u00b8T\u00d0n\u0011\u008c\"\u00a6B\u00ee%\u0016\u0091%\u00d1X\u00edv\u0002\u00ba\"\u00dd\u0006\u00a1>B\u00be\"\u00c2\u000e\u00e0\u008e\u0004\u00b9y\u008fh\u00fb\u0083\u0006"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x6

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_0
    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    return-void
.end method

.method private static claimDevice(Landroid/content/Context;Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    return-void

    .line 453
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 454
    sget-object v3, Lcom/zjx/gw2lic/devicehid/DirectHid;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/zjx/gw2lic/devicehid/DirectHid;->sClaims:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    monitor-exit v3

    return-void

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    .line 457
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-ge v4, v7, :cond_4

    .line 458
    invoke-virtual {v1, v4}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v7

    if-ne v7, v9, :cond_2

    move v6, v9

    goto :goto_1

    :cond_2
    if-ne v7, v8, :cond_3

    move v5, v9

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 462
    :cond_4
    sget-boolean v4, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, ">\u00a2B\u0081"

    invoke-static/range {v7 .. v7}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "z"

    invoke-static/range {v7 .. v7}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/zjx/gw2lic/devicehid/DirectHid;->safeName(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "z\u00a4X\u00d23"

    invoke-static/range {v7 .. v7}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "z\u00af]\u00c53"

    invoke-static/range {v7 .. v7}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "z\u00a6A\u00c5g\u0014\u00d5"

    invoke-static/range {v7 .. v7}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "z\u00b7Q\u00d3cF"

    invoke-static/range {v7 .. v7}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual/range {p1 .. p2}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 462
    invoke-static {v0, v4}, Lcom/zjx/gw2lic/devicehid/DirectHid;->diag(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    if-nez v5, :cond_6

    return-void

    :cond_6
    if-eqz v6, :cond_8

    .line 465
    sget-boolean v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "\u001d\u00b0\u0006\u00e5g\t\u008d6\u00b6"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ")\u00ac]\u00d1.\u001a\u009d1\u00ab@\u00bcm\u0013\u0095p"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    .line 470
    :cond_8
    invoke-virtual/range {p1 .. p2}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 471
    sget-boolean v3, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz v3, :cond_9

    const-string v3, "\u001d\u00b0\u0006\u00e5g\t\u008d6\u00b6"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "4\u00a8\u0014\u00f4]9\u00c8%\u00a7]\u00f1`\u0005\u00909\u00d2D\u00b7"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "z\u00ea\n\u0081m\u001a\u0086;\u00ad[\u00bcj\u001a\u00829\u00d0"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u0014\u0088\u0014\u00f1K)\u00a5\u001c\u0091|\u00d5F8\u00c3"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "z"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/zjx/gw2lic/devicehid/DirectHid;->safeName(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "z\u00efF\u00cea\u000f\u00c8%\u00b0J\u00b1n\u0004\u0082>\u00c9\n\u00f3m\u0015\u00fe%\u00d7Q\u00b2\u0093\r\u00b7\"\u009a"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zjx/gw2lic/devicehid/DirectHid;->diag(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 476
    :cond_a
    invoke-virtual/range {p1 .. p2}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v4

    if-nez v4, :cond_c

    .line 478
    sget-boolean v3, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz v3, :cond_b

    const-string v3, "\u001d\u00b0\u0006\u00e5g\t\u008d6\u00b6"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "5\u00b7Q\u00cf.\u0015\u009d9\u00ae\u000f"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "5\u00b7Q\u00cfJ\u001e\u009e<\u00a1J\u00bcG#\u00af\u001c\u009d"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "z"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/zjx/gw2lic/devicehid/DirectHid;->safeName(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zjx/gw2lic/devicehid/DirectHid;->diag(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 484
    :cond_c
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v3

    .line 485
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v7

    if-ge v3, v7, :cond_16

    .line 486
    invoke-virtual {v1, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v7

    .line 487
    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v10

    if-eq v10, v8, :cond_d

    goto/16 :goto_4

    .line 488
    :cond_d
    invoke-virtual {v4, v7, v9}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v10

    if-eqz v10, :cond_13

    add-int/lit8 v6, v6, 0x1

    .line 490
    invoke-static {v4, v7}, Lcom/zjx/gw2lic/devicehid/DirectHid;->classify(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;)I

    move-result v10

    .line 491
    sget-boolean v11, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz v11, :cond_e

    const-string v11, "\u001d\u00b0\u0006\u00e5g\t\u008d6\u00b6"

    invoke-static/range {v11 .. v11}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "9\u00abU\u00c8c\u001e\u008c}\u00aaF\u00f8m\u0013\u008dy\u009d"

    invoke-static/range {v13 .. v13}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "z\u00aeR"

    invoke-static/range {v13 .. v13}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "z\u00ac]\u00cfjF"

    invoke-static/range {v13 .. v13}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "z\u00b4A\u00c33"

    invoke-static/range {v13 .. v13}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "z\u00b7F\u00cez\u0014\u00d5"

    invoke-static/range {v13 .. v13}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "z"

    invoke-static/range {v13 .. v13}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/zjx/gw2lic/devicehid/DirectHid;->safeName(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 491
    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-eq v10, v9, :cond_f

    const/4 v11, 0x2

    if-ne v10, v11, :cond_15

    .line 495
    :cond_f
    invoke-static {v7}, Lcom/zjx/gw2lic/devicehid/DirectHid;->findIntIn(Landroid/hardware/usb/UsbInterface;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v11

    if-eqz v11, :cond_12

    .line 497
    new-instance v15, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;

    const/4 v12, 0x0

    invoke-direct {v15, v12}, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;-><init>(Lcom/zjx/gw2lic/devicehid/DirectHid$1;)V

    .line 498
    iput-object v11, v15, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;->ep:Landroid/hardware/usb/UsbEndpoint;

    .line 499
    iput v10, v15, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;->kind:I

    if-ne v10, v9, :cond_10

    .line 502
    :try_start_1
    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v16, 0x0

    const/16 v17, 0x1f4

    const/16 v11, 0x21

    const/16 v12, 0xb

    const/4 v13, 0x0

    const/4 v7, 0x0

    move-object v10, v4

    move-object v8, v15

    move-object v15, v7

    :try_start_2
    invoke-virtual/range {v10 .. v17}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_0
    move-object v8, v15

    goto :goto_3

    :cond_10
    move-object v8, v15

    .line 505
    :try_start_3
    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v14

    const/16 v16, 0x0

    const/16 v17, 0x1f4

    const/16 v11, 0x21

    const/16 v12, 0xb

    const/4 v13, 0x1

    const/4 v15, 0x0

    move-object v10, v4

    invoke-virtual/range {v10 .. v17}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 506
    :catchall_1
    invoke-static {v4, v7}, Lcom/zjx/gw2lic/devicehid/DirectHid;->parseMouseLayout(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;)Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;

    move-result-object v10

    iput-object v10, v8, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;->ml:Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;

    .line 507
    sget-boolean v10, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz v10, :cond_11

    const-string v10, "\u001d\u00b0\u0006\u00e5g\t\u008d6\u00b6"

    invoke-static/range {v10 .. v10}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "7\u00a8A\u00d2k[\u00844\u00bb@\u00e9}V\u008a6"

    invoke-static/range {v12 .. v12}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "`\u00e7"

    invoke-static/range {v7 .. v7}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v8, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;->ml:Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :catchall_2
    :cond_11
    :goto_3
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 510
    :cond_12
    sget-boolean v8, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz v8, :cond_15

    const-string v8, "\u001d\u00b0\u0006\u00e5g\t\u008d6\u00b6"

    invoke-static/range {v8 .. v8}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "4\u00a8\u0014\u00e8@[\u008d%\u00e2F\u00fa"

    invoke-static/range {v11 .. v11}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 513
    :cond_13
    sget-boolean v8, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz v8, :cond_14

    const-string v8, "\u001d\u00b0\u0006\u00e5g\t\u008d6\u00b6"

    invoke-static/range {v8 .. v8}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "9\u00abU\u00c8c[\u008e4\u00abC\u00bc"

    invoke-static/range {v11 .. v11}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "z\u00aeR"

    invoke-static/range {v11 .. v11}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_14
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "\u0019\u008bu\u00e8C[\u00ae\u0014\u008bc\u00bc"

    invoke-static/range {v10 .. v10}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "z\u00aeR"

    invoke-static/range {v10 .. v10}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "z"

    invoke-static/range {v7 .. v7}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/zjx/gw2lic/devicehid/DirectHid;->safeName(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/zjx/gw2lic/devicehid/DirectHid;->diag(Landroid/content/Context;Ljava/lang/String;)V

    :cond_15
    :goto_4
    add-int/lit8 v3, v3, 0x1

    const/4 v8, 0x3

    goto/16 :goto_2

    :cond_16
    if-lez v6, :cond_18

    .line 519
    sget-object v3, Lcom/zjx/gw2lic/devicehid/DirectHid;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    sget-object v7, Lcom/zjx/gw2lic/devicehid/DirectHid;->sClaims:Ljava/util/Map;

    invoke-interface {v7, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 520
    sget-boolean v3, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz v3, :cond_17

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "\u0019\u008bu\u00e8C>\u00acu"

    invoke-static/range {v7 .. v7}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "z\u00aeR\u00c0m\u001e\u009bh"

    invoke-static/range {v7 .. v7}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "z\u00b5Q\u00c0j\u001e\u009a&\u00ff"

    invoke-static/range {v6 .. v6}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "z"

    invoke-static/range {v6 .. v6}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-static/range {p2 .. p2}, Lcom/zjx/gw2lic/devicehid/DirectHid;->safeName(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 520
    invoke-static {v0, v1}, Lcom/zjx/gw2lic/devicehid/DirectHid;->diag(Landroid/content/Context;Ljava/lang/String;)V

    .line 522
    :cond_17
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {v4, v5, v2}, Lcom/zjx/gw2lic/devicehid/DirectHid;->startDeviceReader(Landroid/hardware/usb/UsbDeviceConnection;Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-static {v0}, Lcom/zjx/gw2lic/devicehid/DirectHid;->keepAliveUsb(Landroid/content/Context;)V

    goto :goto_5

    :catchall_3
    move-exception v0

    .line 519
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    .line 524
    :cond_18
    :try_start_6
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    :cond_19
    :goto_5
    return-void

    :catchall_5
    move-exception v0

    .line 454
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0
.end method

.method private static classify(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;)I
    .locals 9

    const/16 v6, 0x200

    .line 739
    :try_start_0
    new-array v8, v6, [B

    .line 741
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v4

    const/16 v7, 0x3e8

    const/16 v1, 0x81

    const/4 v2, 0x6

    const/16 v3, 0x2200

    move-object v0, p0

    move-object v5, v8

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p0

    if-lez p0, :cond_0

    .line 743
    invoke-static {v8, p0}, Lcom/zjx/gw2lic/devicehid/DirectHid;->parseTopUsage([BI)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    return p0

    .line 749
    :catchall_0
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 750
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    return p1

    :cond_1
    if-ne p0, v0, :cond_2

    return v0

    :catchall_1
    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static close()V
    .locals 3

    const/4 v0, 0x0

    .line 118
    sput-boolean v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->sRunning:Z

    .line 119
    sput-boolean v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->sConnectedSynced:Z

    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->closePins()V

    .line 120
    sget-object v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    sget-object v1, Lcom/zjx/gw2lic/devicehid/DirectHid;->sClaims:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catchall_0
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDeviceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 122
    :try_start_1
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 124
    :cond_1
    :try_start_2
    sget-object v1, Lcom/zjx/gw2lic/devicehid/DirectHid;->sClaims:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 125
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private static declared-synchronized closePins()V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->sPins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/zjx/gw2lic/devicehid/DirectHid;->sPins:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, Lcom/zjx/gw2lic/devicehid/DirectHid;->sPinNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    return-void
.end method

.method public static connect(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    .line 106
    sput-boolean v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->sRunning:Z

    .line 107
    invoke-static {p0}, Lcom/zjx/gw2lic/devicehid/DirectHid;->startWatch(Landroid/content/Context;)V

    return v0
.end method

.method private static deviceReadLoop(Landroid/hardware/usb/UsbDeviceConnection;Ljava/util/List;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbDeviceConnection;",
            "Ljava/util/List<",
            "Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 563
    const-string v0, "(\u00a2U\u00c5k\t\u00c81\u00adX\u00f2)"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u001d\u00b0\u0006\u00e5g\t\u008d6\u00b6"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;

    .line 564
    iget-object v4, v3, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;->ep:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v4

    if-gtz v4, :cond_1

    const/16 v4, 0x10

    .line 566
    :cond_1
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, v3, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;->buf:Ljava/nio/ByteBuffer;

    .line 567
    new-instance v4, Landroid/hardware/usb/UsbRequest;

    invoke-direct {v4}, Landroid/hardware/usb/UsbRequest;-><init>()V

    iput-object v4, v3, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;->req:Landroid/hardware/usb/UsbRequest;

    .line 568
    iget-object v4, v3, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;->req:Landroid/hardware/usb/UsbRequest;

    iget-object v5, v3, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;->ep:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v4, p0, v5}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-boolean v3, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "(\u00a2E\u0081g\u0015\u0081!\u00e2I\u00fd`\u001a"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 569
    :cond_2
    iget-object v4, v3, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;->req:Landroid/hardware/usb/UsbRequest;

    invoke-virtual {v4, v3}, Landroid/hardware/usb/UsbRequest;->setClientData(Ljava/lang/Object;)V

    .line 570
    iget-object v4, v3, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 571
    iget-object v4, v3, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;->req:Landroid/hardware/usb/UsbRequest;

    iget-object v3, v3, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;)Z

    goto :goto_0

    .line 573
    :cond_3
    sget-boolean v2, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(\u00a2U\u00c5k\t\u00c8 \u00b2\u000f"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "z\u00a2D\u00d23"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_4
    :goto_1
    sget-boolean v2, Lcom/zjx/gw2lic/devicehid/DirectHid;->sRunning:Z

    if-eqz v2, :cond_b

    .line 575
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDeviceConnection;->requestWait()Landroid/hardware/usb/UsbRequest;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_5

    .line 577
    :cond_5
    invoke-virtual {v2}, Landroid/hardware/usb/UsbRequest;->getClientData()Ljava/lang/Object;

    move-result-object v3

    .line 578
    instance-of v4, v3, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;

    if-nez v4, :cond_6

    goto :goto_1

    .line 579
    :cond_6
    check-cast v3, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;

    .line 580
    iget-object v4, v3, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 581
    iget v5, v3, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;->kind:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    .line 582
    array-length v5, v4

    const/4 v6, 0x0

    if-lez v5, :cond_7

    aget-byte v5, v4, v6

    and-int/lit16 v5, v5, 0xff

    goto :goto_2

    :cond_7
    move v5, v6

    :goto_2
    const/4 v7, 0x6

    .line 583
    new-array v8, v7, [B

    :goto_3
    if-ge v6, v7, :cond_8

    add-int/lit8 v9, v6, 0x2

    .line 584
    array-length v10, v4

    if-ge v9, v10, :cond_8

    aget-byte v9, v4, v9

    aput-byte v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 585
    :cond_8
    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->dispatch()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    new-instance v6, Lcom/zjx/gw2lic/devicehid/DirectHid$6;

    invoke-direct {v6, v5, v8}, Lcom/zjx/gw2lic/devicehid/DirectHid$6;-><init>(I[B)V

    invoke-interface {v4, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 587
    :cond_9
    iget-object v5, v3, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;->ml:Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;

    invoke-static {v4, v5}, Lcom/zjx/gw2lic/devicehid/DirectHid;->extractMouse([BLcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;)[I

    move-result-object v4

    if-eqz v4, :cond_a

    .line 589
    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->dispatch()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    new-instance v6, Lcom/zjx/gw2lic/devicehid/DirectHid$7;

    invoke-direct {v6, v4}, Lcom/zjx/gw2lic/devicehid/DirectHid$7;-><init>([I)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 592
    :cond_a
    :goto_4
    iget-object v4, v3, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 593
    iget-object v3, v3, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_4

    .line 598
    :cond_b
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catchall_0
    :cond_c
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;

    :try_start_1
    iget-object v2, p1, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;->req:Landroid/hardware/usb/UsbRequest;

    if-eqz v2, :cond_c

    iget-object p1, p1, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;->req:Landroid/hardware/usb/UsbRequest;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbRequest;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 599
    :cond_d
    sget-boolean p0, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz p0, :cond_11

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :catchall_1
    move-exception p0

    .line 596
    :try_start_2
    sget-boolean v2, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz v2, :cond_e

    const-string v2, "(\u00a2U\u00c5B\u0014\u0087%"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 598
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catchall_2
    :cond_f
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;

    :try_start_3
    iget-object v2, p1, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;->req:Landroid/hardware/usb/UsbRequest;

    if-eqz v2, :cond_f

    iget-object p1, p1, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;->req:Landroid/hardware/usb/UsbRequest;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbRequest;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    .line 599
    :cond_10
    sget-boolean p0, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz p0, :cond_11

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_8
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-void

    :catchall_3
    move-exception p0

    .line 598
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catchall_4
    :cond_12
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;

    :try_start_4
    iget-object v3, v2, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;->req:Landroid/hardware/usb/UsbRequest;

    if-eqz v3, :cond_12

    iget-object v2, v2, Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;->req:Landroid/hardware/usb/UsbRequest;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbRequest;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_9

    .line 599
    :cond_13
    sget-boolean p1, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz p1, :cond_14

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_14
    throw p0
.end method

.method private static diag(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 229
    sget-boolean v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 231
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 233
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "=\u00b0\u0006\u00d4}\u0019\u00c69\u00adH"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/32 v3, 0x40000

    cmp-long p0, v1, v3

    if-lez p0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    :catchall_0
    :cond_2
    :try_start_2
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v1, "\u0017\u008a\u0019\u00c5j[\u00a0\u001d\u00f8B\u00f13\u0005\u0090~\u00eey\u00c4"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 236
    invoke-virtual {p0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 237
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 238
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "z"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "P"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    :cond_3
    :goto_0
    return-void
.end method

.method private static declared-synchronized dispatch()Ljava/util/concurrent/ExecutorService;
    .locals 2

    const-class v0, Lcom/zjx/gw2lic/devicehid/DirectHid;

    monitor-enter v0

    .line 92
    :try_start_0
    sget-object v1, Lcom/zjx/gw2lic/devicehid/DirectHid;->sDispatch:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Lcom/zjx/gw2lic/devicehid/DirectHid$2;

    invoke-direct {v1}, Lcom/zjx/gw2lic/devicehid/DirectHid$2;-><init>()V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/zjx/gw2lic/devicehid/DirectHid;->sDispatch:Ljava/util/concurrent/ExecutorService;

    .line 101
    :cond_0
    sget-object v1, Lcom/zjx/gw2lic/devicehid/DirectHid;->sDispatch:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static dispatchKeyboard(I[B)V
    .locals 4

    .line 606
    :try_start_0
    sget-object v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->sKbdM:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 608
    const-string v0, "0\u00f1\u001a\u00e5g\t\u008d6\u00b6k\u00f5z\u0006\u0082$\u00deB"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "1\u00a2M\u00c3a\u001a\u009a1"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, [B

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 609
    sput-object v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->sKbdM:Ljava/lang/reflect/Method;

    .line 611
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 613
    sget-boolean p1, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "\u001d\u00b0\u0006\u00e5g\t\u008d6\u00b6"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ">\u00aeG\u00d1o\u000f\u008b=\u0089M\u00f8"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private static dispatchMouse(IIII)V
    .locals 6

    .line 622
    :try_start_0
    sget-object v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->sMouseM:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 624
    const-string v0, "0\u00f1\u001a\u00e5g\t\u008d6\u00b6k\u00f5z\u0006\u0082$\u00deB"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "7\u00a8A\u00d2k"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 625
    sput-object v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->sMouseM:Ljava/lang/reflect/Method;

    .line 627
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 629
    sget-boolean p1, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "\u001d\u00b0\u0006\u00e5g\t\u008d6\u00b6"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ">\u00aeG\u00d1o\u000f\u008b=\u008f@\u00e9z\u0013"

    invoke-static/range {p2 .. p2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private static enqueueScan(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 130
    :cond_0
    sget-object v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->sScanQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 132
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->exec()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/zjx/gw2lic/devicehid/DirectHid$3;

    invoke-direct {v1, p0}, Lcom/zjx/gw2lic/devicehid/DirectHid$3;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 140
    :catchall_0
    sget-object p0, Lcom/zjx/gw2lic/devicehid/DirectHid;->sScanQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method

.method private static declared-synchronized exec()Ljava/util/concurrent/ExecutorService;
    .locals 2

    const-class v0, Lcom/zjx/gw2lic/devicehid/DirectHid;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-object v1, Lcom/zjx/gw2lic/devicehid/DirectHid;->sExec:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lcom/zjx/gw2lic/devicehid/DirectHid$1;

    invoke-direct {v1}, Lcom/zjx/gw2lic/devicehid/DirectHid$1;-><init>()V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/zjx/gw2lic/devicehid/DirectHid;->sExec:Ljava/util/concurrent/ExecutorService;

    .line 88
    :cond_0
    sget-object v1, Lcom/zjx/gw2lic/devicehid/DirectHid;->sExec:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static extractBits([BII)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_1

    add-int v2, p1, v0

    shr-int/lit8 v3, v2, 0x3

    .line 723
    array-length v4, p0

    if-lt v3, v4, :cond_0

    goto :goto_1

    .line 724
    :cond_0
    aget-byte v3, p0, v3

    and-int/lit8 v2, v2, 0x7

    shr-int v2, v3, v2

    and-int/lit8 v2, v2, 0x1

    shl-int/2addr v2, v0

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private static extractMouse([BLcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;)[I
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 704
    iget v1, p1, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->xBit:I

    if-gez v1, :cond_0

    goto :goto_4

    .line 706
    :cond_0
    iget v1, p1, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->reportId:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 707
    array-length v1, p0

    if-eqz v1, :cond_2

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    iget v4, p1, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->reportId:I

    if-eq v1, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    move v0, v3

    .line 710
    :goto_1
    iget v1, p1, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->btnBit:I

    if-ltz v1, :cond_4

    iget v1, p1, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->btnBit:I

    add-int/2addr v1, v0

    iget v4, p1, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->btnCount:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/zjx/gw2lic/devicehid/DirectHid;->extractBits([BII)I

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v3

    .line 711
    :goto_2
    iget v2, p1, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->xBit:I

    add-int/2addr v2, v0

    iget v4, p1, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->xSize:I

    invoke-static {p0, v2, v4}, Lcom/zjx/gw2lic/devicehid/DirectHid;->extractBits([BII)I

    move-result v2

    iget v4, p1, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->xSize:I

    invoke-static {v2, v4}, Lcom/zjx/gw2lic/devicehid/DirectHid;->signExtend(II)I

    move-result v2

    .line 712
    iget v4, p1, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->yBit:I

    if-ltz v4, :cond_5

    iget v4, p1, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->yBit:I

    add-int/2addr v4, v0

    iget v5, p1, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->ySize:I

    invoke-static {p0, v4, v5}, Lcom/zjx/gw2lic/devicehid/DirectHid;->extractBits([BII)I

    move-result v4

    iget v5, p1, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->ySize:I

    invoke-static {v4, v5}, Lcom/zjx/gw2lic/devicehid/DirectHid;->signExtend(II)I

    move-result v4

    goto :goto_3

    :cond_5
    move v4, v3

    .line 713
    :goto_3
    iget v5, p1, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->wBit:I

    if-ltz v5, :cond_6

    iget v3, p1, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->wBit:I

    add-int/2addr v0, v3

    iget v3, p1, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->wSize:I

    invoke-static {p0, v0, v3}, Lcom/zjx/gw2lic/devicehid/DirectHid;->extractBits([BII)I

    move-result p0

    iget p1, p1, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->wSize:I

    invoke-static {p0, p1}, Lcom/zjx/gw2lic/devicehid/DirectHid;->signExtend(II)I

    move-result v3

    .line 714
    :cond_6
    filled-new-array {v1, v2, v4, v3}, [I

    move-result-object p0

    return-object p0

    :cond_7
    :goto_4
    return-object v0
.end method

.method private static findIntIn(Landroid/hardware/usb/UsbInterface;)Landroid/hardware/usb/UsbEndpoint;
    .locals 4

    const/4 v0, 0x0

    .line 529
    :goto_0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 530
    invoke-virtual {p0, v0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v1

    .line 531
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v2

    const/16 v3, 0x80

    if-ne v2, v3, :cond_0

    .line 532
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static granted()Z
    .locals 1

    const/4 v0, 0x1

    .line 305
    :try_start_0
    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method private static guardHealthy()Z
    .locals 5

    .line 289
    sget-boolean v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->sGuardOk:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_2

    .line 291
    :try_start_0
    const/4 v3, 0x1

    if-eqz v3, :cond_1

    sput-boolean v1, Lcom/zjx/gw2lic/devicehid/DirectHid;->sGuardOk:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    :cond_1
    const-wide/16 v3, 0x12c

    .line 292
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static hasNewClaimAndAudio(Ljava/util/Map;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;)Z"
        }
    .end annotation

    .line 424
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    .line 425
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    move v5, v0

    move v6, v5

    move v7, v6

    .line 427
    :goto_1
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 428
    invoke-virtual {v3, v5}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v8

    if-ne v8, v4, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    const/4 v9, 0x3

    if-ne v8, v9, :cond_3

    move v7, v4

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-eqz v6, :cond_5

    move v1, v4

    :cond_5
    if-eqz v7, :cond_0

    if-nez v6, :cond_0

    .line 434
    sget-object v5, Lcom/zjx/gw2lic/devicehid/DirectHid;->LOCK:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-object v6, Lcom/zjx/gw2lic/devicehid/DirectHid;->sClaims:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v2, v4

    :cond_6
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_7
    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    move v0, v4

    :cond_8
    return v0
.end method

.method public static isActive()Z
    .locals 2

    .line 70
    sget-object v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zjx/gw2lic/devicehid/DirectHid;->sClaims:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isNoDevice(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 63
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "4\u00a8k\u00c5k\r\u00816\u00a7"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    nop

    :catchall_0
    :cond_0
    return v0
.end method

.method public static keepAliveUsb(Landroid/content/Context;)V
    .locals 4

    if-eqz p0, :cond_0

    sput-object p0, Lcom/zjx/gw2lic/devicehid/DirectHid;->sCtx:Landroid/content/Context;

    :cond_0
    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->applyUsbOn()V

    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->pinUsb()V

    sget-object v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->sKeepAliveStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lcom/zjx/gw2lic/devicehid/DirectHid$KeepAlive;

    invoke-direct {v0}, Lcom/zjx/gw2lic/devicehid/DirectHid$KeepAlive;-><init>()V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    const-string v0, "=\u00a0\u0006\u008c{\u0008\u008ax\u00a3C\u00f5\u007f\u0013"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private static needsWork(Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;)Z"
        }
    .end annotation

    .line 253
    sget-object v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_0
    sget-object v1, Lcom/zjx/gw2lic/devicehid/DirectHid;->sClaims:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 255
    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v0

    return v3

    .line 257
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 258
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 259
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v2

    const/16 v4, 0x9

    if-ne v2, v4, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    move v4, v2

    .line 261
    :goto_1
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 262
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v5

    if-ne v5, v3, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    move v2, v3

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_2

    if-nez v4, :cond_2

    .line 267
    sget-object v1, Lcom/zjx/gw2lic/devicehid/DirectHid;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :try_start_1
    sget-object v2, Lcom/zjx/gw2lic/devicehid/DirectHid;->sClaims:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    monitor-exit v1

    return v3

    .line 269
    :cond_7
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_8
    return v1

    :catchall_1
    move-exception p0

    .line 257
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static onGrantChanged(Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_2

    .line 318
    :try_start_0
    invoke-static {p0}, Lcom/zjx/gw2lic/devicehid/DirectHid;->isNoDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->granted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/zjx/gw2lic/devicehid/DirectHid;->connect(Landroid/content/Context;)Z

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 321
    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->isActive()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method public static onUsbEvent(Landroid/content/Context;)V
    .locals 0

    .line 113
    invoke-static {p0}, Lcom/zjx/gw2lic/devicehid/DirectHid;->startWatch(Landroid/content/Context;)V

    return-void
.end method

.method private static parseMouseLayout(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;)Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;
    .locals 18

    .line 648
    new-instance v0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;-><init>(Lcom/zjx/gw2lic/devicehid/DirectHid$1;)V

    const/16 v8, 0x200

    .line 650
    :try_start_0
    new-array v1, v8, [B

    .line 651
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v6

    const/16 v9, 0x3e8

    const/16 v3, 0x81

    const/4 v4, 0x6

    const/16 v5, 0x2200

    move-object/from16 v2, p0

    move-object v7, v1

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v2

    if-gtz v2, :cond_0

    return-object v0

    .line 654
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    :goto_0
    if-ge v6, v2, :cond_16

    .line 657
    aget-byte v13, v1, v6

    and-int/lit16 v14, v13, 0xff

    const/16 v15, 0xfe

    const/4 v4, 0x3

    if-ne v14, v15, :cond_2

    add-int/lit8 v13, v6, 0x1

    if-ge v13, v2, :cond_1

    .line 658
    aget-byte v13, v1, v13

    and-int/lit16 v13, v13, 0xff

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    add-int/2addr v13, v4

    add-int/2addr v6, v13

    goto :goto_0

    :cond_2
    and-int/lit8 v14, v13, 0x3

    if-ne v14, v4, :cond_3

    const/4 v14, 0x4

    :cond_3
    add-int/lit8 v4, v6, 0x1

    add-int v5, v4, v14

    if-le v5, v2, :cond_4

    goto/16 :goto_9

    :cond_4
    and-int/lit16 v5, v13, 0xfc

    const/4 v13, 0x0

    const/16 v16, 0x0

    :goto_2
    if-ge v13, v14, :cond_5

    add-int v17, v4, v13

    .line 664
    aget-byte v15, v1, v17

    and-int/lit16 v15, v15, 0xff

    mul-int/lit8 v17, v13, 0x8

    shl-int v15, v15, v17

    or-int v16, v16, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x4

    if-eq v5, v4, :cond_15

    const/16 v4, 0x8

    if-eq v5, v4, :cond_14

    const/16 v4, 0x18

    if-eq v5, v4, :cond_13

    const/16 v4, 0x74

    if-eq v5, v4, :cond_12

    const/16 v4, 0x80

    if-eq v5, v4, :cond_9

    const/16 v4, 0x84

    if-eq v5, v4, :cond_8

    const/16 v4, 0x94

    if-eq v5, v4, :cond_7

    const/16 v4, 0xa0

    if-eq v5, v4, :cond_6

    const/16 v4, 0xc0

    if-eq v5, v4, :cond_6

    goto/16 :goto_8

    .line 693
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->clear()V

    :goto_3
    const/4 v12, -0x1

    goto/16 :goto_8

    :cond_7
    move/from16 v9, v16

    goto/16 :goto_8

    :cond_8
    move/from16 v10, v16

    const/4 v8, 0x0

    goto/16 :goto_8

    :cond_9
    and-int/lit8 v4, v16, 0x1

    if-eqz v4, :cond_a

    goto :goto_7

    :cond_a
    const/16 v4, 0x9

    if-ne v7, v4, :cond_b

    .line 676
    iget v4, v0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->btnBit:I

    if-gez v4, :cond_11

    iput v8, v0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->btnBit:I

    iput v9, v0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->btnCount:I

    iput v10, v0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->reportId:I

    goto :goto_7

    :cond_b
    const/4 v4, 0x1

    if-ne v7, v4, :cond_11

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v9, :cond_11

    .line 679
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_c

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_5

    :cond_c
    if-ltz v12, :cond_d

    add-int v5, v12, v4

    goto :goto_5

    :cond_d
    const/4 v5, -0x1

    :goto_5
    mul-int v13, v4, v11

    add-int/2addr v13, v8

    const/16 v15, 0x30

    if-ne v5, v15, :cond_e

    .line 682
    iget v15, v0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->xBit:I

    if-gez v15, :cond_e

    iput v13, v0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->xBit:I

    iput v11, v0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->xSize:I

    iput v10, v0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->reportId:I

    goto :goto_6

    :cond_e
    const/16 v15, 0x31

    if-ne v5, v15, :cond_f

    .line 683
    iget v15, v0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->yBit:I

    if-gez v15, :cond_f

    iput v13, v0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->yBit:I

    iput v11, v0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->ySize:I

    goto :goto_6

    :cond_f
    const/16 v15, 0x38

    if-ne v5, v15, :cond_10

    .line 684
    iget v5, v0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->wBit:I

    if-gez v5, :cond_10

    iput v13, v0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->wBit:I

    iput v11, v0, Lcom/zjx/gw2lic/devicehid/DirectHid$MouseLayout;->wSize:I

    :cond_10
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_11
    :goto_7
    mul-int v4, v9, v11

    add-int/2addr v8, v4

    .line 689
    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_3

    :cond_12
    move/from16 v11, v16

    goto :goto_8

    :cond_13
    move/from16 v12, v16

    goto :goto_8

    .line 670
    :cond_14
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :cond_15
    move/from16 v7, v16

    :goto_8
    add-int/lit8 v14, v14, 0x1

    add-int/2addr v6, v14

    goto/16 :goto_0

    :catchall_0
    :cond_16
    :goto_9
    return-object v0
.end method

.method private static parseTopUsage([BI)I
    .locals 14

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v4, v0

    move v5, v4

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_c

    .line 772
    aget-byte v6, p0, v2

    and-int/lit16 v7, v6, 0xff

    const/16 v8, 0xfe

    const/4 v9, 0x3

    if-ne v7, v8, :cond_1

    add-int/lit8 v6, v2, 0x1

    if-ge v6, p1, :cond_0

    .line 774
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    goto :goto_1

    :cond_0
    move v6, v1

    :goto_1
    add-int/2addr v6, v9

    add-int/2addr v2, v6

    goto :goto_0

    :cond_1
    and-int/lit8 v7, v6, 0x3

    const/4 v8, 0x4

    if-ne v7, v9, :cond_2

    move v7, v8

    :cond_2
    add-int/lit8 v9, v2, 0x1

    add-int v10, v9, v7

    if-le v10, p1, :cond_3

    goto :goto_6

    :cond_3
    and-int/lit16 v6, v6, 0xfc

    move v10, v1

    move v11, v10

    :goto_2
    if-ge v10, v7, :cond_4

    add-int v12, v9, v10

    .line 783
    aget-byte v12, p0, v12

    and-int/lit16 v12, v12, 0xff

    mul-int/lit8 v13, v10, 0x8

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    if-ne v6, v8, :cond_5

    move v4, v11

    goto :goto_5

    :cond_5
    const/16 v8, 0x8

    if-ne v6, v8, :cond_6

    move v5, v11

    goto :goto_5

    :cond_6
    const/16 v8, 0xa0

    if-ne v6, v8, :cond_b

    const/4 v6, 0x1

    if-ne v11, v6, :cond_a

    if-ne v4, v6, :cond_a

    const/4 v8, 0x2

    if-eq v5, v8, :cond_9

    if-ne v5, v6, :cond_7

    goto :goto_3

    :cond_7
    const/4 v8, 0x6

    if-eq v5, v8, :cond_8

    const/4 v8, 0x7

    if-ne v5, v8, :cond_a

    :cond_8
    if-nez v3, :cond_a

    move v3, v6

    goto :goto_4

    :cond_9
    :goto_3
    return v8

    :cond_a
    :goto_4
    move v5, v0

    :cond_b
    :goto_5
    add-int/lit8 v7, v7, 0x1

    add-int/2addr v2, v7

    goto :goto_0

    :cond_c
    :goto_6
    return v3
.end method

.method public static declared-synchronized pinUsb()V
    .locals 8

    :try_start_0
    sget-object v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->sCtx:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "\u001d\u00b0\u0006\u00e5g\t\u008d6\u00b6"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "=\u00a0\u0006\u0081j\u0012\u00892\u00f8\u000f\u00ec`\u0018\u00b6#\u00df\n\u00e5q\u001f"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/\u00b4V"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/zjx/gw2lic/devicehid/DirectHid;->sPinNames:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/zjx/gw2lic/devicehid/DirectHid;->sClaims:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1, v3}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1, v3}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v5

    if-eqz v5, :cond_3

    sget-object v6, Lcom/zjx/gw2lic/devicehid/DirectHid;->sPins:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/zjx/gw2lic/devicehid/DirectHid;->sPinNames:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v6, "\u001d\u00b0\u0006\u00e5g\t\u008d6\u00b6"

    invoke-static/range {v6 .. v6}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "=\u00a0\u0006\u0081j\u0012\u00892\u00f8\u000f\u00ec`\u0018\u00c31\u00d9N\u00f2`"

    invoke-static/range {v7 .. v7}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v6, "\u001d\u00b0\u0006\u00e5g\t\u008d6\u00b6"

    invoke-static/range {v6 .. v6}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "=\u00a0\u0006\u0081j\u0012\u00892\u00f8\u000f\u00ec`\u0018\u00c3?\u00cdO\u00f9$7\u009f\u0002\u00f4`\u00d6"

    invoke-static/range {v7 .. v7}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_2

    new-instance v5, Landroid/content/Intent;

    const-string v6, "9\u00a8Y\u008ft\u0011\u0090{\u00a5X\u00aee\u001f\u0080~\u00e8y\u00d5[!\u0097\u0005"

    invoke-static/range {v6 .. v6}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const v7, 0x4000000

    invoke-static {v0, v6, v5, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v6, "\u001d\u00b0\u0006\u00e5g\t\u008d6\u00b6"

    invoke-static/range {v6 .. v6}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "=\u00a0\u0006\u0081j\u0012\u00892\u00f8\u000f\u00f4|\u0014\u00c3\u001e\u00f2\n\u00e7a\u0003\u00b3\"\u00cbV\u00fb\u0090\u0002\u00f9k\u0093R\u00e8\u008b\u0012\u00b12\u00dar\u00e6\u0092"

    invoke-static/range {v7 .. v7}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v3, v5}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    :cond_5
    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    return-void
.end method

.method private static refreshDebug(Landroid/content/Context;)V
    .locals 2

    .line 74
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "/\u00b4V\u00fej\u001e\u008a \u00a5"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    sput-boolean p0, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static safeName(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;
    .locals 0

    .line 801
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 802
    :catchall_0
    const-string p0, "e"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static scan(Landroid/content/Context;)Z
    .locals 9

    .line 329
    invoke-static {p0}, Lcom/zjx/gw2lic/devicehid/DirectHid;->refreshDebug(Landroid/content/Context;)V

    .line 330
    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->guardHealthy()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 331
    sget-boolean v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "\u001d\u00b0\u0006\u00e5g\t\u008d6\u00b6"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "=\u00b2U\u00d3j[\u0086:\u00b6\u000f\u00f4l\u0017\u008f$\u00d5S\u00b7)O\u00fe%\u00d7\u0008\u00df\u0090\u0014\u00b0f\u00d7I\u00fe\u009b\u0005\u00b8$\u00ca"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    const-string v0, ")\u00a4U\u00cf.(\u00a3\u001c\u0092\u007f\u00d9ML\u00c37\u00c8K\u00e5`Q\u00b0$\u00cc\u0005\u00fa\u009a\r\u00b52\u00dbY\u00ad\u00d2\u000b\u00bd#\u00cdi\u00e7\u0082\u000c\u00efR\u00c6b\u00a3\u009c2\u00abS\u00c1u^\u00826\u00e5F\u00f7e\n\u00c6#\u00b2B\u00f9b\u0007\u0092n\u00c2M\u00e1+"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zjx/gw2lic/devicehid/DirectHid;->diag(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 339
    :cond_1
    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->granted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 340
    sget-boolean v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "\u001d\u00b0\u0006\u00e5g\t\u008d6\u00b6"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "<\u00a2U\u00d5{\t\u008du\u00ac@\u00e8)\u0011\u00911\u00d3^\u00f2`Q\u00b8$\u00ca\u0005\u00e6\u0097\u0005\u00aaf\u00d7E\u00fb\u0093\u0004\u00b1a\u0083%\u00a8\u009b\r\u00e2q\u00c6n\u00ea\u00d09\u00a3D\u00c5s\u0012\u008e<"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_2
    const-string v0, ")\u00a4U\u00cf.(\u00a3\u001c\u0092\u007f\u00d9ML\u00c3w\u00f6B\u00f8j\u0016\u00fe;\u00d0P\u00b2\u0094\u0005\u00bc(\u0094\u0000\u00ee\u0092\u0012\u00b5a\u00can\u00e7\u0096B\u00ac]\u00d96\u00e0\u00982\u00eaC\u00ccx\u001b\u009fx\u00a7[\u00bfb\u0018\u009f"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zjx/gw2lic/devicehid/DirectHid;->diag(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 344
    :cond_3
    const-string v0, "/\u00b4V"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_4

    return v1

    .line 346
    :cond_4
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v2

    .line 352
    invoke-static {v2}, Lcom/zjx/gw2lic/devicehid/DirectHid;->hasNewClaimAndAudio(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 353
    sget-boolean v2, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "\u001d\u00b0\u0006\u00e5g\t\u008d6\u00b6"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ";\u00b2P\u00c8a[\u0098\'\u00a7\\\u00f9g\u0002\u00c3{\u009dD\u00f2sQ\u0096\u0002\u00fc\u0005\u00bf\u00c1L\u00aa#\u00c7T\u00e1\u009fG\u00e1q\u009ev\u00fb\u00d5\u0004\u00a0N\u0089w\u00f6\u00944\u00a5\u0017\u00ecP2"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-wide/16 v2, 0x1f4

    .line 354
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :catchall_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v2

    .line 362
    :cond_6
    :try_start_1
    invoke-static {p0}, Lcom/zjx/gw2lic/UsbGrant;->grantNowForce(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 365
    :catchall_1
    sget-object v3, Lcom/zjx/gw2lic/devicehid/DirectHid;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 366
    :try_start_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 367
    sget-object v5, Lcom/zjx/gw2lic/devicehid/DirectHid;->sClaims:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 368
    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 370
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 371
    sget-object v6, Lcom/zjx/gw2lic/devicehid/DirectHid;->sClaims:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/usb/UsbDeviceConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-eqz v6, :cond_a

    .line 372
    :try_start_3
    invoke-virtual {v6}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 373
    :catchall_2
    :cond_a
    :try_start_4
    sget-boolean v6, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz v6, :cond_9

    const-string v6, "\u001d\u00b0\u0006\u00e5g\t\u008d6\u00b6"

    invoke-static/range {v6 .. v6}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "*\u00b5A\u00cfk\u001f\u00c8"

    invoke-static/range {v8 .. v8}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 375
    :cond_b
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 377
    sget-boolean v3, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ")\u00a4U\u00cf4["

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "z\u00a3Q\u00d7g\u0018\u008d}\u00b1\u0006\u00bcy\u0004\u0086#\u00d8D\u00e3"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zjx/gw2lic/devicehid/DirectHid;->diag(Landroid/content/Context;Ljava/lang/String;)V

    .line 378
    :cond_c
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    .line 379
    :try_start_5
    invoke-static {p0, v0, v3}, Lcom/zjx/gw2lic/devicehid/DirectHid;->claimDevice(Landroid/content/Context;Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v4

    .line 380
    sget-boolean v5, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz v5, :cond_d

    const-string v5, "\u001d\u00b0\u0006\u00e5g\t\u008d6\u00b6"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "9\u00abU\u00c8c["

    invoke-static/range {v7 .. v7}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 391
    :cond_e
    sget-object p0, Lcom/zjx/gw2lic/devicehid/DirectHid;->LOCK:Ljava/lang/Object;

    monitor-enter p0

    :try_start_6
    sget-object v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->sClaims:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-nez v0, :cond_f

    .line 394
    sget-boolean p0, Lcom/zjx/gw2lic/devicehid/DirectHid;->sConnectedSynced:Z

    if-nez p0, :cond_10

    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->syncConnected()V

    goto :goto_3

    .line 396
    :cond_f
    sput-boolean v1, Lcom/zjx/gw2lic/devicehid/DirectHid;->sConnectedSynced:Z

    :cond_10
    :goto_3
    const/4 p0, 0x1

    return p0

    :catchall_4
    move-exception v0

    .line 391
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0

    :catchall_5
    move-exception p0

    .line 375
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw p0
.end method

.method private static signExtend(II)I
    .locals 1

    if-lez p1, :cond_1

    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    sub-int/2addr p1, v0

    shl-int p1, v0, p1

    xor-int/2addr p0, p1

    sub-int/2addr p0, p1

    :cond_1
    :goto_0
    return p0
.end method

.method private static sleep(J)V
    .locals 0

    .line 243
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static startDeviceReader(Landroid/hardware/usb/UsbDeviceConnection;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbDeviceConnection;",
            "Ljava/util/List<",
            "Lcom/zjx/gw2lic/devicehid/DirectHid$InEp;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 553
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zjx/gw2lic/devicehid/DirectHid$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/zjx/gw2lic/devicehid/DirectHid$5;-><init>(Landroid/hardware/usb/UsbDeviceConnection;Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    .line 556
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 557
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "=\u00b0\u0006\u008c|\u001f\u00c5"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2f

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static startWatch(Landroid/content/Context;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 165
    :cond_0
    invoke-static {p0}, Lcom/zjx/gw2lic/devicehid/DirectHid;->isNoDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 166
    sput-boolean v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->sRunning:Z

    .line 167
    sget-object v1, Lcom/zjx/gw2lic/devicehid/DirectHid;->WLOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 169
    sput-wide v2, Lcom/zjx/gw2lic/devicehid/DirectHid;->sLastEventMs:J

    const-wide/16 v4, 0x2ee0

    add-long/2addr v2, v4

    .line 170
    sput-wide v2, Lcom/zjx/gw2lic/devicehid/DirectHid;->sDeadlineMs:J

    .line 171
    sget-boolean v2, Lcom/zjx/gw2lic/devicehid/DirectHid;->sWatching:Z

    if-eqz v2, :cond_2

    monitor-exit v1

    return-void

    .line 172
    :cond_2
    sput-boolean v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->sWatching:Z

    .line 173
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/zjx/gw2lic/devicehid/DirectHid$4;

    invoke-direct {v2, p0}, Lcom/zjx/gw2lic/devicehid/DirectHid$4;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 186
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 187
    const-string p0, "=\u00b0\u0006\u008cj\u0012\u009a0\u00a1[\u00b1~\u0017\u00973\u00d5"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_0
    move-exception p0

    .line 173
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static syncConnected()V
    .locals 4

    .line 407
    const-string v0, "\u001d\u00b0\u0006\u00e5g\t\u008d6\u00b6"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/zjx/gw2lic/devicehid/DirectHid;->sConnM:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 408
    const-string v1, "0\u00f1\u001a\u00e5g\t\u008d6\u00b6k\u00f5z\u0006\u0082$\u00deB"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "9\u00a8Z\u00cfk\u0018\u009c0\u00a6"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/zjx/gw2lic/devicehid/DirectHid;->sConnM:Ljava/lang/reflect/Method;

    .line 409
    :cond_0
    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 410
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 411
    sput-boolean v1, Lcom/zjx/gw2lic/devicehid/DirectHid;->sConnectedSynced:Z

    .line 412
    sget-boolean v1, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, ")\u00beZ\u00c2k\u001f\u00c86\u00adA\u00f2l\u0015\u00975\u00d9\n\u00e4p\u0010\u00aa."

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 413
    :cond_1
    sget-boolean v1, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 414
    const-string v1, ")\u00beZ\u00c2M\u0014\u0086;\u00a7L\u00e8l\u0012\u00d9p\u00ceO\u00e5r\u0018\u00bd.\u0098K\u00fd\u008bL\u00ab#\u00d2D\u00f4\u00d6G\u00a3(\u00c2w\u00a8\u0087\u0007\u00bbN\u00d0"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 417
    sget-boolean v2, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, ")\u00beZ\u00c2M\u0014\u0086;\u00a7L\u00e8l\u0012"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private static watchLoop(Landroid/content/Context;)V
    .locals 9

    .line 192
    const-string v0, "/\u00b4V"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 196
    :goto_0
    sget-boolean v2, Lcom/zjx/gw2lic/devicehid/DirectHid;->sRunning:Z

    if-eqz v2, :cond_6

    invoke-static {p0}, Lcom/zjx/gw2lic/devicehid/DirectHid;->isNoDevice(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 197
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 199
    sget-object v4, Lcom/zjx/gw2lic/devicehid/DirectHid;->WLOCK:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-wide v5, Lcom/zjx/gw2lic/devicehid/DirectHid;->sDeadlineMs:J

    sget-wide v7, Lcom/zjx/gw2lic/devicehid/DirectHid;->sLastEventMs:J

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    cmp-long v4, v2, v5

    if-ltz v4, :cond_1

    .line 200
    sget-boolean v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "-\u00a6@\u00c2fA\u00c8\"\u00abA\u00f8f\u0001\u00c33\u00d1E\u00e4a\u0015\u00f2k\u00d9Q\u00e6\u009a\u0001\u00a92\u00c0\u001d"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zjx/gw2lic/devicehid/DirectHid;->diag(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 202
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_5

    .line 204
    invoke-static {v4}, Lcom/zjx/gw2lic/devicehid/DirectHid;->needsWork(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v2, 0x8

    if-lt v1, v2, :cond_2

    .line 206
    sget-boolean v0, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "-\u00a6@\u00c2fA\u00c84\u00b6[\u00f9d\u0006\u0097p\u00deK\u00e7$\u0003\u00bb*\u00dbM\u00f7\u009b"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zjx/gw2lic/devicehid/DirectHid;->diag(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 210
    :cond_2
    :try_start_2
    invoke-static {p0}, Lcom/zjx/gw2lic/devicehid/DirectHid;->scan(Landroid/content/Context;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    .line 211
    sget-boolean v3, Lcom/zjx/gw2lic/devicehid/DirectHid;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "\u001d\u00b0\u0006\u00e5g\t\u008d6\u00b6"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ")\u00a4U\u00cf"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 215
    :cond_4
    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->isActive()Z

    move-result v4

    if-eqz v4, :cond_5

    sub-long/2addr v2, v7

    const-wide/16 v4, 0x9c4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    const-wide/16 v2, 0x2bc

    .line 219
    invoke-static {v2, v3}, Lcom/zjx/gw2lic/devicehid/DirectHid;->sleep(J)V

    goto/16 :goto_0

    :catchall_2
    move-exception p0

    .line 199
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :cond_6
    :goto_4
    return-void
.end method
