.class public LD6/h;
.super LW5/e;
.source "SourceFile"

# interfaces
.implements LW5/a;


# instance fields
.field public i:I

.field public j:I

.field public k:Ljava/util/concurrent/locks/ReentrantLock;

.field public l:Lcom/zjx/jyandroid/ForegroundService/UI/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LW5/e;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LD6/h;->i:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, LD6/h;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->F()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v0

    iput-object v0, p0, LD6/h;->l:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    return-void
.end method


# virtual methods
.method public a(Li7/l$a;IFF)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, LD6/h;->e(II)V

    return-void
.end method

.method public c(Li7/l$a;IFF)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, LD6/h;->d(II)V

    return-void
.end method

.method public d(II)V
    .locals 0

    return-void
.end method

.method public e(II)V
    .locals 6

    iget-object p1, p0, LD6/h;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean p1, p0, LW5/b;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, LD6/h;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    const/16 p1, 0xff

    if-le p2, p1, :cond_1

    iget-object p1, p0, LD6/h;->l:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->u()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, LD6/h;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, LW5/b;->b:Z

    iget p1, p0, LD6/h;->i:I

    const/4 p2, 0x0

    if-lez p1, :cond_2

    iget-object p1, p0, LD6/h;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :try_start_0
    iget p1, p0, LD6/h;->i:I

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, LD6/h;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    goto :goto_0

    :catch_0
    iput-boolean p2, p0, LW5/b;->b:Z

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, LW5/e;->h:Lcom/zjx/jyandroid/ForegroundService/MainService;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->u()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x4

    :goto_1
    move v5, p1

    goto :goto_2

    :cond_3
    const/16 p1, 0xa

    goto :goto_1

    :goto_2
    iget-object p1, p0, LW5/d;->f:Ls5/k;

    iget-object v0, p0, LW5/c;->c:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0, v5, v5}, Ls5/k;->l(FFII)I

    move-result v1

    :try_start_1
    iget p1, p0, LD6/h;->j:I

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object v0, p0, LW5/d;->f:Ls5/k;

    iget-object p1, p0, LW5/c;->c:Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, p1

    move v4, v5

    invoke-virtual/range {v0 .. v5}, Ls5/k;->r(IFFII)V

    iput-boolean p2, p0, LW5/b;->b:Z

    iget-object p1, p0, LD6/h;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
