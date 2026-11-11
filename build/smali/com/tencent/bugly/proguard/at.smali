.class public final Lcom/tencent/bugly/proguard/at;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static D:Lcom/tencent/bugly/proguard/at; = null

.field public static a:I = 0x0

.field public static b:Z = false

.field public static d:I = 0x2

.field public static e:Z = false

.field public static f:I = 0x5000

.field public static g:I = 0xbb8

.field public static h:I = 0x5000

.field public static i:J = 0xc800000L

.field public static j:J = 0x240c8400L

.field public static k:Ljava/lang/String; = null

.field public static l:Z = false

.field public static m:Ljava/lang/String; = null

.field public static n:I = 0x1388

.field public static o:Z = true

.field public static p:Z

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;


# instance fields
.field public A:Ljava/lang/Boolean;

.field public B:I

.field public C:Z

.field public final c:Landroid/content/Context;

.field public final s:Lcom/tencent/bugly/proguard/as;

.field public final t:Lcom/tencent/bugly/proguard/av;

.field public final u:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

.field public final v:Lcom/tencent/bugly/proguard/ac;

.field public final w:Lcom/tencent/bugly/proguard/ak;

.field public final x:Lcom/tencent/bugly/proguard/ay;

.field public y:Lcom/tencent/bugly/BuglyStrategy$a;

.field public z:Lcom/tencent/bugly/proguard/aw;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/ak;ZLcom/tencent/bugly/BuglyStrategy$a;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f

    iput v0, p0, Lcom/tencent/bugly/proguard/at;->B:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/at;->C:Z

    const/16 v0, 0x3ec

    sput v0, Lcom/tencent/bugly/proguard/at;->a:I

    invoke-static {p1}, Lcom/tencent/bugly/proguard/ap;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/at;->c:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/bugly/proguard/ac;->a()Lcom/tencent/bugly/proguard/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/at;->v:Lcom/tencent/bugly/proguard/ac;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/at;->w:Lcom/tencent/bugly/proguard/ak;

    iput-object p4, p0, Lcom/tencent/bugly/proguard/at;->y:Lcom/tencent/bugly/BuglyStrategy$a;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/bugly/proguard/at;->z:Lcom/tencent/bugly/proguard/aw;

    invoke-static {}, Lcom/tencent/bugly/proguard/ai;->a()Lcom/tencent/bugly/proguard/ai;

    move-result-object v3

    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object v4

    new-instance v8, Lcom/tencent/bugly/proguard/as;

    move-object v1, v8

    move-object v2, p1

    move-object v5, v0

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/as;-><init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/ai;Lcom/tencent/bugly/proguard/w;Lcom/tencent/bugly/proguard/ac;Lcom/tencent/bugly/BuglyStrategy$a;)V

    iput-object v8, p0, Lcom/tencent/bugly/proguard/at;->s:Lcom/tencent/bugly/proguard/as;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/aa;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/aa;

    move-result-object p4

    new-instance v1, Lcom/tencent/bugly/proguard/av;

    invoke-direct {v1, p1, v8, v0, p4}, Lcom/tencent/bugly/proguard/av;-><init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/as;Lcom/tencent/bugly/proguard/ac;Lcom/tencent/bugly/proguard/aa;)V

    iput-object v1, p0, Lcom/tencent/bugly/proguard/at;->t:Lcom/tencent/bugly/proguard/av;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p4

    move-object v3, v8

    move-object v4, v0

    move-object v5, p2

    move v6, p3

    invoke-static/range {v1 .. v7}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance(Landroid/content/Context;Lcom/tencent/bugly/proguard/aa;Lcom/tencent/bugly/proguard/as;Lcom/tencent/bugly/proguard/ac;Lcom/tencent/bugly/proguard/ak;ZLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object p3

    iput-object p3, p0, Lcom/tencent/bugly/proguard/at;->u:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    iput-object p3, p4, Lcom/tencent/bugly/proguard/aa;->N:Lcom/tencent/bugly/proguard/q;

    sget-object p3, Lcom/tencent/bugly/proguard/ay;->f:Lcom/tencent/bugly/proguard/ay;

    if-nez p3, :cond_0

    new-instance p3, Lcom/tencent/bugly/proguard/ay;

    move-object v1, p3

    move-object v2, p1

    move-object v3, v0

    move-object v4, p4

    move-object v5, p2

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/ay;-><init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/ac;Lcom/tencent/bugly/proguard/aa;Lcom/tencent/bugly/proguard/ak;Lcom/tencent/bugly/proguard/as;)V

    sput-object p3, Lcom/tencent/bugly/proguard/ay;->f:Lcom/tencent/bugly/proguard/ay;

    :cond_0
    sget-object p1, Lcom/tencent/bugly/proguard/ay;->f:Lcom/tencent/bugly/proguard/ay;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/at;->x:Lcom/tencent/bugly/proguard/ay;

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/proguard/at;
    .locals 2

    const-class v0, Lcom/tencent/bugly/proguard/at;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/at;->D:Lcom/tencent/bugly/proguard/at;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;ZLcom/tencent/bugly/BuglyStrategy$a;)Lcom/tencent/bugly/proguard/at;
    .locals 3

    const-class v0, Lcom/tencent/bugly/proguard/at;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/at;->D:Lcom/tencent/bugly/proguard/at;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/tencent/bugly/proguard/at;

    invoke-static {}, Lcom/tencent/bugly/proguard/ak;->a()Lcom/tencent/bugly/proguard/ak;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/tencent/bugly/proguard/at;-><init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/ak;ZLcom/tencent/bugly/BuglyStrategy$a;)V

    sput-object v1, Lcom/tencent/bugly/proguard/at;->D:Lcom/tencent/bugly/proguard/at;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    sget-object p0, Lcom/tencent/bugly/proguard/at;->D:Lcom/tencent/bugly/proguard/at;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static synthetic a(Lcom/tencent/bugly/proguard/at;)Lcom/tencent/bugly/proguard/av;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/bugly/proguard/at;->t:Lcom/tencent/bugly/proguard/av;

    return-object p0
