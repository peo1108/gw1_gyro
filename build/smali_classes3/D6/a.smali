.class public LD6/a;
.super LW5/e;
.source "SourceFile"

# interfaces
.implements LW5/a;


# instance fields
.field public i:I

.field public j:I

.field public k:I

.field public l:Lcom/zjx/jyandroid/ForegroundService/UI/a;

.field public m:J

.field public n:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, LW5/e;-><init>()V

    const/16 v0, 0x32

    iput v0, p0, LD6/a;->i:I

    iput v0, p0, LD6/a;->j:I

    const/4 v0, 0x0

    iput v0, p0, LD6/a;->k:I

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->F()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v0

    iput-object v0, p0, LD6/a;->l:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LD6/a;->m:J

    return-void
.end method


# virtual methods
.method public a(Li7/l$a;IFF)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, LD6/a;->e(II)V

    return-void
.end method

.method public c(Li7/l$a;IFF)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, LD6/a;->d(II)V

    return-void
.end method

.method public d(II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, LD6/a;->m:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, LD6/a;->m:J

    const/4 p1, 0x0

    iput-boolean p1, p0, LW5/b;->b:Z

    iget-object p1, p0, LD6/a;->n:Ljava/lang/Thread;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, LD6/a;->n:Ljava/lang/Thread;

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(II)V
    .locals 8

    const/16 p1, 0xff

    if-le p2, p1, :cond_0

    iget-object p1, p0, LD6/a;->l:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->u()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, LW5/e;->h:Lcom/zjx/jyandroid/ForegroundService/MainService;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->u()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/16 p1, 0xa

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-boolean p2, p0, LW5/b;->b:Z

    if-eqz p2, :cond_2

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_2
    const/4 p2, 0x1

    iput-boolean p2, p0, LW5/b;->b:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    iput-object p2, p0, LD6/a;->n:Ljava/lang/Thread;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p2, p0, LD6/a;->k:I

    if-lez p2, :cond_3

    int-to-long v0, p2

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    iput-boolean p1, p0, LW5/b;->b:Z

    return-void

    :cond_3
    :goto_1
    iget-wide v6, p0, LD6/a;->m:J

    :goto_2
    new-instance p2, Lo6/d;

    invoke-direct {p2}, Lo6/d;-><init>()V

    iget-object v0, p0, LW5/d;->f:Ls5/k;

    iget-object v1, p0, LW5/c;->c:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v1

    move v1, v2

    move v2, v3

    move v3, p1

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ls5/k;->m(FFIILo6/d;)I

    move-result v0

    iget v1, p0, LD6/a;->i:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/zjx/jyandroid/base/util/b;->g0(J)Z

    move-result v1

    iget-object v2, p0, LW5/d;->f:Ls5/k;

    iget v3, p2, Lo6/d;->a:F

    iget p2, p2, Lo6/d;->b:F

    invoke-virtual {v2, v0, v3, p2}, Ls5/k;->p(IFF)V

    if-nez v1, :cond_4

    iget p2, p0, LD6/a;->j:I

    int-to-long v0, p2

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/util/b;->g0(J)Z

    :cond_4
    monitor-enter p0

    :try_start_2
    iget-wide v0, p0, LD6/a;->m:J

    cmp-long p2, v6, v0

    if-eqz p2, :cond_5

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_5
    monitor-exit p0

    goto :goto_2

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
