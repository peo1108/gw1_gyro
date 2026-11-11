.class public LU5/b;
.super LW5/b;
.source "SourceFile"

# interfaces
.implements LW5/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LU5/b$a;
    }
.end annotation


# instance fields
.field public c:Lcom/zjx/jyandroid/ForegroundService/UI/a;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LV5/a;",
            ">;"
        }
    .end annotation
.end field

.field public e:LN6/c$a;

.field public f:I

.field public g:LV5/a;

.field public h:I

.field public i:LU5/b$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->F()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v0

    iput-object v0, p0, LU5/b;->c:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LU5/b;->d:Ljava/util/List;

    sget-object v0, LN6/c$a;->X:LN6/c$a;

    iput-object v0, p0, LU5/b;->e:LN6/c$a;

    const/4 v0, 0x0

    iput v0, p0, LU5/b;->f:I

    const/4 v1, 0x0

    iput-object v1, p0, LU5/b;->g:LV5/a;

    iput v0, p0, LU5/b;->h:I

    return-void
.end method


# virtual methods
.method public a(Li7/l$a;IFF)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, LU5/b;->e(II)V

    return-void
.end method

.method public c(Li7/l$a;IFF)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, LU5/b;->d(II)V

    return-void
.end method

.method public d(II)V
    .locals 1

    iget-object p1, p0, LU5/b;->e:LN6/c$a;

    sget-object v0, LN6/c$a;->Y:LN6/c$a;

    if-eq p1, v0, :cond_1

    sget-object v0, LN6/c$a;->V1:LN6/c$a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, LN6/c$a;->Z:LN6/c$a;

    if-ne p1, p2, :cond_3

    iget p1, p0, LU5/b;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LU5/b;->h:I

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0xff

    if-le p2, p1, :cond_2

    iget-object p1, p0, LU5/b;->c:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->u()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, LU5/b;->l()V

    :cond_3
    :goto_1
    return-void
.end method

.method public e(II)V
    .locals 2

    iget-object p1, p0, LU5/b;->e:LN6/c$a;

    sget-object v0, LN6/c$a;->X:LN6/c$a;

    const/16 v1, 0xff

    if-eq p1, v0, :cond_2

    sget-object v0, LN6/c$a;->V1:LN6/c$a;

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, LN6/c$a;->Z:LN6/c$a;

    if-ne p1, v0, :cond_4

    if-le p2, v1, :cond_1

    iget-object p1, p0, LU5/b;->c:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->u()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget p1, p0, LU5/b;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LU5/b;->h:I

    :goto_0
    iget p2, p0, LU5/b;->h:I

    if-ne p1, p2, :cond_4

    invoke-virtual {p0}, LU5/b;->l()V

    goto :goto_0

    :cond_2
    :goto_1
    if-le p2, v1, :cond_3

    iget-object p1, p0, LU5/b;->c:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->u()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, LU5/b;->l()V

    :cond_4
    return-void
.end method

.method public i()LU5/b$a;
    .locals 1

    iget-object v0, p0, LU5/b;->i:LU5/b$a;

    return-object v0
.end method

