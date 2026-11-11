.class public LU5/a;
.super LW5/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LU5/a$h;
    }
.end annotation


# static fields
.field public static j:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public c:LM6/d$b;

.field public d:LM6/d$c;

.field public e:J

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LU5/a$h;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk7/a;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/Thread;

.field public i:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, LU5/a;->j:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LM6/d$b;->X:LM6/d$b;

    iput-object v0, p0, LU5/a;->c:LM6/d$b;

    sget-object v0, LM6/d$c;->X:LM6/d$c;

    iput-object v0, p0, LU5/a;->d:LM6/d$c;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LU5/a;->e:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LU5/a;->f:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LU5/a;->g:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, LU5/a;->h:Ljava/lang/Thread;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LU5/a;->i:J

    return-void
.end method

.method public static synthetic i(LU5/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LU5/a;->f:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic j(LU5/a;)J
    .locals 2

    iget-wide v0, p0, LU5/a;->e:J

    return-wide v0
.end method

.method public static synthetic k(LU5/a;I)V
    .locals 0

    invoke-virtual {p0, p1}, LU5/a;->s(I)V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 5

    iget-wide v0, p0, LU5/a;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, LU5/a;->e:J

    iget-object v0, p0, LU5/a;->d:LM6/d$c;

    sget-object v1, LM6/d$c;->X:LM6/d$c;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, LU5/a;->h:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, LU5/a;->h:Ljava/lang/Thread;

    :cond_0
    iget-object v1, p0, LU5/a;->g:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, LU5/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk7/a;

    sget-object v3, LU5/a;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v4, LU5/a$d;

    invoke-direct {v4, p0, v2, p1}, LU5/a$d;-><init>(LU5/a;Lk7/a;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, LU5/a;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    sget-object v1, LM6/d$c;->Y:LM6/d$c;

    if-ne v0, v1, :cond_4

    iget-wide v0, p0, LU5/a;->i:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, p1}, LU5/a;->s(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public e(II)V
    .locals 13

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, LU5/a;->h:Ljava/lang/Thread;

    iget-wide v0, p0, LU5/a;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, LU5/a;->e:J

    iget-object v0, p0, LU5/a;->d:LM6/d$c;

    sget-object v1, LM6/d$c;->X:LM6/d$c;

    if-ne v0, v1, :cond_7

    const/4 v10, 0x0

    const/4 v6, 0x0

    :goto_0
    iget-object v7, p0, LU5/a;->f:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LU5/a$h;

    iget-object v7, v7, LU5/a$h;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    instance-of v7, v9, Lcom/zjx/gw2lic/Gw2LsSpKey;

    if-eqz v7, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :goto_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, LU5/a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    iget-object v1, p0, LU5/a;->c:LM6/d$b;

    sget-object v2, LM6/d$b;->Y:LM6/d$b;

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, LU5/a;->l()V

    :cond_3
    iget-object v1, p0, LU5/a;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU5/a$h;

    iget-object v1, v1, LU5/a$h;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk7/a;

    sget-boolean v4, LD6/c;->swapActive:Z

    if-eqz v4, :cond_4

    sget-boolean v4, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->lsSpEnabled:Z

    if-eqz v4, :cond_4

    if-eqz v10, :cond_4

    instance-of v4, v2, Lcom/zjx/gw2lic/Gw2LsSpKey;

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    iget-object v3, p0, LU5/a;->g:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, LU5/a;->g:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, LU5/a;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v5, LU5/a$b;

    invoke-direct {v5, p0, v2, p1, p2}, LU5/a$b;-><init>(LU5/a;Lk7/a;II)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v3

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, LU5/a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_6

    goto :goto_4

    :cond_6
    iget-object v1, p0, LU5/a;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU5/a$h;

    iget v1, v1, LU5/a$h;->b:I

    int-to-long v1, v1

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_7
    sget-object p1, LM6/d$c;->Y:LM6/d$c;

    if-ne v0, p1, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, LU5/a;->i:J

    iget-object p1, p0, LU5/a;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_8

    iget-wide p1, p0, LU5/a;->e:J

    sget-object v0, LU5/a;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LU5/a$c;

    invoke-direct {v1, p0, p1, p2}, LU5/a$c;-><init>(LU5/a;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :catch_0
    :cond_8
    :goto_4
    return-void
.end method

.method public final l()V
    .locals 5

    iget-object v0, p0, LU5/a;->g:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LU5/a;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk7/a;

    sget-object v3, LU5/a;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v4, LU5/a$e;

    invoke-direct {v4, p0, v2}, LU5/a$e;-><init>(LU5/a;Lk7/a;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, LU5/a;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public m()LM6/d$b;
    .locals 1

    iget-object v0, p0, LU5/a;->c:LM6/d$b;

    return-object v0
.end method

.method public n()LM6/d$c;
    .locals 1

    iget-object v0, p0, LU5/a;->d:LM6/d$c;

    return-object v0
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LU5/a$h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LU5/a;->f:Ljava/util/List;

    return-object v0
.end method

.method public p(LM6/d$b;)V
    .locals 0

    iput-object p1, p0, LU5/a;->c:LM6/d$b;

    return-void
.end method

.method public q(LM6/d$c;)V
    .locals 0

    iput-object p1, p0, LU5/a;->d:LM6/d$c;

    return-void
.end method

.method public r(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LU5/a$h;",
            ">;)V"
        }
    .end annotation

    new-instance v0, LU5/a$a;

    invoke-direct {v0, p0}, LU5/a$a;-><init>(LU5/a;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object p1, p0, LU5/a;->f:Ljava/util/List;

    return-void
.end method

.method public final s(I)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, LU5/a;->i:J

    sub-long/2addr v0, v2

    const-wide/16 v2, -0x1

    iput-wide v2, p0, LU5/a;->i:J

    iget-object v2, p0, LU5/a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LU5/a$h;

    iget v5, v4, LU5/a$h;->b:I

    int-to-long v5, v5

    cmp-long v5, v5, v0

    if-lez v5, :cond_0

    goto :goto_1

    :cond_0
    move-object v3, v4

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v3, :cond_4

    iget-object v0, v3, LU5/a$h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk7/a;

    iget-object v2, p0, LU5/a;->g:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, LU5/a;->g:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, LU5/a;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v4, LU5/a$f;

    invoke-direct {v4, p0, v1}, LU5/a$f;-><init>(LU5/a;Lk7/a;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    const-wide/16 v0, 0x32

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    iget-object v0, p0, LU5/a;->g:Ljava/util/List;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, LU5/a;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk7/a;

    sget-object v3, LU5/a;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v4, LU5/a$g;

    invoke-direct {v4, p0, v2, p1}, LU5/a$g;-><init>(LU5/a;Lk7/a;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_3
    iget-object p1, p0, LU5/a;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    monitor-exit v0

    goto :goto_5

    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_4
    :goto_5
    return-void
.end method
