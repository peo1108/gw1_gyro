.class public LR5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu6/b;
.implements Lw6/b;


# static fields
.field public static gg2eh:I

.field public static gg2ei:I

.field public static volatile p6:LR5/c;


# instance fields
.field public V1:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lu6/b;",
            ">;"
        }
    .end annotation
.end field

.field public final X:Landroid/os/HandlerThread;

.field public final Y:Landroid/os/Handler;

.field public Z:Lcom/zjx/jyandroid/ForegroundService/MainService;

.field public k6:LE6/a;

.field public l6:LF6/a;

.field public m6:LT5/c;

.field public n6:[I

.field public o6:Ls5/k;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x28

    new-array v0, v0, [I

    iput-object v0, p0, LR5/c;->n6:[I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LR5/c;->V1:Ljava/util/LinkedList;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    iput-object v0, p0, LR5/c;->Z:Lcom/zjx/jyandroid/ForegroundService/MainService;

    invoke-static {}, LE6/a;->w()LE6/a;

    move-result-object v0

    iput-object v0, p0, LR5/c;->k6:LE6/a;

    invoke-static {}, LF6/a;->r()LF6/a;

    move-result-object v0

    iput-object v0, p0, LR5/c;->l6:LF6/a;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b;->E()Lr6/e;

    move-result-object v0

    sget-object v1, Lr6/e;->Y:Lr6/e;

    if-ne v0, v1, :cond_0

    invoke-static {}, LT5/c;->f()LT5/c;

    move-result-object v0

    iput-object v0, p0, LR5/c;->m6:LT5/c;

    :cond_0
    invoke-static {}, Ls5/k;->i()Ls5/k;

    move-result-object v0

    iput-object v0, p0, LR5/c;->o6:Ls5/k;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, ""

    const/16 v2, -0x13

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, LR5/c;->X:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, LR5/c;->Y:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic b(LR5/c;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, LR5/c;->V1:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static synthetic c(LR5/c;)LE6/a;
    .locals 0

    iget-object p0, p0, LR5/c;->k6:LE6/a;

    return-object p0
.end method

.method public static l()LR5/c;
    .locals 2

    sget-object v0, LR5/c;->p6:LR5/c;

    if-nez v0, :cond_1

    const-class v0, LR5/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, LR5/c;->p6:LR5/c;

    if-nez v1, :cond_0

    new-instance v1, LR5/c;

    invoke-direct {v1}, LR5/c;-><init>()V

    sput-object v1, LR5/c;->p6:LR5/c;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, LR5/c;->p6:LR5/c;

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

    iget-object v0, p0, LR5/c;->Y:Landroid/os/Handler;

    new-instance v1, LR5/c$a;

    invoke-direct {v1, p0, p1}, LR5/c$a;-><init>(LR5/c;Ljava/util/LinkedList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public d([F)Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget v2, p1, v1

    float-to-int v2, v2

    add-int/lit8 v3, v1, 0x1

    aget v3, p1, v3

    float-to-int v3, v3

    add-int/lit8 v4, v1, 0x2

    aget v4, p1, v4

    add-int/lit8 v5, v1, 0x3

    aget v5, p1, v5

    new-instance v6, Li7/l;

    invoke-static {}, Li7/l$a;->values()[Li7/l$a;

    move-result-object v7

    aget-object v2, v7, v2

    invoke-direct {v6, v2, v3, v4, v5}, Li7/l;-><init>(Li7/l$a;IFF)V

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, LR5/c;->L(Ljava/util/LinkedList;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, LR5/c;->f(Ljava/util/List;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final f(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Li7/c;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li7/c;

    invoke-virtual {v0}, Li7/c;->a()Li7/d;

    move-result-object v1

    sget-object v2, Li7/d;->l6:Li7/d;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Li7/l;

    iget-object v1, v0, Li7/l;->b:Li7/l$a;

    iget v2, v0, Li7/l;->c:I

    iget v3, v0, Li7/l;->d:F

    iget v0, v0, Li7/l;->e:F

    sget-object v4, LR5/c$b;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v4, v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, LR5/c;->o6:Ls5/k;

    iget-object v4, p0, LR5/c;->n6:[I

    aget v4, v4, v2

    invoke-virtual {v1, v4, v3, v0}, Ls5/k;->p(IFF)V

    iget-object v0, p0, LR5/c;->n6:[I

    const/4 v1, 0x0

    aput v1, v0, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, LR5/c;->o6:Ls5/k;

    invoke-virtual {v1, v3, v0}, Ls5/k;->j(FF)I

    move-result v0

    iget-object v1, p0, LR5/c;->n6:[I

    aput v0, v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, LR5/c;->o6:Ls5/k;

    iget-object v4, p0, LR5/c;->n6:[I

    aget v2, v4, v2

    invoke-virtual {v1, v2, v3, v0}, Ls5/k;->n(IFF)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final g(Lu6/b;)Z
    .locals 1

    iget-object v0, p0, LR5/c;->V1:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public h(Ljava/util/LinkedList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Li7/c;",
            ">;)V"
        }
    .end annotation

    sget v0, LR5/c;->gg2eh:I

    and-int/lit8 v1, v0, 0x3f

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "gg2 v187: ENGKB n="

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR5/a;->gw2logApp(Ljava/lang/String;)V

    :cond_0
    sget v0, LR5/c;->gg2eh:I

    add-int/lit8 v0, v0, 0x1

    sput v0, LR5/c;->gg2eh:I

    invoke-virtual {p0, p1}, LR5/c;->f(Ljava/util/List;)V

    return-void
.end method

.method public i(Lu6/b;)V
    .locals 2

    sget v0, LR5/c;->gg2ei:I

    and-int/lit8 v1, v0, 0x3f

    if-nez v1, :cond_0

    const-string v1, "gg2 v187: ENGMS"

    invoke-static {v1}, LR5/a;->gw2logApp(Ljava/lang/String;)V

    :cond_0
    sget v0, LR5/c;->gg2ei:I

    add-int/lit8 v0, v0, 0x1

    sput v0, LR5/c;->gg2ei:I

    iget-object v0, p0, LR5/c;->V1:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LR5/c;->V1:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    iget-object v1, p0, LR5/c;->V1:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public j(Lu6/b;)V
    .locals 2

    iget-object v0, p0, LR5/c;->V1:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LR5/c;->V1:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, LR5/c;->V1:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public k(Z)V
    .locals 1

    iget-object v0, p0, LR5/c;->k6:LE6/a;

    invoke-virtual {v0, p1}, LE6/a;->v(Z)V

    iget-object v0, p0, LR5/c;->m6:LT5/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LT5/c;->e(Z)V

    :cond_0
    iget-object v0, p0, LR5/c;->l6:LF6/a;

    invoke-virtual {v0, p1}, LF6/a;->q(Z)V

    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public n(Lu6/b;)V
    .locals 2

    iget-object v0, p0, LR5/c;->V1:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LR5/c;->V1:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
