.class public LD6/i;
.super LW5/b;
.source "SourceFile"


# instance fields
.field public c:Z

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Ljava/util/concurrent/locks/Lock;

.field public final h:I

.field public i:Ljava/lang/Thread;

.field public j:Ls5/k;

.field public k:Lcom/zjx/jyandroid/ForegroundService/UI/a;

.field public l:Landroid/graphics/Point;

.field public m:Landroid/graphics/Point;

.field public n:Z

.field public o:I

.field public p:I

.field public final q:LN6/h$a;


# direct methods
.method public constructor <init>(LN6/h$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LD6/i;->c:Z

    iput v0, p0, LD6/i;->d:I

    iput-boolean v0, p0, LD6/i;->e:Z

    iput-boolean v0, p0, LD6/i;->f:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, LD6/i;->g:Ljava/util/concurrent/locks/Lock;

    const/16 v0, 0xa

    iput v0, p0, LD6/i;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, LD6/i;->i:Ljava/lang/Thread;

    invoke-static {}, Ls5/k;->i()Ls5/k;

    move-result-object v0

    iput-object v0, p0, LD6/i;->j:Ls5/k;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->F()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v0

    iput-object v0, p0, LD6/i;->k:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x64

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, LD6/i;->l:Landroid/graphics/Point;

    const/4 v0, 0x1

    iput-boolean v0, p0, LD6/i;->n:Z

    new-instance v0, LM6/j;

    invoke-direct {v0}, LM6/j;-><init>()V

    iget v1, v0, LM6/j;->l6:I

    invoke-virtual {p0, v1}, LD6/i;->r(I)V

    iget-object v0, v0, LM6/j;->m6:Landroid/graphics/Point;

    iput-object v0, p0, LD6/i;->m:Landroid/graphics/Point;

    iput-object p1, p0, LD6/i;->q:LN6/h$a;

    return-void
.end method


# virtual methods
.method public d(II)V
    .locals 0

    return-void
.end method

.method public e(II)V
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, LD6/i$a;->a:[I

    iget-object v2, v0, LD6/i;->q:LN6/h$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v3, 0xa

    const-wide/16 v5, 0x1e

    const/4 v7, 0x1

    const/4 v8, 0x5

    if-eq v1, v7, :cond_7

    const/4 v9, 0x2

    if-eq v1, v9, :cond_7

    const/4 v10, 0x3

    if-eq v1, v10, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, v0, LD6/i;->k:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget v1, v0, LD6/i;->d:I

    if-lez v1, :cond_2

    int-to-long v10, v1

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void

    :cond_2
    :goto_0
    iget-object v1, v0, LD6/i;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-boolean v1, v0, LW5/b;->b:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, LD6/i;->i:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, v0, LD6/i;->i:Ljava/lang/Thread;

    iget-object v1, v0, LD6/i;->k:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->m()Landroid/graphics/Point;

    move-result-object v1

    new-instance v11, Landroid/graphics/Point;

    iget v10, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, v9

    iget v12, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v11, v10, v12}, Landroid/graphics/Point;-><init>(II)V

    iget-boolean v10, v0, LD6/i;->n:Z

    if-nez v10, :cond_4

    new-instance v1, Landroid/graphics/Point;

    iget-object v10, v0, LD6/i;->m:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-static {v8}, Lcom/zjx/jyandroid/base/util/b$f;->a(I)I

    move-result v12

    add-int/2addr v12, v10

    iget-object v10, v0, LD6/i;->m:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-static {v8}, Lcom/zjx/jyandroid/base/util/b$f;->a(I)I

    move-result v13

    add-int/2addr v13, v10

    invoke-direct {v1, v12, v13}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    :cond_4
    new-instance v10, Landroid/graphics/Point;

    iget-object v12, v0, LD6/i;->m:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    invoke-static {v8}, Lcom/zjx/jyandroid/base/util/b$f;->a(I)I

    move-result v13

    add-int/2addr v13, v12

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v8}, Lcom/zjx/jyandroid/base/util/b$f;->a(I)I

    move-result v12

    add-int/2addr v12, v1

    invoke-direct {v10, v13, v12}, Landroid/graphics/Point;-><init>(II)V

    move-object v1, v10

    :goto_1
    iget-boolean v10, v0, LD6/i;->e:Z

    if-eqz v10, :cond_5

    iget-object v10, v0, LD6/i;->j:Ls5/k;

    iget v12, v11, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    iget v13, v11, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    invoke-virtual {v10, v12, v13}, Ls5/k;->j(FF)I

    move-result v10

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object v12, v0, LD6/i;->j:Ls5/k;

    iget v13, v11, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    iget v14, v11, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    invoke-virtual {v12, v10, v13, v14}, Ls5/k;->p(IFF)V

    :cond_5
    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    iget-object v10, v0, LD6/i;->j:Ls5/k;

    iget v12, v11, Landroid/graphics/Point;->x:I

    sub-int/2addr v12, v9

    int-to-float v9, v12

    iget v12, v11, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    invoke-virtual {v10, v9, v12}, Ls5/k;->j(FF)I

    move-result v9

    new-instance v15, LS5/b;

    iget-object v14, v0, LD6/i;->j:Ls5/k;

    const/16 v16, 0xa

    iget v13, v0, LD6/i;->p:I

    move-object v10, v15

    move-object v12, v1

    move/from16 v17, v13

    move v13, v9

    move-object v2, v15

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v10 .. v16}, LS5/b;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;ILs5/k;II)V

    iput v8, v2, LS5/b;->Y:I

    iput v8, v2, LS5/b;->Z:I

    iput-boolean v7, v0, LW5/b;->b:Z

    iget-object v7, v0, LD6/i;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {v2}, LS5/b;->run()V

    iget-object v2, v0, LD6/i;->j:Ls5/k;

    iget v7, v1, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget v8, v1, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v2, v9, v7, v8}, Ls5/k;->p(IFF)V

    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    iget-boolean v2, v0, LD6/i;->f:Z

    if-eqz v2, :cond_6

    iget-object v2, v0, LD6/i;->j:Ls5/k;

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Ls5/k;->j(FF)I

    move-result v2

    :try_start_4
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    iget-object v3, v0, LD6/i;->j:Ls5/k;

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v3, v2, v4, v1}, Ls5/k;->p(IFF)V

    :cond_6
    iget-object v1, v0, LD6/i;->i:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_d

    const/4 v1, 0x0

    iput-boolean v1, v0, LW5/b;->b:Z

    goto/16 :goto_5

    :cond_7
    iget v1, v0, LD6/i;->d:I

    if-lez v1, :cond_8

    int-to-long v1, v1

    :try_start_5
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_2

    :catch_5
    return-void

    :cond_8
    :goto_2
    iget-object v1, v0, LD6/i;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-boolean v1, v0, LW5/b;->b:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, LD6/i;->i:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, v0, LD6/i;->i:Ljava/lang/Thread;

    iget-object v1, v0, LD6/i;->q:LN6/h$a;

    sget-object v2, LN6/h$a;->Y:LN6/h$a;

    if-ne v1, v2, :cond_a

    iget-boolean v1, v0, LD6/i;->c:Z

    if-eqz v1, :cond_a

    new-instance v1, Landroid/graphics/Point;

    iget-object v2, v0, LD6/i;->m:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {v8}, Lcom/zjx/jyandroid/base/util/b$f;->a(I)I

    move-result v9

    add-int/2addr v9, v2

    iget-object v2, v0, LD6/i;->m:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v8}, Lcom/zjx/jyandroid/base/util/b$f;->a(I)I

    move-result v10

    add-int/2addr v10, v2

    invoke-direct {v1, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    iget-object v9, v0, LD6/i;->l:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    invoke-static {v8}, Lcom/zjx/jyandroid/base/util/b$f;->a(I)I

    move-result v10

    add-int/2addr v10, v9

    iget-object v9, v0, LD6/i;->l:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-static {v8}, Lcom/zjx/jyandroid/base/util/b$f;->a(I)I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {v2, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    :goto_3
    move-object v13, v1

    goto :goto_4

    :cond_a
    new-instance v1, Landroid/graphics/Point;

    iget-object v2, v0, LD6/i;->l:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {v8}, Lcom/zjx/jyandroid/base/util/b$f;->a(I)I

    move-result v9

    add-int/2addr v9, v2

    iget-object v2, v0, LD6/i;->l:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v8}, Lcom/zjx/jyandroid/base/util/b$f;->a(I)I

    move-result v10

    add-int/2addr v10, v2

    invoke-direct {v1, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    iget-object v9, v0, LD6/i;->m:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    invoke-static {v8}, Lcom/zjx/jyandroid/base/util/b$f;->a(I)I

    move-result v10

    add-int/2addr v10, v9

    iget-object v9, v0, LD6/i;->m:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-static {v8}, Lcom/zjx/jyandroid/base/util/b$f;->a(I)I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {v2, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_3

    :goto_4
    iget-boolean v1, v0, LD6/i;->c:Z

    xor-int/2addr v1, v7

    iput-boolean v1, v0, LD6/i;->c:Z

    iget-boolean v1, v0, LD6/i;->e:Z

    if-eqz v1, :cond_b

    iget-object v1, v0, LD6/i;->j:Ls5/k;

    iget v9, v13, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, v13, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Ls5/k;->j(FF)I

    move-result v1

    :try_start_6
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    iget-object v9, v0, LD6/i;->j:Ls5/k;

    iget v10, v13, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    iget v11, v13, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    invoke-virtual {v9, v1, v10, v11}, Ls5/k;->p(IFF)V

    :cond_b
    :try_start_7
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    iget-object v1, v0, LD6/i;->j:Ls5/k;

    iget v9, v13, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, v13, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Ls5/k;->j(FF)I

    move-result v1

    new-instance v9, LS5/b;

    iget-object v10, v0, LD6/i;->j:Ls5/k;

    const/16 v17, 0xa

    iget v11, v0, LD6/i;->p:I

    move-object v12, v9

    move-object v14, v2

    move v15, v1

    move-object/from16 v16, v10

    move/from16 v18, v11

    invoke-direct/range {v12 .. v18}, LS5/b;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;ILs5/k;II)V

    iput v8, v9, LS5/b;->Y:I

    iput v8, v9, LS5/b;->Z:I

    iput-boolean v7, v0, LW5/b;->b:Z

    iget-object v7, v0, LD6/i;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {v9}, LS5/b;->run()V

    iget-object v7, v0, LD6/i;->j:Ls5/k;

    iget v8, v2, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, v2, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-virtual {v7, v1, v8, v9}, Ls5/k;->p(IFF)V

    :try_start_8
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    iget-boolean v1, v0, LD6/i;->f:Z

    if-eqz v1, :cond_c

    iget-object v1, v0, LD6/i;->j:Ls5/k;

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Ls5/k;->j(FF)I

    move-result v1

    :try_start_9
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    iget-object v3, v0, LD6/i;->j:Ls5/k;

    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v3, v1, v4, v2}, Ls5/k;->p(IFF)V

    :cond_c
    iget-object v1, v0, LD6/i;->i:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_d

    const/4 v1, 0x0

    iput-boolean v1, v0, LW5/b;->b:Z

    :cond_d
    :goto_5
    return-void
.end method

.method public i()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, LD6/i;->m:Landroid/graphics/Point;

    return-object v0
.end method

.method public j()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, LD6/i;->l:Landroid/graphics/Point;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, LD6/i;->o:I

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, LD6/i;->n:Z

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, LD6/i;->f:Z

    return v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, LD6/i;->e:Z

    return v0
.end method

.method public o(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, LD6/i;->m:Landroid/graphics/Point;

    return-void
.end method

.method public p(Z)V
    .locals 0

    iput-boolean p1, p0, LD6/i;->n:Z

    return-void
.end method

.method public q(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, LD6/i;->l:Landroid/graphics/Point;

    return-void
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, LD6/i;->o:I

    div-int/lit8 p1, p1, 0xa

    iput p1, p0, LD6/i;->p:I

    return-void
.end method

.method public s(Z)V
    .locals 0

    iput-boolean p1, p0, LD6/i;->f:Z

    return-void
.end method

.method public t(Z)V
    .locals 0

    iput-boolean p1, p0, LD6/i;->e:Z

    return-void
.end method
