.class public LF6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/a$U;
.implements Lcom/zjx/jyandroid/ForegroundService/MainService$i;
.implements Lm7/d;
.implements Lu6/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lm7/a;",
        ":",
        "Lm7/d;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/zjx/jyandroid/ForegroundService/a$U;",
        "Lcom/zjx/jyandroid/ForegroundService/MainService$i;",
        "Lm7/d;",
        "Lu6/b;"
    }
.end annotation


# static fields
.field public static q6:LF6/a;


# instance fields
.field public V1:LH6/b;

.field public X:Z

.field public Y:Ljava/lang/Object;

.field public Z:Z

.field public k6:I

.field public l6:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TT;>;"
        }
    .end annotation
.end field

.field public m6:Lm7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public n6:Ljava/lang/Object;

.field public o6:Lcom/zjx/jyandroid/ForegroundService/MainService;

.field public p6:Z

.field public prevGyroRoute:Z

.field public volatile rcTouchFedMs:J

.field public volatile rcTouchPending:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LF6/a;->X:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, LF6/a;->Y:Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, p0, LF6/a;->Z:Z

    const/4 v1, 0x0

    iput-object v1, p0, LF6/a;->V1:LH6/b;

    iput v0, p0, LF6/a;->k6:I

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, LF6/a;->l6:Ljava/util/LinkedList;

    iput-object v1, p0, LF6/a;->m6:Lm7/a;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, LF6/a;->n6:Ljava/lang/Object;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v1

    iput-object v1, p0, LF6/a;->o6:Lcom/zjx/jyandroid/ForegroundService/MainService;

    iput-boolean v0, p0, LF6/a;->p6:Z

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/MainService;->y6:Lcom/zjx/jyandroid/ForegroundService/MainService;

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->C(Lcom/zjx/jyandroid/ForegroundService/MainService$i;)V

    return-void
.end method

.method public static r()LF6/a;
    .locals 1

    sget-object v0, LF6/a;->q6:LF6/a;

    if-nez v0, :cond_0

    new-instance v0, LF6/a;

    invoke-direct {v0}, LF6/a;-><init>()V

    sput-object v0, LF6/a;->q6:LF6/a;

    :cond_0
    sget-object v0, LF6/a;->q6:LF6/a;

    return-object v0
.end method