.end method

.method public static synthetic b(Lcom/tencent/bugly/proguard/at;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/bugly/proguard/at;->c:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    .line 9
    invoke-static {}, Lcom/tencent/bugly/proguard/ak;->a()Lcom/tencent/bugly/proguard/ak;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/proguard/at$4;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/proguard/at$4;-><init>(Lcom/tencent/bugly/proguard/at;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/bugly/proguard/ak;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->s:Lcom/tencent/bugly/proguard/as;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/as;->b(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    return-void
.end method

.method public final declared-synchronized a(ZZZ)V
    .locals 1

    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->u:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->testNativeCrash(ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->t:Lcom/tencent/bugly/proguard/av;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/av;->a()V

    .line 3
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/at;->e()V

    .line 4
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/at;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->t:Lcom/tencent/bugly/proguard/av;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/av;->b()V

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/at;->d()V

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/at;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->u:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->u:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    return-void
.end method

.method public final f()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/bugly/proguard/at$1;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/proguard/at$1;-><init>(Lcom/tencent/bugly/proguard/at;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->x:Lcom/tencent/bugly/proguard/ay;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ay;->b(Z)V

    return-void
.end method

.method public final g()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/bugly/proguard/at$2;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/proguard/at$2;-><init>(Lcom/tencent/bugly/proguard/at;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->x:Lcom/tencent/bugly/proguard/ay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ay;->b(Z)V

    return-void
.end method

.method public final declared-synchronized h()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_1

    :try_start_0
    const-string v0, "try main sleep for make a test anr! try:%d/30 , kill it if you don\'t want to wait!"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/ap;->b(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->x:Lcom/tencent/bugly/proguard/ay;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/ay;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    iget v0, p0, Lcom/tencent/bugly/proguard/at;->B:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k()Z
    .locals 1

    iget v0, p0, Lcom/tencent/bugly/proguard/at;->B:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
