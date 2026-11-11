.class public Lcom/zjx/jyandroid/Extensions/pubg/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/Extensions/pubg/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/pubg/i$d;,
        Lcom/zjx/jyandroid/Extensions/pubg/i$c;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Lcom/zjx/jyandroid/ForegroundService/UI/a;

.field public c:Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;

.field public d:Ljava/util/concurrent/ExecutorService;

.field public e:Lcom/zjx/jyandroid/Extensions/pubg/i$d;

.field public f:Lcom/zjx/jyandroid/Extensions/pubg/g;

.field public g:Landroid/os/Handler;

.field public h:Z

.field public i:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

.field public j:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

.field public k:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

.field public l:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

.field public m:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

.field public n:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

.field public o:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

.field public p:Landroid/os/HandlerThread;

.field public q:Landroid/os/Handler;

.field public r:Ljava/lang/Thread;

.field public s:Z


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/g;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->a:Z

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->g:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->h:Z

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->i:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$h;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->j:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$c;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->k:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$d;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->l:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$b;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->m:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->n:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->o:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->r:Ljava/lang/Thread;

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->s:Z

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->y()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->b:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->d:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->f:Lcom/zjx/jyandroid/Extensions/pubg/g;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/g;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/i;->A()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Please load rcConfigDataProcessor first"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a(Lcom/zjx/jyandroid/Extensions/pubg/i;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/i;->x()V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->f:Lcom/zjx/jyandroid/Extensions/pubg/g;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/g;->f:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->l:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->k:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->j:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->n:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->i:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->m:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->o:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    return-void
.end method

.method public b(I)V
    .locals 13

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->o:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->c()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    int-to-double v7, p1

    add-double/2addr v7, v5

    const-wide/16 v9, 0x0

    cmpl-double p1, v5, v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    if-nez p1, :cond_0

    move-wide v5, v11

    goto :goto_0

    :cond_0
    div-double v5, v7, v5

    :goto_0
    cmpl-double p1, v5, v9

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move-wide v11, v5

    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move p1, v4

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    mul-double/2addr v5, v11

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    iget-object p1, v0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->n:Lcom/zjx/jyandroid/Extensions/pubg/g$d;

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1, v1}, Lcom/zjx/jyandroid/Extensions/pubg/g$d;->e(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->q:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->q:Landroid/os/Handler;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/i$b;

    invoke-direct {v1, p0, v0}, Lcom/zjx/jyandroid/Extensions/pubg/i$b;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/i;Lcom/zjx/jyandroid/Extensions/pubg/g$f;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public c()Lcom/zjx/jyandroid/Extensions/pubg/g$f;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->o:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    return-object v0
.end method

.method public d()D
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->o:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->d()Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    move-result-object v0

    iget-wide v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/g$g;->b:D

    return-wide v0
.end method

.method public e()Lcom/zjx/jyandroid/Extensions/pubg/c$b;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->m:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    return-object v0
.end method

.method public f()Lcom/zjx/jyandroid/Extensions/pubg/c$c;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->k:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    return-object v0
.end method

.method public g()Lcom/zjx/jyandroid/Extensions/pubg/c$d;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->l:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    return-object v0
.end method

.method public getRecoilControlValueNodeRoot()Lcom/zjx/jyandroid/Extensions/pubg/g$g;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->o:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->d()Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/zjx/jyandroid/Extensions/pubg/c$g;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->i:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    return-object v0
.end method

.method public i()Lcom/zjx/jyandroid/Extensions/pubg/c$h;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->j:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    return-object v0
.end method

.method public j()Lcom/zjx/jyandroid/Extensions/pubg/c$l;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->n:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->s:Z

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->h:Z

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->a:Z

    return v0
.end method

.method public n(Lcom/zjx/jyandroid/Extensions/pubg/c$d;Lcom/zjx/jyandroid/Extensions/pubg/c$c;Lcom/zjx/jyandroid/Extensions/pubg/c$h;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->l:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->k:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    iput-object p3, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->j:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/i;->A()V

    return-void
.end method

.method public declared-synchronized o(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    :try_start_1
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->b:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->m()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->e:Lcom/zjx/jyandroid/Extensions/pubg/i$d;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->a()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_0
    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/i$d;

    invoke-direct {v1, p0, p0}, Lcom/zjx/jyandroid/Extensions/pubg/i$d;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/i;Lcom/zjx/jyandroid/Extensions/pubg/h;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->e:Lcom/zjx/jyandroid/Extensions/pubg/i$d;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->h:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->g:Landroid/os/Handler;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/i$a;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/i$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/i;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->e:Lcom/zjx/jyandroid/Extensions/pubg/i$d;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->a()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->e:Lcom/zjx/jyandroid/Extensions/pubg/i$d;

    :cond_4
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/i;->z()V

    :cond_5
    :goto_1
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->s:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public p(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->h:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->s:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/i;->x()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/i;->z()V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized q(Lcom/zjx/jyandroid/Extensions/pubg/c$b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->m:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->o:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->b:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->o:Lcom/zjx/jyandroid/Extensions/pubg/g$f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public declared-synchronized r(Lcom/zjx/jyandroid/Extensions/pubg/c$c;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->k:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/i;->A()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public declared-synchronized s(Lcom/zjx/jyandroid/Extensions/pubg/c$d;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->l:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/i;->A()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public declared-synchronized t(Lcom/zjx/jyandroid/Extensions/pubg/c$g;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->h:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->d:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->i:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->e:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->i:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->o:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->b:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->b:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->m:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->o:Lcom/zjx/jyandroid/Extensions/pubg/g$f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized u(Lcom/zjx/jyandroid/Extensions/pubg/c$h;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->j:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/i;->A()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public declared-synchronized v(Lcom/zjx/jyandroid/Extensions/pubg/c$l;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->n:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->o:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->b:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->b:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->b:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->i:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->m:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->o:Lcom/zjx/jyandroid/Extensions/pubg/g$f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public w()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->a:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "updateConfigThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->p:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->p:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->q:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->a:Z

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final declared-synchronized x()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->r:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lg/a;

    invoke-direct {v0}, Lg/a;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->r:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->c:Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;

    iput-object v1, v0, Lg/a;->a:Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public y()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->a:Z

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->q:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->p:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final declared-synchronized z()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->r:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i;->r:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