.method public j(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, LU5/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    new-instance v3, Ly7/a;

    invoke-direct {v3}, Ly7/a;-><init>()V

    invoke-virtual {v3, v2}, Ly7/a;->d(Ljava/util/Map;)V

    iget-object v4, v3, Ly7/a;->X:Ljava/lang/String;

    const-string v5, "9\u00a8Y\u008ft\u0011\u0090{\u00afN\u00ff{\u0019\u00cd?\u00cdO\u00e5e\u0005\u00b7$\u00d6\u001f\u00e2\u008d\t\u00aa5\u00c1E\u00e1\u009f\u0006\u00a7$"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v3, LR6/b;

    invoke-direct {v3}, LR6/b;-><init>()V

    invoke-virtual {v3, v2}, LR6/b;->d(Ljava/util/Map;)V

    new-instance v4, Ly7/b;

    invoke-direct {v4}, Ly7/b;-><init>()V

    invoke-virtual {v4, v2}, Ly7/b;->d(Ljava/util/Map;)V

    iget-object v2, v3, LR6/b;->X:LS6/b$a;

    sget-object v3, LS6/b$a;->X:LS6/b$a;

    if-ne v2, v3, :cond_1

    new-instance v1, LV5/d;

    invoke-direct {v1}, LV5/d;-><init>()V

    iget-object v2, v4, Ly7/b;->X:Landroid/graphics/Rect;

    invoke-static {v2}, Lg7/d;->d(Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {v1, v2}, LV5/d;->f(Landroid/graphics/Point;)V

    iget-object v2, p0, LU5/b;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, LU5/b;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v4, v3, Ly7/a;->X:Ljava/lang/String;

    const-string v5, "9\u00a8Y\u008ft\u0011\u0090{\u00afN\u00ff{\u0019\u00cd?\u00cdO\u00e5e\u0005\u00b7$\u00d6\u001f\u00fc\u0090\u001e\u00b4\'\u00dfT\u00e2\u008f\u0004\u00bc"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v3, LR6/a;

    invoke-direct {v3}, LR6/a;-><init>()V

    invoke-virtual {v3, v2}, LR6/a;->d(Ljava/util/Map;)V

    new-instance v4, Ly7/b;

    invoke-direct {v4}, Ly7/b;-><init>()V

    invoke-virtual {v4, v2}, Ly7/b;->d(Ljava/util/Map;)V

    new-instance v2, LV5/b;

    invoke-direct {v2}, LV5/b;-><init>()V

    iget-object v4, v4, Ly7/b;->X:Landroid/graphics/Rect;

    invoke-static {v4}, Lg7/d;->d(Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual {v2, v4}, LV5/b;->g(Landroid/graphics/Point;)V

    iget v3, v3, LR6/a;->X:I

    invoke-virtual {v2, v3}, LV5/b;->h(I)V

    iget-object v3, p0, LU5/b;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    iget-object v4, v3, Ly7/a;->X:Ljava/lang/String;

    const-string v5, "9\u00a8Y\u008ft\u0011\u0090{\u00afN\u00ff{\u0019\u00cd?\u00cdO\u00e5e\u0005\u00b7$\u00d6\u001f\u00e1\u0093\t\u00bc6"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v3, LR6/e;

    invoke-direct {v3}, LR6/e;-><init>()V

    invoke-virtual {v3, v2}, LR6/e;->d(Ljava/util/Map;)V

    new-instance v2, LV5/g;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget v3, v3, LR6/e;->X:I

    iput v3, v2, LV5/g;->b:I

    iget-object v3, p0, LU5/b;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    iget-object v4, v3, Ly7/a;->X:Ljava/lang/String;

    const-string v5, "9\u00a8Y\u008ft\u0011\u0090{\u00afN\u00ff{\u0019\u00cd?\u00cdO\u00e5e\u0005\u00b7$\u00d6\u001f\u00e1\u0088\u0005\u00a9#"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v3, LR6/f;

    invoke-direct {v3}, LR6/f;-><init>()V

    invoke-virtual {v3, v2}, LR6/f;->d(Ljava/util/Map;)V

    new-instance v4, Ly7/b;

    invoke-direct {v4}, Ly7/b;-><init>()V

    invoke-virtual {v4, v2}, Ly7/b;->d(Ljava/util/Map;)V

    new-instance v2, LV5/h;

    iget-object v5, v3, LR6/f;->Y:LS6/d$a;

    invoke-direct {v2, v5}, LV5/h;-><init>(LS6/d$a;)V

    iget v5, v3, LR6/f;->X:I

    invoke-virtual {v2, v5}, LV5/h;->h(I)V

    iget-object v4, v4, Ly7/b;->X:Landroid/graphics/Rect;

    invoke-static {v4}, Lg7/d;->d(Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual {v2, v4}, LV5/h;->j(Landroid/graphics/Point;)V

    iget-object v3, v3, LR6/f;->Z:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, LV5/h;->i(Landroid/graphics/Point;)V

    iget-object v3, p0, LU5/b;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    iget-object v4, v3, Ly7/a;->X:Ljava/lang/String;

    const-string v5, "9\u00a8Y\u008ft\u0011\u0090{\u00afN\u00ff{\u0019\u00cd?\u00cdO\u00e5e\u0005\u00b7$\u00d6\u001f\u00e6\u008d\u0005\u00be!\u00d6R\u00ff\u009f\u0004\u00bb(\u00c2x\u00e7\u009b\u0016\u00bdS\u00c5"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v3, LR6/g;

    invoke-direct {v3}, LR6/g;-><init>()V

    invoke-virtual {v3, v2}, LR6/g;->d(Ljava/util/Map;)V

    new-instance v2, LV5/j;

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, LV5/j;-><init>(Landroid/content/Context;)V

    iget-boolean v3, v3, LR6/g;->X:Z

    iput-boolean v3, v2, LV5/j;->b:Z

    iget-object v3, p0, LU5/b;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    iget-object v4, v3, Ly7/a;->X:Ljava/lang/String;

    const-string v5, "9\u00a8Y\u008ft\u0011\u0090{\u00afN\u00ff{\u0019\u00cd?\u00cdO\u00e5e\u0005\u00b7$\u00d6\u001f\u00e0\u009a\u001f\u00bc2\u00c5I\u00e8\u008d"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v3, LR6/d;

    invoke-direct {v3}, LR6/d;-><init>()V

    invoke-virtual {v3, v2}, LR6/d;->d(Ljava/util/Map;)V

    new-instance v2, LV5/f;

    invoke-direct {v2}, LV5/f;-><init>()V

    iget v3, v3, LR6/d;->X:I

    iput v3, v2, LV5/f;->a:I

    iget-object v3, p0, LU5/b;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    iget-object v4, v3, Ly7/a;->X:Ljava/lang/String;

    const-string v5, "9\u00a8Y\u008ft\u0011\u0090{\u00afN\u00ff{\u0019\u00cd?\u00cdO\u00e5e\u0005\u00b7$\u00d6\u001f\u00e0\u009a\u001f\u00bc2\u00d9O\u00f4\u0089\u0013\u00bd\"\u00c5"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v3, LR6/c;

    invoke-direct {v3}, LR6/c;-><init>()V

    invoke-virtual {v3, v2}, LR6/c;->d(Ljava/util/Map;)V

    new-instance v2, LV5/e;

    invoke-direct {v2}, LV5/e;-><init>()V

    iget v3, v3, LR6/c;->X:I

    iput v3, v2, LV5/e;->a:I

    iget-object v3, p0, LU5/b;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    iget-object v4, v3, Ly7/a;->X:Ljava/lang/String;

    const-string v5, "9\u00a8Y\u008ft\u0011\u0090{\u00afN\u00ff{\u0019\u00cd?\u00cdO\u00e5e\u0005\u00b7$\u00d6\u001f\u00f1\u0097\r\u00b7!\u00d6R\u00e8\u0089\u0008\u00b84\u00dar\u00e7\u009b"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v3, LR6/h;

    invoke-direct {v3}, LR6/h;-><init>()V

    invoke-virtual {v3, v2}, LR6/h;->d(Ljava/util/Map;)V

    iget-boolean v4, v3, LR6/h;->X:Z

    new-instance v2, LV5/k;

    invoke-direct {v2}, LV5/k;-><init>()V

    iput-boolean v4, v2, LV5/k;->b:Z

    iget-object v3, p0, LU5/b;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_a
    iget-object v4, v3, Ly7/a;->X:Ljava/lang/String;

    const-string v5, "9\u00a8Y\u008ft\u0011\u0090{\u00afN\u00ff{\u0019\u00cd?\u00cdO\u00e5e\u0005\u00b7$\u00d6\u001f\u00f5\u0086\u001e\u00b65\u00c4I\u00fd\u009f"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v2, LV5/l;

    invoke-direct {v2}, LV5/l;-><init>()V

    iget-object v3, p0, LU5/b;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    return-void
.end method

.method public k(LU5/b$a;)V
    .locals 0

    iput-object p1, p0, LU5/b;->i:LU5/b$a;

    return-void
.end method

.method public final l()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LU5/b;->g:LV5/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LU5/b;->m()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_0
    :goto_0
    iget v0, p0, LU5/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LU5/b;->f:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, LU5/b;->i:LU5/b$a;

    if-eqz v1, :cond_1

    invoke-interface {v1}, LU5/b$a;->b()V

    :cond_1
    iget-object v1, p0, LU5/b;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LV5/a;

    monitor-enter p0

    :try_start_1
    iget v3, p0, LU5/b;->f:I

    if-eq v0, v3, :cond_2

    monitor-exit p0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_2
    iput-object v2, p0, LU5/b;->g:LV5/a;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v3}, LV5/a;->d(II)V

    goto :goto_1

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_3
    :goto_3
    iget-object v1, p0, LU5/b;->i:LU5/b$a;

    if-eqz v1, :cond_4

    iget v2, p0, LU5/b;->f:I

    if-ne v0, v2, :cond_4

    invoke-interface {v1}, LU5/b$a;->c()V

    :cond_4
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, LU5/b;->g:LV5/a;

    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :goto_4
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public m()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LU5/b;->g:LV5/a;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LU5/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LV5/a;

    invoke-virtual {v1}, LV5/a;->c()V

    iget-object v2, p0, LU5/b;->g:LV5/a;

    if-ne v1, v2, :cond_1

    :cond_2
    iget v0, p0, LU5/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LU5/b;->f:I

    iget-object v0, p0, LU5/b;->i:LU5/b$a;

    if-eqz v0, :cond_3

    invoke-interface {v0}, LU5/b$a;->a()V

    :cond_3
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