# virtual methods
.method public L(Ljava/util/LinkedList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Li7/c;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li7/c;

    invoke-virtual {v0}, Li7/c;->a()Li7/d;

    move-result-object v1

    sget-object v2, Li7/d;->Z:Li7/d;

    if-ne v1, v2, :cond_1

    check-cast v0, Li7/i;

    iget v1, v0, Li7/i;->b:I

    iget v0, v0, Li7/i;->c:I

    invoke-virtual {p0, v1, v0}, LF6/a;->e(II)V

    goto :goto_0

    :cond_1
    sget-object v2, Li7/d;->k6:Li7/d;

    if-ne v1, v2, :cond_0

    check-cast v0, Li7/j;

    iget v0, v0, Li7/j;->b:I

    invoke-virtual {p0, v0}, LF6/a;->o(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LF6/a;->k6:I

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/a;->J()Lcom/zjx/jyandroid/ForegroundService/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/a;->A(Lcom/zjx/jyandroid/ForegroundService/a$U;)V

    return-void
.end method

.method public b(II)V
    .locals 0

    return-void
.end method

.method public c(Lcom/zjx/jyandroid/ForegroundService/a$e0;)Z
    .locals 10

    iget-object v0, p0, LF6/a;->Y:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, LF6/a;->Z:Z

    iget-object v2, p0, LF6/a;->V1:LH6/b;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LH6/a;->a()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, LF6/a;->V1:LH6/b;

    if-nez p1, :cond_1

    monitor-exit v0

    return v1

    :cond_1
    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/a$e0;->b:Ljava/util/Map;

    const-string v2, "9\u00a8Y\u00d1a\u0015\u008d;\u00b6\\"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Lt7/a;

    invoke-direct {v4}, Lt7/a;-><init>()V

    invoke-virtual {v4, v2}, Lt7/a;->d(Ljava/util/Map;)V

    iget-object v5, v4, Lt7/a;->Z:Ljava/lang/String;

    invoke-static {}, LK6/i;->E0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, LM6/i;

    invoke-direct {v5}, LM6/i;-><init>()V

    invoke-virtual {v5, v2}, LM6/i;->d(Ljava/util/Map;)V

    iget-object v4, v4, Lt7/a;->X:Landroid/graphics/Rect;

    new-instance v6, LH6/b;

    new-instance v7, Landroid/graphics/Point;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v6, v4, v7}, LH6/b;-><init>(Landroid/graphics/Rect;Landroid/graphics/Point;)V

    iput-object v6, p0, LF6/a;->V1:LH6/b;

    iget v4, v5, LM6/i;->X:I

    mul-int/lit8 v4, v4, 0xa

    invoke-virtual {v6, v4}, LH6/a;->S(I)V

    iget-object v4, p0, LF6/a;->V1:LH6/b;

    invoke-virtual {v4, v1}, LH6/a;->M(Z)V

    iget-boolean v4, v5, LM6/i;->Y:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, LF6/a;->V1:LH6/b;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, LH6/a;->O(I)V

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_4

    :catch_1
    move-exception v3

    goto :goto_5

    :cond_3
    iget-object v4, p0, LF6/a;->V1:LH6/b;

    invoke-virtual {v4, v3}, LH6/a;->O(I)V

    :goto_2
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zjx/jyandroid/ForegroundService/MainService;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zjx/jyandroid/base/util/b$c;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, LF6/a;->V1:LH6/b;

    const/16 v6, 0x12c

    invoke-virtual {v4, v6}, LH6/a;->D(I)V

    goto :goto_3

    :cond_4
    iget-object v4, p0, LF6/a;->V1:LH6/b;

    iget v6, v5, LM6/i;->V1:I

    invoke-virtual {v4, v6}, LH6/a;->D(I)V

    :goto_3
    iget-object v4, p0, LF6/a;->V1:LH6/b;

    iget-boolean v6, v5, LM6/i;->Z:Z

    xor-int/2addr v3, v6

    invoke-virtual {v4, v3}, LH6/a;->N(Z)V

    iget-object v3, p0, LF6/a;->V1:LH6/b;

    iget-boolean v4, v5, LM6/i;->k6:Z

    invoke-virtual {v3, v4}, LH6/a;->I(Z)V

    iget-object v3, p0, LF6/a;->V1:LH6/b;

    invoke-virtual {v3}, LH6/a;->c()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :goto_4
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0017\u00a8A\u00d2k6\u0087#\u00a7f\u00f2y\u0003\u0097\u001d\u00dcD\u00f6c\u0014\u00acq\u0098\u953c\u8b7d\u30fd\u000f\u00b6+\u00c3O\u00e3\u009f\t\u00a0\u0008\u00c0}\u00e7\u00cfB"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "t\u00e7q\u00d3|\u0014\u009ao\u00e2"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LA6/d;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0017\u00a8A\u00d2k6\u0087#\u00a7f\u00f2y\u0003\u0097\u001d\u00dcD\u00f6c\u0014\u00acq\u0098\u6605\u5c96\u5601\u9575\u8b36\u3044\u00d0O\u00e0\u008a\u0008\u00ba$\u00c0o\u00c1\u009b\u0004\u00a0\u0006\u0089"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "t\u00e7q\u00d3|\u0014\u009ao\u00e2"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LA6/d;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    iput-boolean v3, p0, LF6/a;->Z:Z

    monitor-exit v0

    return v1

    :goto_6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public d()V
    .locals 1

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/a;->J()Lcom/zjx/jyandroid/ForegroundService/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/a;->K(Lcom/zjx/jyandroid/ForegroundService/a$U;)V

    return-void
.end method

.method public e(II)V
    .locals 7

    iget-boolean v0, p0, LF6/a;->Z:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, LK6/m;->getInstance()LK6/m;

    move-result-object v1

    const/4 v2, 0x0

    iget-boolean v0, v1, LK6/m;->freeLookHeld:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v1, LK6/m;->freeLookIsNade:Z

    if-nez v0, :cond_1

    sget-boolean v0, LK6/m;->isHoldingGun:Z

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {v1}, LK6/m;->isGyroPathActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, LK6/m;->connectedClient:Landroid/net/LocalSocket;

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    iget-boolean v0, v1, LK6/m;->freeLookHeld:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, LF6/a;->prevGyroRoute:Z

    if-eq v2, v0, :cond_3

    iput-boolean v2, p0, LF6/a;->prevGyroRoute:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, LF6/a;->rcTouchPending:Z

    invoke-virtual {p0}, LF6/a;->l()V

    :cond_3
    if-eqz v2, :cond_6

    iget-boolean v0, p0, LF6/a;->rcTouchPending:Z

    if-eqz v0, :cond_4

    iget-boolean v0, v1, LK6/m;->freeLookHeld:Z

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, LF6/a;->rcTouchFedMs:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x64

    cmp-long v0, v3, v5

    if-lez v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, LF6/a;->rcTouchPending:Z

    invoke-virtual {p0}, LF6/a;->l()V

    :cond_4
    iget-boolean v0, v1, LK6/m;->gyroInvert:Z

    if-nez v0, :cond_5

    neg-int p1, p1

    neg-int p2, p2

    :cond_5
    invoke-virtual {v1, p1, p2}, LK6/m;->sendScaledGyro(II)V

    return-void

    :cond_6
    iget-object v0, p0, LF6/a;->m6:Lm7/a;

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-boolean v1, p0, LF6/a;->X:Z

    if-nez v1, :cond_8

    return-void

    :cond_8
    check-cast v0, Lm7/d;

    invoke-interface {v0, p1, p2}, Lm7/d;->e(II)V

    return-void
.end method

.method public f(II)V
    .locals 4

    iget-boolean v0, p0, LF6/a;->Z:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, LK6/m;->getInstance()LK6/m;

    move-result-object v1

    invoke-virtual {v1}, LK6/m;->isGyroPathActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, v1, LK6/m;->rcByGyro:Z

    if-eqz v0, :cond_2

    iget-object v0, v1, LK6/m;->connectedClient:Landroid/net/LocalSocket;

    if-eqz v0, :cond_2

    iget-boolean v0, v1, LK6/m;->gyroInvert:Z

    if-nez v0, :cond_1

    neg-int p1, p1

    neg-int p2, p2

    :cond_1
    invoke-virtual {v1, p1, p2}, LK6/m;->sendRcGyro(II)V

    return-void

    :cond_2
    iget-object v0, p0, LF6/a;->m6:Lm7/a;

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-boolean v1, p0, LF6/a;->X:Z

    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, LF6/a;->rcTouchFedMs:J

    const/4 v1, 0x1

    iput-boolean v1, p0, LF6/a;->rcTouchPending:Z

    check-cast v0, Lm7/d;

    invoke-interface {v0, p1, p2}, Lm7/d;->f(II)V

    return-void
.end method

.method public g(ILm7/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget-object v0, p0, LF6/a;->l6:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LF6/a;->l6:Ljava/util/LinkedList;

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, LF6/a;->l6:Ljava/util/LinkedList;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, LF6/a;->l6:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm7/a;

    invoke-virtual {p0, p1}, LF6/a;->p(Lm7/a;)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h(Lm7/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LF6/a;->l6:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LF6/a;->l6:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, LF6/a;->l6:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, LF6/a;->p(Lm7/a;)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i()Lm7/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, LF6/a;->m6:Lm7/a;

    return-object v0
.end method

.method public j()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LF6/a;->l6:Ljava/util/LinkedList;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, LF6/a;->Z:Z

    return v0
.end method

.method public l()V
    .locals 1

    iget-boolean v0, p0, LF6/a;->Z:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LF6/a;->m6:Lm7/a;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lm7/a;->a()V

    iget-object v0, p0, LF6/a;->m6:Lm7/a;

    invoke-interface {v0}, Lm7/a;->c()V

    return-void
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, LF6/a;->l6:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LF6/a;->l6:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, LF6/a;->p(Lm7/a;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public n(Lm7/d;)V
    .locals 2

    iget-object v0, p0, LF6/a;->l6:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LF6/a;->l6:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, LF6/a;->l6:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LF6/a;->p(Lm7/a;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, LF6/a;->l6:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm7/a;

    invoke-virtual {p0, p1}, LF6/a;->p(Lm7/a;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public o(I)V
    .locals 2

    iget-boolean v0, p0, LF6/a;->Z:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LF6/a;->V1:LH6/b;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, LF6/a;->X:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/zjx/gw2lic/Gw2SmartScroll;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/zjx/gw2lic/Gw2SmartScroll;->aimActive()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$f;->a(I)I

    move-result v0

    iget-object v1, p0, LF6/a;->V1:LH6/b;

    invoke-virtual {v1, v0, p1}, LH6/a;->e(II)V

    return-void
.end method

.method public p(Lm7/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LF6/a;->n6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LF6/a;->m6:Lm7/a;

    if-eqz v1, :cond_0

    iget-object v2, p0, LF6/a;->l6:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LF6/a;->m6:Lm7/a;

    invoke-interface {v1}, Lm7/a;->a()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lm7/a;->c()V

    :cond_1
    iput-object p1, p0, LF6/a;->m6:Lm7/a;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public q(Z)V
    .locals 0

    iput-boolean p1, p0, LF6/a;->X:Z

    if-eqz p1, :cond_0

    invoke-static {}, LR5/c;->l()LR5/c;

    move-result-object p1

    invoke-virtual {p1, p0}, LR5/c;->i(Lu6/b;)V

    goto :goto_0

    :cond_0
    invoke-static {}, LR5/c;->l()LR5/c;

    move-result-object p1

    invoke-virtual {p1, p0}, LR5/c;->n(Lu6/b;)V

    :goto_0
    return-void
.end method
