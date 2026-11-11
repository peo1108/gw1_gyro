.class public Lcom/zjx/jyandroid/plugin/screenmanagementplugin/ScreenManagementPlugin;
.super LU6/a;
.source "SourceFile"

# interfaces
.implements LU6/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/plugin/screenmanagementplugin/ScreenManagementPlugin$a;
    }
.end annotation


# instance fields
.field public V1:Z

.field public Z:Le7/a;

.field public k6:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LU6/a;-><init>()V

    new-instance v0, Le7/a;

    invoke-direct {v0}, Le7/a;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/plugin/screenmanagementplugin/ScreenManagementPlugin;->Z:Le7/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/plugin/screenmanagementplugin/ScreenManagementPlugin;->V1:Z

    iput-boolean v0, p0, Lcom/zjx/jyandroid/plugin/screenmanagementplugin/ScreenManagementPlugin;->k6:Z

    const-string v0, "9\u00a8Y\u008ft\u0011\u0090{\u00b1L\u00eel\u0013\u008d\"\u00d8Y\u00f8h\u0004\u00aa\"\u00d7K\u00e2\u0093\u0019\u00be/\u00dd"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LU6/a;->l(Ljava/lang/String;)V

    const-string v0, "\u81b0\u526f\u5232\u8f09\u7389\u5d9e\u519f"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LU6/a;->m(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(I)I
    .locals 0

    sget p1, Lcom/zjx/jyandroid/e$h;->W0:I

    return p1
.end method

.method public g(I)Ljava/lang/String;
    .locals 0

    sget p1, Lcom/zjx/jyandroid/e$k;->Jf:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->B(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k()Landroid/os/IBinder;
    .locals 1
    .annotation build Li/P;
    .end annotation

    new-instance v0, Lcom/zjx/jyandroid/plugin/screenmanagementplugin/ScreenManagementPlugin$a;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/plugin/screenmanagementplugin/ScreenManagementPlugin$a;-><init>(Lcom/zjx/jyandroid/plugin/screenmanagementplugin/ScreenManagementPlugin;)V

    return-object v0
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/screenmanagementplugin/ScreenManagementPlugin;->Z:Le7/a;

    invoke-virtual {v0}, Le7/a;->a()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/plugin/screenmanagementplugin/ScreenManagementPlugin;->p(Landroid/util/Size;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/screenmanagementplugin/ScreenManagementPlugin;->Z:Le7/a;

    invoke-virtual {v0}, Le7/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/plugin/screenmanagementplugin/ScreenManagementPlugin;->o(I)V

    return-void
.end method

.method public o(I)V
    .locals 3

    const-string v0, "-\u00aa\u0014\u00c5k\u0015\u009b<\u00b6V\u00bc"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lt5/f;->u2()Lt5/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lt5/f;->a2(Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zjx/jyandroid/plugin/screenmanagementplugin/ScreenManagementPlugin;->k6:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public declared-synchronized onCreate()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, LU6/c;->r()LU6/c;

    move-result-object v0

    invoke-virtual {v0, p0}, LU6/c;->q(LU6/e;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/screenmanagementplugin/ScreenManagementPlugin;->Z:Le7/a;

    invoke-virtual {v0}, Le7/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/plugin/screenmanagementplugin/ScreenManagementPlugin;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
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

    invoke-static {}, LU6/c;->r()LU6/c;

    move-result-object v0

    invoke-virtual {v0, p0}, LU6/c;->x(LU6/e;)V

    iget-boolean v0, p0, Lcom/zjx/jyandroid/plugin/screenmanagementplugin/ScreenManagementPlugin;->V1:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/plugin/screenmanagementplugin/ScreenManagementPlugin;->s()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/plugin/screenmanagementplugin/ScreenManagementPlugin;->k6:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zjx/jyandroid/plugin/screenmanagementplugin/ScreenManagementPlugin;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public p(Landroid/util/Size;)V
    .locals 3

    const-string v0, "-\u00aa\u0014\u00d2g\u0001\u008du"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lt5/f;->u2()Lt5/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lt5/f;->a2(Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zjx/jyandroid/plugin/screenmanagementplugin/ScreenManagementPlugin;->V1:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public q()V
    .locals 0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/plugin/screenmanagementplugin/ScreenManagementPlugin;->s()V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/plugin/screenmanagementplugin/ScreenManagementPlugin;->r()V

    return-void
.end method

.method public r()V
    .locals 2

    :try_start_0
    invoke-static {}, Lt5/f;->u2()Lt5/f;

    move-result-object v0

    const-string v1, "-\u00aa\u0014\u00c5k\u0015\u009b<\u00b6V\u00bc{\u0013\u00905\u00c9"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt5/f;->a2(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/plugin/screenmanagementplugin/ScreenManagementPlugin;->k6:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public s()V
    .locals 2

    :try_start_0
    invoke-static {}, Lt5/f;->u2()Lt5/f;

    move-result-object v0

    const-string v1, "-\u00aa\u0014\u00d2g\u0001\u008du\u00b0J\u00efl\u0002"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt5/f;->a2(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/plugin/screenmanagementplugin/ScreenManagementPlugin;->V1:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
