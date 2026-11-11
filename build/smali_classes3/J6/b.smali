.class public LJ6/b;
.super Lp7/a;
.source "SourceFile"

# interfaces
.implements Lu6/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJ6/b$y;
    }
.end annotation


# static fields
.field public static final A6:Ljava/lang/String; = "1.0.0"


# instance fields
.field public m6:LJ6/b$y;

.field public n6:Landroid/view/View$OnTouchListener;

.field public o6:Lx6/c;

.field public p6:Lx6/a;

.field public q6:Z

.field public r6:Landroid/view/ScaleGestureDetector;

.field public s6:Ljava/lang/String;

.field public t6:Z

.field public u6:Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;

.field public v6:Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView;

.field public w6:LJ6/a;

.field public x6:Lcom/zjx/jyandroid/ForegroundService/a$e0;

.field public y6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public z6:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    sget-object v1, LB6/b;->f:LB6/b;

    invoke-direct {p0, v0, v1}, Lp7/a;-><init>(Landroid/content/Context;Lg7/b;)V

    new-instance v0, LJ6/b$k;

    invoke-direct {v0, p0}, LJ6/b$k;-><init>(LJ6/b;)V

    iput-object v0, p0, LJ6/b;->n6:Landroid/view/View$OnTouchListener;

    new-instance v0, LJ6/b$q;

    invoke-direct {v0, p0}, LJ6/b$q;-><init>(LJ6/b;)V

    iput-object v0, p0, LJ6/b;->o6:Lx6/c;

    new-instance v0, LJ6/b$r;

    invoke-direct {v0, p0}, LJ6/b$r;-><init>(LJ6/b;)V

    iput-object v0, p0, LJ6/b;->p6:Lx6/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, LJ6/b;->q6:Z

    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v2

    new-instance v3, LJ6/b$s;

    invoke-direct {v3, p0}, LJ6/b$s;-><init>(LJ6/b;)V

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, LJ6/b;->r6:Landroid/view/ScaleGestureDetector;

    const/4 v1, 0x0

    iput-object v1, p0, LJ6/b;->s6:Ljava/lang/String;

    iput-boolean v0, p0, LJ6/b;->t6:Z

    iput-boolean v0, p0, LJ6/b;->z6:Z

    return-void
.end method

