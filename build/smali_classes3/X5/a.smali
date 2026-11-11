.class public LX5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln7/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LX5/a$b;
    }
.end annotation


# instance fields
.field public A:Z

.field public a:Ljava/lang/Runnable;

.field public b:Landroid/graphics/Point;

.field public c:I

.field public d:Ls5/k;

.field public dragSmoothReady:Z

.field public dragSmoothSteps:I

.field public dragSmoothTargetX:I

.field public dragSmoothTargetY:I

.field public dragSmoothX:I

.field public dragSmoothY:I

.field public e:Landroid/graphics/Point;

.field public f:Z

.field public g:I

.field public h:Ljava/lang/Object;

.field public i:Ljava/util/Random;

.field public final j:Ljava/util/concurrent/ExecutorService;

.field public k:Ljava/util/concurrent/Future;

.field public l:[Landroid/graphics/Point;

.field public m:Z

.field public n:Ln7/a$a;

.field public o:F

.field public p:F

.field public pendingGesture:LS5/b;

.field public q:I

.field public r:I

.field public s:I

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln7/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln7/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ljava/lang/Object;

.field public w:Z

.field public x:LR5/a;

.field public y:Landroid/os/Handler;

.field public z:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Point;ILjava/util/concurrent/ExecutorService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LX5/a$a;

    invoke-direct {v0, p0}, LX5/a$a;-><init>(LX5/a;)V

    iput-object v0, p0, LX5/a;->a:Ljava/lang/Runnable;

    sget-object v0, Ln7/a$a;->X:Ln7/a$a;

    iput-object v0, p0, LX5/a;->n:Ln7/a$a;

    const/4 v0, 0x0

    iput v0, p0, LX5/a;->q:I

    const/16 v1, 0x8

    iput v1, p0, LX5/a;->r:I

    iput v1, p0, LX5/a;->s:I

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, LX5/a;->t:Ljava/util/List;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, LX5/a;->u:Ljava/util/List;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, LX5/a;->v:Ljava/lang/Object;

    iput-boolean v0, p0, LX5/a;->w:Z

    invoke-static {}, LR5/a;->w()LR5/a;

    move-result-object v1

    iput-object v1, p0, LX5/a;->x:LR5/a;

    invoke-virtual {v1}, LR5/a;->k()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, LX5/a;->y:Landroid/os/Handler;

    iput-boolean v0, p0, LX5/a;->A:Z

    iput v0, p0, LX5/a;->dragSmoothSteps:I

    iput-boolean v0, p0, LX5/a;->dragSmoothReady:Z

    iput-object p1, p0, LX5/a;->b:Landroid/graphics/Point;

    iput p2, p0, LX5/a;->c:I

    invoke-static {}, Ls5/k;->i()Ls5/k;

    move-result-object v0

    iput-object v0, p0, LX5/a;->d:Ls5/k;

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, LX5/a;->e:Landroid/graphics/Point;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LX5/a;->h:Ljava/lang/Object;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, LX5/a;->i:Ljava/util/Random;

    iput-object p3, p0, LX5/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, p1, p2}, LX5/a;->t(Landroid/graphics/Point;I)V

    iget-object p1, p0, LX5/a;->x:LR5/a;

    invoke-virtual {p1}, LR5/a;->g()I

    move-result p1

    iput p1, p0, LX5/a;->r:I

    iget-object p1, p0, LX5/a;->x:LR5/a;

    invoke-virtual {p1}, LR5/a;->h()I

    move-result p1

    iput p1, p0, LX5/a;->s:I

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->k()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b$c;->f(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, LX5/a;->w:Z

    iget-object p1, p0, LX5/a;->x:LR5/a;

    invoke-virtual {p1}, LR5/a;->a()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$h;->j()Landroid/util/Size;

    move-result-object p1

    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p3

    const/16 v0, 0xa

    sub-int/2addr p3, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-direct {p2, v0, v0, p3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, LX5/a;->z:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    const p2, -0x7fffffff

    const p3, 0x7fffffff

    invoke-direct {p1, p2, p2, p3, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, LX5/a;->z:Landroid/graphics/Rect;

    :goto_0
    return-void
.end method

.method public static synthetic j(LX5/a;)Z
    .locals 0

    iget-boolean p0, p0, LX5/a;->f:Z

    return p0
.end method

.method public static synthetic k(LX5/a;)Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, LX5/a;->e:Landroid/graphics/Point;

    return-object p0
.end method

.method public static synthetic l(LX5/a;)I
    .locals 0

    iget p0, p0, LX5/a;->g:I

    return p0
.end method

.method public static synthetic m(LX5/a;)Ls5/k;
    .locals 0

    iget-object p0, p0, LX5/a;->d:Ls5/k;

    return-object p0
.end method

.method public static synthetic n(LX5/a;)LR5/a;
    .locals 0

    iget-object p0, p0, LX5/a;->x:LR5/a;

    return-object p0
.end method

.method public static synthetic o(LX5/a;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, LX5/a;->a:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, LX5/a;->m:Z

    return v0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, LX5/a;->A:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LX5/a;->s()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LX5/a;->r()V

    :goto_0
    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, LX5/a;->c:I

    return v0
.end method

.method public d(Ln7/a$b;)V
    .locals 2

    iget v0, p0, LX5/a;->q:I

    if-lez v0, :cond_0

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, LX5/a;->v:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    sget-object v1, Ln7/a$b;->Y:Ln7/a$b;

    if-eq p1, v1, :cond_2

    sget-object v1, Ln7/a$b;->Z:Ln7/a$b;

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, LX5/a;->u:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    iget-object v1, p0, LX5/a;->t:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_2
    iget-boolean p1, p0, LX5/a;->A:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, LX5/a;->r()V

    :cond_3
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public e()V
    .locals 0

    invoke-virtual {p0}, LX5/a;->s()V

    invoke-virtual {p0}, LX5/a;->r()V

    return-void
.end method

.method public f()Ln7/a$a;
    .locals 1

    iget-object v0, p0, LX5/a;->n:Ln7/a$a;

    return-object v0
.end method

.method public g(Ln7/a$a;)V
    .locals 1

    iget-object v0, p0, LX5/a;->n:Ln7/a$a;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, LX5/a;->n:Ln7/a$a;

    invoke-virtual {p0}, LX5/a;->r()V

    :cond_0
    return-void
.end method

.method public h(I)V
    .locals 1

    iput p1, p0, LX5/a;->c:I

    iget-object v0, p0, LX5/a;->b:Landroid/graphics/Point;

    invoke-virtual {p0, v0, p1}, LX5/a;->t(Landroid/graphics/Point;I)V

    invoke-virtual {p0}, LX5/a;->r()V

    return-void
.end method

.method public i(Ln7/a$b;)V
    .locals 2

    iget v0, p0, LX5/a;->q:I

    if-lez v0, :cond_0

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, LX5/a;->v:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    sget-object v1, Ln7/a$b;->Y:Ln7/a$b;

    if-eq p1, v1, :cond_2

    sget-object v1, Ln7/a$b;->Z:Ln7/a$b;

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, LX5/a;->u:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    iget-object v1, p0, LX5/a;->t:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-boolean p1, p0, LX5/a;->A:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, LX5/a;->r()V

    :cond_3
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final p(LX5/a$b;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-boolean v2, LA6/d;->e:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GW_DRIVE_TRACE joystick_decision dir="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LA6/d;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v2, v1, LX5/a;->h:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, v1, LX5/a;->f:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_3

    iget-object v0, v1, LX5/a;->x:LR5/a;

    invoke-virtual {v0}, LR5/a;->j()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_1

    :try_start_1
    iget-object v0, v1, LX5/a;->x:LR5/a;

    invoke-virtual {v0}, LR5/a;->j()I

    move-result v0

    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catch_0
    :cond_1
    :goto_0
    :try_start_2
    const/4 v9, 0x0

    if-nez v9, :cond_2

    iget-object v0, v1, LX5/a;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v5, v1, LX5/a;->i:Ljava/util/Random;

    iget-object v6, v1, LX5/a;->x:LR5/a;

    invoke-virtual {v6}, LR5/a;->ensureLoaded()V

    iget v7, v6, LR5/a;->o:I

    iget v6, v6, LR5/a;->startRandomScalePct:I

    mul-int/2addr v7, v6

    add-int/lit8 v7, v7, 0x63

    const/16 v6, 0x64

    div-int/2addr v7, v6

    invoke-static {v5, v7}, Lcom/zjx/jyandroid/base/util/b$f;->c(Ljava/util/Random;I)I

    move-result v5

    add-int/2addr v0, v5

    iget-object v5, v1, LX5/a;->b:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, v1, LX5/a;->i:Ljava/util/Random;

    iget-object v7, v1, LX5/a;->x:LR5/a;

    invoke-virtual {v7}, LR5/a;->ensureLoaded()V

    iget v8, v7, LR5/a;->o:I

    iget v7, v7, LR5/a;->startRandomScalePct:I

    mul-int/2addr v8, v7

    add-int/lit8 v8, v8, 0x63

    const/16 v7, 0x64

    div-int/2addr v8, v7

    invoke-static {v6, v8}, Lcom/zjx/jyandroid/base/util/b$f;->c(Ljava/util/Random;I)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, v1, LX5/a;->d:Ls5/k;

    int-to-float v7, v0

    int-to-float v8, v5

    invoke-virtual {v6, v7, v8}, Ls5/k;->j(FF)I

    move-result v6

    iput v6, v1, LX5/a;->g:I

    iput-boolean v4, v1, LX5/a;->f:Z

    iget-object v6, v1, LX5/a;->e:Landroid/graphics/Point;

    iput v0, v6, Landroid/graphics/Point;->x:I

    iput v5, v6, Landroid/graphics/Point;->y:I

    move v0, v4

    goto :goto_1

    :cond_2
    monitor-exit v2

    return-void

    :cond_3
    move v0, v3

    :goto_1
    iget-object v5, v1, LX5/a;->pendingGesture:LS5/b;

    if-eqz v5, :cond_4

    iput-boolean v4, v5, LS5/b;->s6:Z

    :cond_4
    iget-object v5, v1, LX5/a;->k:Ljava/util/concurrent/Future;

    if-eqz v5, :cond_5

    invoke-interface {v5, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_5
    iget-object v5, v1, LX5/a;->x:LR5/a;

    invoke-virtual {v5}, LR5/a;->c()Landroid/util/Range;

    move-result-object v5

    iget-object v6, v1, LX5/a;->x:LR5/a;

    invoke-virtual {v6}, LR5/a;->b()LA6/i;

    move-result-object v6

    iget-object v7, v1, LX5/a;->i:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextBoolean()Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_6

    move v7, v4

    goto :goto_2

    :cond_6
    move v7, v8

    :goto_2
    invoke-virtual {v6}, LA6/i;->d()F

    move-result v6

    int-to-float v7, v7

    mul-float/2addr v6, v7

    iget-object v7, v1, LX5/a;->x:LR5/a;

    iget v7, v7, LR5/a;->endpointRandomScalePct:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    iget-object v7, v1, LX5/a;->l:[Landroid/graphics/Point;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v7, v7, v9

    iget-object v9, v1, LX5/a;->i:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextBoolean()Z

    move-result v9

    if-eqz v9, :cond_7

    move v9, v4

    goto :goto_3

    :cond_7
    move v9, v8

    :goto_3
    iget-object v10, v1, LX5/a;->i:Ljava/util/Random;

    invoke-virtual {v10}, Ljava/util/Random;->nextBoolean()Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_4

    :cond_8
    move v4, v8

    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const/high16 v10, 0x42340000    # 45.0f

    packed-switch v8, :pswitch_data_0

    iget v4, v7, Landroid/graphics/Point;->x:I

    iget-object v6, v1, LX5/a;->i:Ljava/util/Random;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v8}, Lcom/zjx/jyandroid/base/util/b$f;->c(Ljava/util/Random;I)I

    move-result v6

    add-int/2addr v4, v6

    int-to-double v8, v4

    iget v4, v7, Landroid/graphics/Point;->y:I

    iget-object v6, v1, LX5/a;->i:Ljava/util/Random;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v6, v5}, Lcom/zjx/jyandroid/base/util/b$f;->c(Ljava/util/Random;I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-double v4, v4

    goto/16 :goto_6

    :pswitch_0
    iget v7, v7, Landroid/graphics/Point;->y:I

    iget-object v8, v1, LX5/a;->i:Ljava/util/Random;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v8, v9, v5}, Lcom/zjx/jyandroid/base/util/b$f;->d(Ljava/util/Random;II)I

    move-result v5

    mul-int/2addr v5, v4

    add-int/2addr v5, v7

    int-to-double v4, v5

    iget-object v7, v1, LX5/a;->b:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    int-to-double v8, v8

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-double v11, v7

    sub-double v11, v4, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    add-float/2addr v6, v10

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    :goto_5
    mul-double/2addr v11, v6

    add-double/2addr v8, v11

    goto/16 :goto_6

    :pswitch_1
    iget v4, v7, Landroid/graphics/Point;->x:I

    iget-object v7, v1, LX5/a;->i:Ljava/util/Random;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v7, v8, v5}, Lcom/zjx/jyandroid/base/util/b$f;->d(Ljava/util/Random;II)I

    move-result v5

    mul-int/2addr v5, v9

    add-int/2addr v5, v4

    int-to-double v8, v5

    iget-object v4, v1, LX5/a;->b:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->y:I

    int-to-double v11, v5

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-double v4, v4

    sub-double v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    add-float/2addr v6, v10

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v4, v11

    goto/16 :goto_6

    :pswitch_2
    iget v4, v7, Landroid/graphics/Point;->x:I

    iget-object v7, v1, LX5/a;->i:Ljava/util/Random;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v7, v8, v5}, Lcom/zjx/jyandroid/base/util/b$f;->d(Ljava/util/Random;II)I

    move-result v5

    mul-int/2addr v5, v9

    add-int/2addr v5, v4

    int-to-double v8, v5

    iget-object v4, v1, LX5/a;->b:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->y:I

    int-to-double v11, v5

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-double v4, v4

    sub-double v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    sub-float/2addr v6, v10

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double v4, v11, v4

    goto/16 :goto_6

    :pswitch_3
    iget v4, v7, Landroid/graphics/Point;->x:I

    iget-object v7, v1, LX5/a;->i:Ljava/util/Random;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v7, v8, v5}, Lcom/zjx/jyandroid/base/util/b$f;->d(Ljava/util/Random;II)I

    move-result v5

    mul-int/2addr v5, v9

    add-int/2addr v5, v4

    int-to-double v8, v5

    iget-object v4, v1, LX5/a;->b:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->y:I

    int-to-double v10, v5

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-double v4, v4

    sub-double v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v4, v10

    goto :goto_6

    :pswitch_4
    iget v7, v7, Landroid/graphics/Point;->y:I

    iget-object v8, v1, LX5/a;->i:Ljava/util/Random;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v8, v9, v5}, Lcom/zjx/jyandroid/base/util/b$f;->d(Ljava/util/Random;II)I

    move-result v5

    mul-int/2addr v5, v4

    add-int/2addr v5, v7

    int-to-double v4, v5

    iget-object v7, v1, LX5/a;->b:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    int-to-double v8, v8

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-double v11, v7

    sub-double v11, v4, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    sub-float/2addr v6, v10

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    goto/16 :goto_5

    :pswitch_5
    iget v7, v7, Landroid/graphics/Point;->y:I

    iget-object v8, v1, LX5/a;->i:Ljava/util/Random;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v8, v9, v5}, Lcom/zjx/jyandroid/base/util/b$f;->d(Ljava/util/Random;II)I

    move-result v5

    mul-int/2addr v5, v4

    add-int/2addr v5, v7

    int-to-double v4, v5

    iget-object v7, v1, LX5/a;->b:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    int-to-double v8, v8

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-double v10, v7

    sub-double v10, v4, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    :goto_6
    new-instance v6, Landroid/graphics/Point;

    double-to-int v7, v8

    double-to-int v4, v4

    invoke-direct {v6, v7, v4}, Landroid/graphics/Point;-><init>(II)V

    iget-boolean v4, v1, LX5/a;->w:Z

    if-eqz v4, :cond_9

    new-instance v3, LR5/e;

    iget-object v11, v1, LX5/a;->e:Landroid/graphics/Point;

    iget v13, v1, LX5/a;->g:I

    iget-object v14, v1, LX5/a;->d:Ls5/k;

    const/4 v15, 0x4

    const/16 v16, 0x4

    move-object v10, v3

    move-object v12, v6

    invoke-direct/range {v10 .. v16}, LR5/e;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;ILs5/k;II)V

    iput-boolean v0, v3, LR5/e;->r6:Z

    goto/16 :goto_a

    :cond_9
    iget v0, v6, Landroid/graphics/Point;->x:I

    iget-object v4, v1, LX5/a;->z:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget-object v7, v1, LX5/a;->x:LR5/a;

    iget v7, v7, LR5/a;->endpointRandomScalePct:I

    if-lez v7, :cond_a

    const/16 v8, 0xd

    mul-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x63

    const/16 v8, 0x64

    div-int/2addr v7, v8

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    :goto_7
    if-ge v0, v5, :cond_b

    invoke-static {v3, v7}, Lcom/zjx/jyandroid/base/util/b$f;->b(II)I

    move-result v0

    add-int/2addr v5, v0

    iput v5, v6, Landroid/graphics/Point;->x:I

    goto :goto_8

    :cond_b
    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-le v0, v4, :cond_c

    invoke-static {v3, v7}, Lcom/zjx/jyandroid/base/util/b$f;->b(II)I

    move-result v0

    sub-int/2addr v4, v0

    iput v4, v6, Landroid/graphics/Point;->x:I

    :cond_c
    :goto_8
    iget v0, v6, Landroid/graphics/Point;->y:I

    iget-object v4, v1, LX5/a;->z:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    if-ge v0, v5, :cond_d

    invoke-static {v3, v7}, Lcom/zjx/jyandroid/base/util/b$f;->b(II)I

    move-result v0

    add-int/2addr v5, v0

    iput v5, v6, Landroid/graphics/Point;->y:I

    goto :goto_9

    :cond_d
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v0, v4, :cond_e

    invoke-static {v3, v7}, Lcom/zjx/jyandroid/base/util/b$f;->b(II)I

    move-result v0

    sub-int/2addr v4, v0

    iput v4, v6, Landroid/graphics/Point;->y:I

    :cond_e
    :goto_9
    iget-object v0, v1, LX5/a;->x:LR5/a;

    invoke-virtual {v0}, LR5/a;->t()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v3, LS5/a;

    iget-object v11, v1, LX5/a;->e:Landroid/graphics/Point;

    iget v13, v1, LX5/a;->g:I

    iget-object v14, v1, LX5/a;->d:Ls5/k;

    iget v15, v1, LX5/a;->r:I

    iget-object v0, v1, LX5/a;->x:LR5/a;

    invoke-virtual {v0}, LR5/a;->h()I

    move-result v16

    move-object v10, v3

    move-object v12, v6

    invoke-direct/range {v10 .. v16}, LS5/a;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;ILs5/k;II)V

    goto :goto_a

    :cond_f
    new-instance v3, LS5/b;

    iget-object v11, v1, LX5/a;->e:Landroid/graphics/Point;

    iget v13, v1, LX5/a;->g:I

    iget-object v14, v1, LX5/a;->d:Ls5/k;

    iget-object v0, v1, LX5/a;->x:LR5/a;

    invoke-virtual {v0}, LR5/a;->g()I

    move-result v15

    iget-object v0, v1, LX5/a;->x:LR5/a;

    invoke-virtual {v0}, LR5/a;->h()I

    move-result v16

    move-object v10, v3

    move-object v12, v6

    invoke-direct/range {v10 .. v16}, LS5/b;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;ILs5/k;II)V

    iget-object v0, v1, LX5/a;->x:LR5/a;

    invoke-virtual {v0}, LR5/a;->e()I

    move-result v0

    iput v0, v3, LS5/b;->Y:I

    iget-object v0, v1, LX5/a;->x:LR5/a;

    invoke-virtual {v0}, LR5/a;->f()I

    move-result v0

    iput v0, v3, LS5/b;->Z:I

    :goto_a
    const/4 v0, 0x0

    iput-boolean v0, v3, LS5/b;->s6:Z

    iput-object v3, v1, LX5/a;->pendingGesture:LS5/b;

    iput-object v6, v1, LX5/a;->e:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput v0, v1, LX5/a;->dragSmoothSteps:I

    iput-boolean v0, v1, LX5/a;->dragSmoothReady:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, v1, LX5/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v1, LX5/a;->k:Ljava/util/concurrent/Future;

    iget-object v0, v1, LX5/a;->x:LR5/a;

    invoke-virtual {v0}, LR5/a;->k()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v3, v1, LX5/a;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, v1, LX5/a;->a:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    :cond_10
    :try_start_4
    monitor-exit v2

    return-void

    :goto_b
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public q(FF)V
    .locals 7

    iget-object v0, p0, LX5/a;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, LX5/a;->o:F

    iput p2, p0, LX5/a;->p:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    invoke-virtual {p0}, LX5/a;->s()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, LX5/a;->f:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, LX5/a;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, LX5/a;->i:Ljava/util/Random;

    iget-object v4, p0, LX5/a;->x:LR5/a;

    invoke-virtual {v4}, LR5/a;->ensureLoaded()V

    iget v4, v4, LR5/a;->startRandomScalePct:I

    const/4 v5, 0x5

    mul-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x63

    const/16 v5, 0x64

    div-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/zjx/jyandroid/base/util/b$f;->c(Ljava/util/Random;I)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, LX5/a;->b:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, LX5/a;->i:Ljava/util/Random;

    iget-object v5, p0, LX5/a;->x:LR5/a;

    iget v5, v5, LR5/a;->startRandomScalePct:I

    const/16 v6, 0xa

    mul-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x63

    const/16 v6, 0x64

    div-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/zjx/jyandroid/base/util/b$f;->c(Ljava/util/Random;I)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, LX5/a;->d:Ls5/k;

    int-to-float v5, v1

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Ls5/k;->j(FF)I

    move-result v4

    iput v4, p0, LX5/a;->g:I

    iput-boolean v2, p0, LX5/a;->f:Z

    iget-object v4, p0, LX5/a;->e:Landroid/graphics/Point;

    iput v1, v4, Landroid/graphics/Point;->x:I

    iput v3, v4, Landroid/graphics/Point;->y:I

    :cond_1
    iget-object v1, p0, LX5/a;->b:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, p0, LX5/a;->c:I

    int-to-float v5, v4

    mul-float/2addr v5, p1

    add-float/2addr v5, v3

    float-to-int p1, v5

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    int-to-float v3, v4

    mul-float/2addr v3, p2

    sub-float/2addr v1, v3

    float-to-int p2, v1

    iget-object v1, p0, LX5/a;->k:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_2

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iget-object v2, p0, LX5/a;->d:Ls5/k;

    iget v3, p0, LX5/a;->g:I

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v2, v3, p1, p2}, Ls5/k;->n(IFF)V

    iput-object v1, p0, LX5/a;->e:Landroid/graphics/Point;

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public r()V
    .locals 7

    iget-object v0, p0, LX5/a;->v:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LX5/a;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_0

    invoke-virtual {p0}, LX5/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LX5/a;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_1

    :cond_0
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_3

    :cond_1
    iget-object v1, p0, LX5/a;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln7/a$b;

    sget-object v5, Ln7/a$b;->X:Ln7/a$b;

    if-ne v1, v5, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    sget-object v5, Ln7/a$b;->V1:Ln7/a$b;

    if-ne v1, v5, :cond_0

    move v1, v2

    :goto_0
    iget-object v5, p0, LX5/a;->t:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {p0}, LX5/a;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, LX5/a;->t:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v5, p0, LX5/a;->t:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln7/a$b;

    sget-object v6, Ln7/a$b;->Y:Ln7/a$b;

    if-ne v5, v6, :cond_4

    move v3, v4

    goto :goto_1

    :cond_4
    sget-object v6, Ln7/a$b;->Z:Ln7/a$b;

    if-ne v5, v6, :cond_5

    move v3, v2

    :cond_5
    :goto_1
    if-ne v1, v4, :cond_c

    if-nez v3, :cond_6

    sget-object v1, LX5/a$b;->X:LX5/a$b;

    invoke-virtual {p0, v1}, LX5/a;->p(LX5/a$b;)V

    goto/16 :goto_2

    :cond_6
    if-ne v3, v4, :cond_9

    iget-object v1, p0, LX5/a;->n:Ln7/a$a;

    sget-object v2, Ln7/a$a;->X:Ln7/a$a;

    if-ne v1, v2, :cond_7

    sget-object v1, LX5/a$b;->Y:LX5/a$b;

    invoke-virtual {p0, v1}, LX5/a;->p(LX5/a$b;)V

    goto/16 :goto_2

    :cond_7
    sget-object v2, Ln7/a$a;->Y:Ln7/a$a;

    if-ne v1, v2, :cond_8

    sget-object v1, LX5/a$b;->s6:LX5/a$b;

    invoke-virtual {p0, v1}, LX5/a;->p(LX5/a$b;)V

    goto/16 :goto_2

    :cond_8
    sget-object v2, Ln7/a$a;->Z:Ln7/a$a;

    if-ne v1, v2, :cond_16

    sget-object v1, LX5/a$b;->o6:LX5/a$b;

    invoke-virtual {p0, v1}, LX5/a;->p(LX5/a$b;)V

    goto/16 :goto_2

    :cond_9
    if-ne v3, v2, :cond_16

    iget-object v1, p0, LX5/a;->n:Ln7/a$a;

    sget-object v2, Ln7/a$a;->X:Ln7/a$a;

    if-ne v1, v2, :cond_a

    sget-object v1, LX5/a$b;->n6:LX5/a$b;

    invoke-virtual {p0, v1}, LX5/a;->p(LX5/a$b;)V

    goto/16 :goto_2

    :cond_a
    sget-object v2, Ln7/a$a;->Y:Ln7/a$a;

    if-ne v1, v2, :cond_b

    sget-object v1, LX5/a$b;->t6:LX5/a$b;

    invoke-virtual {p0, v1}, LX5/a;->p(LX5/a$b;)V

    goto/16 :goto_2

    :cond_b
    sget-object v2, Ln7/a$a;->Z:Ln7/a$a;

    if-ne v1, v2, :cond_16

    sget-object v1, LX5/a$b;->p6:LX5/a$b;

    invoke-virtual {p0, v1}, LX5/a;->p(LX5/a$b;)V

    goto/16 :goto_2

    :cond_c
    if-nez v1, :cond_f

    if-nez v3, :cond_d

    invoke-virtual {p0}, LX5/a;->s()V

    goto :goto_2

    :cond_d
    if-ne v3, v4, :cond_e

    sget-object v1, LX5/a$b;->Z:LX5/a$b;

    invoke-virtual {p0, v1}, LX5/a;->p(LX5/a$b;)V

    goto :goto_2

    :cond_e
    if-ne v3, v2, :cond_16

    sget-object v1, LX5/a$b;->m6:LX5/a$b;

    invoke-virtual {p0, v1}, LX5/a;->p(LX5/a$b;)V

    goto :goto_2

    :cond_f
    if-ne v1, v2, :cond_16

    if-nez v3, :cond_10

    sget-object v1, LX5/a$b;->k6:LX5/a$b;

    invoke-virtual {p0, v1}, LX5/a;->p(LX5/a$b;)V

    goto :goto_2

    :cond_10
    if-ne v3, v4, :cond_13

    iget-object v1, p0, LX5/a;->n:Ln7/a$a;

    sget-object v2, Ln7/a$a;->X:Ln7/a$a;

    if-ne v1, v2, :cond_11

    sget-object v1, LX5/a$b;->V1:LX5/a$b;

    invoke-virtual {p0, v1}, LX5/a;->p(LX5/a$b;)V

    goto :goto_2

    :cond_11
    sget-object v2, Ln7/a$a;->Y:Ln7/a$a;

    if-ne v1, v2, :cond_12

    sget-object v1, LX5/a$b;->u6:LX5/a$b;

    invoke-virtual {p0, v1}, LX5/a;->p(LX5/a$b;)V

    goto :goto_2

    :cond_12
    sget-object v2, Ln7/a$a;->Z:Ln7/a$a;

    if-ne v1, v2, :cond_16

    sget-object v1, LX5/a$b;->q6:LX5/a$b;

    invoke-virtual {p0, v1}, LX5/a;->p(LX5/a$b;)V

    goto :goto_2

    :cond_13
    if-ne v3, v2, :cond_16

    iget-object v1, p0, LX5/a;->n:Ln7/a$a;

    sget-object v2, Ln7/a$a;->X:Ln7/a$a;

    if-ne v1, v2, :cond_14

    sget-object v1, LX5/a$b;->l6:LX5/a$b;

    invoke-virtual {p0, v1}, LX5/a;->p(LX5/a$b;)V

    goto :goto_2

    :cond_14
    sget-object v2, Ln7/a$a;->Y:Ln7/a$a;

    if-ne v1, v2, :cond_15

    sget-object v1, LX5/a$b;->v6:LX5/a$b;

    invoke-virtual {p0, v1}, LX5/a;->p(LX5/a$b;)V

    goto :goto_2

    :cond_15
    sget-object v2, Ln7/a$a;->Z:Ln7/a$a;

    if-ne v1, v2, :cond_16

    sget-object v1, LX5/a$b;->r6:LX5/a$b;

    invoke-virtual {p0, v1}, LX5/a;->p(LX5/a$b;)V

    :cond_16
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final s()V
    .locals 5

    sget-boolean v1, LA6/d;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "GW_DRIVE_TRACE joystick_release"

    invoke-static {v1}, LA6/d;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, LX5/a;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LX5/a;->f:Z

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, LX5/a;->x:LR5/a;

    invoke-virtual {v1}, LR5/a;->j()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_2

    :try_start_1
    iget-object v1, p0, LX5/a;->x:LR5/a;

    invoke-virtual {v1}, LR5/a;->j()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_2
    :try_start_2
    iget-object v1, p0, LX5/a;->pendingGesture:LS5/b;

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, v1, LS5/b;->s6:Z

    :cond_3
    iget-object v1, p0, LX5/a;->k:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_4
    iget-object v1, p0, LX5/a;->d:Ls5/k;

    iget v2, p0, LX5/a;->g:I

    iget-object v3, p0, LX5/a;->e:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ls5/k;->p(IFF)V

    const/4 v1, 0x0

    iput-boolean v1, p0, LX5/a;->f:Z

    iput v1, p0, LX5/a;->dragSmoothSteps:I

    iput-boolean v1, p0, LX5/a;->dragSmoothReady:Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setRecenterWhenPressingOppositeDirection(Z)V
    .locals 0

    iput-boolean p1, p0, LX5/a;->m:Z

    return-void
