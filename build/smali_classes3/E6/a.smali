.class public LE6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/a$U;
.implements Lu6/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LE6/a$k;,
        LE6/a$l;
    }
.end annotation


# static fields
.field public static v6:LE6/a;


# instance fields
.field public V1:Landroid/os/Handler;

.field public X:I

.field public final Y:I

.field public Z:Landroid/os/HandlerThread;

.field public k6:LE6/a$k;

.field public l6:Landroid/os/Handler;

.field public m6:Ljava/lang/Object;

.field public n6:Z

.field public o6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList<",
            "Lk7/a;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public p6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList<",
            "Lk7/a;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public q6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList<",
            "Lk7/a;",
            ">;>;"
        }
    .end annotation
.end field

.field public r6:Ljava/util/concurrent/ExecutorService;

.field public s6:Z

.field public t6:Ljava/util/concurrent/ExecutorService;

.field public u6:LX5/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LE6/a;->X:I

    const/4 v1, 0x3

    iput v1, p0, LE6/a;->Y:I

    new-instance v1, LE6/a$k;

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, LE6/a$k;-><init>(LE6/a;Landroid/content/Context;)V

    iput-object v1, p0, LE6/a;->k6:LE6/a$k;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, LE6/a;->l6:Landroid/os/Handler;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, LE6/a;->m6:Ljava/lang/Object;

    iput-boolean v0, p0, LE6/a;->n6:Z

    iput-boolean v0, p0, LE6/a;->s6:Z

    const/4 v0, 0x0

    iput-object v0, p0, LE6/a;->u6:LX5/a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LE6/a;->o6:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LE6/a;->p6:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LE6/a;->q6:Ljava/util/Map;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, LE6/a;->r6:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/a;->J()Lcom/zjx/jyandroid/ForegroundService/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/a;->A(Lcom/zjx/jyandroid/ForegroundService/a$U;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "keyInputManagerHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LE6/a;->Z:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, LE6/a;->Z:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LE6/a;->V1:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(LE6/a;)I
    .locals 0

    iget p0, p0, LE6/a;->X:I

    return p0
.end method

.method public static synthetic b(LE6/a;I)I
    .locals 0

    iput p1, p0, LE6/a;->X:I

    return p1
.end method

.method public static synthetic d(LE6/a;)Z
    .locals 0

    iget-boolean p0, p0, LE6/a;->n6:Z

    return p0
.end method

.method public static synthetic e(LE6/a;FF)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LE6/a;->q(FF)V

    return-void
.end method

.method public static w()LE6/a;
    .locals 1

    sget-object v0, LE6/a;->v6:LE6/a;

    if-nez v0, :cond_0

    new-instance v0, LE6/a;

    invoke-direct {v0}, LE6/a;-><init>()V

    sput-object v0, LE6/a;->v6:LE6/a;

    :cond_0
    sget-object v0, LE6/a;->v6:LE6/a;

    return-object v0
.end method


# virtual methods
.method public L(Ljava/util/LinkedList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Li7/c;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, LE6/a;->V1:Landroid/os/Handler;

    new-instance v1, LE6/a$a;

    invoke-direct {v1, p0, p1}, LE6/a$a;-><init>(LE6/a;Ljava/util/LinkedList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public c(Lcom/zjx/jyandroid/ForegroundService/a$e0;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, LE6/a;->m6:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual/range {p0 .. p0}, LE6/a;->u()V

    const/4 v3, 0x0

    if-nez v0, :cond_0

    monitor-exit v2

    return v3

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    invoke-static {}, LU6/c;->r()LU6/c;

    move-result-object v4

    invoke-virtual {v4}, LU6/c;->k()Ljava/util/List;

    move-result-object v4

    new-instance v5, LC6/a;

    invoke-direct {v5}, LC6/a;-><init>()V

    invoke-interface {v4, v3, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/a$e0;->b:Ljava/util/Map;

    const-string v6, "components"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v8, Lt7/a;

    invoke-direct {v8}, Lt7/a;-><init>()V

    invoke-virtual {v8, v0}, Lt7/a;->d(Ljava/util/Map;)V

    iget-object v8, v8, Lt7/a;->Z:Ljava/lang/String;

    invoke-static {}, LK6/d;->O0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v8, LM6/d;

    invoke-direct {v8}, LM6/d;-><init>()V

    invoke-virtual {v8, v0}, LM6/d;->d(Ljava/util/Map;)V

    new-instance v9, Lt7/d;

    invoke-direct {v9}, Lt7/d;-><init>()V

    invoke-virtual {v9, v0}, Lt7/d;->d(Ljava/util/Map;)V

    iget-object v0, v9, Lt7/d;->X:Lh7/b;

    invoke-virtual {v0}, Lh7/b;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v10, LU5/a;

    invoke-direct {v10}, LU5/a;-><init>()V

    iget-object v0, v8, LM6/d;->Z:LM6/d$c;

    iput-object v0, v10, LU5/a;->d:LM6/d$c;

    iget-object v0, v8, LM6/d;->Y:LM6/d$b;

    iput-object v0, v10, LU5/a;->c:LM6/d$b;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v8, LM6/d;->X:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, LM6/d$a;

    new-instance v14, LU5/a$h;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    iget v0, v13, LM6/d$a;->b:I

    iput v0, v14, LU5/a$h;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v14, LU5/a$h;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll7/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, v13, LM6/d$a;->a:Ljava/util/Map;

    invoke-interface {v0, v3}, Ll7/a;->b(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error when adding key action node : "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LA6/d;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_3

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll7/a$a;

    iget-object v12, v9, Lt7/d;->X:Lh7/b;

    move-object/from16 v16, v0

    iget-object v0, v3, Ll7/a$a;->a:Lh7/b;

    invoke-virtual {v12, v0}, Lh7/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_5
    move-object/from16 v0, v16

    goto :goto_4

    :cond_4
    iget-object v0, v14, LU5/a$h;->a:Ljava/util/List;

    iget-object v3, v3, Ll7/a$a;->b:Lk7/a;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {v10, v11}, LU5/a;->r(Ljava/util/List;)V

    new-instance v0, Ll7/a$a;

    iget-object v3, v9, Lt7/d;->X:Lh7/b;

    const/4 v8, 0x0

    invoke-direct {v0, v3, v10, v8}, Ll7/a$a;-><init>(Lh7/b;Lk7/a;Lj7/a;)V

    invoke-virtual {v1, v0}, LE6/a;->g(Ll7/a$a;)V

    invoke-interface {v7}, Ljava/util/ListIterator;->remove()V

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_8
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll7/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v0, v6}, Ll7/a;->b(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v1, v0}, LE6/a;->h(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error when adding key action node : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LA6/d;->b(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll7/a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-interface {v0}, Ll7/a;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v1, v0}, LE6/a;->h(Ljava/util/List;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    :catch_2
    move-exception v0

    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when adding key action node : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LA6/d;->b(Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    invoke-static {}, LB6/a;->e()LB6/a;

    move-result-object v0

    iget-object v3, v5, LC6/a;->b:Ln7/a;

    invoke-virtual {v0, v3}, LB6/a;->c(Ln7/a;)V

    invoke-static {}, LB6/a;->e()LB6/a;

    move-result-object v0

    iget-object v3, v5, LC6/a;->a:LH6/a;

    invoke-virtual {v0, v3}, LB6/a;->d(LH6/a;)V

    monitor-exit v2

    const/4 v2, 0x0

    return v2

    :goto_8
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method public f()V
    .locals 4

    new-instance v0, LE6/a$c;

    invoke-direct {v0, p0}, LE6/a$c;-><init>(LE6/a;)V

    new-instance v1, Lh7/b;

    const/16 v2, 0x42

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lh7/b;-><init>(II)V

    invoke-virtual {p0, v0, v1}, LE6/a;->i(Lk7/a;Lh7/b;)V

    return-void
.end method

.method public final g(Ll7/a$a;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Ll7/a$a;->a:Lh7/b;

    if-eqz v0, :cond_3

    iget-object v1, p1, Ll7/a$a;->b:Lk7/a;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1, v0}, LE6/a;->i(Lk7/a;Lh7/b;)V

    invoke-static {}, LA6/e;->a0()LA6/e;

    move-result-object v0

    invoke-virtual {v0}, LA6/e;->p()I

    move-result v0

    iget-object v1, p1, Ll7/a$a;->c:Lj7/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, LE6/a;->l6:Landroid/os/Handler;

    new-instance v2, LE6/a$e;

    invoke-direct {v2, p0, p1, v0}, LE6/a$e;-><init>(LE6/a;Ll7/a$a;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "key action node can\'t be null for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hotkey can\'t be null for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll7/a$a;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll7/a$a;

    invoke-virtual {p0, v0}, LE6/a;->g(Ll7/a$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i(Lk7/a;Lh7/b;)V
    .locals 3

    invoke-virtual {p2}, Lh7/b;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lh7/b;->i()I

    move-result v0

    const/16 v1, -0x1f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_2

    :cond_1
    sget-boolean v1, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->lsSpEnabled:Z

    if-eqz v1, :cond_2

    instance-of v1, p1, LU5/a;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, LU5/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, LU5/a;->z:Z

    :cond_2
    invoke-virtual {p2}, Lh7/b;->q()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, LE6/a;->o6:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p2}, Lh7/b;->i()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lh7/b;->i()I

    move-result v0

    invoke-virtual {p2}, Lh7/b;->m()I

    move-result p2

    iget-object v1, p0, LE6/a;->o6:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, LE6/a;->o6:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final j(Lk7/a;[I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    array-length v0, p2

    if-eqz v0, :cond_5

    array-length v0, p2

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, LE6/a;->o6:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    aget p2, p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    aget v0, p2, v2

    aget p2, p2, v1

    iget-object v1, p0, LE6/a;->o6:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, LE6/a;->o6:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, LE6/a;->l6:Landroid/os/Handler;

    new-instance v1, LE6/a$j;

    invoke-direct {v1, p0}, LE6/a$j;-><init>(LE6/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final l(Ljava/util/AbstractList;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList<",
            "Ljava/lang/Number;",
            ">;)[I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public m()V
    .locals 3

    iget-object v0, p0, LE6/a;->k6:LE6/a$k;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LE6/a;->k6:LE6/a$k;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, LE6/a;->l6:Landroid/os/Handler;

    new-instance v2, LE6/a$i;

    invoke-direct {v2, p0}, LE6/a$i;-><init>(LE6/a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public n()Z
    .locals 2

    iget-object v0, p0, LE6/a;->k6:LE6/a$k;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LE6/a;->k6:LE6/a$k;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, LE6/a;->n6:Z

    return v0
.end method

.method public p(Ljava/lang/Class;)Z
    .locals 4

    iget-object v0, p0, LE6/a;->o6:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk7/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final q(FF)V
    .locals 1

    iget-object v0, p0, LE6/a;->u6:LX5/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, LX5/a;->q(FF)V

    return-void
.end method

.method public r(Li7/e;)V
    .locals 1

    iget-boolean v0, p1, Li7/e;->d:Z

    if-eqz v0, :cond_0

    iget p1, p1, Li7/e;->c:I

    invoke-virtual {p0, p1}, LE6/a;->s(I)V

    goto :goto_0

    :cond_0
    iget p1, p1, Li7/e;->c:I

    invoke-virtual {p0, p1}, LE6/a;->t(I)V

    :goto_0
    return-void
.end method

.method public s(I)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LE6/a;->n6:Z

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, LE6/a;->p6:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, LE6/a;->p6:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk7/a;

    iget-object v4, p0, LE6/a;->q6:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iget-object v5, p0, LE6/a;->q6:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, LE6/a;->r6:Ljava/util/concurrent/ExecutorService;

    new-instance v5, LE6/a$f;

    invoke-direct {v5, p0, v3, v1, p1}, LE6/a$f;-><init>(LE6/a;Lk7/a;Ljava/lang/Integer;I)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, LE6/a;->o6:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v1, p0, LE6/a;->p6:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public t(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LE6/a;->n6:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LE6/a;->q6:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, LE6/a;->q6:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk7/a;

    iget-object v2, p0, LE6/a;->r6:Ljava/util/concurrent/ExecutorService;

    new-instance v3, LE6/a$g;

    invoke-direct {v3, p0, v1, p1}, LE6/a$g;-><init>(LE6/a;Lk7/a;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LE6/a;->p6:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized u()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LE6/a;->o6:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, LE6/a;->p6:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, LE6/a;->o6:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LE6/a;->p6:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, LE6/a;->o6:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LE6/a;->t6:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iput-object v2, p0, LE6/a;->t6:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v2, p0, LE6/a;->u6:LX5/a;

    iput-boolean v1, p0, LE6/a;->s6:Z

    iget-object v0, p0, LE6/a;->l6:Landroid/os/Handler;

    new-instance v1, LE6/a$d;

    invoke-direct {v1, p0}, LE6/a$d;-><init>(LE6/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, LB6/a;->e()LB6/a;

    move-result-object v0

    invoke-virtual {v0, v2}, LB6/a;->c(Ln7/a;)V

    invoke-static {}, LB6/a;->e()LB6/a;

    move-result-object v0

    invoke-virtual {v0, v2}, LB6/a;->d(LH6/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public v(Z)V
    .locals 0

    iput-boolean p1, p0, LE6/a;->n6:Z

    if-eqz p1, :cond_0

    invoke-static {}, LA6/e;->a0()LA6/e;

    move-result-object p1

    invoke-virtual {p1}, LA6/e;->v()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LE6/a;->x()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LE6/a;->m()V

    :cond_1
    :goto_0
    return-void
.end method

.method public x()V
    .locals 4

    iget-object v0, p0, LE6/a;->k6:LE6/a$k;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LE6/a;->k6:LE6/a$k;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, LE6/a;->k6:LE6/a$k;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$h;->j()Landroid/util/Size;

    move-result-object v1

    iget-object v2, p0, LE6/a;->l6:Landroid/os/Handler;

    new-instance v3, LE6/a$h;

    invoke-direct {v3, p0, v1}, LE6/a$h;-><init>(LE6/a;Landroid/util/Size;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public y()V
    .locals 4

    iget-object v0, p0, LE6/a;->k6:LE6/a$k;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, LA6/e;->a0()LA6/e;

    move-result-object v0

    invoke-virtual {v0}, LA6/e;->p()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, LE6/a;->k6:LE6/a$k;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, LE6/a;->k6:LE6/a$k;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lj7/a;

    if-eqz v3, :cond_1

    check-cast v2, Lj7/a;

    invoke-virtual {v2, v0}, Lj7/a;->L0(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
