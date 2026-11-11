.class public LS5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public V1:Landroid/graphics/Point;

.field public X:Ljava/lang/Runnable;

.field public Y:I

.field public Z:I

.field public k6:Landroid/graphics/Point;

.field public l6:Landroid/graphics/Point;

.field public m6:I

.field public n6:I

.field public o6:I

.field public p6:Ls5/k;

.field public q6:Landroid/graphics/Rect;

.field public volatile s6:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Point;Landroid/graphics/Point;ILs5/k;I)V
    .locals 7

    const/4 v6, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 13
    invoke-direct/range {v0 .. v6}, LS5/b;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;ILs5/k;II)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;Landroid/graphics/Point;ILs5/k;II)V
    .locals 8

    .line 1
    new-instance v7, Landroid/graphics/Rect;

    const v0, -0x5f5e0ff

    const v1, 0x5f5e0ff

    invoke-direct {v7, v0, v0, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, LS5/b;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;ILs5/k;IILandroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;Landroid/graphics/Point;ILs5/k;IILandroid/graphics/Rect;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, LS5/b;->Y:I

    .line 4
    iput v0, p0, LS5/b;->Z:I

    .line 5
    iput-object p1, p0, LS5/b;->V1:Landroid/graphics/Point;

    .line 6
    iput-object p2, p0, LS5/b;->k6:Landroid/graphics/Point;

    .line 7
    iput p3, p0, LS5/b;->m6:I

    .line 8
    iput-object p4, p0, LS5/b;->p6:Ls5/k;

    .line 9
    iput p5, p0, LS5/b;->n6:I

    .line 10
    iput p6, p0, LS5/b;->o6:I

    .line 11
    new-instance p2, Landroid/graphics/Point;

    iget p3, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p2, p3, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p2, p0, LS5/b;->l6:Landroid/graphics/Point;

    .line 12
    iput-object p7, p0, LS5/b;->q6:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, LS5/b;->k6:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, LS5/b;->V1:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v3

    iget v3, p0, LS5/b;->n6:I

    div-int/2addr v1, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v3

    const/4 v2, 0x0

    :goto_0
    iget-boolean v3, p0, LS5/b;->s6:Z

    if-nez v3, :cond_6

    iget v3, p0, LS5/b;->n6:I

    if-ge v2, v3, :cond_6

    :try_start_0
    iget v3, p0, LS5/b;->o6:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, LS5/b;->l6:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v0

    iput v5, v3, Landroid/graphics/Point;->y:I

    iget v3, p0, LS5/b;->Y:I

    if-lez v3, :cond_0

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b$f;->a(I)I

    move-result v3

    add-int/2addr v4, v3

    :cond_0
    iget v3, p0, LS5/b;->Z:I

    if-lez v3, :cond_1

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b$f;->a(I)I

    move-result v3

    add-int/2addr v5, v3

    :cond_1
    iget-object v3, p0, LS5/b;->q6:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->left:I

    if-ge v4, v6, :cond_2

    :goto_1
    move v4, v6

    goto :goto_2

    :cond_2
    iget v6, v3, Landroid/graphics/Rect;->right:I

    if-le v4, v6, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    iget v6, v3, Landroid/graphics/Rect;->top:I

    if-ge v5, v6, :cond_4

    move v5, v6

    goto :goto_3

    :cond_4
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-le v5, v3, :cond_5

    move v5, v3

    :cond_5
    :goto_3
    iget-boolean v3, p0, LS5/b;->s6:Z

    if-nez v3, :cond_6

    iget-object v3, p0, LS5/b;->p6:Ls5/k;

    iget v6, p0, LS5/b;->m6:I

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual {v3, v6, v4, v5}, Ls5/k;->n(IFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_6
    return-void
.end method
