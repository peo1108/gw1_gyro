.class public LS5/a;
.super LS5/b;
.source "SourceFile"


# instance fields
.field public r6:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/graphics/Point;Landroid/graphics/Point;ILs5/k;II)V
    .locals 0

    invoke-direct/range {p0 .. p6}, LS5/b;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;ILs5/k;II)V

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$h;->j()Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, LS5/a;->r6:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v0, p0, LS5/b;->k6:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, LS5/b;->V1:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ge v1, v3, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ge v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    invoke-static {}, LR5/a;->w()LR5/a;

    move-result-object v7

    invoke-virtual {v7}, LR5/a;->ensureLoaded()V

    iget v12, v7, LR5/a;->randomScalePct:I

    const/16 v7, 0xc8

    mul-int v13, v12, v7

    add-int/lit8 v13, v13, 0x63

    const/16 v7, 0x64

    div-int/2addr v13, v7

    mul-int/2addr v6, v13

    sub-int/2addr v3, v6

    add-int/2addr v1, v6

    mul-int/2addr v4, v13

    sub-int/2addr v2, v4

    add-int/2addr v0, v4

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    const/4 v5, 0x0

    if-lez v12, :cond_6

    const/4 v7, 0x5

    mul-int v13, v12, v7

    add-int/lit8 v13, v13, 0x63

    const/16 v7, 0x64

    div-int/2addr v13, v7

    move v6, v5

    :goto_2
    if-ge v6, v13, :cond_6

    invoke-static {v3, v1}, Lcom/zjx/jyandroid/base/util/b$f;->b(II)I

    move-result v7

    sget-object v8, Lcom/zjx/jyandroid/base/util/b$f;->a:Ljava/util/Random;

    invoke-static {v8, v2, v0}, Lcom/zjx/jyandroid/base/util/b$f;->d(Ljava/util/Random;II)I

    move-result v8

    const/16 v9, 0x28

    const/16 v10, 0xa

    if-ge v7, v10, :cond_2

    sget-object v7, Lcom/zjx/jyandroid/base/util/b$f;->a:Ljava/util/Random;

    invoke-static {v7, v10, v9}, Lcom/zjx/jyandroid/base/util/b$f;->d(Ljava/util/Random;II)I

    move-result v7

    goto :goto_3

    :cond_2
    iget-object v11, p0, LS5/a;->r6:Landroid/util/Size;

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v11

    sub-int/2addr v11, v10

    if-le v7, v11, :cond_3

    iget-object v7, p0, LS5/a;->r6:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    sget-object v11, Lcom/zjx/jyandroid/base/util/b$f;->a:Ljava/util/Random;

    invoke-static {v11, v10, v9}, Lcom/zjx/jyandroid/base/util/b$f;->d(Ljava/util/Random;II)I

    move-result v11

    sub-int/2addr v7, v11

    :cond_3
    :goto_3
    if-ge v8, v10, :cond_4

    sget-object v8, Lcom/zjx/jyandroid/base/util/b$f;->a:Ljava/util/Random;

    invoke-static {v8, v10, v9}, Lcom/zjx/jyandroid/base/util/b$f;->d(Ljava/util/Random;II)I

    move-result v8

    goto :goto_4

    :cond_4
    iget-object v11, p0, LS5/a;->r6:Landroid/util/Size;

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v11

    sub-int/2addr v11, v10

    if-le v8, v11, :cond_5

    iget-object v8, p0, LS5/a;->r6:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    sget-object v11, Lcom/zjx/jyandroid/base/util/b$f;->a:Ljava/util/Random;

    invoke-static {v11, v10, v9}, Lcom/zjx/jyandroid/base/util/b$f;->d(Ljava/util/Random;II)I

    move-result v9

    sub-int/2addr v8, v9

    :cond_5
    :goto_4
    new-instance v9, Landroid/graphics/PointF;

    int-to-float v7, v7

    int-to-float v8, v8

    invoke-direct {v9, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v4, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, LS5/b;->V1:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v4, v5, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, LS5/b;->k6:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const v0, 0x3d4ccccd    # 0.05f

    invoke-static {v4, v0}, LE7/a;->b(Ljava/util/List;F)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    :try_start_0
    iget v2, p0, LS5/b;->o6:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, LS5/b;->l6:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Point;->y:I

    iget-object v4, p0, LS5/b;->q6:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    if-ge v3, v5, :cond_7

    iput v5, v2, Landroid/graphics/Point;->x:I

    goto :goto_6

    :cond_7
    iget v5, v4, Landroid/graphics/Rect;->right:I

    if-le v3, v5, :cond_8

    iput v5, v2, Landroid/graphics/Point;->x:I

    :cond_8
    :goto_6
    iget v3, v4, Landroid/graphics/Rect;->top:I

    if-ge v1, v3, :cond_9

    iput v3, v2, Landroid/graphics/Point;->y:I

    goto :goto_7

    :cond_9
    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    if-le v1, v3, :cond_a

    iput v3, v2, Landroid/graphics/Point;->y:I

    :cond_a
    :goto_7
    iget-boolean v3, p0, LS5/b;->s6:Z

    if-nez v3, :cond_b

    iget-object v1, p0, LS5/b;->p6:Ls5/k;

    iget v3, p0, LS5/b;->m6:I

    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v1, v3, v4, v2}, Ls5/k;->n(IFF)V

    goto :goto_5

    :catch_0
    :cond_b
    return-void
.end method
