.class public Lcom/zjx/jyandroid/plugin/dnfplugin/DnfPlugin;
.super LU6/a;
.source "SourceFile"

# interfaces
.implements LU6/b;
.implements LZ6/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/plugin/dnfplugin/DnfPlugin$a;
    }
.end annotation


# instance fields
.field public Z:LU6/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LU6/a;-><init>()V

    const-string v0, "9\u00a8Y\u008ft\u0011\u0090{\u00a6A\u00fay\u001a\u00967\u00d4D"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LU6/a;->l(Ljava/lang/String;)V

    const-string v0, "\u001e\u0089r\u5d44\u5179\u7bca"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LU6/a;->m(Ljava/lang/String;)V

    invoke-static {}, LU6/c;->r()LU6/c;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/plugin/dnfplugin/DnfPlugin;->Z:LU6/c;

    return-void
.end method


# virtual methods
.method public a()Ll7/a;
    .locals 1

    new-instance v0, La7/b;

    invoke-direct {v0}, La7/b;-><init>()V

    return-object v0
.end method

.method public b(Lr7/a;Lp7/a;)V
    .locals 0
    .param p1    # Lr7/a;
        .annotation build Li/P;
        .end annotation
    .end param
    .param p2    # Lp7/a;
        .annotation build Li/P;
        .end annotation
    .end param

    return-void
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

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, LU6/b$a;

    const-class v2, Ld7/a;

    const-string v3, "\u5681\u54d6\u6ee5\u5cee\u9520"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LU6/b$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, LU6/b$a;

    const-class v2, Ld7/b;

    const-string v3, "\u641d\u6781\u6ee5\u5cee\u9520"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LU6/b$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public f(Ljava/util/Map;Lp7/a;)Lr7/a;
    .locals 1
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

    new-instance p2, Lt7/a;

    invoke-direct {p2}, Lt7/a;-><init>()V

    invoke-virtual {p2, p1}, Lt7/a;->d(Ljava/util/Map;)V

    iget-object p2, p2, Lt7/a;->Z:Ljava/lang/String;

    invoke-static {}, Ld7/a;->M0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Ld7/a;

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Ld7/a;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ld7/b;->M0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ld7/b;

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Ld7/b;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lr7/a;->d(Ljava/util/Map;)V

    :cond_2
    return-object p2
.end method

.method public k()Landroid/os/IBinder;
    .locals 1
    .annotation build Li/P;
    .end annotation

    new-instance v0, Lcom/zjx/jyandroid/plugin/dnfplugin/DnfPlugin$a;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/plugin/dnfplugin/DnfPlugin$a;-><init>(Lcom/zjx/jyandroid/plugin/dnfplugin/DnfPlugin;)V

    return-object v0
.end method

.method public declared-synchronized onCreate()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/dnfplugin/DnfPlugin;->Z:LU6/c;

    invoke-virtual {v0, p0, p0}, LU6/c;->o(LU6/a;LU6/b;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/dnfplugin/DnfPlugin;->Z:LU6/c;

    invoke-virtual {v0, p0}, LU6/c;->n(LZ6/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized onDestroy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/dnfplugin/DnfPlugin;->Z:LU6/c;

    invoke-virtual {v0, p0}, LU6/c;->v(LU6/b;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/dnfplugin/DnfPlugin;->Z:LU6/c;

    invoke-virtual {v0, p0}, LU6/c;->u(LZ6/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
