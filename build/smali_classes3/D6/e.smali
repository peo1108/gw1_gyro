.class public LD6/e;
.super LW5/e;
.source "SourceFile"

# interfaces
.implements LW5/a;


# instance fields
.field public final i:LR5/a;

.field public j:Lo6/d;

.field public k:Ljava/util/concurrent/locks/ReentrantLock;

.field public l:I

.field public m:Lcom/zjx/jyandroid/ForegroundService/UI/a;

.field public n:Ljava/util/Random;

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LW5/e;-><init>()V

    new-instance v0, Lo6/d;

    invoke-direct {v0}, Lo6/d;-><init>()V

    iput-object v0, p0, LD6/e;->j:Lo6/d;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, LD6/e;->k:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x0

    iput v0, p0, LD6/e;->l:I

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->F()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v0

    iput-object v0, p0, LD6/e;->m:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, LD6/e;->n:Ljava/util/Random;

    new-instance v0, LD6/e$a;

    invoke-direct {v0, p0}, LD6/e$a;-><init>(LD6/e;)V

    iput-object v0, p0, LD6/e;->o:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, LD6/e;->p:Ljava/lang/Thread;

    invoke-static {}, LR5/a;->w()LR5/a;

    move-result-object v0

    iput-object v0, p0, LD6/e;->i:LR5/a;

    return-void
.end method

.method public static synthetic i(LD6/e;)I
    .locals 0

    iget p0, p0, LW5/e;->g:I

    return p0
.end method

.method public static synthetic j(LD6/e;)Ls5/k;
    .locals 0

    iget-object p0, p0, LW5/d;->f:Ls5/k;

    return-object p0
.end method

.method public static synthetic k(LD6/e;)LR5/a;
    .locals 0

    iget-object p0, p0, LD6/e;->i:LR5/a;

    return-object p0
.end method


# virtual methods
.method public a(Li7/l$a;IFF)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, LD6/e;->e(II)V

    return-void
.end method

.method public c(Li7/l$a;IFF)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, LD6/e;->d(II)V

    return-void
.end method

.method public d(II)V
    .locals 2

    iget-object p1, p0, LD6/e;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean p1, p0, LW5/b;->b:Z

    if-nez p1, :cond_0

    iget-object p1, p0, LD6/e;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    iget-object p1, p0, LD6/e;->p:Ljava/lang/Thread;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    iget-object p1, p0, LD6/e;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1
    iget-object p1, p0, LW5/d;->f:Ls5/k;

    iget p2, p0, LW5/e;->g:I

    iget-object v0, p0, LD6/e;->j:Lo6/d;

    iget v1, v0, Lo6/d;->a:F

    iget v0, v0, Lo6/d;->b:F

    invoke-virtual {p1, p2, v1, v0}, Ls5/k;->p(IFF)V

    const/4 p1, 0x0

    iput-boolean p1, p0, LW5/b;->b:Z

    iget-object p1, p0, LD6/e;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public e(II)V
    .locals 6

    invoke-super {p0, p1, p2}, LW5/b;->e(II)V

    iget-object p1, p0, LD6/e;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean p1, p0, LW5/b;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, LD6/e;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    const/16 p1, 0xff

    if-le p2, p1, :cond_1

    iget-object p1, p0, LD6/e;->m:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->u()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, LD6/e;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, LW5/b;->b:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, LD6/e;->p:Ljava/lang/Thread;

    iget p1, p0, LD6/e;->l:I

    const/4 p2, 0x0

    if-lez p1, :cond_2

    iget-object p1, p0, LD6/e;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :try_start_0
    iget p1, p0, LD6/e;->l:I

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, LD6/e;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    goto :goto_0

    :catch_0
    iput-object p2, p0, LD6/e;->p:Ljava/lang/Thread;

    const/4 p1, 0x0

    iput-boolean p1, p0, LW5/b;->b:Z

    return-void

    :cond_2
    :goto_0
    invoke-static {}, LR5/a;->w()LR5/a;

    move-result-object p1

    invoke-virtual {p1}, LR5/a;->m()I

    move-result v4

    iget-object v0, p0, LW5/d;->f:Ls5/k;

    iget-object p1, p0, LW5/c;->c:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, p1

    iget-object v5, p0, LD6/e;->j:Lo6/d;

    move v3, v4

    invoke-virtual/range {v0 .. v5}, Ls5/k;->m(FFIILo6/d;)I

    move-result p1

    iput p1, p0, LW5/e;->g:I

    iput-object p2, p0, LD6/e;->p:Ljava/lang/Thread;

    iget-object p1, p0, LD6/e;->i:LR5/a;

    invoke-virtual {p1}, LR5/a;->k()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p2, p0, LD6/e;->o:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p2, p0, LD6/e;->o:Ljava/lang/Runnable;

    iget-object v0, p0, LD6/e;->i:LR5/a;

    invoke-virtual {v0}, LR5/a;->l()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    iget-object p1, p0, LD6/e;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
