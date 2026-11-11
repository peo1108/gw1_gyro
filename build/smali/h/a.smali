.class public Lh/a;
.super Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeTouchPerformActionSingleFinger;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/ITouchTriggerable;


# instance fields
.field public a:Lcom/zjx/jyandroid/Extensions/pubg/d;

.field public b:I

.field public c:I

.field public d:I

.field public e:Lcom/zjx/jyandroid/ForegroundService/UI/a;

.field public f:J

.field public g:Ljava/lang/Thread;

.field public h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/zjx/jyandroid/Extensions/pubg/c$l;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeTouchPerformActionSingleFinger;-><init>()V

    const/16 v0, 0x32

    iput v0, p0, Lh/a;->b:I

    iput v0, p0, Lh/a;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lh/a;->d:I

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->y()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v1

    iput-object v1, p0, Lh/a;->e:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lh/a;->f:J

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lh/a;->h:Ljava/util/Set;

    iput-boolean v0, p0, Lh/a;->i:Z

    const/4 v0, -0x1

    iput v0, p0, Lh/a;->j:I

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v0

    const-class v1, Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/d;

    iput-object v0, p0, Lh/a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lh/a;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lh/a;->c:I

    return v0
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/zjx/jyandroid/Extensions/pubg/c$l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh/a;->h:Ljava/util/Set;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lh/a;->d:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lh/a;->b:I

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lh/a;->c:I

    return-void
.end method

.method public g(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/zjx/jyandroid/Extensions/pubg/c$l;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lh/a;->h:Ljava/util/Set;

    return-void
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lh/a;->d:I

    return-void
.end method

.method public i()V
    .locals 7

    iget-boolean v0, p0, Lh/a;->i:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeTouchPerformAction;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    iget v2, p0, Lh/a;->j:I

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->coordinate:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    const/16 v5, 0xf

    const/16 v6, 0xf

    invoke-virtual/range {v1 .. v6}, Lcom/zjx/jyandroid/TouchManager;->q(IFFII)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/a;->i:Z

    :cond_0
    return-void
.end method

.method public startActionByTouch(Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lh/a;->startActionWithKeyCodes(II)V

    return-void
.end method

.method public startActionWithKeyCodes(II)V
    .locals 12

    iget-object p1, p0, Lh/a;->e:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->m()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;->started:Z

    if-eqz p1, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;->started:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    iput-object p2, p0, Lh/a;->g:Ljava/lang/Thread;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p2, p0, Lh/a;->d:I

    const/4 v0, 0x0

    if-lez p2, :cond_2

    int-to-long v1, p2

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;->started:Z

    return-void

    :cond_2
    :goto_0
    iget-wide v1, p0, Lh/a;->f:J

    :goto_1
    iget-object p2, p0, Lh/a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    if-nez p2, :cond_4

    :cond_3
    :goto_2
    move p2, p1

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Lcom/zjx/jyandroid/Extensions/pubg/d;->J()Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    move-result-object p2

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lh/a;->h:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v0

    :goto_3
    monitor-enter p0

    const/16 v3, 0xf

    if-nez p2, :cond_6

    :try_start_2
    invoke-virtual {p0}, Lh/a;->i()V

    iput-boolean v0, p0, Lh/a;->i:Z

    iget-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeTouchPerformAction;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->coordinate:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p2, v5, v4, v3, v3}, Lcom/zjx/jyandroid/TouchManager;->k(FFII)I

    move-result v7

    iget p2, p0, Lh/a;->b:I

    int-to-long v3, p2

    invoke-static {v3, v4}, Lcom/zjx/jyandroid/base/util/b;->Y(J)Z

    move-result p2

    iget-object v6, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeTouchPerformAction;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->coordinate:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v8, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v9, v3

    const/16 v10, 0xf

    const/16 v11, 0xf

    invoke-virtual/range {v6 .. v11}, Lcom/zjx/jyandroid/TouchManager;->q(IFFII)V

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_6

    :cond_6
    iget-boolean p2, p0, Lh/a;->i:Z

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeTouchPerformAction;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->coordinate:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p2, v5, v4, v3, v3}, Lcom/zjx/jyandroid/TouchManager;->k(FFII)I

    move-result p2

    iput p2, p0, Lh/a;->j:I

    iput-boolean p1, p0, Lh/a;->i:Z

    :cond_7
    move p2, v0

    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p2, :cond_8

    iget p2, p0, Lh/a;->c:I

    int-to-long v3, p2

    invoke-static {v3, v4}, Lcom/zjx/jyandroid/base/util/b;->Y(J)Z

    :cond_8
    monitor-enter p0

    :try_start_3
    iget-wide v3, p0, Lh/a;->f:J

    cmp-long p2, v1, v3

    if-eqz p2, :cond_9

    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    goto :goto_5

    :cond_9
    monitor-exit p0

    goto :goto_1

    :goto_5
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :goto_6
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :goto_7
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public stopActionByTouch(Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lh/a;->stopActionWithKeyCodes(II)V

    return-void
.end method

.method public stopActionWithKeyCodes(II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lh/a;->f:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lh/a;->f:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;->started:Z

    iget-object p1, p0, Lh/a;->g:Ljava/lang/Thread;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lh/a;->g:Ljava/lang/Thread;

    invoke-virtual {p0}, Lh/a;->i()V

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
