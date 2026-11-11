.class public LD6/d;
.super LW5/c;
.source "SourceFile"


# instance fields
.field public f:LF6/a;

.field public g:Lcom/zjx/jyandroid/ForegroundService/UI/a;

.field public final h:LT5/a;


# direct methods
.method public constructor <init>(LT5/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LF6/a;->r()LF6/a;

    move-result-object v0

    iput-object v0, p0, LD6/d;->f:LF6/a;

    iput-object p1, p0, LD6/d;->h:LT5/a;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->F()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object p1

    iput-object p1, p0, LD6/d;->g:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    return-void
.end method


# virtual methods
.method public d(II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, LW5/b;->b:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, LD6/d;->h:LT5/a;

    check-cast p1, LH6/a;

    iget-boolean v0, p1, LH6/a;->S6:Z

    if-nez v0, :cond_0

    iget-object p2, p0, LD6/d;->f:LF6/a;

    invoke-virtual {p2, p1}, LF6/a;->n(Lm7/d;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p1, LH6/a;->D6:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LH6/a;->C()V

    :cond_1
    iget-object p2, p0, LD6/d;->f:LF6/a;

    invoke-virtual {p2, p1}, LF6/a;->n(Lm7/d;)V

    invoke-static {}, LK6/m;->getInstance()LK6/m;

    move-result-object v0

    iget-boolean v1, v0, LK6/m;->nadeGyroActive:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, LK6/m;->deactivate()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, LW5/b;->b:Z

    invoke-static {}, LK6/m;->getInstance()LK6/m;

    move-result-object p2

    const/4 p1, 0x0

    iput-boolean p1, p2, LK6/m;->freeLookHeld:Z

    iput-boolean p1, p2, LK6/m;->freeLookIsNade:Z

    iput-boolean p1, p2, LK6/m;->scrollAdjustActive:Z

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(II)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, LD6/d;->g:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->u()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, LW5/b;->b:Z

    if-nez p1, :cond_4

    iget-object p1, p0, LD6/d;->f:LF6/a;

    iget-object p2, p0, LD6/d;->h:LT5/a;

    check-cast p2, LH6/a;

    iget-boolean v0, p2, LH6/a;->S6:Z

    if-nez v0, :cond_1

    :cond_0
    iget v0, p2, LH6/a;->U6:I

    const/4 v1, 0x0

    iput v1, p2, LH6/a;->U6:I

    invoke-virtual {p1, p2}, LF6/a;->h(Lm7/a;)V

    invoke-virtual {p2, v1, v1}, LH6/a;->f(II)V

    iput v0, p2, LH6/a;->U6:I

    invoke-static {}, LK6/m;->getInstance()LK6/m;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, LK6/m;->freeLookHeld:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, LK6/m;->freeLookIsNade:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, LW5/b;->b:Z

    goto :goto_0

    :cond_1
    sget-boolean v0, LK6/m;->isHoldingGun:Z

    if-nez v0, :cond_0

    invoke-static {}, LK6/m;->getInstance()LK6/m;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, LK6/m;->freeLookHeld:Z

    iput-boolean v1, v0, LK6/m;->freeLookIsNade:Z

    invoke-virtual {v0}, LK6/m;->ensureFlushTimer()V

    invoke-virtual {p1, p2}, LF6/a;->h(Lm7/a;)V

    iget v3, p2, LH6/a;->U6:I

    const/4 v4, 0x0

    iput v4, p2, LH6/a;->U6:I

    invoke-virtual {p2, v4, v4}, LH6/a;->f(II)V

    iput v3, p2, LH6/a;->U6:I

    iget v3, p2, LH6/a;->T6:F

    iget v4, p2, LH6/a;->V6:I

    invoke-static {}, LK6/m;->getInstance()LK6/m;

    move-result-object v0

    iget-boolean v1, v0, LK6/m;->cameraGyroActive:Z

    if-eqz v1, :cond_2

    iget v1, v0, LK6/m;->cameraGyroMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    :cond_2
    invoke-virtual {v0, v3, v4}, LK6/m;->activate(FI)V

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, LW5/b;->b:Z

    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :goto_2
    iget v0, p2, LH6/a;->U6:I

    iget-boolean v1, p2, LH6/a;->Y6:Z

    if-eqz v1, :cond_5

    invoke-static {}, LK6/m;->getInstance()LK6/m;

    move-result-object v1

    iput v0, v1, LK6/m;->scrollBasePull:I

    const/4 v2, 0x0

    iput v2, v1, LK6/m;->scrollExtra:I

    iput v2, v1, LK6/m;->scrollTarget:I

    iget v2, p2, LH6/a;->Z6:I

    iput v2, v1, LK6/m;->scrollStep:I

    iput-object p2, v1, LK6/m;->nadeTouchTarget:LH6/a;

    const/4 v2, 0x1

    iput-boolean v2, v1, LK6/m;->scrollAdjustActive:Z

    :cond_5
    const/16 v1, 0xa

    div-int v1, v0, v1

    iget v2, p2, LH6/a;->V6:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_6

    const/4 v2, 0x1

    :cond_6
    const/16 v3, 0x59

    if-le v2, v3, :cond_7

    const/16 v2, 0x59

    :cond_7
    int-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    int-to-double v5, v0

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x0

    :goto_3
    const/16 v4, 0xa

    if-gt v0, v4, :cond_8

    iget-boolean v4, p0, LW5/b;->b:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p2, LH6/a;->D6:Z

    if-eqz v4, :cond_8

    :try_start_1
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    iget-boolean v4, p0, LW5/b;->b:Z

    if-eqz v4, :cond_8

    mul-int v4, v2, v0

    add-int/lit8 v4, v4, 0x5

    const/16 v5, 0xa

    div-int/2addr v4, v5

    sub-int v5, v3, v4

    move v3, v4

    invoke-virtual {p2, v5, v1}, LH6/a;->f(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_0
    :cond_8
    return-void
.end method