.method public static synthetic A(LJ6/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, LJ6/b;->s6:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic B(LJ6/b;)V
    .locals 0

    invoke-virtual {p0}, LJ6/b;->S()V

    return-void
.end method

.method public static synthetic C(LJ6/b;)Lp7/a$d;
    .locals 0

    iget-object p0, p0, Lp7/a;->X:Lp7/a$d;

    return-object p0
.end method

.method public static synthetic D(LJ6/b;)Lp7/a$d;
    .locals 0

    iget-object p0, p0, Lp7/a;->X:Lp7/a$d;

    return-object p0
.end method

.method public static synthetic E(LJ6/b;)Z
    .locals 0

    iget-boolean p0, p0, LJ6/b;->t6:Z

    return p0
.end method

.method public static synthetic F(LJ6/b;)Lp7/a$d;
    .locals 0

    iget-object p0, p0, Lp7/a;->X:Lp7/a$d;

    return-object p0
.end method

.method public static synthetic G(LJ6/b;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lp7/a;->g()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H(LJ6/b;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lp7/a;->g()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I(LJ6/b;)Lp7/a$d;
    .locals 0

    iget-object p0, p0, Lp7/a;->X:Lp7/a$d;

    return-object p0
.end method

.method public static synthetic J(LJ6/b;)Lg7/b;
    .locals 0

    invoke-virtual {p0}, Lp7/a;->h()Lg7/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic K(LJ6/b;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lp7/a;->g()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(LJ6/b;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lp7/a;->g()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(LJ6/b;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lp7/a;->g()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(LJ6/b;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lp7/a;->g()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(LJ6/b;)Lg7/b;
    .locals 0

    invoke-virtual {p0}, Lp7/a;->h()Lg7/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(LJ6/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LJ6/b;->s6:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public L(Ljava/util/LinkedList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Li7/c;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li7/c;

    sget-object v3, LJ6/b$p;->a:[I

    invoke-virtual {v1}, Li7/c;->a()Li7/d;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eq v3, v4, :cond_a

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    if-eq v3, v5, :cond_1

    goto :goto_0

    :cond_1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lp7/a;->j()Lr7/a;

    move-result-object v3

    if-nez v3, :cond_2

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_2
    iget-boolean v4, p0, LJ6/b;->z6:Z

    if-eqz v4, :cond_3

    monitor-exit p0

    goto :goto_0

    :cond_3
    check-cast v1, Li7/j;

    iget v1, v1, Li7/j;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v1, :cond_4

    const v1, 0xfff8

    goto :goto_1

    :cond_4
    const v1, 0xfff7

    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, LK6/h;

    if-ne v4, v5, :cond_6

    move-object v4, v3

    check-cast v4, LK6/h;

    invoke-virtual {v4}, Lr7/c;->getHotkey()Lh7/b;

    move-result-object v4

    invoke-virtual {v4}, Lh7/b;->n()Z

    move-result v4

    if-eqz v4, :cond_6

    const-class v4, LK6/i;

    invoke-virtual {p0, v4}, Lp7/a;->l(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, LJ6/b;->w6:LJ6/a;

    if-nez v4, :cond_5

    new-instance v4, Lp6/a;

    invoke-virtual {p0}, Lp7/a;->f()Lp7/a$d;

    move-result-object v5

    sget v6, Lcom/zjx/jyandroid/e$k;->f7:I

    invoke-static {v6}, Lcom/zjx/jyandroid/base/util/b;->B(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/zjx/jyandroid/e$k;->e7:I

    invoke-static {v7}, Lcom/zjx/jyandroid/base/util/b;->B(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lp6/a;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lp6/a$c;

    sget v6, Lcom/zjx/jyandroid/e$k;->d7:I

    invoke-static {v6}, Lcom/zjx/jyandroid/base/util/b;->B(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lp6/a$c$b;->X:Lp6/a$c$b;

    new-instance v8, LJ6/b$l;

    invoke-direct {v8, p0, v3}, LJ6/b$l;-><init>(LJ6/b;Lr7/a;)V

    invoke-direct {v5, v6, v7, v8}, Lp6/a$c;-><init>(Ljava/lang/String;Lp6/a$c$b;Lp6/a$c$a;)V

    invoke-virtual {v4, v5}, Lp6/a;->c(Lp6/a$c;)V

    new-instance v5, Lp6/a$c;

    sget v6, Lcom/zjx/jyandroid/e$k;->c7:I

    invoke-static {v6}, Lcom/zjx/jyandroid/base/util/b;->B(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lp6/a$c$b;->Y:Lp6/a$c$b;

    new-instance v8, LJ6/b$m;

    invoke-direct {v8, p0, v3, v1}, LJ6/b$m;-><init>(LJ6/b;Lr7/a;I)V

    invoke-direct {v5, v6, v7, v8}, Lp6/a$c;-><init>(Ljava/lang/String;Lp6/a$c$b;Lp6/a$c$a;)V

    invoke-virtual {v4, v5}, Lp6/a;->c(Lp6/a$c;)V

    iput-boolean v2, p0, LJ6/b;->z6:Z

    invoke-virtual {p0}, Lp7/a;->f()Lp7/a$d;

    move-result-object v5

    new-instance v6, LJ6/b$n;

    invoke-direct {v6, p0, v4}, LJ6/b$n;-><init>(LJ6/b;Lp6/a;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ls6/a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_5
    :try_start_3
    new-instance v4, Ls6/a;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    throw v4

    :cond_6
    new-instance v4, Ls6/a;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    throw v4
    :try_end_3
    .catch Ls6/a; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    :try_start_4
    new-instance v4, Li7/e;

    sget-object v5, Li7/e$a;->Y:Li7/e$a;

    invoke-direct {v4, v5, v1, v2}, Li7/e;-><init>(Li7/e$a;IZ)V

    invoke-virtual {v3, v4}, Lr7/a;->x0(Li7/e;)V

    invoke-virtual {p0}, Lp7/a;->f()Lp7/a$d;

    move-result-object v2

    new-instance v4, LJ6/b$o;

    invoke-direct {v4, p0, v3, v1}, LJ6/b$o;-><init>(LJ6/b;Lr7/a;I)V

    const-wide/16 v5, 0xa

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit p0

    goto/16 :goto_0

    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :cond_7
    invoke-virtual {p0}, Lp7/a;->j()Lr7/a;

    move-result-object v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, LK6/h;

    if-ne v3, v4, :cond_0

    move-object v3, v2

    check-cast v3, LK6/h;

    invoke-virtual {v3}, Lr7/c;->getHotkey()Lh7/b;

    move-result-object v3

    invoke-virtual {v3}, Lh7/b;->n()Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_0

    :cond_9
    check-cast v1, Li7/i;

    iget v3, v1, Li7/i;->b:I

    mul-int/2addr v3, v3

    iget v1, v1, Li7/i;->c:I

    mul-int/2addr v1, v1

    add-int/2addr v1, v3

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    cmpl-double v1, v3, v5

    if-lez v1, :cond_0

    const-class v1, LK6/f;

    invoke-virtual {p0, v1}, Lp7/a;->l(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lp7/a;->X:Lp7/a$d;

    new-instance v3, LJ6/b$j;

    invoke-direct {v3, p0, v2}, LJ6/b$j;-><init>(LJ6/b;Lr7/a;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_a
    monitor-enter p0

    :try_start_5
    invoke-virtual {p0}, Lp7/a;->j()Lr7/a;

    move-result-object v3

    if-nez v3, :cond_b

    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception p1

    goto/16 :goto_4

    :cond_b
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v6, LK6/h;

    if-ne v4, v6, :cond_13

    move-object v4, v3

    check-cast v4, LK6/h;

    invoke-virtual {v4}, Lr7/c;->getHotkey()Lh7/b;

    move-result-object v4

    invoke-virtual {v4}, Lh7/b;->n()Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_3

    :cond_c
    iget-boolean v4, p0, LJ6/b;->z6:Z

    if-eqz v4, :cond_d

    monitor-exit p0

    goto/16 :goto_0

    :cond_d
    move-object v4, v1

    check-cast v4, Li7/e;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-boolean v6, v4, Li7/e;->d:Z

    if-eqz v6, :cond_10

    iget v7, v4, Li7/e;->c:I

    if-eq v7, v5, :cond_e

    const/16 v5, 0x1a

    if-eq v7, v5, :cond_e

    const/16 v5, 0x16

    if-eq v7, v5, :cond_e

    const/4 v5, 0x7

    if-ne v7, v5, :cond_10

    :cond_e
    const-class v5, LK6/c;

    invoke-virtual {p0, v5}, Lp7/a;->l(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, p0, LJ6/b;->w6:LJ6/a;

    if-nez v5, :cond_f

    new-instance v5, Lp6/a;

    iget-object v6, p0, Lp7/a;->X:Lp7/a$d;

    sget v7, Lcom/zjx/jyandroid/e$k;->f7:I

    invoke-static {v7}, Lcom/zjx/jyandroid/base/util/b;->B(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/zjx/jyandroid/e$k;->e7:I

    invoke-static {v8}, Lcom/zjx/jyandroid/base/util/b;->B(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lp6/a;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lp6/a$c;

    sget v7, Lcom/zjx/jyandroid/e$k;->b7:I

    invoke-static {v7}, Lcom/zjx/jyandroid/base/util/b;->B(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lp6/a$c$b;->X:Lp6/a$c$b;

    new-instance v9, LJ6/b$g;

    invoke-direct {v9, p0, v3}, LJ6/b$g;-><init>(LJ6/b;Lr7/a;)V

    invoke-direct {v6, v7, v8, v9}, Lp6/a$c;-><init>(Ljava/lang/String;Lp6/a$c$b;Lp6/a$c$a;)V

    invoke-virtual {v5, v6}, Lp6/a;->c(Lp6/a$c;)V

    new-instance v6, Lp6/a$c;

    sget v7, Lcom/zjx/jyandroid/e$k;->c7:I

    invoke-static {v7}, Lcom/zjx/jyandroid/base/util/b;->B(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lp6/a$c$b;->Y:Lp6/a$c$b;

    new-instance v9, LJ6/b$h;

    invoke-direct {v9, p0, v3, v4}, LJ6/b$h;-><init>(LJ6/b;Lr7/a;Li7/e;)V

    invoke-direct {v6, v7, v8, v9}, Lp6/a$c;-><init>(Ljava/lang/String;Lp6/a$c$b;Lp6/a$c$a;)V

    invoke-virtual {v5, v6}, Lp6/a;->c(Lp6/a$c;)V

    iput-boolean v2, p0, LJ6/b;->z6:Z

    iget-object v2, p0, Lp7/a;->X:Lp7/a$d;

    new-instance v4, LJ6/b$i;

    invoke-direct {v4, p0, v5}, LJ6/b$i;-><init>(LJ6/b;Lp6/a;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catch Ls6/a; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    :cond_f
    :try_start_8
    new-instance v2, Ls6/a;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    throw v2

    :cond_10
    if-eqz v6, :cond_12

    iget v2, v4, Li7/e;->c:I

    const v4, 0xfffe

    if-ne v2, v4, :cond_12

    iget-object v2, p0, LJ6/b;->w6:LJ6/a;

    if-nez v2, :cond_12

    invoke-virtual {p0}, Lp7/a;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr7/a;

    instance-of v6, v5, Lq7/f;

    if-eqz v6, :cond_11

    check-cast v5, Lq7/f;

    invoke-interface {v5}, Ls7/c;->getHotkey()Lh7/b;

    move-result-object v5

    new-instance v6, Lh7/b;

    const/4 v7, -0x1

    invoke-direct {v6, v4, v7}, Lh7/b;-><init>(II)V

    invoke-virtual {v5, v6}, Lh7/b;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_8
    .catch Ls6/a; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v5, :cond_11

    :try_start_9
    monitor-exit p0

    goto/16 :goto_0

    :catch_1
    :cond_12
    check-cast v1, Li7/e;

    invoke-virtual {v3, v1}, Lr7/a;->x0(Li7/e;)V

    monitor-exit p0

    goto/16 :goto_0

    :cond_13
    :goto_3
    check-cast v1, Li7/e;

    invoke-virtual {v3, v1}, Lr7/a;->x0(Li7/e;)V

    monitor-exit p0

    goto/16 :goto_0

    :goto_4
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw p1

    :cond_14
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_15

    goto :goto_5

    :cond_15
    const/4 v2, 0x0

    :goto_5
    return v2
.end method

.method public N()LJ6/a;
    .locals 1

    iget-object v0, p0, LJ6/b;->w6:LJ6/a;

    return-object v0
.end method

.method public O()Lcom/zjx/jyandroid/ForegroundService/a$e0;
    .locals 1

    iget-object v0, p0, LJ6/b;->x6:Lcom/zjx/jyandroid/ForegroundService/a$e0;

    return-object v0
.end method

.method public P()Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "version"

    const-string v3, "1.0.0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "components"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lp7/a;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr7/a;

    invoke-virtual {v3}, Lr7/a;->getComponentIdentifier()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lr7/a;->c()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The component identifier of the component "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is empty. Did you forget to call setComponentIdentifier(String) after creating the component?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public Q(Ljava/util/Map;)Lr7/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lr7/a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    new-instance v0, Lt7/a;

    invoke-direct {v0}, Lt7/a;-><init>()V

    invoke-virtual {v0, p1}, Lt7/a;->d(Ljava/util/Map;)V

    iget-object v0, v0, Lt7/a;->Z:Ljava/lang/String;

    invoke-static {}, LK6/h;->M0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v0, LK6/h;

    invoke-virtual {p0, v0}, Lp7/a;->c(Ljava/lang/Class;)Lr7/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, LK6/j;->M0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v0, LK6/j;

    invoke-virtual {p0, v0}, Lp7/a;->c(Ljava/lang/Class;)Lr7/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    invoke-static {}, LK6/i;->E0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-class v0, LK6/i;

    invoke-virtual {p0, v0}, Lp7/a;->c(Ljava/lang/Class;)Lr7/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    invoke-static {}, LK6/e;->M0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-class v0, LK6/e;

    invoke-virtual {p0, v0}, Lp7/a;->c(Ljava/lang/Class;)Lr7/a;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {}, LK6/c;->M0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-class v0, LK6/c;

    invoke-virtual {p0, v0}, Lp7/a;->c(Ljava/lang/Class;)Lr7/a;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {}, LK6/f;->M0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-class v0, LK6/f;

    invoke-virtual {p0, v0}, Lp7/a;->c(Ljava/lang/Class;)Lr7/a;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-static {}, LK6/b;->M0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-class v0, LK6/b;

    invoke-virtual {p0, v0}, Lp7/a;->c(Ljava/lang/Class;)Lr7/a;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-static {}, LK6/k;->M0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-class v0, LK6/k;

    invoke-virtual {p0, v0}, Lp7/a;->c(Ljava/lang/Class;)Lr7/a;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-static {}, LK6/d;->O0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-class v0, LK6/d;

    invoke-virtual {p0, v0}, Lp7/a;->c(Ljava/lang/Class;)Lr7/a;

    move-result-object v0

    goto :goto_0

    :cond_8
    invoke-static {}, LK6/l;->M0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-class v0, LK6/l;

    invoke-virtual {p0, v0}, Lp7/a;->c(Ljava/lang/Class;)Lr7/a;

    move-result-object v0

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lr7/a;->d(Ljava/util/Map;)V

    goto :goto_1

    :cond_a
    invoke-static {}, LU6/c;->r()LU6/c;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, LU6/c;->f(Ljava/util/Map;Lp7/a;)Lr7/a;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public R()V
    .locals 2

    iget-object v0, p0, LJ6/b;->w6:LJ6/a;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, LJ6/b;->v6:Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lp7/a;->X:Lp7/a$d;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LJ6/b;->u6:Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final S()V
    .locals 3

    new-instance v0, Lcom/zjx/jyandroid/base/util/a;

    const-string v1, "\u656c\u8bf7\u671f\u5f85 Comming soon"

    sget-object v2, Lcom/zjx/jyandroid/base/util/ToastView$a;->a:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void
.end method

.method public T()V
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, LJ6/b;->y6:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, LJ6/b;->W(Lorg/json/JSONObject;)V

    return-void
.end method

.method public U(LJ6/b$y;)V
    .locals 0

    iput-object p1, p0, LJ6/b;->m6:LJ6/b$y;

    return-void
.end method

.method public V(Lcom/zjx/jyandroid/ForegroundService/a$e0;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, LJ6/b;->y6:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/zjx/jyandroid/ForegroundService/a$e0;->b:Ljava/util/Map;

    iput-object v1, p0, LJ6/b;->y6:Ljava/util/Map;

    :goto_0
    iput-object p1, p0, LJ6/b;->x6:Lcom/zjx/jyandroid/ForegroundService/a$e0;

    iget-object v1, p0, LJ6/b;->y6:Ljava/util/Map;

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, LJ6/b;->W(Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, LJ6/b;->y6:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, LJ6/b;->W(Lorg/json/JSONObject;)V

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/a$e0;->a:Lcom/zjx/jyandroid/ForegroundService/a$f0;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/a$f0;->e:Ljava/util/Map;

    const-string v0, "name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, LJ6/b;->s6:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public W(Lorg/json/JSONObject;)V
    .locals 3

    invoke-virtual {p0}, Lp7/a;->j()Lr7/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lp7/a;->j()Lr7/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr7/a;->setSelected(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lp7/a;->s(Lr7/a;)V

    :cond_0
    invoke-virtual {p0}, Lp7/a;->b()V

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v0, LF4/e;

    invoke-direct {v0}, LF4/e;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, LF4/e;->r(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string v0, "version"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    new-instance v0, Lcom/zjx/jyandroid/base/util/a;

    sget v1, Lcom/zjx/jyandroid/e$k;->h7:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->B(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/util/ToastView$a;->a:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/util/a;->a()V

    goto :goto_0

    :cond_3
    new-instance v1, Lio/github/g00fy2/versioncompare/Version;

    const-string v2, "1.0.0"

    invoke-direct {v1, v2}, Lio/github/g00fy2/versioncompare/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lio/github/g00fy2/versioncompare/Version;->isLowerThan(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/zjx/jyandroid/base/util/a;

    sget v1, Lcom/zjx/jyandroid/e$k;->i7:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->B(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/util/ToastView$a;->a:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/util/a;->a()V

    goto :goto_0

    :cond_4
    new-instance v1, Lio/github/g00fy2/versioncompare/Version;

    invoke-direct {v1, v2}, Lio/github/g00fy2/versioncompare/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lio/github/g00fy2/versioncompare/Version;->isHigherThan(Ljava/lang/String;)Z

    :goto_0
    const-string v0, "components"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/AbstractList;

    if-nez p1, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LJ6/b$t;

    invoke-direct {v1, p0, p1}, LJ6/b$t;-><init>(LJ6/b;Ljava/util/AbstractList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public X()V
    .locals 2

    iget-object v0, p0, LJ6/b;->w6:LJ6/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, LJ6/b;->v6:Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lp7/a;->X:Lp7/a$d;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LJ6/b;->u6:Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public Y(Lr7/a;)V
    .locals 4

    iget-object v0, p0, LJ6/b;->w6:LJ6/a;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b;->E()Lr6/e;

    move-result-object v1

    sget-object v2, Lr6/e;->X:Lr6/e;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    sget v1, Lcom/zjx/jyandroid/e$h;->w:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, LJ6/a;

    iput-object v0, p0, LJ6/b;->w6:LJ6/a;

    :cond_1
    iget-object v0, p0, LJ6/b;->w6:LJ6/a;

    invoke-virtual {v0, p0}, LJ6/a;->setKeymapEditor(LJ6/b;)V

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$h;->i()Landroid/util/Size;

    move-result-object v0

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v0, 0x33

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v0, 0x300

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lp7/a;->h()Lg7/b;

    move-result-object v0

    iget-object v2, p0, LJ6/b;->w6:LJ6/a;

    invoke-interface {v0, v2, v1}, Lg7/b;->a(LD7/a;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, LJ6/b;->w6:LJ6/a;

    invoke-virtual {v0, p1}, LJ6/a;->setComponent(Lr7/a;)V

    iget-object p1, p0, LJ6/b;->w6:LJ6/a;

    iget-object p1, p1, LJ6/a;->f7:Landroid/widget/Button;

    new-instance v0, LJ6/b$u;

    invoke-direct {v0, p0}, LJ6/b$u;-><init>(LJ6/b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public declared-synchronized Z()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LJ6/b;->w6:LJ6/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LB6/b;->f:LB6/b;

    iget-object v1, p0, LJ6/b;->w6:LJ6/a;

    invoke-virtual {v0, v1}, LB6/b;->c(LD7/a;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, LJ6/b;->w6:LJ6/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lr7/a;)V
    .locals 3

    invoke-super {p0, p1}, Lp7/a;->a(Lr7/a;)V

    invoke-virtual {p1}, Lr7/a;->getOnTouchEventListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    new-instance v1, LJ6/b$e;

    invoke-direct {v1, p0, p1}, LJ6/b$e;-><init>(LJ6/b;Lr7/a;)V

    new-instance v2, LJ6/b$f;

    invoke-direct {v2, p0, v1, v0}, LJ6/b$f;-><init>(LJ6/b;Lx6/c;Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, v2}, Lr7/a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public a0()V
    .locals 2

    iget-object v0, p0, LJ6/b;->v6:Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lp7/a;->h()Lg7/b;

    move-result-object v0

    iget-object v1, p0, LJ6/b;->v6:Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView;

    invoke-interface {v0, v1}, Lg7/b;->c(LD7/a;)V

    const/4 v0, 0x0

    iput-object v0, p0, LJ6/b;->v6:Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView;

    return-void
.end method

.method public declared-synchronized m()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lp7/a;->n()V

    iget-object v0, p0, Lp7/a;->X:Lp7/a$d;

    iget-object v1, p0, LJ6/b;->n6:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, LD7/a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, LR5/c;->l()LR5/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LR5/c;->k(Z)V

    invoke-virtual {p0}, Lp7/a;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/zjx/jyandroid/e$h;->Y:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;

    iput-object v0, p0, LJ6/b;->u6:Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;

    new-instance v2, LJ6/b$v;

    invoke-direct {v2, p0}, LJ6/b$v;-><init>(LJ6/b;)V

    iput-object v2, v0, Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;->e7:Lu6/d;

    iget-object v0, p0, LJ6/b;->u6:Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;

    new-instance v2, LJ6/b$w;

    invoke-direct {v2, p0}, LJ6/b$w;-><init>(LJ6/b;)V

    iput-object v2, v0, Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;->f7:Lu6/d;

    iget-object v0, p0, LJ6/b;->u6:Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;

    new-instance v2, LJ6/b$x;

    invoke-direct {v2, p0}, LJ6/b$x;-><init>(LJ6/b;)V

    iput-object v2, v0, Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;->g7:Lu6/d;

    iget-object v0, p0, LJ6/b;->u6:Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;

    new-instance v2, LJ6/b$a;

    invoke-direct {v2, p0}, LJ6/b$a;-><init>(LJ6/b;)V

    iput-object v2, v0, Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;->h7:Lu6/d;

    iget-object v0, p0, LJ6/b;->u6:Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;

    new-instance v2, LJ6/b$b;

    invoke-direct {v2, p0}, LJ6/b$b;-><init>(LJ6/b;)V

    iput-object v2, v0, Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;->i7:Lu6/d;

    iget-object v0, p0, LJ6/b;->u6:Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;

    new-instance v2, LJ6/b$c;

    invoke-direct {v2, p0}, LJ6/b$c;-><init>(LJ6/b;)V

    iput-object v2, v0, Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;->j7:Lu6/d;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v2, 0x150

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v2, 0x32

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lp7/a;->h()Lg7/b;

    move-result-object v1

    iget-object v2, p0, LJ6/b;->u6:Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;

    invoke-interface {v1, v2, v0}, Lg7/b;->a(LD7/a;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, LJ6/b;->u6:Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LD7/a;->setDraggable(Z)V

    invoke-static {}, LR5/c;->l()LR5/c;

    move-result-object v0

    invoke-virtual {v0, p0}, LR5/c;->i(Lu6/b;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, LJ6/b$d;

    invoke-direct {v2, p0}, LJ6/b$d;-><init>(LJ6/b;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, LJ6/b;->t6:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public p(Lr7/a;)V
    .locals 0

    invoke-virtual {p0, p1}, LJ6/b;->Y(Lr7/a;)V

    return-void
.end method

.method public q(Lr7/a;Ljava/lang/Class;)Lr7/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lr7/a;",
            ">(",
            "Lr7/a;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lr7/a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lp7/a;->q(Lr7/a;Ljava/lang/Class;)Lr7/a;

    move-result-object p2

    instance-of v0, p1, Lq7/f;

    if-eqz v0, :cond_1

    check-cast p1, Lq7/f;

    invoke-interface {p1}, Ls7/c;->getHotkey()Lh7/b;

    move-result-object p1

    instance-of v0, p2, Lq7/f;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lq7/f;

    invoke-interface {v0}, Lq7/f;->Q()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lh7/b;->n()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0, p1}, Ls7/c;->setHotkey(Lh7/b;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, LK6/e;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lh7/b;->n()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p2

    check-cast v0, LK6/e;

    invoke-virtual {v0, p1}, LK6/e;->setTriggerHotkey(Lh7/b;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, LK6/e;

    if-eqz v0, :cond_2

    check-cast p1, LK6/e;

    invoke-virtual {p1}, LK6/e;->getTriggerHotkey()Lh7/b;

    move-result-object p1

    instance-of v0, p2, Lq7/f;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lq7/f;

    invoke-interface {v0}, Lq7/f;->Q()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lh7/b;->n()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0, p1}, Ls7/c;->setHotkey(Lh7/b;)V

    :cond_2
    :goto_0
    return-object p2
.end method

.method public declared-synchronized u()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, LR5/c;->l()LR5/c;

    move-result-object v0

    invoke-virtual {v0, p0}, LR5/c;->n(Lu6/b;)V

    invoke-virtual {p0}, LJ6/b;->Z()V

    invoke-virtual {p0}, Lp7/a;->h()Lg7/b;

    move-result-object v0

    iget-object v1, p0, LJ6/b;->u6:Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;

    invoke-interface {v0, v1}, Lg7/b;->c(LD7/a;)V

    invoke-virtual {p0}, Lp7/a;->v()V

    invoke-virtual {p0}, LJ6/b;->a0()V

    const/4 v0, 0x0

    iput-object v0, p0, LJ6/b;->u6:Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;

    invoke-static {}, LR5/c;->l()LR5/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LR5/c;->k(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LJ6/b;->t6:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
