.class public final Lcom/zjx/gw2lic/desktop/DesktopHidServer;
.super Ljava/lang/Object;
.source "DesktopHidServer.java"


# static fields
.field public static final TRANSACTION:I = 0x474732

.field private static final death:Landroid/os/IBinder$DeathRecipient;

.field private static output:Ljava/io/OutputStream;

.field private static owner:Landroid/os/IBinder;

.field private static ownerUid:I

.field private static volatile process:Ljava/lang/Process;

.field private static volatile touched:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const/4 v0, -0x1

    sput v0, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->ownerUid:I

    .line 12
    new-instance v0, Lcom/zjx/gw2lic/desktop/DesktopHidServer$1;

    invoke-direct {v0}, Lcom/zjx/gw2lic/desktop/DesktopHidServer$1;-><init>()V

    sput-object v0, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->death:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 5
    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->stop()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Process;
    .locals 1

    .line 5
    sget-object v0, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->process:Ljava/lang/Process;

    return-object v0
.end method

.method static synthetic access$200()J
    .locals 2

    .line 5
    sget-wide v0, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->touched:J

    return-wide v0
.end method

.method static synthetic access$300(Ljava/lang/Process;)V
    .locals 0

    .line 5
    invoke-static {p0}, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->stop(Ljava/lang/Process;)V

    return-void
.end method

.method private static alive()Z
    .locals 2

    .line 13
    sget-object v0, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->process:Ljava/lang/Process;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    return v0
.end method

.method private static declared-synchronized start(Landroid/os/IBinder;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/zjx/gw2lic/desktop/DesktopHidServer;

    monitor-enter v0

    .line 25
    const/4 v1, 0x0

    if-nez p0, :cond_0

    monitor-exit v0

    return v1

    .line 26
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->alive()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    sget v2, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->ownerUid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-ne v2, v4, :cond_1

    sget-object v2, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->owner:Landroid/os/IBinder;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->touched:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v3

    .line 27
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->stop()V

    .line 28
    new-instance v2, Ljava/lang/ProcessBuilder;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "u\u00b4M\u00d2z\u001e\u0085z\u00a0F\u00f2&\u001e\u008a4"

    invoke-static/range {v6 .. v6}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "w"

    invoke-static/range {v6 .. v6}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-direct {v2, v5}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    .line 29
    sput-object v2, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->process:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    sput-object v5, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->output:Ljava/io/OutputStream;

    sput-object p0, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->owner:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    sput p0, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->ownerUid:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->touched:J

    .line 30
    sget-object p0, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->owner:Landroid/os/IBinder;

    sget-object v5, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->death:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p0, v5, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 31
    new-instance p0, Ljava/lang/Thread;

    new-instance v1, Lcom/zjx/gw2lic/desktop/DesktopHidServer$2;

    invoke-direct {v1, v2}, Lcom/zjx/gw2lic/desktop/DesktopHidServer$2;-><init>(Ljava/lang/Process;)V

    const-string v5, "\u001d\u0080\u0006\u008cF2\u00acx\u00adZ\u00e8y\u0003\u0097"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 32
    sget-object p0, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->output:Ljava/io/OutputStream;

    const-string v1, "\u001d\u0080\u0006\u0081J\u001e\u009b>\u00b6@\u00ec)=\u0086)\u00dfE\u00f6v\u0015"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/zjx/gw2lic/desktop/HidReports;->KEYBOARD:[I

    invoke-static {v3, v1, v5}, Lcom/zjx/gw2lic/desktop/HidReports;->register(ILjava/lang/String;[I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "\u000f\u0093r\u008c6"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 33
    sget-object p0, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->output:Ljava/io/OutputStream;

    const-string v1, "\u001d\u0080\u0006\u0081J\u001e\u009b>\u00b6@\u00ec);\u008c%\u00ceO"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/zjx/gw2lic/desktop/HidReports;->MOUSE:[I

    invoke-static {v4, v1, v5}, Lcom/zjx/gw2lic/desktop/HidReports;->register(ILjava/lang/String;[I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "\u000f\u0093r\u008c6"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    sget-object p0, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->output:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 34
    new-instance p0, Ljava/lang/Thread;

    new-instance v1, Lcom/zjx/gw2lic/desktop/DesktopHidServer$3;

    invoke-direct {v1, v2}, Lcom/zjx/gw2lic/desktop/DesktopHidServer$3;-><init>(Ljava/lang/Process;)V

    const-string v2, "\u001d\u0080\u0006\u008cF2\u00acx\u00aeJ\u00fdz\u0013"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    monitor-exit v0

    return v3

    .line 24
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static stop()V
    .locals 1

    .line 14
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->stop(Ljava/lang/Process;)V

    return-void
.end method

.method private static stop(Ljava/lang/Process;)V
    .locals 4

    .line 16
    sget-object v0, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->process:Ljava/lang/Process;

    if-eqz p0, :cond_0

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 17
    :cond_1
    const-class p0, Lcom/zjx/gw2lic/desktop/DesktopHidServer;

    monitor-enter p0

    .line 18
    :try_start_0
    sget-object v1, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->process:Ljava/lang/Process;

    if-eq v1, v0, :cond_2

    monitor-exit p0

    return-void

    .line 19
    :cond_2
    const/4 v0, 0x0

    sput-object v0, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->process:Ljava/lang/Process;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :try_start_1
    sget-object v1, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->output:Ljava/io/OutputStream;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 21
    :cond_3
    :goto_0
    :try_start_2
    sput-object v0, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->output:Ljava/io/OutputStream;

    sget-object v1, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->owner:Landroid/os/IBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    :try_start_3
    sget-object v2, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->death:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    :cond_4
    :goto_1
    :try_start_4
    sput-object v0, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->owner:Landroid/os/IBinder;

    const/4 v0, -0x1

    sput v0, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->ownerUid:I

    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public static transact(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6

    .line 38
    const v0, 0x474732

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    return v1

    .line 39
    :cond_0
    nop

    .line 41
    const/4 p0, 0x1

    :try_start_0
    const-string v0, "9\u00a8Y\u008ft\u0011\u0090{\u00a8V\u00fdg\u0012\u0091?\u00d4N\u00b9J\u0010\u00aa\"\u00ce@\u00d0\u0096\u0002\u00bd#\u00c1s\u00e8\u0088\u0011\u00b13"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 43
    if-ne v0, p0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->start(Landroid/os/IBinder;)Z

    move-result v1

    goto/16 :goto_1

    .line 44
    :cond_1
    sget v2, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->ownerUid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 45
    if-nez v0, :cond_2

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->stop()V

    move v1, p0

    goto :goto_1

    .line 46
    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->alive()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->touched:J

    goto :goto_1

    .line 47
    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_6

    const/16 v2, 0x80

    if-gt v0, v2, :cond_6

    .line 49
    const-class v2, Lcom/zjx/gw2lic/desktop/DesktopHidServer;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :try_start_1
    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->alive()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lcom/zjx/gw2lic/desktop/HidReports;->report([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 52
    :cond_4
    sget-object p1, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->output:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u000f\u0093r\u008c6"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object p1, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->output:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->touched:J

    move v1, p0

    .line 54
    :cond_5
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 48
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u0012\u008ep\u0081l\u001a\u009c6\u00aa"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 57
    :cond_7
    :goto_1
    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->stop()V

    .line 58
    :goto_2
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_8
    return p0
.end method
