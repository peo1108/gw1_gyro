.class public Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;
.super LU6/a;
.source "SourceFile"

# interfaces
.implements LU6/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin$c;,
        Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin$b;
    }
.end annotation


# instance fields
.field public V1:Lcom/zjx/jyandroid/Extensions/Crosshair/a;

.field public Z:Lz5/a;

.field public k6:Landroid/os/Handler;

.field public l6:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, LU6/a;-><init>()V

    const-string v0, "9\u00a8Y\u008ft\u0011\u0090{\u00a1]\u00f3z\u0005\u008b1\u00d4X\u00e7h\u0004\u00b9\"\u00d6"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LU6/a;->l(Ljava/lang/String;)V

    const-string v0, "\u8600\u6218\u51f2\u5f62"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LU6/a;->m(Ljava/lang/String;)V

    new-instance v0, Lcom/zjx/jyandroid/Extensions/Crosshair/a;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/Crosshair/a;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->V1:Lcom/zjx/jyandroid/Extensions/Crosshair/a;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->k6:Landroid/os/Handler;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin$a;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin$a;-><init>(Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->l6:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public d(I)I
    .locals 0

    sget p1, Lcom/zjx/jyandroid/e$h;->z:I

    return p1
.end method

.method public g(I)Ljava/lang/String;
    .locals 0

    sget p1, Lcom/zjx/jyandroid/e$k;->X2:I

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

    new-instance v0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin$b;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin$b;-><init>(Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;)V

    return-object v0
.end method

.method public declared-synchronized n()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->Z:Lz5/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/16 v1, 0x8

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
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

.method public declared-synchronized o()V
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->Z:Lz5/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->t()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->V1:Lcom/zjx/jyandroid/Extensions/Crosshair/a;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->d()Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin$c;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->V1:Lcom/zjx/jyandroid/Extensions/Crosshair/a;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->a()I

    move-result v1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->V1:Lcom/zjx/jyandroid/Extensions/Crosshair/a;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->c()I

    move-result v2

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->V1:Lcom/zjx/jyandroid/Extensions/Crosshair/a;

    invoke-virtual {v3}, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->e()I

    move-result v3

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->V1:Lcom/zjx/jyandroid/Extensions/Crosshair/a;

    invoke-virtual {v4}, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->b()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v5, 0x1

    if-eq v0, v5, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    const/4 v5, 0x4

    if-eq v0, v5, :cond_1

    new-instance v0, Lz5/b;

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lz5/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->Z:Lz5/a;

    goto :goto_1

    :cond_1
    new-instance v0, Lz5/c;

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/zjx/jyandroid/e$e;->M:I

    invoke-direct {v0, v5, v6}, Lz5/c;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->Z:Lz5/a;

    goto :goto_1

    :cond_2
    new-instance v0, Lz5/c;

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/zjx/jyandroid/e$e;->L:I

    invoke-direct {v0, v5, v6}, Lz5/c;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->Z:Lz5/a;

    goto :goto_1

    :cond_3
    new-instance v0, Lz5/c;

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/zjx/jyandroid/e$e;->K:I

    invoke-direct {v0, v5, v6}, Lz5/c;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->Z:Lz5/a;

    goto :goto_1

    :cond_4
    new-instance v0, Lz5/c;

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/zjx/jyandroid/e$e;->J:I

    invoke-direct {v0, v5, v6}, Lz5/c;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->Z:Lz5/a;

    goto :goto_1

    :cond_5
    new-instance v0, Lz5/c;

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/zjx/jyandroid/e$e;->I:I

    invoke-direct {v0, v5, v6}, Lz5/c;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->Z:Lz5/a;

    :goto_1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v8

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->Z:Lz5/a;

    invoke-virtual {v5}, Lz5/a;->getPreferredWHRatio()F

    move-result v5

    div-float/2addr v2, v5

    float-to-int v9, v2

    const/16 v11, 0x318

    const/4 v12, -0x3

    const/16 v10, 0x7f6

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->Z:Lz5/a;

    invoke-virtual {v2, v1}, Lz5/a;->setColor(I)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, LY5/b;->v()LY5/b;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->Z:Lz5/a;

    invoke-virtual {v1, v2, v0}, LY5/b;->e(Lo6/b;Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCreate()V
    .locals 4

    invoke-static {}, LU6/c;->r()LU6/c;

    move-result-object v0

    invoke-virtual {v0, p0}, LU6/c;->q(LU6/e;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->p()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "9\u00a8Y\u008ft\u0011\u0090{\u00a8V\u00fdg\u0012\u0091?\u00d4N\u00b9a\t\u00aa.\u00d6V\u00fb\u0090\u0002\u00f75\u00dbA\u00ff\u009f\u0003\u00fa.\u00c0Z\u00e1\u0098\u000b\u00a1[\u00fab\u00e2\u0084(\u00b9t\u00ccp\u0010\u008c=\u00a1"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->l6:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->l6:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->t()V

    invoke-static {}, LU6/c;->r()LU6/c;

    move-result-object v0

    invoke-virtual {v0, p0}, LU6/c;->x(LU6/e;)V

    return-void
.end method

.method public declared-synchronized p()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->V1:Lcom/zjx/jyandroid/Extensions/Crosshair/a;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->Z:Lz5/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->t()V
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

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->o()V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->q()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public r()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->Z:Lz5/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lo6/b;->W6:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->V1:Lcom/zjx/jyandroid/Extensions/Crosshair/a;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->c()I

    move-result v1

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->Z:Lz5/a;

    invoke-virtual {v2}, Lz5/a;->getPreferredWHRatio()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->Z:Lz5/a;

    invoke-virtual {v1, v0}, Lo6/b;->y0(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public declared-synchronized s()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->Z:Lz5/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
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

.method public declared-synchronized t()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->Z:Lz5/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, LY5/b;->v()LY5/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->Z:Lz5/a;

    invoke-virtual {v0, v1}, LY5/b;->s(Lo6/b;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin;->Z:Lz5/a;
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
