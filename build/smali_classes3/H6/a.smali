.class public LH6/a;
.super LT5/a;
.source "SourceFile"


# static fields
.field public static final N6:I = 0x1

.field public static final O6:I = 0x2


# instance fields
.field public A6:I

.field public B6:I

.field public C6:I

.field public D6:Z

.field public E6:I

.field public F6:Ls5/k;

.field public G6:Ljava/lang/Object;

.field public H6:Landroid/graphics/Point;

.field public I6:Ljava/util/Random;

.field public J6:Landroid/util/Size;

.field public K6:LR5/a;

.field public L6:Z

.field public M6:F

.field public S6:Z

.field public T6:F

.field public U6:I

.field public V1:F

.field public V6:I

.field public W6:I

.field public X6:I

.field public Y:D

.field public Y6:Z

.field public Z:D

.field public Z6:I

.field public volatile forceRecenter:Z

.field public k6:F

.field public l6:I

.field public m6:I

.field public n6:I

.field public o6:I

.field public p6:Landroid/graphics/Rect;

.field public q6:Landroid/graphics/Point;

.field public r6:I

.field public recentering:Z

.field public rsBudgetX:D

.field public rsBudgetY:D

.field public rsGapTicks:I

.field public rsHoldTicks:I

.field public rsRateX:F

.field public rsRateY:F

.field public volatile rsRunning:Z

.field public rsThread:Ljava/lang/Thread;

.field public s6:Z

.field public t6:Z

.field public u6:Z

.field public v6:I

.field public w6:Z

.field public x6:Ljava/util/Timer;

.field public y6:J

