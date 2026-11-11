.class public LD6/o;
.super LW5/e;
.source "SourceFile"

# interfaces
.implements LW5/a;


# instance fields
.field public i:J

.field public j:J

.field public k:Lo6/d;

.field public l:Lcom/zjx/jyandroid/ForegroundService/UI/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, LW5/e;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LD6/o;->j:J

    new-instance v0, Lo6/d;

    invoke-direct {v0}, Lo6/d;-><init>()V

    iput-object v0, p0, LD6/o;->k:Lo6/d;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->F()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v0

    iput-object v0, p0, LD6/o;->l:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    return-void
.end method

.method private i()V
    .locals 9

    iget-object v0, p0, LW5/e;->h:Lcom/zjx/jyandroid/ForegroundService/MainService;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    const/16 v0, 0xa

    goto :goto_0

    :goto_1
    iget-wide v0, p0, LD6/o;->j:J

    const-wide/16 v2, 0x1

    add-long v7, v0, v2

    iput-wide v7, p0, LD6/o;->j:J

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LW5/b;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LW5/d;->f:Ls5/k;

    iget v1, p0, LW5/e;->g:I

    iget-object v2, p0, LD6/o;->k:Lo6/d;

    iget v3, v2, Lo6/d;->a:F

    iget v2, v2, Lo6/d;->b:F

    invoke-virtual {v0, v1, v3, v2}, Ls5/k;->p(IFF)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, LW5/b;->b:Z

    iget-object v1, p0, LW5/d;->f:Ls5/k;

    iget-object v0, p0, LW5/c;->c:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v0

    iget-object v6, p0, LD6/o;->k:Lo6/d;

    move v4, v5

    invoke-virtual/range {v1 .. v6}, Ls5/k;->m(FFIILo6/d;)I

    move-result v0

    iput v0, p0, LW5/e;->g:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-wide v0, p0, LD6/o;->i:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    monitor-enter p0

    :try_start_2
    iget-wide v0, p0, LD6/o;->j:J

    cmp-long v0, v7, v0

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_2
    iget-object v0, p0, LW5/d;->f:Ls5/k;

    iget v1, p0, LW5/e;->g:I

    iget-object v2, p0, LD6/o;->k:Lo6/d;

    iget v3, v2, Lo6/d;->a:F

    iget v2, v2, Lo6/d;->b:F

    invoke-virtual {v0, v1, v3, v2}, Ls5/k;->p(IFF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LW5/b;->b:Z

    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Li7/l$a;IFF)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, LD6/o;->e(II)V

    return-void
.end method

.method public c(Li7/l$a;IFF)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, LD6/o;->d(II)V

    return-void
.end method

.method public d(II)V
    .locals 0

    const/16 p1, 0xff

    if-le p2, p1, :cond_0

    iget-object p1, p0, LD6/o;->l:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->u()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, LD6/o;->i()V

    return-void
.end method

.method public e(II)V
    .locals 0

    return-void
.end method
