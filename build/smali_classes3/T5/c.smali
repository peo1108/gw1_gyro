.class public LT5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu6/b;
.implements Lcom/zjx/jyandroid/ForegroundService/a$U;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LT5/c$f;,
        LT5/c$e;
    }
.end annotation


# static fields
.field public static n6:LT5/c;


# instance fields
.field public V1:Ljava/util/concurrent/ExecutorService;

.field public X:LT5/c$f;

.field public Y:Landroid/os/Handler;

.field public Z:[Z

.field public k6:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "LT5/d;",
            ">;"
        }
    .end annotation
.end field

.field public l6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "LT5/d;",
            ">;>;"
        }
    .end annotation
.end field

.field public m6:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LT5/c$f;

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LT5/c$f;-><init>(LT5/c;Landroid/content/Context;)V

    iput-object v0, p0, LT5/c;->X:LT5/c$f;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LT5/c;->Y:Landroid/os/Handler;

    const/16 v0, 0x28

    new-array v0, v0, [Z

    iput-object v0, p0, LT5/c;->Z:[Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, LT5/c;->V1:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LT5/c;->k6:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, LT5/c;->l6:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, LT5/c;->m6:Z

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/a;->J()Lcom/zjx/jyandroid/ForegroundService/a;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/zjx/jyandroid/ForegroundService/a;->A(Lcom/zjx/jyandroid/ForegroundService/a$U;)V

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, LT5/c;->l6:Ljava/util/List;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static f()LT5/c;
    .locals 1

    sget-object v0, LT5/c;->n6:LT5/c;

    if-nez v0, :cond_0

    new-instance v0, LT5/c;

    invoke-direct {v0}, LT5/c;-><init>()V

    sput-object v0, LT5/c;->n6:LT5/c;

    :cond_0
    sget-object v0, LT5/c;->n6:LT5/c;

    return-object v0
.end method


# virtual methods
.method public L(Ljava/util/LinkedList;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Li7/c;",
            ">;)Z"
        }
    .end annotation

    iget-boolean v0, p0, LT5/c;->m6:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li7/c;

    invoke-virtual {v2}, Li7/c;->a()Li7/d;

    move-result-object v4

    sget-object v5, Li7/d;->l6:Li7/d;

    if-ne v4, v5, :cond_1

    check-cast v2, Li7/l;

    iget-object v4, p0, LT5/c;->l6:Ljava/util/List;

    iget v5, v2, Li7/l;->c:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    iget-object v5, v2, Li7/l;->b:Li7/l$a;

    sget-object v6, Li7/l$a;->Y:Li7/l$a;

    if-ne v5, v6, :cond_2

    iget-object v3, p0, LT5/c;->Z:[Z

    iget v2, v2, Li7/l;->c:I

    aget-boolean v2, v3, v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v1

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, LT5/d;

    iget-object v9, p0, LT5/c;->V1:Ljava/util/concurrent/ExecutorService;

    iget-object v10, v2, Li7/l;->b:Li7/l$a;

    iget v11, v2, Li7/l;->c:I

    iget v12, v2, Li7/l;->d:F

    iget v13, v2, Li7/l;->e:F

    invoke-virtual/range {v8 .. v13}, LT5/d;->f(Ljava/util/concurrent/ExecutorService;Li7/l$a;IFF)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v6, p0, LT5/c;->Z:[Z

    iget v7, v2, Li7/l;->c:I

    aput-boolean v3, v6, v7

    move v6, v3

    goto :goto_1

    :cond_4
    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    :cond_5
    iget-object v3, v2, Li7/l;->b:Li7/l$a;

    sget-object v5, Li7/l$a;->Z:Li7/l$a;

    if-ne v3, v5, :cond_1

    iget-object v3, p0, LT5/c;->Z:[Z

    iget v2, v2, Li7/l;->c:I

    aput-boolean v1, v3, v2

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    goto :goto_0

    :cond_6
    iget-object v5, p0, LT5/c;->k6:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v1

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LT5/d;

    invoke-virtual {v7}, LT5/d;->c()Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, v7, LT5/d;->b:Landroid/graphics/Rect;

    new-instance v9, Lo6/d;

    iget v10, v2, Li7/l;->d:F

    iget v11, v2, Li7/l;->e:F

    invoke-direct {v9, v10, v11}, Lo6/d;-><init>(FF)V

    invoke-static {v8, v9}, Lcom/zjx/jyandroid/base/util/b;->K(Landroid/graphics/Rect;Lo6/d;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    iget-object v9, p0, LT5/c;->V1:Ljava/util/concurrent/ExecutorService;

    iget-object v10, v2, Li7/l;->b:Li7/l$a;

    iget v11, v2, Li7/l;->c:I

    iget v12, v2, Li7/l;->d:F

    iget v13, v2, Li7/l;->e:F

    move-object v8, v7

    invoke-virtual/range {v8 .. v13}, LT5/d;->f(Ljava/util/concurrent/ExecutorService;Li7/l$a;IFF)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v6, p0, LT5/c;->Z:[Z

    iget v8, v2, Li7/l;->c:I

    aput-boolean v3, v6, v8

    move v6, v3

    :cond_8
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_b

    move v1, v3

    :cond_b
    return v1
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, LT5/c;->Y:Landroid/os/Handler;

    new-instance v1, LT5/c$c;

    invoke-direct {v1, p0}, LT5/c$c;-><init>(LT5/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, LT5/c;->X:LT5/c$f;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LT5/c;->Y:Landroid/os/Handler;

    new-instance v1, LT5/c$b;

    invoke-direct {v1, p0}, LT5/c$b;-><init>(LT5/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Lcom/zjx/jyandroid/ForegroundService/a$e0;)Z
    .locals 2

    iget-object v0, p0, LT5/c;->Y:Landroid/os/Handler;

    new-instance v1, LT5/c$d;

    invoke-direct {v1, p0}, LT5/c$d;-><init>(LT5/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, LT5/c;->k6:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/a$e0;->b:Ljava/util/Map;

    const-string v1, "components"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/AbstractList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    const/4 p1, 0x0

    return p1
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LT5/c;->m6:Z

    return v0
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, LT5/c;->m6:Z

    if-eqz p1, :cond_0

    invoke-static {}, LA6/e;->a0()LA6/e;

    move-result-object p1

    invoke-virtual {p1}, LA6/e;->u()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LT5/c;->g()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LT5/c;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, LT5/c;->X:LT5/c$f;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$h;->j()Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, LT5/c;->Y:Landroid/os/Handler;

    new-instance v2, LT5/c$a;

    invoke-direct {v2, p0, v0}, LT5/c$a;-><init>(LT5/c;Landroid/util/Size;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, LT5/c;->X:LT5/c$f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LT5/c;->X:LT5/c$f;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, LT5/c;->X:LT5/c$f;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, LT5/c$e;

    if-eqz v2, :cond_1

    check-cast v1, LT5/c$e;

    invoke-virtual {v1}, LT5/c$e;->I0()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
