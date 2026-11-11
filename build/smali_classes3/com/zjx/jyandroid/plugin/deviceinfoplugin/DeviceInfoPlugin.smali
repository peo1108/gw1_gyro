.class public Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;
.super LU6/a;
.source "SourceFile"

# interfaces
.implements LU6/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin$c;,
        Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin$d;
    }
.end annotation


# static fields
.field public static n6:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public V1:Ljava/util/Timer;

.field public Z:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;

.field public k6:Landroid/os/Handler;

.field public l6:Z

.field public m6:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->n6:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, LU6/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->l6:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->m6:J

    const-string v0, "9\u00a8Y\u008ft\u0011\u0090{\u00a6J\u00ea`\u0015\u0086\u0019\u00d3L\u00f8t\u001d\u00ab,\u00d1K"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LU6/a;->l(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic n(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$b;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->u(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$b;)I

    move-result p0

    return p0
.end method

.method public static synthetic o(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;)Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->Z:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;

    return-object p0
.end method

.method public static synthetic p(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;)J
    .locals 2

    iget-wide v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->m6:J

    return-wide v0
.end method

.method public static synthetic q(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->k6:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic r(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin$c;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->s(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin$c;)V

    return-void
.end method


# virtual methods
.method public d(I)I
    .locals 0

    sget p1, Lcom/zjx/jyandroid/e$h;->E:I

    return p1
.end method

.method public g(I)Ljava/lang/String;
    .locals 0

    sget p1, Lcom/zjx/jyandroid/e$k;->G3:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->B(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k()Landroid/os/IBinder;
    .locals 1
    .annotation build Li/P;
    .end annotation

    new-instance v0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin$d;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin$d;-><init>(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;)V

    return-object v0
.end method

.method public declared-synchronized onCreate()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, LU6/c;->r()LU6/c;

    move-result-object v0

    invoke-virtual {v0, p0}, LU6/c;->q(LU6/e;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->v()V
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

.method public declared-synchronized onDestroy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {}, LU6/c;->r()LU6/c;

    move-result-object v0

    invoke-virtual {v0, p0}, LU6/c;->x(LU6/e;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->x()V
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

.method public final s(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin$c;)V
    .locals 2

    sget-object v0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->n6:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/16 v1, 0xbb8

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->n6:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->n6:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public t(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin$c;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->n6:Ljava/util/Queue;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    return-object p1

    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p1

    if-gez v2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int p1, v2, p1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, p1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final u(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$b;)I
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 p1, 0x1388

    return p1

    :cond_0
    const/16 p1, 0x4b0

    return p1

    :cond_1
    const/16 p1, 0xbb8

    return p1
.end method

.method public declared-synchronized v()V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->l6:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;

    invoke-direct {v0}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;-><init>()V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->d()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->l6:Z

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->k6:Landroid/os/Handler;

    const-string v2, "6\u00a6M\u00ce{\u000f\u00b7<\u00acI\u00f0h\u0002\u0086\""

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    sget v3, Lcom/zjx/jyandroid/e$h;->D:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;

    iput-object v2, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->Z:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x15

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v5

    const/16 v7, 0x8

    const/4 v8, -0x3

    const/16 v6, 0x7f6

    const/4 v4, -0x2

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v0}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->a()Landroid/graphics/Point;

    move-result-object v3

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$h;->g()Landroid/util/Size;

    move-result-object v4

    iget v5, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    if-gt v5, v6, :cond_2

    iget v5, v3, Landroid/graphics/Point;->x:I

    if-ltz v5, :cond_2

    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-gt v5, v4, :cond_2

    iget v4, v3, Landroid/graphics/Point;->y:I

    if-gez v4, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v4, 0x64

    iput v4, v3, Landroid/graphics/Point;->x:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    :cond_3
    iget v4, v3, Landroid/graphics/Point;->x:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v3, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->Z:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;

    invoke-virtual {v3, v2}, Lo6/b;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    invoke-static {}, LY5/b;->v()LY5/b;

    move-result-object v3

    iget-object v4, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->Z:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;

    invoke-virtual {v3, v4, v2}, LY5/b;->e(Lo6/b;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->Z:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->e()Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lo6/b;->setDraggable(Z)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->b()Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->u(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$b;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->w(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->Z:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->K0()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized w(I)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->l6:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->V1:Ljava/util/Timer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;

    invoke-direct {v0}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;-><init>()V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->V1:Ljava/util/Timer;

    new-instance v2, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin$a;

    invoke-direct {v2, p0, v0}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin$a;-><init>(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;)V

    const-wide/16 v3, 0x0

    int-to-long v5, p1

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized x()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->l6:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->l6:Z

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->Z:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;

    if-eqz v0, :cond_1

    invoke-static {}, LY5/b;->v()LY5/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->Z:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;

    invoke-virtual {v0, v1}, LY5/b;->s(Lo6/b;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;->V1:Ljava/util/Timer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
