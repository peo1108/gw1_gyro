.class public LX6/b;
.super LW5/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LX6/b$a;
    }
.end annotation


# instance fields
.field public f:Lcom/zjx/jyandroid/ForegroundService/UI/a;

.field public g:Z

.field public h:I

.field public i:Ls5/k;

.field public j:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->F()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v0

    iput-object v0, p0, LX6/b;->f:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, LX6/b;->g:Z

    const/4 v0, -0x1

    iput v0, p0, LX6/b;->h:I

    invoke-static {}, Ls5/k;->i()Ls5/k;

    move-result-object v0

    iput-object v0, p0, LX6/b;->i:Ls5/k;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, LX6/b;->j:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public declared-synchronized b(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, LX6/b;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p0, LW5/c;->c:Landroid/graphics/Point;

    iget-object v0, p0, LX6/b;->i:Ls5/k;

    iget v1, p0, LX6/b;->h:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {v0, v1, v2, p1}, Ls5/k;->p(IFF)V

    const/4 p1, 0x0

    iput-boolean p1, p0, LX6/b;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized e(II)V
    .locals 2

    monitor-enter p0

    const/16 p1, 0xff

    if-le p2, p1, :cond_0

    :try_start_0
    iget-object p1, p0, LX6/b;->f:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->u()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-boolean p1, p0, LX6/b;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object p1, p0, LW5/c;->c:Landroid/graphics/Point;

    iget-object p2, p0, LX6/b;->i:Ls5/k;

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    const/4 v1, 0x5

    invoke-virtual {p2, v0, p1, v1, v1}, Ls5/k;->l(FFII)I

    move-result p1

    iput p1, p0, LX6/b;->h:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LX6/b;->g:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final i(Landroid/graphics/Point;Landroid/graphics/Point;I)V
    .locals 11

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    const/4 v2, 0x5

    div-int/2addr v1, v2

    int-to-double v3, v1

    iget p2, p2, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, p1

    div-int/2addr p2, v2

    int-to-double p1, p2

    const/4 v1, 0x0

    :catch_0
    :goto_0
    if-ge v1, v2, :cond_0

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-double v5, v5

    add-double/2addr v5, v3

    iget-object v7, p0, LX6/b;->j:Ljava/util/Random;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-double v9, v7

    add-double/2addr v5, v9

    const-wide/high16 v9, 0x4014000000000000L    # 5.0

    sub-double/2addr v5, v9

    double-to-int v5, v5

    iput v5, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-double v5, v5

    add-double/2addr v5, p1

    iget-object v7, p0, LX6/b;->j:Ljava/util/Random;

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-double v7, v7

    add-double/2addr v5, v7

    sub-double/2addr v5, v9

    double-to-int v5, v5

    iput v5, v0, Landroid/graphics/Point;->y:I

    iget-object v6, p0, LX6/b;->i:Ls5/k;

    iget v7, v0, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    int-to-float v5, v5

    invoke-virtual {v6, p3, v7, v5}, Ls5/k;->n(IFF)V

    add-int/lit8 v1, v1, 0x1

    const-wide/16 v5, 0xa

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized j(LX6/b$a;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LX6/b;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, LW5/c;->c:Landroid/graphics/Point;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    iget v3, p0, LW5/c;->e:I

    add-int/2addr v2, v3

    invoke-direct {p1, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    new-instance p1, Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, LW5/c;->d:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p1, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    :cond_3
    new-instance p1, Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, LW5/c;->d:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p1, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    :cond_4
    new-instance p1, Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    iget v3, p0, LW5/c;->e:I

    sub-int/2addr v2, v3

    invoke-direct {p1, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    :goto_0
    iget v1, p0, LX6/b;->h:I

    invoke-virtual {p0, v0, p1, v1}, LX6/b;->i(Landroid/graphics/Point;Landroid/graphics/Point;I)V

    iget-object v0, p0, LX6/b;->i:Ls5/k;

    iget v1, p0, LX6/b;->h:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {v0, v1, v2, p1}, Ls5/k;->p(IFF)V

    const/4 p1, 0x0

    iput-boolean p1, p0, LX6/b;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
