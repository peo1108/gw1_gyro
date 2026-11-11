.class public LC6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/a;


# static fields
.field public static d:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public a:LH6/a;

.field public b:Ln7/a;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, LC6/a;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LC6/a;->a:LH6/a;

    iput-object v0, p0, LC6/a;->b:Ln7/a;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LC6/a;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll7/a$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, LC6/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    new-instance v3, LM6/h;

    invoke-direct {v3}, LM6/h;-><init>()V

    invoke-virtual {v3, v2}, LM6/h;->d(Ljava/util/Map;)V

    new-instance v4, Lt7/d;

    invoke-direct {v4}, Lt7/d;-><init>()V

    invoke-virtual {v4, v2}, Lt7/d;->d(Ljava/util/Map;)V

    iget-object v5, p0, LC6/a;->a:LH6/a;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget-boolean v7, v3, LM6/h;->V1:Z

    if-eqz v7, :cond_1

    new-instance v7, LD6/g;

    invoke-direct {v7, v5}, LD6/g;-><init>(LH6/a;)V

    iget v5, v3, LM6/h;->k6:F

    float-to-int v5, v5

    iput v5, v7, LD6/g;->d:I

    new-instance v5, Ll7/a$a;

    iget-object v8, v4, Lt7/d;->X:Lh7/b;

    invoke-direct {v5, v8, v7, v6}, Ll7/a$a;-><init>(Lh7/b;Lk7/a;Lj7/a;)V

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-boolean v5, v3, LM6/h;->n6:Z

    if-eqz v5, :cond_2

    new-instance v5, LM6/g;

    invoke-direct {v5}, LM6/g;-><init>()V

    invoke-virtual {v5, v2}, LM6/g;->d(Ljava/util/Map;)V

    new-instance v2, LD6/l;

    iget-object v7, p0, LC6/a;->a:LH6/a;

    iget-object v8, v5, LM6/g;->X:LN6/e$a;

    iget-object v9, v5, LM6/g;->V1:LN6/e$b;

    invoke-direct {v2, v7, v8, v9}, LD6/l;-><init>(LH6/a;LN6/e$a;LN6/e$b;)V

    iget-object v5, v5, LM6/g;->Y:Landroid/graphics/Point;

    iput-object v5, v2, LD6/l;->g:Landroid/graphics/Point;

    new-instance v5, Ll7/a$a;

    iget-object v7, v4, Lt7/d;->X:Lh7/b;

    invoke-direct {v5, v7, v2, v6}, Ll7/a$a;-><init>(Lh7/b;Lk7/a;Lj7/a;)V

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v2, p0, LC6/a;->b:Ln7/a;

    if-eqz v2, :cond_0

    iget-boolean v5, v3, LM6/h;->l6:Z

    if-eqz v5, :cond_0

    new-instance v5, LD6/f;

    invoke-direct {v5, v2}, LD6/f;-><init>(Ln7/a;)V

    iget v2, v3, LM6/h;->m6:F

    float-to-int v2, v2

    iput v2, v5, LD6/f;->d:I

    new-instance v2, Ll7/a$a;

    iget-object v3, v4, Lt7/d;->X:Lh7/b;

    invoke-direct {v2, v3, v5, v6}, Ll7/a$a;-><init>(Lh7/b;Lk7/a;Lj7/a;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public b(Ljava/util/Map;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ll7/a$a;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    new-instance v3, Lt7/a;

    invoke-direct {v3}, Lt7/a;-><init>()V

    invoke-virtual {v3, v1}, Lt7/a;->d(Ljava/util/Map;)V

    iget-object v4, v3, Lt7/a;->Z:Ljava/lang/String;

    invoke-static {}, LK6/h;->M0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "+"

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/16 v10, 0x19

    const/4 v11, 0x3

    const/4 v12, 0x0

    if-eqz v5, :cond_9

    new-instance v4, LM6/h;

    invoke-direct {v4}, LM6/h;-><init>()V

    invoke-virtual {v4, v1}, LM6/h;->d(Ljava/util/Map;)V

    new-instance v5, Lt7/d;

    invoke-direct {v5}, Lt7/d;-><init>()V

    invoke-virtual {v5, v1}, Lt7/d;->d(Ljava/util/Map;)V

    iget-object v13, v5, Lt7/d;->X:Lh7/b;

    invoke-virtual {v13}, Lh7/b;->n()Z

    move-result v13

    if-eqz v13, :cond_0

    return-object v12

    :cond_0
    sget-object v13, LC6/a$c;->a:[I

    iget-object v14, v4, LM6/h;->X:LN6/f$a;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v13, v13, v14

    if-eq v13, v8, :cond_5

    if-eq v13, v9, :cond_4

    if-eq v13, v11, :cond_3

    if-eq v13, v7, :cond_2

    const/4 v7, 0x5

    if-eq v13, v7, :cond_1

    goto :goto_0

    :cond_1
    new-instance v12, LD6/o;

    invoke-direct {v12}, LD6/o;-><init>()V

    iget v7, v4, LM6/h;->Y:F

    float-to-int v7, v7

    int-to-long v7, v7

    iput-wide v7, v12, LD6/o;->i:J

    goto :goto_0

    :cond_2
    new-instance v12, LD6/b;

    invoke-direct {v12}, LD6/b;-><init>()V

    iget v7, v4, LM6/h;->Y:F

    float-to-int v7, v7

    int-to-long v7, v7

    iput-wide v7, v12, LD6/b;->i:J

    goto :goto_0

    :cond_3
    invoke-static {}, LR5/a;->w()LR5/a;

    move-result-object v7

    invoke-virtual {v7}, LR5/a;->q()Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v12, LD6/a;

    invoke-direct {v12}, LD6/a;-><init>()V

    iget v7, v4, LM6/h;->Y:F

    float-to-int v7, v7

    iput v7, v12, LD6/a;->i:I

    iget v7, v4, LM6/h;->Z:F

    float-to-int v7, v7

    iput v7, v12, LD6/a;->j:I

    goto :goto_0

    :cond_4
    new-instance v12, LD6/h;

    invoke-direct {v12}, LD6/h;-><init>()V

    iget v7, v4, LM6/h;->Y:F

    float-to-int v7, v7

    iput v7, v12, LD6/h;->j:I

    goto :goto_0

    :cond_5
    new-instance v12, LD6/e;

    invoke-direct {v12}, LD6/e;-><init>()V

    :cond_6
    :goto_0
    if-eqz v12, :cond_7

    new-instance v7, Lj7/a;

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lj7/a;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/graphics/Point;

    iget-object v9, v3, Lt7/a;->X:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    iget-object v11, v3, Lt7/a;->X:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    invoke-direct {v8, v9, v11}, Landroid/graphics/Point;-><init>(II)V

    new-instance v9, Landroid/util/Size;

    invoke-static {v10}, Lg7/d;->b(I)I

    move-result v11

    invoke-static {v10}, Lg7/d;->b(I)I

    move-result v10

    invoke-direct {v9, v11, v10}, Landroid/util/Size;-><init>(II)V

    invoke-static {v8, v9}, Lg7/d;->k(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Lr7/f;->setFrame(Landroid/graphics/Rect;)V

    iget-object v8, v5, Lt7/d;->X:Lh7/b;

    invoke-virtual {v8, v6}, Lh7/b;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lr7/k;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/graphics/Point;

    iget-object v8, v3, Lt7/a;->X:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    iget-object v9, v3, Lt7/a;->X:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    invoke-direct {v6, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    iput-object v6, v12, LW5/c;->c:Landroid/graphics/Point;

    iget-object v6, v3, Lt7/a;->X:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iput v6, v12, LW5/c;->d:I

    iget-object v3, v3, Lt7/a;->X:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v12, LW5/c;->e:I

    new-instance v3, Ll7/a$a;

    iget-object v5, v5, Lt7/d;->X:Lh7/b;

    invoke-direct {v3, v5, v12, v7}, Ll7/a$a;-><init>(Lh7/b;Lk7/a;Lj7/a;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-boolean v3, v4, LM6/h;->V1:Z

    if-nez v3, :cond_8

    iget-boolean v3, v4, LM6/h;->n6:Z

    if-nez v3, :cond_8

    iget-boolean v3, v4, LM6/h;->l6:Z

    if-eqz v3, :cond_1e

    :cond_8
    iget-object v3, v0, LC6/a;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_9
    invoke-static {}, LK6/j;->M0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    new-instance v4, LM6/j;

    invoke-direct {v4}, LM6/j;-><init>()V

    invoke-virtual {v4, v1}, LM6/j;->d(Ljava/util/Map;)V

    new-instance v5, Lt7/d;

    invoke-direct {v5}, Lt7/d;-><init>()V

    invoke-virtual {v5, v1}, Lt7/d;->d(Ljava/util/Map;)V

    iget-object v1, v5, Lt7/d;->X:Lh7/b;

    invoke-virtual {v1}, Lh7/b;->n()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    return-object v1

    :cond_a
    new-instance v1, LD6/i;

    iget-object v6, v4, LM6/j;->X:LN6/h$a;

    invoke-direct {v1, v6}, LD6/i;-><init>(LN6/h$a;)V

    iget v6, v4, LM6/j;->l6:I

    invoke-virtual {v1, v6}, LD6/i;->r(I)V

    iget-object v6, v4, LM6/j;->m6:Landroid/graphics/Point;

    iput-object v6, v1, LD6/i;->m:Landroid/graphics/Point;

    new-instance v6, Landroid/graphics/Point;

    iget-object v7, v3, Lt7/a;->X:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    iget-object v3, v3, Lt7/a;->X:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-direct {v6, v7, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v6, v1, LD6/i;->l:Landroid/graphics/Point;

    iget-boolean v3, v4, LM6/j;->V1:Z

    iput-boolean v3, v1, LD6/i;->e:Z

    iget-boolean v3, v4, LM6/j;->k6:Z

    iput-boolean v3, v1, LD6/i;->f:Z

    new-instance v3, Ll7/a$a;

    iget-object v4, v5, Lt7/d;->X:Lh7/b;

    invoke-direct {v3, v4, v1, v12}, Ll7/a$a;-><init>(Lh7/b;Lk7/a;Lj7/a;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_b
    invoke-static {}, LK6/f;->M0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v13, 0x0

    if-eqz v5, :cond_10

    new-instance v4, LM6/f;

    invoke-direct {v4}, LM6/f;-><init>()V

    new-instance v5, LM6/g;

    invoke-direct {v5}, LM6/g;-><init>()V

    invoke-virtual {v4, v1}, LM6/f;->d(Ljava/util/Map;)V

    invoke-virtual {v5, v1}, LM6/g;->d(Ljava/util/Map;)V

    iget-object v1, v4, LM6/f;->X:Lh7/b;

    iget-object v6, v4, LM6/f;->Z:Lh7/b;

    iget-object v7, v4, LM6/f;->Y:Lh7/b;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/zjx/jyandroid/ForegroundService/MainService;->k()Ljava/lang/String;

    move-result-object v8

    const-string v10, "9\u00a8Y\u008f`\u001e\u009c0\u00a3\\\u00f9\'\u001a\u00d1b"

    invoke-static/range {v10 .. v10}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    new-instance v8, Landroid/graphics/Rect;

    const/16 v10, -0x270f

    const/16 v14, 0x270f

    invoke-direct {v8, v10, v10, v14, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    :cond_c
    iget-boolean v8, v4, LM6/f;->r6:Z

    if-nez v8, :cond_d

    invoke-static {}, Lg7/d;->f()Landroid/util/Size;

    move-result-object v8

    invoke-static {v8}, Lg7/d;->a(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v8

    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v14

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    const/16 v15, 0x32

    invoke-direct {v10, v15, v15, v14, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v8, v10

    goto :goto_1

    :cond_d
    iget-object v8, v4, LM6/f;->z6:Landroid/graphics/Rect;

    :goto_1
    new-instance v10, Landroid/graphics/Point;

    iget-object v14, v3, Lt7/a;->X:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v14

    iget-object v3, v3, Lt7/a;->X:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-direct {v10, v14, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v3, LH6/a;

    invoke-direct {v3, v8, v10}, LH6/a;-><init>(Landroid/graphics/Rect;Landroid/graphics/Point;)V

    iput-object v3, v0, LC6/a;->a:LH6/a;

    invoke-static {}, LR5/a;->w()LR5/a;

    move-result-object v8

    invoke-virtual {v8}, LR5/a;->o()I

    move-result v8

    invoke-virtual {v3, v8}, LH6/a;->Q(I)V

    iget-boolean v3, v4, LM6/f;->t6:Z

    if-eqz v3, :cond_e

    iget-object v3, v0, LC6/a;->a:LH6/a;

    invoke-virtual {v3, v9}, LH6/a;->O(I)V

    goto :goto_2

    :cond_e
    iget-object v3, v0, LC6/a;->a:LH6/a;

    invoke-virtual {v3, v11}, LH6/a;->O(I)V

    iget-object v3, v0, LC6/a;->a:LH6/a;

    iget v8, v4, LM6/f;->u6:I

    invoke-virtual {v3, v8}, LH6/a;->D(I)V

    :goto_2
    iget-object v3, v0, LC6/a;->a:LH6/a;

    iget v8, v4, LM6/f;->p6:I

    invoke-virtual {v3, v8}, LH6/a;->R(I)V

    iget-object v3, v0, LC6/a;->a:LH6/a;

    invoke-virtual {v4}, LM6/f;->getTouchDownDelay()I

    move-result v8

    invoke-virtual {v3, v8}, LH6/a;->P(I)V

    iget-object v3, v0, LC6/a;->a:LH6/a;

    iget v8, v4, LM6/f;->V1:I

    invoke-virtual {v3, v8}, LH6/a;->H(I)V

    iget-object v3, v0, LC6/a;->a:LH6/a;

    iget v8, v4, LM6/f;->k6:I

    invoke-virtual {v3, v8}, LH6/a;->S(I)V

    new-instance v3, LD6/l;

    iget-object v8, v0, LC6/a;->a:LH6/a;

    iget-object v9, v5, LM6/g;->X:LN6/e$a;

    invoke-direct {v3, v8, v9}, LD6/l;-><init>(LH6/a;LN6/e$a;)V

    iget-object v5, v5, LM6/g;->Y:Landroid/graphics/Point;

    iput-object v5, v3, LD6/l;->g:Landroid/graphics/Point;

    new-instance v5, Ll7/a$a;

    invoke-direct {v5, v1, v3, v12}, Ll7/a$a;-><init>(Lh7/b;Lk7/a;Lj7/a;)V

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lh7/b;->n()Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v1, LD6/g;

    iget-object v5, v0, LC6/a;->a:LH6/a;

    invoke-direct {v1, v5}, LD6/g;-><init>(LH6/a;)V

    iput v13, v1, LD6/g;->d:I

    new-instance v1, Ll7/a$a;

    invoke-direct {v1, v6, v3, v12}, Ll7/a$a;-><init>(Lh7/b;Lk7/a;Lj7/a;)V

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-virtual {v7}, Lh7/b;->n()Z

    move-result v1

    if-nez v1, :cond_1e

    new-instance v1, LD6/m;

    iget-object v3, v0, LC6/a;->a:LH6/a;

    invoke-direct {v1, v3}, LD6/m;-><init>(LH6/a;)V

    iget v3, v4, LM6/f;->m6:I

    iput v3, v1, LD6/m;->e:I

    iget v3, v4, LM6/f;->o6:I

    iput v3, v1, LD6/m;->f:I

    iget-object v3, v4, LM6/f;->l6:LN6/d$a;

    iput-object v3, v1, LD6/m;->d:LN6/d$a;

    new-instance v3, Ll7/a$a;

    invoke-direct {v3, v7, v1, v12}, Ll7/a$a;-><init>(Lh7/b;Lk7/a;Lj7/a;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_10
    invoke-static {}, LK6/c;->M0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    new-instance v4, LM6/c;

    invoke-direct {v4}, LM6/c;-><init>()V

    invoke-virtual {v4, v1}, LM6/c;->d(Ljava/util/Map;)V

    iget-object v1, v4, LM6/c;->k6:LN6/b$c;

    sget-object v5, LN6/b$c;->X:LN6/b$c;

    const/4 v6, -0x1

    if-ne v1, v5, :cond_11

    new-instance v1, Lh7/b;

    const/16 v5, 0x1a

    invoke-direct {v1, v5, v6}, Lh7/b;-><init>(II)V

    new-instance v5, Lh7/b;

    invoke-direct {v5, v7, v6}, Lh7/b;-><init>(II)V

    new-instance v7, Lh7/b;

    const/4 v8, 0x7

    invoke-direct {v7, v8, v6}, Lh7/b;-><init>(II)V

    new-instance v8, Lh7/b;

    const/16 v9, 0x16

    invoke-direct {v8, v9, v6}, Lh7/b;-><init>(II)V

    goto :goto_3

    :cond_11
    sget-object v5, LN6/b$c;->Y:LN6/b$c;

    if-ne v1, v5, :cond_12

    new-instance v1, Lh7/b;

    const/16 v5, 0x52

    invoke-direct {v1, v5, v6}, Lh7/b;-><init>(II)V

    new-instance v5, Lh7/b;

    const/16 v7, 0x50

    invoke-direct {v5, v7, v6}, Lh7/b;-><init>(II)V

    new-instance v7, Lh7/b;

    const/16 v8, 0x4f

    invoke-direct {v7, v8, v6}, Lh7/b;-><init>(II)V

    new-instance v8, Lh7/b;

    const/16 v9, 0x51

    invoke-direct {v8, v9, v6}, Lh7/b;-><init>(II)V

    goto :goto_3

    :cond_12
    new-instance v1, Lh7/b;

    iget v5, v4, LM6/c;->o6:I

    invoke-direct {v1, v5, v6}, Lh7/b;-><init>(II)V

    new-instance v5, Lh7/b;

    iget v7, v4, LM6/c;->q6:I

    invoke-direct {v5, v7, v6}, Lh7/b;-><init>(II)V

    new-instance v7, Lh7/b;

    iget v8, v4, LM6/c;->r6:I

    invoke-direct {v7, v8, v6}, Lh7/b;-><init>(II)V

    new-instance v8, Lh7/b;

    iget v9, v4, LM6/c;->p6:I

    invoke-direct {v8, v9, v6}, Lh7/b;-><init>(II)V

    :goto_3
    new-instance v9, LX5/a;

    new-instance v10, Landroid/graphics/Point;

    iget-object v11, v3, Lt7/a;->X:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    iget-object v13, v3, Lt7/a;->X:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    invoke-direct {v10, v11, v13}, Landroid/graphics/Point;-><init>(II)V

    iget-object v3, v3, Lt7/a;->X:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-double v13, v3

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double/2addr v13, v15

    double-to-int v3, v13

    sget-object v11, LC6/a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v9, v10, v3, v11}, LX5/a;-><init>(Landroid/graphics/Point;ILjava/util/concurrent/ExecutorService;)V

    iput-object v9, v0, LC6/a;->b:Ln7/a;

    iget-boolean v3, v4, LM6/c;->v6:Z

    invoke-interface {v9, v3}, Ln7/a;->setRecenterWhenPressingOppositeDirection(Z)V

    new-instance v3, LD6/c;

    iget-object v9, v0, LC6/a;->b:Ln7/a;

    sget-object v10, Ln7/a$b;->X:Ln7/a$b;

    invoke-direct {v3, v9, v10}, LD6/c;-><init>(Ln7/a;Ln7/a$b;)V

    new-instance v9, LD6/c;

    iget-object v10, v0, LC6/a;->b:Ln7/a;

    sget-object v11, Ln7/a$b;->Y:Ln7/a$b;

    invoke-direct {v9, v10, v11}, LD6/c;-><init>(Ln7/a;Ln7/a$b;)V

    new-instance v10, LD6/c;

    iget-object v11, v0, LC6/a;->b:Ln7/a;

    sget-object v13, Ln7/a$b;->Z:Ln7/a$b;

    invoke-direct {v10, v11, v13}, LD6/c;-><init>(Ln7/a;Ln7/a$b;)V

    new-instance v11, LD6/c;

    iget-object v13, v0, LC6/a;->b:Ln7/a;

    sget-object v14, Ln7/a$b;->V1:Ln7/a$b;

    invoke-direct {v11, v13, v14}, LD6/c;-><init>(Ln7/a;Ln7/a$b;)V

    new-instance v13, Ll7/a$a;

    invoke-direct {v13, v1, v3, v12}, Ll7/a$a;-><init>(Lh7/b;Lk7/a;Lj7/a;)V

    invoke-virtual {v2, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ll7/a$a;

    invoke-direct {v1, v5, v9, v12}, Ll7/a$a;-><init>(Lh7/b;Lk7/a;Lj7/a;)V

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ll7/a$a;

    invoke-direct {v1, v7, v10, v12}, Ll7/a$a;-><init>(Lh7/b;Lk7/a;Lj7/a;)V

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ll7/a$a;

    invoke-direct {v1, v8, v11, v12}, Ll7/a$a;-><init>(Lh7/b;Lk7/a;Lj7/a;)V

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->init(Landroid/content/Context;)V

    sget-boolean v1, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->lsSpEnabled:Z

    if-eqz v1, :cond_13

    new-instance v5, Lcom/zjx/gw2lic/Gw2LsSpKey;

    const/4 v9, 0x4

    invoke-direct {v5, v9}, Lcom/zjx/gw2lic/Gw2LsSpKey;-><init>(I)V

    new-instance v7, Lh7/b;

    const/16 v10, -0x1f

    const/4 v11, -0x1

    invoke-direct {v7, v10, v11}, Lh7/b;-><init>(II)V

    new-instance v8, Ll7/a$a;

    const/4 v12, 0x0

    invoke-direct {v8, v7, v5, v12}, Ll7/a$a;-><init>(Lh7/b;Lk7/a;Lj7/a;)V

    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/zjx/gw2lic/Gw2LsSpKey;

    const/4 v9, 0x5

    invoke-direct {v5, v9}, Lcom/zjx/gw2lic/Gw2LsSpKey;-><init>(I)V

    new-instance v7, Lh7/b;

    const/16 v10, 0x2c

    const/4 v11, -0x1

    invoke-direct {v7, v10, v11}, Lh7/b;-><init>(II)V

    new-instance v8, Ll7/a$a;

    const/4 v12, 0x0

    invoke-direct {v8, v7, v5, v12}, Ll7/a$a;-><init>(Lh7/b;Lk7/a;Lj7/a;)V

    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_13
    iget-object v1, v4, LM6/c;->l6:LN6/b$b;

    sget-object v3, LN6/b$b;->Z:LN6/b$b;

    if-eq v1, v3, :cond_14

    new-instance v3, LD6/k;

    iget-object v5, v0, LC6/a;->b:Ln7/a;

    iget v7, v4, LM6/c;->Z:I

    invoke-direct {v3, v5, v1, v7}, LD6/k;-><init>(Ln7/a;LN6/b$b;I)V

    new-instance v1, Ll7/a$a;

    new-instance v5, Lh7/b;

    iget v7, v4, LM6/c;->V1:I

    invoke-direct {v5, v7, v6}, Lh7/b;-><init>(II)V

    invoke-direct {v1, v5, v3, v12}, Ll7/a$a;-><init>(Lh7/b;Lk7/a;Lj7/a;)V

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-object v1, v4, LM6/c;->m6:LN6/b$a;

    sget-object v3, LN6/b$a;->Z:LN6/b$a;

    if-eq v1, v3, :cond_15

    iget v5, v4, LM6/c;->t6:I

    if-eq v5, v6, :cond_15

    new-instance v7, LD6/j;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    sget-object v8, Ln7/a$a;->Y:Ln7/a$a;

    iput-object v8, v7, LD6/j;->c:Ln7/a$a;

    iput-object v1, v7, LD6/j;->d:LN6/b$a;

    iget-object v1, v0, LC6/a;->b:Ln7/a;

    iput-object v1, v7, LD6/j;->e:Ln7/a;

    new-instance v1, Ll7/a$a;

    new-instance v8, Lh7/b;

    invoke-direct {v8, v5, v6}, Lh7/b;-><init>(II)V

    invoke-direct {v1, v8, v7, v12}, Ll7/a$a;-><init>(Lh7/b;Lk7/a;Lj7/a;)V

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-object v1, v4, LM6/c;->n6:LN6/b$a;

    if-eq v1, v3, :cond_1e

    iget v3, v4, LM6/c;->s6:I

    if-eq v3, v6, :cond_1e

    new-instance v4, LD6/j;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    sget-object v5, Ln7/a$a;->Z:Ln7/a$a;

    iput-object v5, v4, LD6/j;->c:Ln7/a$a;

    iput-object v1, v4, LD6/j;->d:LN6/b$a;

    iget-object v1, v0, LC6/a;->b:Ln7/a;

    iput-object v1, v4, LD6/j;->e:Ln7/a;

    new-instance v1, Ll7/a$a;

    new-instance v5, Lh7/b;

    invoke-direct {v5, v3, v6}, Lh7/b;-><init>(II)V

    invoke-direct {v1, v5, v4, v12}, Ll7/a$a;-><init>(Lh7/b;Lk7/a;Lj7/a;)V

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_16
    invoke-static {}, LK6/b;->M0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    new-instance v4, LM6/b;

    invoke-direct {v4}, LM6/b;-><init>()V

    invoke-virtual {v4, v1}, LM6/b;->d(Ljava/util/Map;)V

    new-instance v5, Lt7/d;

    invoke-direct {v5}, Lt7/d;-><init>()V

    invoke-virtual {v5, v1}, Lt7/d;->d(Ljava/util/Map;)V

    new-instance v1, LH6/a;

    invoke-direct {v1}, LH6/a;-><init>()V

    new-instance v7, Landroid/graphics/Point;

    iget-object v12, v3, Lt7/a;->X:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    iget-object v14, v3, Lt7/a;->X:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v14

    invoke-direct {v7, v12, v14}, Landroid/graphics/Point;-><init>(II)V

    iput-object v7, v1, LH6/a;->q6:Landroid/graphics/Point;

    invoke-static {}, Lg7/d;->f()Landroid/util/Size;

    move-result-object v7

    invoke-static {v7}, Lg7/d;->a(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v7

    new-instance v12, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v14

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-direct {v12, v13, v13, v14, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v12, v1, LH6/a;->p6:Landroid/graphics/Rect;

    iget v7, v4, LM6/b;->X:F

    float-to-int v7, v7

    invoke-virtual {v1, v7}, LH6/a;->H(I)V

    iget v7, v4, LM6/b;->X:F

    float-to-int v7, v7

    invoke-virtual {v1, v7}, LH6/a;->S(I)V

    iget-boolean v7, v4, LM6/b;->A:Z

    iput-boolean v7, v1, LH6/a;->S6:Z

    iget v7, v4, LM6/b;->X:F

    iput v7, v1, LH6/a;->T6:F

    iget v7, v4, LM6/b;->B:I

    iput v7, v1, LH6/a;->U6:I

    iget v7, v4, LM6/b;->D:I

    iput v7, v1, LH6/a;->V6:I

    iget v7, v4, LM6/b;->E:I

    iput v7, v1, LH6/a;->W6:I

    iget v7, v4, LM6/b;->F:I

    iput v7, v1, LH6/a;->X6:I

    iget-boolean v7, v4, LM6/b;->H:Z

    iput-boolean v7, v1, LH6/a;->Y6:Z

    iget v7, v4, LM6/b;->I:I

    iput v7, v1, LH6/a;->Z6:I

    iget-boolean v4, v4, LM6/b;->Y:Z

    if-eqz v4, :cond_17

    iput-boolean v13, v1, LH6/a;->u6:Z

    iput v9, v1, LH6/a;->v6:I

    goto :goto_4

    :cond_17
    iput-boolean v8, v1, LH6/a;->u6:Z

    :goto_4
    new-instance v4, LD6/d;

    invoke-direct {v4, v1}, LD6/d;-><init>(LT5/a;)V

    new-instance v1, Lj7/a;

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Lj7/a;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/graphics/Point;

    iget-object v8, v3, Lt7/a;->X:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    iget-object v3, v3, Lt7/a;->X:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-direct {v7, v8, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v3, Landroid/util/Size;

    invoke-static {v10}, Lg7/d;->b(I)I

    move-result v8

    invoke-static {v10}, Lg7/d;->b(I)I

    move-result v9

    invoke-direct {v3, v8, v9}, Landroid/util/Size;-><init>(II)V

    invoke-static {v7, v3}, Lg7/d;->k(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Lr7/f;->setFrame(Landroid/graphics/Rect;)V

    iget-object v3, v5, Lt7/d;->X:Lh7/b;

    invoke-virtual {v3, v6}, Lh7/b;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lr7/k;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v11, v11}, Lr7/k;->J0(II)V

    new-instance v3, Ll7/a$a;

    iget-object v5, v5, Lt7/d;->X:Lh7/b;

    invoke-direct {v3, v5, v4, v1}, Ll7/a$a;-><init>(Lh7/b;Lk7/a;Lj7/a;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_18
    invoke-static {}, LK6/e;->M0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    new-instance v3, LM6/e;

    invoke-direct {v3}, LM6/e;-><init>()V

    invoke-virtual {v3, v1}, LM6/e;->d(Ljava/util/Map;)V

    iget-object v1, v3, LM6/e;->Y:Lh7/b;

    invoke-virtual {v1}, Lh7/b;->n()Z

    move-result v4

    if-eqz v4, :cond_19

    return-object v12

    :cond_19
    new-instance v4, LU5/b;

    invoke-direct {v4}, LU5/b;-><init>()V

    iget-object v5, v3, LM6/e;->V1:LN6/c$a;

    iput-object v5, v4, LU5/b;->e:LN6/c$a;

    iget-object v5, v3, LM6/e;->k6:Ljava/util/List;

    invoke-virtual {v4, v5}, LU5/b;->j(Ljava/util/List;)V

    iget-object v3, v3, LM6/e;->Z:Lh7/b;

    invoke-virtual {v3}, Lh7/b;->n()Z

    move-result v5

    if-nez v5, :cond_1a

    new-instance v5, LC6/a$a;

    invoke-direct {v5, v0, v4}, LC6/a$a;-><init>(LC6/a;LU5/b;)V

    new-instance v6, Ll7/a$a;

    invoke-direct {v6, v3, v5, v12}, Ll7/a$a;-><init>(Lh7/b;Lk7/a;Lj7/a;)V

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1a
    new-instance v3, Ll7/a$a;

    invoke-direct {v3, v1, v4, v12}, Ll7/a$a;-><init>(Lh7/b;Lk7/a;Lj7/a;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_1b
    invoke-static {}, LK6/k;->M0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    new-instance v3, Lt7/d;

    invoke-direct {v3}, Lt7/d;-><init>()V

    invoke-virtual {v3, v1}, Lt7/d;->d(Ljava/util/Map;)V

    iget-object v1, v3, Lt7/d;->X:Lh7/b;

    invoke-virtual {v1}, Lh7/b;->n()Z

    move-result v1

    if-eqz v1, :cond_1c

    return-object v12

    :cond_1c
    new-instance v1, LC6/a$b;

    invoke-direct {v1, v0}, LC6/a$b;-><init>(LC6/a;)V

    new-instance v4, Ll7/a$a;

    iget-object v3, v3, Lt7/d;->X:Lh7/b;

    invoke-direct {v4, v3, v1, v12}, Ll7/a$a;-><init>(Lh7/b;Lk7/a;Lj7/a;)V

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_1d
    invoke-static {}, LK6/l;->M0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    new-instance v3, Lt7/d;

    invoke-direct {v3}, Lt7/d;-><init>()V

    invoke-virtual {v3, v1}, Lt7/d;->d(Ljava/util/Map;)V

    new-instance v1, LD6/n;

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, LD6/n;-><init>(Landroid/content/Context;)V

    new-instance v4, Ll7/a$a;

    iget-object v3, v3, Lt7/d;->X:Lh7/b;

    invoke-direct {v4, v3, v1, v12}, Ll7/a$a;-><init>(Lh7/b;Lk7/a;Lj7/a;)V

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1e
    :goto_5
    return-object v2
.end method

.method public c()Ln7/a;
    .locals 1

    iget-object v0, p0, LC6/a;->b:Ln7/a;

    return-object v0
.end method

.method public d()LH6/a;
    .locals 1

    iget-object v0, p0, LC6/a;->a:LH6/a;

    return-object v0
.end method