.end method

.method public t(Landroid/graphics/Point;I)V
    .locals 8

    iget-object v0, p0, LX5/a;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, LX5/a$b;->values()[LX5/a$b;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Landroid/graphics/Point;

    iput-object v1, p0, LX5/a;->l:[Landroid/graphics/Point;

    sget-object v2, LX5/a$b;->X:LX5/a$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    iget v4, p1, Landroid/graphics/Point;->x:I

    iget v5, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, p2

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v1, v2

    iget-object v1, p0, LX5/a;->l:[Landroid/graphics/Point;

    sget-object v2, LX5/a$b;->Y:LX5/a$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    iget v4, p1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    int-to-float v5, p2

    const v6, 0x3f666666    # 0.9f

    mul-float/2addr v6, v5

    sub-float/2addr v4, v6

    float-to-int v4, v4

    iget v7, p1, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    sub-float/2addr v7, v6

    float-to-int v7, v7

    invoke-direct {v3, v4, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v1, v2

    iget-object v1, p0, LX5/a;->l:[Landroid/graphics/Point;

    sget-object v2, LX5/a$b;->n6:LX5/a$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    iget v4, p1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget v7, p1, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    sub-float/2addr v7, v6

    float-to-int v7, v7

    invoke-direct {v3, v4, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v1, v2

    iget-object v1, p0, LX5/a;->l:[Landroid/graphics/Point;

    sget-object v2, LX5/a$b;->Z:LX5/a$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    iget v4, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, p2

    iget v7, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v4, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v1, v2

    iget-object v1, p0, LX5/a;->l:[Landroid/graphics/Point;

    sget-object v2, LX5/a$b;->V1:LX5/a$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    iget v4, p1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sub-float/2addr v4, v6

    float-to-int v4, v4

    iget v7, p1, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    add-float/2addr v7, v6

    float-to-int v7, v7

    invoke-direct {v3, v4, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v1, v2

    iget-object v1, p0, LX5/a;->l:[Landroid/graphics/Point;

    sget-object v2, LX5/a$b;->k6:LX5/a$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    iget v4, p1, Landroid/graphics/Point;->x:I

    iget v7, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v7, p2

    invoke-direct {v3, v4, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v1, v2

    iget-object v1, p0, LX5/a;->l:[Landroid/graphics/Point;

    sget-object v2, LX5/a$b;->l6:LX5/a$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    iget v4, p1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget v7, p1, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    add-float/2addr v7, v6

    float-to-int v6, v7

    invoke-direct {v3, v4, v6}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v1, v2

    iget-object v1, p0, LX5/a;->l:[Landroid/graphics/Point;

    sget-object v2, LX5/a$b;->m6:LX5/a$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    iget v4, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v4, p2

    iget p2, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v4, p2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v1, v2

    iget-object p2, p0, LX5/a;->l:[Landroid/graphics/Point;

    sget-object v1, LX5/a$b;->o6:LX5/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v5, v2

    const v2, 0x43778000    # 247.5f

    invoke-static {p1, v5, v2}, Lg7/d;->m(Landroid/graphics/Point;FF)Landroid/graphics/Point;

    move-result-object v2

    aput-object v2, p2, v1

    iget-object p2, p0, LX5/a;->l:[Landroid/graphics/Point;

    sget-object v1, LX5/a$b;->p6:LX5/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const v2, 0x43924000    # 292.5f

    invoke-static {p1, v5, v2}, Lg7/d;->m(Landroid/graphics/Point;FF)Landroid/graphics/Point;

    move-result-object v2

    aput-object v2, p2, v1

    iget-object p2, p0, LX5/a;->l:[Landroid/graphics/Point;

    sget-object v1, LX5/a$b;->q6:LX5/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/high16 v2, 0x42e10000    # 112.5f

    invoke-static {p1, v5, v2}, Lg7/d;->m(Landroid/graphics/Point;FF)Landroid/graphics/Point;

    move-result-object v2

    aput-object v2, p2, v1

    iget-object p2, p0, LX5/a;->l:[Landroid/graphics/Point;

    sget-object v1, LX5/a$b;->r6:LX5/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/high16 v2, 0x42870000    # 67.5f

    invoke-static {p1, v5, v2}, Lg7/d;->m(Landroid/graphics/Point;FF)Landroid/graphics/Point;

    move-result-object v2

    aput-object v2, p2, v1

    iget-object p2, p0, LX5/a;->l:[Landroid/graphics/Point;

    sget-object v1, LX5/a$b;->s6:LX5/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const v2, 0x434f8000    # 207.5f

    invoke-static {p1, v5, v2}, Lg7/d;->m(Landroid/graphics/Point;FF)Landroid/graphics/Point;

    move-result-object v2

    aput-object v2, p2, v1

    iget-object p2, p0, LX5/a;->l:[Landroid/graphics/Point;

    sget-object v1, LX5/a$b;->t6:LX5/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const v2, 0x43a64000    # 332.5f

    invoke-static {p1, v5, v2}, Lg7/d;->m(Landroid/graphics/Point;FF)Landroid/graphics/Point;

    move-result-object v2

    aput-object v2, p2, v1

    iget-object p2, p0, LX5/a;->l:[Landroid/graphics/Point;

    sget-object v1, LX5/a$b;->u6:LX5/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const v2, 0x431d8000    # 157.5f

    invoke-static {p1, v5, v2}, Lg7/d;->m(Landroid/graphics/Point;FF)Landroid/graphics/Point;

    move-result-object v2

    aput-object v2, p2, v1

    iget-object p2, p0, LX5/a;->l:[Landroid/graphics/Point;

    sget-object v1, LX5/a$b;->v6:LX5/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/high16 v2, 0x41b40000    # 22.5f

    invoke-static {p1, v5, v2}, Lg7/d;->m(Landroid/graphics/Point;FF)Landroid/graphics/Point;

    move-result-object p1

    aput-object p1, p2, v1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