.field public z6:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, LH6/a;->Y:D

    .line 3
    iput-wide v0, p0, LH6/a;->Z:D

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, LH6/a;->V1:F

    .line 5
    iput v0, p0, LH6/a;->k6:F

    const/16 v0, 0x1f4

    .line 6
    iput v0, p0, LH6/a;->l6:I

    .line 7
    iput v0, p0, LH6/a;->m6:I

    const/4 v0, 0x0

    .line 8
    iput v0, p0, LH6/a;->n6:I

    .line 9
    iput v0, p0, LH6/a;->o6:I

    const/16 v1, 0xa

    .line 10
    iput v1, p0, LH6/a;->r6:I

    .line 11
    iput-boolean v0, p0, LH6/a;->s6:Z

    .line 12
    iput-boolean v0, p0, LH6/a;->t6:Z

    .line 13
    iput-boolean v0, p0, LH6/a;->u6:Z

    .line 14
    iput v0, p0, LH6/a;->v6:I

    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, LH6/a;->w6:Z

    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, LH6/a;->x6:Ljava/util/Timer;

    const-wide v1, 0xe8d4a50fffL

    .line 17
    iput-wide v1, p0, LH6/a;->y6:J

    const/16 v1, 0x2bc

    .line 18
    iput v1, p0, LH6/a;->z6:I

    const/16 v1, 0x64

    .line 19
    iput v1, p0, LH6/a;->A6:I

    const/16 v1, 0xc

    .line 20
    iput v1, p0, LH6/a;->B6:I

    const/4 v1, 0x3

    .line 21
    iput v1, p0, LH6/a;->C6:I

    .line 22
    iput-boolean v0, p0, LH6/a;->D6:Z

    const/4 v1, -0x1

    .line 23
    iput v1, p0, LH6/a;->E6:I

    .line 24
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, LH6/a;->G6:Ljava/lang/Object;

    .line 25
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, LH6/a;->H6:Landroid/graphics/Point;

    .line 26
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, LH6/a;->I6:Ljava/util/Random;

    .line 27
    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$h;->j()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, LH6/a;->J6:Landroid/util/Size;

    .line 28
    invoke-static {}, LR5/a;->w()LR5/a;

    move-result-object v0

    iput-object v0, p0, LH6/a;->K6:LR5/a;

    const/high16 v0, 0x40e00000    # 7.0f

    .line 29
    iput v0, p0, LH6/a;->M6:F

    .line 30
    invoke-static {}, Ls5/k;->i()Ls5/k;

    move-result-object v0

    iput-object v0, p0, LH6/a;->F6:Ls5/k;

    .line 31
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$c;->e(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, LH6/a;->L6:Z

    .line 32
    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$h;->j()Landroid/util/Size;

    move-result-object v0

    .line 33
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    const/16 v3, 0x32

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, LH6/a;->p6:Landroid/graphics/Rect;

    .line 34
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, LH6/a;->p6:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, LH6/a;->p6:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, LH6/a;->q6:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, LH6/a;->Y:D

    .line 37
    iput-wide v0, p0, LH6/a;->Z:D

    const/high16 v0, 0x3f800000    # 1.0f

    .line 38
    iput v0, p0, LH6/a;->V1:F

    .line 39
    iput v0, p0, LH6/a;->k6:F

    const/16 v0, 0x1f4

    .line 40
    iput v0, p0, LH6/a;->l6:I

    .line 41
    iput v0, p0, LH6/a;->m6:I

    const/4 v0, 0x0

    .line 42
    iput v0, p0, LH6/a;->n6:I

    .line 43
    iput v0, p0, LH6/a;->o6:I

    const/16 v1, 0xa

    .line 44
    iput v1, p0, LH6/a;->r6:I

    .line 45
    iput-boolean v0, p0, LH6/a;->s6:Z

    .line 46
    iput-boolean v0, p0, LH6/a;->t6:Z

    .line 47
    iput-boolean v0, p0, LH6/a;->u6:Z

    .line 48
    iput v0, p0, LH6/a;->v6:I

    const/4 v1, 0x1

    .line 49
    iput-boolean v1, p0, LH6/a;->w6:Z

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, LH6/a;->x6:Ljava/util/Timer;

    const-wide v1, 0xe8d4a50fffL

    .line 51
    iput-wide v1, p0, LH6/a;->y6:J

    const/16 v1, 0x2bc

    .line 52
    iput v1, p0, LH6/a;->z6:I

    const/16 v1, 0x64

    .line 53
    iput v1, p0, LH6/a;->A6:I

    const/16 v1, 0xc

    .line 54
    iput v1, p0, LH6/a;->B6:I

    const/4 v1, 0x3

    .line 55
    iput v1, p0, LH6/a;->C6:I

    .line 56
    iput-boolean v0, p0, LH6/a;->D6:Z

    const/4 v1, -0x1

    .line 57
    iput v1, p0, LH6/a;->E6:I

    .line 58
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, LH6/a;->G6:Ljava/lang/Object;

    .line 59
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, LH6/a;->H6:Landroid/graphics/Point;

    .line 60
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, LH6/a;->I6:Ljava/util/Random;

    .line 61
    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$h;->j()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, LH6/a;->J6:Landroid/util/Size;

    .line 62
    invoke-static {}, LR5/a;->w()LR5/a;

    move-result-object v0

    iput-object v0, p0, LH6/a;->K6:LR5/a;

    const/high16 v0, 0x40e00000    # 7.0f

    .line 63
    iput v0, p0, LH6/a;->M6:F

    .line 64
    invoke-static {}, Ls5/k;->i()Ls5/k;

    move-result-object v0

    iput-object v0, p0, LH6/a;->F6:Ls5/k;

    .line 65
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$c;->e(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, LH6/a;->L6:Z

    .line 66
    iput-object p1, p0, LH6/a;->p6:Landroid/graphics/Rect;

    .line 67
    iput-object p2, p0, LH6/a;->q6:Landroid/graphics/Point;

    return-void
.end method

.method public static synthetic g(LH6/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LH6/a;->G6:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic h(LH6/a;)Z
    .locals 0

    iget-boolean p0, p0, LH6/a;->D6:Z

    return p0
.end method

.method public static synthetic i(LH6/a;)J
    .locals 2

    iget-wide v0, p0, LH6/a;->y6:J

    return-wide v0
.end method

.method public static synthetic j(LH6/a;)I
    .locals 0

    iget p0, p0, LH6/a;->z6:I

    return p0
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-boolean v0, p0, LH6/a;->w6:Z

    return v0
.end method

.method public B()V
    .locals 4

    iget-boolean v0, p0, LH6/a;->recentering:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    iget-object v0, p0, LH6/a;->K6:LR5/a;

    invoke-virtual {v0}, LR5/a;->n()I

    move-result v0

    iget v1, p0, LH6/a;->o6:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object v0, p0, LH6/a;->H6:Landroid/graphics/Point;

    iget-object v1, p0, LH6/a;->q6:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, LH6/a;->I6:Ljava/util/Random;

    iget v3, p0, LH6/a;->r6:I

    invoke-static {v2, v3}, Lcom/zjx/jyandroid/base/util/b$f;->c(Ljava/util/Random;I)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, LH6/a;->H6:Landroid/graphics/Point;

    iget-object v1, p0, LH6/a;->q6:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, LH6/a;->I6:Ljava/util/Random;

    iget v3, p0, LH6/a;->r6:I

    invoke-static {v2, v3}, Lcom/zjx/jyandroid/base/util/b$f;->c(Ljava/util/Random;I)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, LH6/a;->H6:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, LH6/a;->p6:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ge v1, v3, :cond_2

    iput v3, v0, Landroid/graphics/Point;->x:I

    goto :goto_1

    :cond_2
    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-le v1, v3, :cond_3

    iput v3, v0, Landroid/graphics/Point;->x:I

    :cond_3
    :goto_1
    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ge v1, v3, :cond_4

    iput v3, v0, Landroid/graphics/Point;->y:I

    goto :goto_2

    :cond_4
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_5

    iput v2, v0, Landroid/graphics/Point;->y:I

    :cond_5
    :goto_2
    iget-object v1, p0, LH6/a;->F6:Ls5/k;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Ls5/k;->j(FF)I

    move-result v0

    iput v0, p0, LH6/a;->E6:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LH6/a;->D6:Z

    iget-boolean v0, p0, LH6/a;->S6:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, LH6/a;->H6:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, LH6/a;->U6:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, LH6/a;->F6:Ls5/k;

    iget v2, p0, LH6/a;->E6:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v0}, Ls5/k;->n(IFF)V

    :cond_6
    return-void
.end method

.method public C()V
    .locals 4

    iget-object v0, p0, LH6/a;->F6:Ls5/k;

    iget v1, p0, LH6/a;->E6:I

    iget-object v2, p0, LH6/a;->H6:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ls5/k;->p(IFF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LH6/a;->D6:Z

    return-void
.end method

.method public D(I)V
    .locals 0

    iput p1, p0, LH6/a;->z6:I

    return-void
.end method

.method public E(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, LH6/a;->q6:Landroid/graphics/Point;

    return-void
.end method

.method public F(Z)V
    .locals 0

    iput-boolean p1, p0, LH6/a;->t6:Z

    return-void
.end method

.method public G(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, LH6/a;->p6:Landroid/graphics/Rect;

    return-void
.end method

.method public H(I)V
    .locals 2

    int-to-float v0, p1

    const/high16 v1, 0x43fa0000    # 500.0f

    div-float/2addr v0, v1

    iput v0, p0, LH6/a;->V1:F

    iput p1, p0, LH6/a;->l6:I

    return-void
.end method

.method public I(Z)V
    .locals 0

    iput-boolean p1, p0, LH6/a;->s6:Z

    return-void
.end method

.method public J(I)V
    .locals 0

    iput p1, p0, LH6/a;->B6:I

    return-void
.end method

.method public K(I)V
    .locals 0

    iput p1, p0, LH6/a;->C6:I

    return-void
.end method

.method public L(I)V
    .locals 0

    iput p1, p0, LH6/a;->A6:I

    return-void
.end method

.method public M(Z)V
    .locals 0

    iput-boolean p1, p0, LH6/a;->u6:Z

    return-void
.end method

.method public N(Z)V
    .locals 0

    iput-boolean p1, p0, LH6/a;->w6:Z

    return-void
.end method

.method public O(I)V
    .locals 0

    iput p1, p0, LH6/a;->v6:I

    return-void
.end method

.method public P(I)V
    .locals 0

    iput p1, p0, LH6/a;->o6:I

    return-void
.end method

.method public Q(I)V
    .locals 0

    iput p1, p0, LH6/a;->r6:I

    return-void
.end method

.method public R(I)V
    .locals 0

    iput p1, p0, LH6/a;->n6:I

    return-void
.end method

.method public S(I)V
    .locals 2

    int-to-float v0, p1

    const/high16 v1, 0x43fa0000    # 500.0f

    div-float/2addr v0, v1

    iput v0, p0, LH6/a;->k6:F

    iput p1, p0, LH6/a;->m6:I

    return-void
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, LH6/a;->G6:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, LT5/a;->X:Z

    iput-boolean v1, p0, LH6/a;->rsRunning:Z

    iget-object v1, p0, LH6/a;->x6:Ljava/util/Timer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, LH6/a;->x6:Ljava/util/Timer;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean v1, p0, LH6/a;->D6:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, LH6/a;->C()V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(II)V
    .locals 0

    new-instance p1, LI7/K;

    const-string p2, "4\u00a8@\u0081}\u000e\u0098%\u00ad]\u00e8)\u001b\u008c&\u00d8\n\u00f6f\u0002\u00b1\'\u00cdQ\u00f7"

    invoke-static/range {p2 .. p2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, LI7/K;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()V
    .locals 9

    iget-object v0, p0, LH6/a;->G6:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, LT5/a;->X:Z

    iget-boolean v2, p0, LH6/a;->u6:Z

    if-nez v2, :cond_1

    iget v2, p0, LH6/a;->v6:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, LH6/a;->x6:Ljava/util/Timer;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v2, p0, LH6/a;->x6:Ljava/util/Timer;

    new-instance v4, LH6/a$a;

    invoke-direct {v4, p0}, LH6/a$a;-><init>(LH6/a;)V

    iget v1, p0, LH6/a;->z6:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iput v2, p0, LH6/a;->z6:I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v3, p0, LH6/a;->x6:Ljava/util/Timer;

    iget v1, p0, LH6/a;->z6:I

    div-int/lit8 v1, v1, 0x2

    int-to-long v7, v1

    const-wide/16 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e(II)V
    .locals 5

    iget-object v0, p0, LH6/a;->G6:Ljava/lang/Object;

    monitor-enter v0

    int-to-float p1, p1

    :try_start_0
    iget v1, p0, LH6/a;->V1:F

    mul-float/2addr p1, v1

    float-to-double v1, p1

    int-to-float p1, p2

    iget p2, p0, LH6/a;->k6:F

    mul-float/2addr p1, p2

    float-to-double p1, p1

    iget-boolean v3, p0, LH6/a;->L6:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, LH6/a;->q6:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, LH6/a;->H6:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, LH6/a;->J6:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, LH6/a;->M6:F

    mul-float/2addr v4, v3

    mul-float/2addr v4, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v4, v3

    const v3, 0x3f7ae148    # 0.98f

    div-float/2addr v3, v4

    const v4, 0x3ca3d70a    # 0.02f

    add-float/2addr v3, v4

    float-to-double v3, v3

    mul-double/2addr v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-wide v3, p0, LH6/a;->rsBudgetX:D

    add-double/2addr v3, v1

    iput-wide v3, p0, LH6/a;->rsBudgetX:D

    iget-wide v1, p0, LH6/a;->rsBudgetY:D

    add-double/2addr v1, p1

    iput-wide v1, p0, LH6/a;->rsBudgetY:D

    invoke-virtual {p0}, LH6/a;->ensureRsThread()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ensureRsThread()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LH6/a;->rsThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LH6/a;->rsRunning:Z

    const/4 v1, 0x0

    iput v1, p0, LH6/a;->rsGapTicks:I

    iput v1, p0, LH6/a;->rsHoldTicks:I

    iput v1, p0, LH6/a;->rsRateX:F

    iput v1, p0, LH6/a;->rsRateY:F

    new-instance v0, LH6/c;

    invoke-direct {v0, p0}, LH6/c;-><init>(LH6/a;)V

    iput-object v0, p0, LH6/a;->rsThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f(II)V
    .locals 8

    iget-object v0, p0, LH6/a;->G6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, LT5/a;->d()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_0
    iget-boolean v1, p0, LH6/a;->D6:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, LH6/a;->forceRecenter:Z

    invoke-virtual {p0}, LH6/a;->B()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, LH6/a;->y6:J

    monitor-exit v0

    return-void

    :cond_1
    iget-boolean v1, p0, LH6/a;->s6:Z

    if-eqz v1, :cond_2

    neg-int p2, p2

    :cond_2
    move v6, p1

    move v7, p2

    iget-object v1, p0, LH6/a;->H6:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v2, p1

    iget p1, v1, Landroid/graphics/Point;->y:I

    add-int/2addr p1, p2

    iput v2, v1, Landroid/graphics/Point;->x:I

    iput p1, v1, Landroid/graphics/Point;->y:I

    iget-boolean p2, p0, LH6/a;->forceRecenter:Z

    if-eqz p2, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-boolean p2, p0, LH6/a;->u6:Z

    if-nez p2, :cond_d

    iget p1, p0, LH6/a;->v6:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_11

    iget-object p1, p0, LH6/a;->p6:Landroid/graphics/Rect;

    invoke-static {p1, v1}, Lcom/zjx/jyandroid/base/util/b;->J(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p1

    if-nez p1, :cond_11

    :goto_0
    iget-object v2, p0, LH6/a;->p6:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-ge v3, v4, :cond_4

    iput v4, v1, Landroid/graphics/Point;->x:I

    goto :goto_1

    :cond_4
    iget v4, v2, Landroid/graphics/Rect;->right:I

    if-le v3, v4, :cond_5

    iput v4, v1, Landroid/graphics/Point;->x:I

    :cond_5
    :goto_1
    iget v3, v1, Landroid/graphics/Point;->y:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_6

    iput v4, v1, Landroid/graphics/Point;->y:I

    goto :goto_2

    :cond_6
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    if-le v3, v4, :cond_7

    iput v4, v1, Landroid/graphics/Point;->y:I

    :cond_7
    :goto_2
    iget-boolean v2, p0, LH6/a;->forceRecenter:Z

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    iput-boolean v2, p0, LH6/a;->forceRecenter:Z

    iget v2, p0, LH6/a;->E6:I

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    const/4 v5, 0x1

    iput-boolean v5, p0, LH6/a;->recentering:Z

    invoke-virtual {p0}, LH6/a;->B()V

    const/4 v5, 0x0

    iput-boolean v5, p0, LH6/a;->recentering:Z

    iget-object v5, p0, LH6/a;->F6:Ls5/k;

    int-to-float v3, v3

    int-to-float v4, v4

    invoke-virtual {v5, v2, v3, v4}, Ls5/k;->p(IFF)V

    goto :goto_3

    :cond_8
    const/4 v2, 0x1

    iput-boolean v2, p0, LH6/a;->recentering:Z

    invoke-virtual {p0}, LH6/a;->C()V

    invoke-virtual {p0}, LH6/a;->B()V

    const/4 v2, 0x0

    iput-boolean v2, p0, LH6/a;->recentering:Z

    :goto_3
    iget-object v1, p0, LH6/a;->H6:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v6

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v7

    iput v2, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, LH6/a;->p6:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-ge v3, v4, :cond_9

    iput v4, v1, Landroid/graphics/Point;->x:I

    goto :goto_4

    :cond_9
    iget v4, v2, Landroid/graphics/Rect;->right:I

    if-le v3, v4, :cond_a

    iput v4, v1, Landroid/graphics/Point;->x:I

    :cond_a
    :goto_4
    iget v3, v1, Landroid/graphics/Point;->y:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_b

    iput v4, v1, Landroid/graphics/Point;->y:I

    goto :goto_5

    :cond_b
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    if-le v3, v4, :cond_c

    iput v4, v1, Landroid/graphics/Point;->y:I

    :cond_c
    :goto_5
    goto :goto_7

    :cond_d
    iget-object p2, p0, LH6/a;->p6:Landroid/graphics/Rect;

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_e

    iput v3, v1, Landroid/graphics/Point;->x:I

    goto :goto_6

    :cond_e
    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_f

    iput v3, v1, Landroid/graphics/Point;->x:I

    :cond_f
    :goto_6
    iget v2, p2, Landroid/graphics/Rect;->top:I

    if-ge p1, v2, :cond_10

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_7

    :cond_10
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-le p1, p2, :cond_11

    iput p2, v1, Landroid/graphics/Point;->y:I

    :cond_11
    :goto_7
    iget-object p1, p0, LH6/a;->F6:Ls5/k;

    iget p2, p0, LH6/a;->E6:I

    iget-object v1, p0, LH6/a;->H6:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-wide v4, p0, LH6/a;->Y:D

    double-to-float v3, v4

    add-float/2addr v2, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-wide v4, p0, LH6/a;->Z:D

    double-to-float v3, v4

    add-float/2addr v1, v3

    invoke-virtual {p1, p2, v2, v1}, Ls5/k;->n(IFF)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, LH6/a;->y6:J

    monitor-exit v0

    return-void

    :goto_8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public flush()V
    .locals 11

    iget-object v0, p0, LH6/a;->G6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, LH6/a;->rsBudgetX:D

    iget-wide v3, p0, LH6/a;->rsBudgetY:D

    const-wide/16 v5, 0x0

    iput-wide v5, p0, LH6/a;->rsBudgetX:D

    iput-wide v5, p0, LH6/a;->rsBudgetY:D

    cmpl-double v7, v1, v5

    if-nez v7, :cond_0

    cmpl-double v7, v3, v5

    if-eqz v7, :cond_1

    :cond_0
    iget v7, p0, LH6/a;->rsGapTicks:I

    add-int/lit8 v7, v7, 0x1

    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-double v9, v7

    div-double/2addr v1, v9

    double-to-float v1, v1

    iput v1, p0, LH6/a;->rsRateX:F

    div-double/2addr v3, v9

    double-to-float v3, v3

    iput v3, p0, LH6/a;->rsRateY:F

    shr-int/lit8 v8, v7, 0x1

    add-int/2addr v8, v7

    iput v8, p0, LH6/a;->rsHoldTicks:I

    const/4 v8, 0x0

    iput v8, p0, LH6/a;->rsGapTicks:I

    goto :goto_0

    :cond_1
    iget v7, p0, LH6/a;->rsGapTicks:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, LH6/a;->rsGapTicks:I

    iget v7, p0, LH6/a;->rsHoldTicks:I

    if-lez v7, :cond_2

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, LH6/a;->rsHoldTicks:I

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    iput v7, p0, LH6/a;->rsRateX:F

    iput v7, p0, LH6/a;->rsRateY:F

    :goto_0
    iget v1, p0, LH6/a;->rsRateX:F

    iget v3, p0, LH6/a;->rsRateY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x38d1b717    # 1.0E-4f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    iget-wide v5, p0, LH6/a;->Y:D

    float-to-double v1, v1

    add-double/2addr v5, v1

    iput-wide v5, p0, LH6/a;->Y:D

    iget-wide v5, p0, LH6/a;->Z:D

    float-to-double v3, v3

    add-double/2addr v5, v3

    iput-wide v5, p0, LH6/a;->Z:D

    iget-wide v5, p0, LH6/a;->Y:D

    double-to-int v1, v5

    iget-wide v5, p0, LH6/a;->Z:D

    double-to-int v3, v5

    iget-wide v5, p0, LH6/a;->Y:D

    int-to-double v7, v1

    sub-double/2addr v5, v7

    iput-wide v5, p0, LH6/a;->Y:D

    iget-wide v5, p0, LH6/a;->Z:D

    int-to-double v7, v3

    sub-double/2addr v5, v7

    iput-wide v5, p0, LH6/a;->Z:D

    invoke-virtual {p0, v1, v3}, LH6/a;->f(II)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public k()I
    .locals 1

    iget v0, p0, LH6/a;->z6:I

    return v0
.end method

.method public l()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, LH6/a;->q6:Landroid/graphics/Point;

    return-object v0
.end method

.method public m()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, LH6/a;->p6:Landroid/graphics/Rect;

    return-object v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, LH6/a;->l6:I

    return v0
.end method

.method public o()J
    .locals 2

    iget-wide v0, p0, LH6/a;->y6:J

    return-wide v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, LH6/a;->B6:I

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, LH6/a;->C6:I

    return v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, LH6/a;->A6:I

    return v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, LH6/a;->v6:I

    return v0
.end method

.method public smoothRecenter()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LH6/a;->forceRecenter:Z

    return-void
.end method

.method public t()I
    .locals 1

    iget v0, p0, LH6/a;->o6:I

    return v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, LH6/a;->r6:I

    return v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, LH6/a;->n6:I

    return v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, LH6/a;->m6:I

    return v0
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, LH6/a;->t6:Z

    return v0
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, LH6/a;->s6:Z

    return v0
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, LH6/a;->u6:Z

    return v0
.end method
