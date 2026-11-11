.class public LU6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU6/d;
.implements LU6/e;
.implements LU6/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LU6/c$b;,
        LU6/c$c;
    }
.end annotation


# static fields
.field public static p6:LU6/c;


# instance fields
.field public V1:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "LU6/d;",
            ">;"
        }
    .end annotation
.end field

.field public X:Ljava/util/concurrent/atomic/AtomicInteger;

.field public Y:LU6/c$b;

.field public Z:Ljava/lang/String;

.field public k6:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "LU6/e;",
            ">;"
        }
    .end annotation
.end field

.field public l6:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "LU6/b;",
            ">;"
        }
    .end annotation
.end field

.field public m6:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "LZ6/b;",
            ">;"
        }
    .end annotation
.end field

.field public n6:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "LU6/c$c;",
            ">;"
        }
    .end annotation
.end field

.field public o6:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, LU6/c;->X:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    iput-object v0, p0, LU6/c;->Y:LU6/c$b;

    const-string v0, ""

    iput-object v0, p0, LU6/c;->Z:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LU6/c;->V1:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LU6/c;->k6:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LU6/c;->l6:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LU6/c;->m6:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, LU6/c;->n6:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, LU6/c;->o6:I

    return-void
.end method

.method public static synthetic a(LU6/c;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, LU6/c;->X:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic i(LU6/c;)LU6/c$b;
    .locals 0

    iget-object p0, p0, LU6/c;->Y:LU6/c$b;

    return-object p0
.end method

.method public static r()LU6/c;
    .locals 1

    sget-object v0, LU6/c;->p6:LU6/c;

    if-nez v0, :cond_0

    new-instance v0, LU6/c;

    invoke-direct {v0}, LU6/c;-><init>()V

    sput-object v0, LU6/c;->p6:LU6/c;

    :cond_0
    sget-object v0, LU6/c;->p6:LU6/c;

    return-object v0
.end method


# virtual methods
.method public b(Lr7/a;Lp7/a;)V
    .locals 3
    .param p1    # Lr7/a;
        .annotation build Li/P;
        .end annotation
    .end param
    .param p2    # Lp7/a;
        .annotation build Li/P;
        .end annotation
    .end param

    iget-object v0, p0, LU6/c;->l6:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LU6/c;->l6:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LU6/b;

    invoke-interface {v2, p1, p2}, LU6/b;->b(Lr7/a;Lp7/a;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LU6/b$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LU6/c;->l6:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v2, p0, LU6/c;->l6:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LU6/b;

    invoke-interface {v3}, LU6/b;->c()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(I)I
    .locals 3

    iget-object v0, p0, LU6/c;->k6:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, LU6/c;->k6:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LU6/e;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, LU6/e;->d(I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;)V
    .locals 3

    iget-object v0, p0, LU6/c;->V1:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LU6/c;->V1:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LU6/d;

    invoke-interface {v2, p1}, LU6/d;->e(Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f(Ljava/util/Map;Lp7/a;)Lr7/a;
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Li/P;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lp7/a;",
            ")",
            "Lr7/a;"
        }
    .end annotation

    .annotation build Ldd/m;
    .end annotation

    iget-object v0, p0, LU6/c;->l6:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LU6/c;->l6:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LU6/b;

    invoke-interface {v2, p1, p2}, LU6/b;->f(Ljava/util/Map;Lp7/a;)Lr7/a;

    move-result-object v2

    if-eqz v2, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, LU6/c;->k6:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, LU6/c;->k6:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LU6/e;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, LU6/e;->g(I)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h()I
    .locals 1

    iget v0, p0, LU6/c;->o6:I

    return v0
.end method

.method public j(Ljava/lang/String;)LU6/a$a;
    .locals 3

    iget-object v0, p0, LU6/c;->n6:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU6/c$c;

    invoke-virtual {v1}, LU6/c$c;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, LU6/c$c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, LU6/c$c;->b()LU6/a$a;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public k()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll7/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LU6/c;->m6:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v2, p0, LU6/c;->m6:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LZ6/b;

    invoke-interface {v3}, LZ6/b;->a()Ll7/a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final l(Ljava/lang/Class;)V
    .locals 4

    new-instance v0, LU6/c$c;

    invoke-direct {v0, p0}, LU6/c$c;-><init>(LU6/c;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/zjx/jyandroid/ForegroundService/MainService;->y6:Lcom/zjx/jyandroid/ForegroundService/MainService;

    invoke-direct {v2, v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, v0, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-virtual {p0, v0}, LU6/c;->m(LU6/c$c;)V

    iget-object p1, p0, LU6/c;->n6:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final m(LU6/c$c;)V
    .locals 2

    invoke-virtual {p1}, LU6/c$c;->b()LU6/a$a;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LU6/c;->n6:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU6/c$c;

    invoke-virtual {v1}, LU6/c$c;->b()LU6/a$a;

    move-result-object v1

    invoke-virtual {v1, p1}, LU6/a$a;->d(LU6/a$a;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public n(LZ6/b;)V
    .locals 2

    iget-object v0, p0, LU6/c;->m6:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LU6/c;->m6:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, LU6/c;->m6:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public o(LU6/a;LU6/b;)V
    .locals 1

    iget-object p1, p0, LU6/c;->l6:Ljava/util/LinkedList;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, LU6/c;->l6:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, LU6/c;->l6:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    return-void

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public p(LU6/d;)V
    .locals 2

    iget-object v0, p0, LU6/c;->V1:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LU6/c;->V1:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, LU6/c;->V1:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public q(LU6/e;)V
    .locals 2

    iget-object v0, p0, LU6/c;->k6:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LU6/c;->k6:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, LU6/c;->k6:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget v1, p0, LU6/c;->o6:I

    invoke-interface {p1}, LU6/e;->h()I

    move-result p1

    add-int/2addr v1, p1

    iput v1, p0, LU6/c;->o6:I

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized s(Ljava/lang/String;LU6/c$b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, LU6/c;->Y:LU6/c$b;

    iput-object p1, p0, LU6/c;->Z:Ljava/lang/String;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p2, p0, LU6/c;->X:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    const-class v0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoPlugin;

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LR5/a;->w()LR5/a;

    move-result-object p1

    invoke-virtual {p1}, LR5/a;->s()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, LR5/a;->w()LR5/a;

    move-result-object p1

    invoke-virtual {p1}, LR5/a;->r()Z

    move-result p1

    if-eqz p1, :cond_3

    const-class p1, Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const-string v0, "com.tencent.tmgp.dnf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p1, Lcom/zjx/jyandroid/plugin/dnfplugin/DnfPlugin;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "com.netease.l22"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-class p1, Lcom/zjx/jyandroid/plugin/bladepoint/BladePointPlugin;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, LR5/a;->w()LR5/a;

    move-result-object p1

    invoke-virtual {p1}, LR5/a;->s()Z

    move-result p1

    if-eqz p1, :cond_3

    const-class p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    const-class p1, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-class p1, Lcom/zjx/jyandroid/plugin/screenmanagementplugin/ScreenManagementPlugin;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LU6/c;->X:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p2}, LU6/c;->l(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized t()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LU6/c;->n6:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU6/c$c;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, LU6/c;->n6:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
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

.method public u(LZ6/b;)V
    .locals 2

    iget-object v0, p0, LU6/c;->m6:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LU6/c;->m6:Ljava/util/LinkedList;

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

.method public v(LU6/b;)V
    .locals 2

    iget-object v0, p0, LU6/c;->l6:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LU6/c;->l6:Ljava/util/LinkedList;

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

.method public w(LU6/d;)V
    .locals 2

    iget-object v0, p0, LU6/c;->V1:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LU6/c;->V1:Ljava/util/LinkedList;

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

.method public x(LU6/e;)V
    .locals 2

    iget-object v0, p0, LU6/c;->k6:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LU6/c;->k6:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, LU6/c;->k6:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget v1, p0, LU6/c;->o6:I

    invoke-interface {p1}, LU6/e;->h()I

    move-result p1

    sub-int/2addr v1, p1

    iput v1, p0, LU6/c;->o6:I

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
