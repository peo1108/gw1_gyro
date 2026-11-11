.class public final Lcom/zjx/gw2lic/desktop/DesktopMode;
.super Ljava/lang/Object;
.source "DesktopMode.java"


# static fields
.field private static announced:Z

.field private static volatile connected:Z

.field private static context:Landroid/content/Context;

.field private static volatile enabled:Z

.field private static epoch:I

.field private static final flush:Ljava/lang/Runnable;

.field private static flushPosted:Z

.field private static volatile game:Z

.field private static final lock:Ljava/lang/Object;

.field private static final pending:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private static pingAt:J

.field private static volatile ready:Z

.field private static final reports:Lcom/zjx/gw2lic/desktop/HidReports;

.field private static retryAt:J

.field private static startTime:J

.field private static starting:Z

.field private static final tick:Ljava/lang/Runnable;

.field private static final token:Landroid/os/Binder;

.field private static worker:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->token:Landroid/os/Binder;

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->lock:Ljava/lang/Object;

    .line 17
    new-instance v0, Lcom/zjx/gw2lic/desktop/HidReports;

    invoke-direct {v0}, Lcom/zjx/gw2lic/desktop/HidReports;-><init>()V

    sput-object v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->reports:Lcom/zjx/gw2lic/desktop/HidReports;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->pending:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Lcom/zjx/gw2lic/desktop/DesktopMode$4;

    invoke-direct {v0}, Lcom/zjx/gw2lic/desktop/DesktopMode$4;-><init>()V

    sput-object v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->tick:Ljava/lang/Runnable;

    .line 125
    new-instance v0, Lcom/zjx/gw2lic/desktop/DesktopMode$5;

    invoke-direct {v0}, Lcom/zjx/gw2lic/desktop/DesktopMode$5;-><init>()V

    sput-object v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->flush:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 9
    sput-boolean p0, Lcom/zjx/gw2lic/desktop/DesktopMode;->enabled:Z

    return p0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .line 9
    sget-object v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(ILjava/util/List;)Z
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lcom/zjx/gw2lic/desktop/DesktopMode;->rpc(ILjava/util/List;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100()J
    .locals 2

    .line 9
    sget-wide v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->startTime:J

    return-wide v0
.end method

.method static synthetic access$1102(J)J
    .locals 0

    .line 9
    sput-wide p0, Lcom/zjx/gw2lic/desktop/DesktopMode;->startTime:J

    return-wide p0
.end method

.method static synthetic access$1200()J
    .locals 2

    .line 9
    sget-wide v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->pingAt:J

    return-wide v0
.end method

.method static synthetic access$1202(J)J
    .locals 0

    .line 9
    sput-wide p0, Lcom/zjx/gw2lic/desktop/DesktopMode;->pingAt:J

    return-wide p0
.end method

.method static synthetic access$1300()V
    .locals 0

    .line 9
    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->failed()V

    return-void
.end method

.method static synthetic access$1400()Z
    .locals 1

    .line 9
    sget-boolean v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->ready:Z

    return v0
.end method

.method static synthetic access$1402(Z)Z
    .locals 0

    .line 9
    sput-boolean p0, Lcom/zjx/gw2lic/desktop/DesktopMode;->ready:Z

    return p0
.end method

.method static synthetic access$1500()Z
    .locals 1

    .line 9
    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->devicesReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600()Ljava/lang/Object;
    .locals 1

    .line 9
    sget-object v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1702(Z)Z
    .locals 0

    .line 9
    sput-boolean p0, Lcom/zjx/gw2lic/desktop/DesktopMode;->flushPosted:Z

    return p0
.end method

.method static synthetic access$1800()I
    .locals 1

    .line 9
    sget v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->epoch:I

    return v0
.end method

.method static synthetic access$1900()Ljava/util/ArrayList;
    .locals 1

    .line 9
    sget-object v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->pending:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 9
    sput-boolean p0, Lcom/zjx/gw2lic/desktop/DesktopMode;->announced:Z

    return p0
.end method

.method static synthetic access$300()V
    .locals 0

    .line 9
    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->transition()V

    return-void
.end method

.method static synthetic access$400()V
    .locals 0

    .line 9
    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->close()V

    return-void
.end method

.method static synthetic access$500()J
    .locals 2

    .line 9
    sget-wide v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->retryAt:J

    return-wide v0
.end method

.method static synthetic access$502(J)J
    .locals 0

    .line 9
    sput-wide p0, Lcom/zjx/gw2lic/desktop/DesktopMode;->retryAt:J

    return-wide p0
.end method

.method static synthetic access$600()V
    .locals 0

    .line 9
    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->hurry()V

    return-void
.end method

.method static synthetic access$702(Z)Z
    .locals 0

    .line 9
    sput-boolean p0, Lcom/zjx/gw2lic/desktop/DesktopMode;->connected:Z

    return p0
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 9
    sget-boolean v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->starting:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0

    .line 9
    sput-boolean p0, Lcom/zjx/gw2lic/desktop/DesktopMode;->starting:Z

    return p0
.end method

.method static synthetic access$900()Landroid/os/Handler;
    .locals 1

    .line 9
    sget-object v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->worker:Landroid/os/Handler;

    return-object v0
.end method

.method private static add([B)V
    .locals 11

    .line 91
    if-nez p0, :cond_0

    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/zjx/gw2lic/desktop/DesktopMode;->pending:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 94
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 95
    aget-byte v0, v1, v0

    if-ne v0, v2, :cond_3

    aget-byte v0, v1, v4

    aget-byte v3, p0, v4

    if-ne v0, v3, :cond_3

    aget-byte v0, v1, v2

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-nez v0, :cond_1

    aget-byte v7, v1, v6

    if-nez v7, :cond_1

    aget-byte v7, v1, v5

    if-nez v7, :cond_1

    aget-byte v7, v1, v4

    if-nez v7, :cond_1

    aget-byte v7, v1, v3

    if-eqz v7, :cond_3

    :cond_1
    aget-byte v7, p0, v2

    if-nez v7, :cond_2

    aget-byte v8, p0, v6

    if-nez v8, :cond_2

    aget-byte v8, p0, v5

    if-nez v8, :cond_2

    aget-byte v8, p0, v4

    if-nez v8, :cond_2

    aget-byte v8, p0, v3

    if-eqz v8, :cond_3

    .line 96
    :cond_2
    and-int/lit16 v0, v0, 0xff

    aget-byte v8, v1, v6

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v0, v8

    int-to-short v0, v0

    and-int/lit16 v7, v7, 0xff

    aget-byte v8, p0, v6

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    int-to-short v7, v7

    add-int/2addr v0, v7

    .line 97
    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    aget-byte v8, v1, v4

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    int-to-short v7, v7

    aget-byte v8, p0, v5

    and-int/lit16 v8, v8, 0xff

    aget-byte v9, p0, v4

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    int-to-short v8, v8

    add-int/2addr v7, v8

    aget-byte v8, v1, v3

    aget-byte v9, p0, v3

    add-int/2addr v8, v9

    .line 98
    const/16 v9, -0x8000

    if-lt v0, v9, :cond_3

    const/16 v10, 0x7fff

    if-gt v0, v10, :cond_3

    if-lt v7, v9, :cond_3

    if-gt v7, v10, :cond_3

    const/16 v9, -0x7f

    if-lt v8, v9, :cond_3

    const/16 v9, 0x7f

    if-gt v8, v9, :cond_3

    int-to-byte p0, v0

    aput-byte p0, v1, v2

    shr-int/lit8 p0, v0, 0x8

    int-to-byte p0, p0

    aput-byte p0, v1, v6

    int-to-byte p0, v7

    aput-byte p0, v1, v5

    shr-int/lit8 p0, v7, 0x8

    int-to-byte p0, p0

    aput-byte p0, v1, v4

    int-to-byte p0, v8

    aput-byte p0, v1, v3

    return-void

    .line 101
    :cond_3
    sget-object v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->pending:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public static bind(Landroid/view/View;)V
    .locals 1

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/gw2lic/desktop/DesktopMode;->init(Landroid/content/Context;)V

    const-string v0, ">\u00a2G\u00caz\u0014\u0098\n\u00af@\u00f8l)\u0090\'\u00d4^\u00f4l"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/CompoundButton;

    if-nez v0, :cond_0

    return-void

    .line 29
    :cond_0
    check-cast p0, Landroid/widget/CompoundButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget-boolean v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->enabled:Z

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 30
    new-instance v0, Lcom/zjx/gw2lic/desktop/DesktopMode$1;

    invoke-direct {v0}, Lcom/zjx/gw2lic/desktop/DesktopMode$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 33
    return-void
.end method

.method private static close()V
    .locals 2

    invoke-static {}, Lcom/zjx/gw2lic/desktop/Gw2Status;->hide()V

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->ready:Z

    sget-boolean v1, Lcom/zjx/gw2lic/desktop/DesktopMode;->starting:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zjx/gw2lic/desktop/DesktopMode;->rpc(ILjava/util/List;)Z

    :cond_0
    sput-boolean v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->starting:Z

    .line 55
    sget-object v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/zjx/gw2lic/desktop/DesktopMode;->epoch:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/zjx/gw2lic/desktop/DesktopMode;->epoch:I

    sget-object v1, Lcom/zjx/gw2lic/desktop/DesktopMode;->pending:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-object v1, Lcom/zjx/gw2lic/desktop/DesktopMode;->reports:Lcom/zjx/gw2lic/desktop/HidReports;

    invoke-virtual {v1}, Lcom/zjx/gw2lic/desktop/HidReports;->reset()V

    monitor-exit v0

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static devicesReady()Z
    .locals 10

    .line 58
    nop

    .line 59
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v3, v1, :cond_3

    aget v7, v0, v3

    .line 60
    invoke-static {v7}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    const-string v8, "\u001d\u0080\u0006\u0081J\u001e\u009b>\u00b6@\u00ec)=\u0086)\u00dfE\u00f6v\u0015"

    invoke-static/range {v8 .. v8}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v4, v6

    .line 62
    :cond_1
    const-string v8, "\u001d\u0080\u0006\u0081J\u001e\u009b>\u00b6@\u00ec);\u008c%\u00ceO"

    invoke-static/range {v8 .. v8}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    .line 59
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    :cond_3
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    move v2, v6

    :cond_4
    return v2
.end method

.method private static failed()V
    .locals 4

    .line 66
    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->close()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    sput-wide v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->retryAt:J

    .line 67
    sget-boolean v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->announced:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->announced:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/zjx/gw2lic/desktop/DesktopMode$3;

    invoke-direct {v1}, Lcom/zjx/gw2lic/desktop/DesktopMode$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    :cond_0
    return-void
.end method

.method public static game(Z)V
    .locals 0

    .line 34
    sput-boolean p0, Lcom/zjx/gw2lic/desktop/DesktopMode;->game:Z

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->transition()V

    return-void
.end method

.method public static gw2DesktopOn()Z
    .locals 1

    sget-boolean v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->enabled:Z

    return v0
.end method

.method public static gw2On()Z
    .locals 1

    sget-boolean v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->enabled:Z

    return v0
.end method

.method public static gw2RetryNow()V
    .locals 2

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->close()V

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->retryAt:J

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->hurry()V

    return-void
.end method

.method public static gw2SetupActive()Z
    .locals 1

    sget-boolean v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->enabled:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->ready:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static hurry()V
    .locals 2

    .line 40
    sget-object v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->worker:Landroid/os/Handler;

    sget-object v1, Lcom/zjx/gw2lic/desktop/DesktopMode;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->worker:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/zjx/gw2lic/desktop/DesktopMode;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/zjx/gw2lic/desktop/DesktopMode;->context:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/zjx/gw2lic/desktop/DesktopMode;->context:Landroid/content/Context;

    .line 23
    const-string v1, "=\u00a0\u0006\u00fej\u001e\u009b>\u00b6@\u00ec"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "?\u00a9U\u00c3b\u001e\u008c"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/zjx/gw2lic/desktop/DesktopMode;->enabled:Z

    .line 24
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-boolean p0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->X:Z

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    sput-boolean v2, Lcom/zjx/gw2lic/desktop/DesktopMode;->game:Z

    .line 25
    new-instance p0, Landroid/os/HandlerThread;

    const-string v1, "\u001d\u0080\u0006\u008cJ\u001e\u009b>\u00b6@\u00ec"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/zjx/gw2lic/desktop/DesktopMode;->worker:Landroid/os/Handler;

    sget-object p0, Lcom/zjx/gw2lic/desktop/DesktopMode;->tick:Ljava/lang/Runnable;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    monitor-exit v0

    return-void

    .line 21
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static outside()Z
    .locals 1

    .line 20
    sget-boolean v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->enabled:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->game:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->connected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static route(Ljava/util/LinkedList;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "*>;)Z"
        }
    .end annotation

    .line 104
    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->outside()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 105
    :cond_0
    sget-boolean v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->ready:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 106
    :cond_1
    sget-object v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->outside()Z

    move-result v3

    if-eqz v3, :cond_15

    sget-boolean v3, Lcom/zjx/gw2lic/desktop/DesktopMode;->ready:Z

    if-nez v3, :cond_2

    goto/16 :goto_5

    .line 109
    :cond_2
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x7

    const/16 v6, 0xe7

    const/16 v7, 0xe0

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 110
    nop

    .line 111
    instance-of v8, v4, Li7/e;

    const/4 v9, -0x1

    if-eqz v8, :cond_4

    check-cast v4, Li7/e;

    iget-object v5, v4, Li7/e;->b:Li7/e$a;

    sget-object v8, Li7/e$a;->X:Li7/e$a;

    if-ne v5, v8, :cond_3

    iget v5, v4, Li7/e;->c:I

    and-int/lit16 v9, v5, 0xff

    iget-boolean v4, v4, Li7/e;->d:Z

    goto :goto_1

    :cond_3
    move v4, v1

    goto :goto_1

    .line 112
    :cond_4
    instance-of v8, v4, Li7/f;

    if-eqz v8, :cond_5

    check-cast v4, Li7/f;

    iget v8, v4, Li7/f;->b:I

    if-ne v8, v5, :cond_5

    iget v5, v4, Li7/f;->c:I

    and-int/lit16 v9, v5, 0xff

    iget-boolean v4, v4, Li7/f;->d:Z

    goto :goto_1

    .line 113
    :cond_5
    move v4, v1

    :goto_1
    if-lt v9, v7, :cond_6

    if-gt v9, v6, :cond_6

    sget-object v5, Lcom/zjx/gw2lic/desktop/DesktopMode;->reports:Lcom/zjx/gw2lic/desktop/HidReports;

    invoke-virtual {v5, v9, v4}, Lcom/zjx/gw2lic/desktop/HidReports;->key(IZ)[B

    move-result-object v4

    invoke-static {v4}, Lcom/zjx/gw2lic/desktop/DesktopMode;->add([B)V

    .line 114
    :cond_6
    goto :goto_0

    .line 115
    :cond_7
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 116
    instance-of v4, v3, Li7/e;

    if-eqz v4, :cond_a

    check-cast v3, Li7/e;

    iget-object v4, v3, Li7/e;->b:Li7/e$a;

    sget-object v8, Li7/e$a;->X:Li7/e$a;

    if-ne v4, v8, :cond_9

    iget v4, v3, Li7/e;->c:I

    and-int/lit16 v4, v4, 0xff

    if-lt v4, v7, :cond_8

    if-le v4, v6, :cond_11

    :cond_8
    sget-object v8, Lcom/zjx/gw2lic/desktop/DesktopMode;->reports:Lcom/zjx/gw2lic/desktop/HidReports;

    iget-boolean v3, v3, Li7/e;->d:Z

    invoke-virtual {v8, v4, v3}, Lcom/zjx/gw2lic/desktop/HidReports;->key(IZ)[B

    move-result-object v3

    invoke-static {v3}, Lcom/zjx/gw2lic/desktop/DesktopMode;->add([B)V

    goto/16 :goto_3

    :cond_9
    iget-object v4, v3, Li7/e;->b:Li7/e$a;

    sget-object v8, Li7/e$a;->Y:Li7/e$a;

    if-ne v4, v8, :cond_11

    sget-object v4, Lcom/zjx/gw2lic/desktop/DesktopMode;->reports:Lcom/zjx/gw2lic/desktop/HidReports;

    iget v8, v3, Li7/e;->c:I

    iget-boolean v3, v3, Li7/e;->d:Z

    invoke-virtual {v4, v8, v3}, Lcom/zjx/gw2lic/desktop/HidReports;->button(IZ)[B

    move-result-object v3

    invoke-static {v3}, Lcom/zjx/gw2lic/desktop/DesktopMode;->add([B)V

    goto/16 :goto_3

    .line 117
    :cond_a
    instance-of v4, v3, Li7/f;

    if-eqz v4, :cond_c

    check-cast v3, Li7/f;

    iget v4, v3, Li7/f;->b:I

    if-ne v4, v5, :cond_11

    iget v4, v3, Li7/f;->c:I

    and-int/lit16 v4, v4, 0xff

    if-lt v4, v7, :cond_b

    if-le v4, v6, :cond_11

    :cond_b
    sget-object v8, Lcom/zjx/gw2lic/desktop/DesktopMode;->reports:Lcom/zjx/gw2lic/desktop/HidReports;

    iget-boolean v3, v3, Li7/f;->d:Z

    invoke-virtual {v8, v4, v3}, Lcom/zjx/gw2lic/desktop/HidReports;->key(IZ)[B

    move-result-object v3

    invoke-static {v3}, Lcom/zjx/gw2lic/desktop/DesktopMode;->add([B)V

    goto :goto_3

    .line 118
    :cond_c
    instance-of v4, v3, Li7/i;

    const/16 v8, 0x80

    if-eqz v4, :cond_f

    check-cast v3, Li7/i;

    iget v4, v3, Li7/i;->b:I

    iget v3, v3, Li7/i;->c:I

    :cond_d
    const/16 v9, 0x7fff

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/16 v11, -0x8000

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    sget-object v11, Lcom/zjx/gw2lic/desktop/DesktopMode;->reports:Lcom/zjx/gw2lic/desktop/HidReports;

    invoke-virtual {v11, v10, v9, v1}, Lcom/zjx/gw2lic/desktop/HidReports;->mouse(III)[B

    move-result-object v11

    invoke-static {v11}, Lcom/zjx/gw2lic/desktop/DesktopMode;->add([B)V

    sub-int/2addr v4, v10

    sub-int/2addr v3, v9

    if-nez v4, :cond_e

    if-eqz v3, :cond_11

    :cond_e
    sget-object v9, Lcom/zjx/gw2lic/desktop/DesktopMode;->pending:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v9, v8, :cond_d

    goto :goto_3

    .line 119
    :cond_f
    instance-of v4, v3, Li7/j;

    if-eqz v4, :cond_11

    check-cast v3, Li7/j;

    iget v3, v3, Li7/j;->b:I

    :cond_10
    const/16 v4, 0x7f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/16 v9, -0x7f

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    sget-object v9, Lcom/zjx/gw2lic/desktop/DesktopMode;->reports:Lcom/zjx/gw2lic/desktop/HidReports;

    invoke-virtual {v9, v1, v1, v4}, Lcom/zjx/gw2lic/desktop/HidReports;->mouse(III)[B

    move-result-object v9

    invoke-static {v9}, Lcom/zjx/gw2lic/desktop/DesktopMode;->add([B)V

    sub-int/2addr v3, v4

    if-eqz v3, :cond_11

    sget-object v4, Lcom/zjx/gw2lic/desktop/DesktopMode;->pending:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v8, :cond_10

    .line 120
    :cond_11
    :goto_3
    sget-object v3, Lcom/zjx/gw2lic/desktop/DesktopMode;->pending:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v8, 0x78

    if-lt v4, v8, :cond_12

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    sget-object p0, Lcom/zjx/gw2lic/desktop/DesktopMode;->reports:Lcom/zjx/gw2lic/desktop/HidReports;

    invoke-virtual {p0}, Lcom/zjx/gw2lic/desktop/HidReports;->reset()V

    invoke-virtual {p0, v7, v1}, Lcom/zjx/gw2lic/desktop/HidReports;->key(IZ)[B

    move-result-object v3

    invoke-static {v3}, Lcom/zjx/gw2lic/desktop/DesktopMode;->add([B)V

    invoke-virtual {p0, v1, v1, v1}, Lcom/zjx/gw2lic/desktop/HidReports;->mouse(III)[B

    move-result-object p0

    invoke-static {p0}, Lcom/zjx/gw2lic/desktop/DesktopMode;->add([B)V

    goto :goto_4

    .line 121
    :cond_12
    goto/16 :goto_2

    .line 122
    :cond_13
    :goto_4
    sget-boolean p0, Lcom/zjx/gw2lic/desktop/DesktopMode;->flushPosted:Z

    if-nez p0, :cond_14

    sget-object p0, Lcom/zjx/gw2lic/desktop/DesktopMode;->pending:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_14

    sput-boolean v2, Lcom/zjx/gw2lic/desktop/DesktopMode;->flushPosted:Z

    sget-object p0, Lcom/zjx/gw2lic/desktop/DesktopMode;->worker:Landroid/os/Handler;

    sget-object v1, Lcom/zjx/gw2lic/desktop/DesktopMode;->flush:Ljava/lang/Runnable;

    const-wide/16 v3, 0x4

    invoke-virtual {p0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    :cond_14
    monitor-exit v0

    return v2

    .line 107
    :cond_15
    :goto_5
    monitor-exit v0

    return v2

    .line 123
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static rpc(ILjava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 42
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 44
    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lt5/f;->u2()Lt5/f;

    move-result-object v3

    iget-object v3, v3, Lt5/f;->i:Ls5/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 44
    return v2

    .line 45
    :cond_0
    :try_start_1
    invoke-interface {v3}, Ls5/g;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 46
    :cond_1
    const-string v4, "9\u00a8Y\u008ft\u0011\u0090{\u00a8V\u00fdg\u0012\u0091?\u00d4N\u00b9J\u0010\u00aa\"\u00ce@\u00d0\u0096\u0002\u00bd#\u00c1s\u00e8\u0088\u0011\u00b13"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    const/4 v4, 0x1

    if-ne p0, v4, :cond_2

    sget-object v5, Lcom/zjx/gw2lic/desktop/DesktopMode;->token:Landroid/os/Binder;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 48
    :cond_2
    const/4 v5, 0x2

    if-ne p0, v5, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 49
    :cond_3
    const p0, 0x474732

    invoke-interface {v3, p0, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_4

    .line 51
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 49
    return v2

    .line 50
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_5

    move v2, v4

    .line 51
    :cond_5
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 50
    return v2

    .line 51
    :cond_6
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 45
    return v2

    .line 51
    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0

    :catch_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2
.end method

.method private static transition()V
    .locals 2

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->ready:Z

    .line 37
    sget-object v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/zjx/gw2lic/desktop/DesktopMode;->epoch:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/zjx/gw2lic/desktop/DesktopMode;->epoch:I

    sget-object v1, Lcom/zjx/gw2lic/desktop/DesktopMode;->pending:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-object v1, Lcom/zjx/gw2lic/desktop/DesktopMode;->reports:Lcom/zjx/gw2lic/desktop/HidReports;

    invoke-virtual {v1}, Lcom/zjx/gw2lic/desktop/HidReports;->reset()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    sget-object v0, Lcom/zjx/gw2lic/desktop/DesktopMode;->worker:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/zjx/gw2lic/desktop/DesktopMode$2;

    invoke-direct {v1}, Lcom/zjx/gw2lic/desktop/DesktopMode$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    :cond_0
    return-void

    .line 37
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
