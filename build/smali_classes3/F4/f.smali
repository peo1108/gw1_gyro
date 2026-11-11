.class public final LF4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LH4/d;

.field public b:LF4/v;

.field public c:LF4/d;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "LF4/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LF4/A;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LF4/A;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:LF4/y;

.field public s:LF4/y;

.field public final t:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "LF4/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, LH4/d;->n6:LH4/d;

    iput-object v0, p0, LF4/f;->a:LH4/d;

    .line 3
    sget-object v0, LF4/v;->X:LF4/v;

    iput-object v0, p0, LF4/f;->b:LF4/v;

    .line 4
    sget-object v0, LF4/c;->X:LF4/c;

    iput-object v0, p0, LF4/f;->c:LF4/d;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LF4/f;->d:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LF4/f;->e:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LF4/f;->f:Ljava/util/List;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, LF4/f;->g:Z

    .line 9
    sget-object v1, LF4/e;->H:Ljava/lang/String;

    iput-object v1, p0, LF4/f;->h:Ljava/lang/String;

    const/4 v1, 0x2

    .line 10
    iput v1, p0, LF4/f;->i:I

    .line 11
    iput v1, p0, LF4/f;->j:I

    .line 12
    iput-boolean v0, p0, LF4/f;->k:Z

    .line 13
    iput-boolean v0, p0, LF4/f;->l:Z

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, LF4/f;->m:Z

    .line 15
    iput-boolean v0, p0, LF4/f;->n:Z

    .line 16
    iput-boolean v0, p0, LF4/f;->o:Z

    .line 17
    iput-boolean v0, p0, LF4/f;->p:Z

    .line 18
    iput-boolean v1, p0, LF4/f;->q:Z

    .line 19
    sget-object v0, LF4/e;->J:LF4/y;

    iput-object v0, p0, LF4/f;->r:LF4/y;

    .line 20
    sget-object v0, LF4/e;->K:LF4/y;

    iput-object v0, p0, LF4/f;->s:LF4/y;

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LF4/f;->t:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(LF4/e;)V
    .locals 5

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, LH4/d;->n6:LH4/d;

    iput-object v0, p0, LF4/f;->a:LH4/d;

    .line 24
    sget-object v0, LF4/v;->X:LF4/v;

    iput-object v0, p0, LF4/f;->b:LF4/v;

    .line 25
    sget-object v0, LF4/c;->X:LF4/c;

    iput-object v0, p0, LF4/f;->c:LF4/d;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LF4/f;->d:Ljava/util/Map;

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LF4/f;->e:Ljava/util/List;

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, LF4/f;->f:Ljava/util/List;

    const/4 v3, 0x0

    .line 29
    iput-boolean v3, p0, LF4/f;->g:Z

    .line 30
    sget-object v4, LF4/e;->H:Ljava/lang/String;

    iput-object v4, p0, LF4/f;->h:Ljava/lang/String;

    const/4 v4, 0x2

    .line 31
    iput v4, p0, LF4/f;->i:I

    .line 32
    iput v4, p0, LF4/f;->j:I

    .line 33
    iput-boolean v3, p0, LF4/f;->k:Z

    .line 34
    iput-boolean v3, p0, LF4/f;->l:Z

    const/4 v4, 0x1

    .line 35
    iput-boolean v4, p0, LF4/f;->m:Z

    .line 36
    iput-boolean v3, p0, LF4/f;->n:Z

    .line 37
    iput-boolean v3, p0, LF4/f;->o:Z

    .line 38
    iput-boolean v3, p0, LF4/f;->p:Z

    .line 39
    iput-boolean v4, p0, LF4/f;->q:Z

    .line 40
    sget-object v3, LF4/e;->J:LF4/y;

    iput-object v3, p0, LF4/f;->r:LF4/y;

    .line 41
    sget-object v3, LF4/e;->K:LF4/y;

    iput-object v3, p0, LF4/f;->s:LF4/y;

    .line 42
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, LF4/f;->t:Ljava/util/LinkedList;

    .line 43
    iget-object v4, p1, LF4/e;->f:LH4/d;

    iput-object v4, p0, LF4/f;->a:LH4/d;

    .line 44
    iget-object v4, p1, LF4/e;->g:LF4/d;

    iput-object v4, p0, LF4/f;->c:LF4/d;

    .line 45
    iget-object v4, p1, LF4/e;->h:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 46
    iget-boolean v0, p1, LF4/e;->i:Z

    iput-boolean v0, p0, LF4/f;->g:Z

    .line 47
    iget-boolean v0, p1, LF4/e;->j:Z

    iput-boolean v0, p0, LF4/f;->k:Z

    .line 48
    iget-boolean v0, p1, LF4/e;->k:Z

    iput-boolean v0, p0, LF4/f;->o:Z

    .line 49
    iget-boolean v0, p1, LF4/e;->l:Z

    iput-boolean v0, p0, LF4/f;->m:Z

    .line 50
    iget-boolean v0, p1, LF4/e;->m:Z

    iput-boolean v0, p0, LF4/f;->n:Z

    .line 51
    iget-boolean v0, p1, LF4/e;->n:Z

    iput-boolean v0, p0, LF4/f;->p:Z

    .line 52
    iget-boolean v0, p1, LF4/e;->o:Z

    iput-boolean v0, p0, LF4/f;->l:Z

    .line 53
    iget-object v0, p1, LF4/e;->t:LF4/v;

    iput-object v0, p0, LF4/f;->b:LF4/v;

    .line 54
    iget-object v0, p1, LF4/e;->q:Ljava/lang/String;

    iput-object v0, p0, LF4/f;->h:Ljava/lang/String;

    .line 55
    iget v0, p1, LF4/e;->r:I

    iput v0, p0, LF4/f;->i:I

    .line 56
    iget v0, p1, LF4/e;->s:I

    iput v0, p0, LF4/f;->j:I

    .line 57
    iget-object v0, p1, LF4/e;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    iget-object v0, p1, LF4/e;->v:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    iget-boolean v0, p1, LF4/e;->p:Z

    iput-boolean v0, p0, LF4/f;->q:Z

    .line 60
    iget-object v0, p1, LF4/e;->w:LF4/y;

    iput-object v0, p0, LF4/f;->r:LF4/y;

    .line 61
    iget-object v0, p1, LF4/e;->x:LF4/y;

    iput-object v0, p0, LF4/f;->s:LF4/y;

    .line 62
    iget-object p1, p1, LF4/e;->y:Ljava/util/List;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public A(LF4/y;)LF4/f;
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, LF4/y;

    iput-object p1, p0, LF4/f;->r:LF4/y;

    return-object p0
.end method

.method public B()LF4/f;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LF4/f;->n:Z

    return-object p0
.end method

.method public C(D)LF4/f;
    .locals 3

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, LF4/f;->a:LH4/d;

    invoke-virtual {v0}, LH4/d;->c()LH4/d;

    move-result-object v0

    iput-wide p1, v0, LH4/d;->X:D

    iput-object v0, p0, LF4/f;->a:LH4/d;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(LF4/a;)LF4/f;
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LF4/f;->a:LH4/d;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, LH4/d;->u(LF4/a;ZZ)LH4/d;

    move-result-object p1

    iput-object p1, p0, LF4/f;->a:LH4/d;

    return-object p0
.end method

.method public b(LF4/w;)LF4/f;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LF4/f;->t:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-object p0
.end method

.method public c(LF4/a;)LF4/f;
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LF4/f;->a:LH4/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, LH4/d;->u(LF4/a;ZZ)LH4/d;

    move-result-object p1

    iput-object p1, p0, LF4/f;->a:LH4/d;

    return-object p0
.end method

.method public final d(Ljava/lang/String;IILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "LF4/A;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, LL4/d;->a:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object p2, LI4/d$b;->b:LI4/d$b;

    invoke-virtual {p2, p1}, LI4/d$b;->c(Ljava/lang/String;)LF4/A;

    move-result-object p2

    if-eqz v0, :cond_0

    sget-object p3, LL4/d;->c:LI4/d$b;

    invoke-virtual {p3, p1}, LI4/d$b;->c(Ljava/lang/String;)LF4/A;

    move-result-object v1

    sget-object p3, LL4/d;->b:LI4/d$b;

    invoke-virtual {p3, p1}, LI4/d$b;->c(Ljava/lang/String;)LF4/A;

    move-result-object p1

    goto :goto_1

    :cond_0
    :goto_0
    move-object p1, v1

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    if-eq p3, p1, :cond_3

    sget-object p1, LI4/d$b;->b:LI4/d$b;

    invoke-virtual {p1, p2, p3}, LI4/d$b;->b(II)LF4/A;

    move-result-object p1

    if-eqz v0, :cond_2

    sget-object v1, LL4/d;->c:LI4/d$b;

    invoke-virtual {v1, p2, p3}, LI4/d$b;->b(II)LF4/A;

    move-result-object v1

    sget-object v2, LL4/d;->b:LI4/d$b;

    invoke-virtual {v2, p2, p3}, LI4/d$b;->b(II)LF4/A;

    move-result-object p2

    move-object v3, p2

    move-object p2, p1

    move-object p1, v3

    goto :goto_1

    :cond_2
    move-object p2, p1

    goto :goto_0

    :goto_1
    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_3

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public e()LF4/e;
    .locals 26

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v19, v1

    iget-object v2, v0, LF4/f;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, LF4/f;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, v0, LF4/f;->e:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, LF4/f;->f:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v0, LF4/f;->h:Ljava/lang/String;

    iget v3, v0, LF4/f;->i:I

    iget v4, v0, LF4/f;->j:I

    invoke-virtual {v0, v2, v3, v4, v1}, LF4/f;->d(Ljava/lang/String;IILjava/util/List;)V

    new-instance v23, LF4/e;

    move-object/from16 v1, v23

    iget-object v2, v0, LF4/f;->a:LH4/d;

    iget-object v3, v0, LF4/f;->c:LF4/d;

    new-instance v5, Ljava/util/HashMap;

    move-object v4, v5

    iget-object v6, v0, LF4/f;->d:Ljava/util/Map;

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-boolean v5, v0, LF4/f;->g:Z

    iget-boolean v6, v0, LF4/f;->k:Z

    iget-boolean v7, v0, LF4/f;->o:Z

    iget-boolean v8, v0, LF4/f;->m:Z

    iget-boolean v9, v0, LF4/f;->n:Z

    iget-boolean v10, v0, LF4/f;->p:Z

    iget-boolean v11, v0, LF4/f;->l:Z

    iget-boolean v12, v0, LF4/f;->q:Z

    iget-object v13, v0, LF4/f;->b:LF4/v;

    iget-object v14, v0, LF4/f;->h:Ljava/lang/String;

    iget v15, v0, LF4/f;->i:I

    move-object/from16 v24, v1

    iget v1, v0, LF4/f;->j:I

    move/from16 v16, v1

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v17, v1

    move-object/from16 v25, v2

    iget-object v2, v0, LF4/f;->e:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v18, v1

    iget-object v2, v0, LF4/f;->f:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, v0, LF4/f;->r:LF4/y;

    move-object/from16 v20, v1

    iget-object v1, v0, LF4/f;->s:LF4/y;

    move-object/from16 v21, v1

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v22, v1

    iget-object v2, v0, LF4/f;->t:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct/range {v1 .. v22}, LF4/e;-><init>(LH4/d;LF4/d;Ljava/util/Map;ZZZZZZZZLF4/v;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;LF4/y;LF4/y;Ljava/util/List;)V

    return-object v23
.end method

.method public f()LF4/f;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LF4/f;->m:Z

    return-object p0
.end method

.method public g()LF4/f;
    .locals 1

    iget-object v0, p0, LF4/f;->a:LH4/d;

    invoke-virtual {v0}, LH4/d;->d()LH4/d;

    move-result-object v0

    iput-object v0, p0, LF4/f;->a:LH4/d;

    return-object p0
.end method

.method public h()LF4/f;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LF4/f;->q:Z

    return-object p0
.end method

.method public i()LF4/f;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LF4/f;->k:Z

    return-object p0
.end method

.method public varargs j([I)LF4/f;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LF4/f;->a:LH4/d;

    invoke-virtual {v0, p1}, LH4/d;->v([I)LH4/d;

    move-result-object p1

    iput-object p1, p0, LF4/f;->a:LH4/d;

    return-object p0
.end method

.method public k()LF4/f;
    .locals 1

    iget-object v0, p0, LF4/f;->a:LH4/d;

    invoke-virtual {v0}, LH4/d;->k()LH4/d;

    move-result-object v0

    iput-object v0, p0, LF4/f;->a:LH4/d;

    return-object p0
.end method

.method public l()LF4/f;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LF4/f;->o:Z

    return-object p0
.end method

.method public m(Ljava/lang/reflect/Type;Ljava/lang/Object;)LF4/f;
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p2, LF4/s;

    if-nez v0, :cond_1

    instance-of v1, p2, LF4/j;

    if-nez v1, :cond_1

    instance-of v1, p2, LF4/g;

    if-nez v1, :cond_1

    instance-of v1, p2, LF4/z;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, LH4/a;->a(Z)V

    instance-of v1, p2, LF4/g;

    if-eqz v1, :cond_2

    iget-object v1, p0, LF4/f;->d:Ljava/util/Map;

    move-object v2, p2

    check-cast v2, LF4/g;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v0, :cond_3

    instance-of v0, p2, LF4/j;

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, LM4/a;

    invoke-direct {v0, p1}, LM4/a;-><init>(Ljava/lang/reflect/Type;)V

    iget-object v1, p0, LF4/f;->e:Ljava/util/List;

    invoke-static {v0, p2}, LI4/m;->m(LM4/a;Ljava/lang/Object;)LF4/A;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    instance-of v0, p2, LF4/z;

    if-eqz v0, :cond_5

    new-instance v0, LM4/a;

    invoke-direct {v0, p1}, LM4/a;-><init>(Ljava/lang/reflect/Type;)V

    check-cast p2, LF4/z;

    invoke-static {v0, p2}, LI4/o;->a(LM4/a;LF4/z;)LF4/A;

    move-result-object p1

    iget-object p2, p0, LF4/f;->e:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object p0
.end method

.method public n(LF4/A;)LF4/f;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LF4/f;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public o(Ljava/lang/Class;Ljava/lang/Object;)LF4/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "LF4/f;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p2, LF4/s;

    if-nez v0, :cond_1

    instance-of v1, p2, LF4/j;

    if-nez v1, :cond_1

    instance-of v1, p2, LF4/z;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, LH4/a;->a(Z)V

    instance-of v1, p2, LF4/j;

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, LF4/f;->f:Ljava/util/List;

    invoke-static {p1, p2}, LI4/m;->n(Ljava/lang/Class;Ljava/lang/Object;)LF4/A;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    instance-of v0, p2, LF4/z;

    if-eqz v0, :cond_4

    check-cast p2, LF4/z;

    invoke-static {p1, p2}, LI4/o;->e(Ljava/lang/Class;LF4/z;)LF4/A;

    move-result-object p1

    iget-object p2, p0, LF4/f;->e:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object p0
.end method

.method public p()LF4/f;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LF4/f;->g:Z

    return-object p0
.end method

.method public q()LF4/f;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LF4/f;->l:Z

    return-object p0
.end method

.method public r(I)LF4/f;
    .locals 0

    iput p1, p0, LF4/f;->i:I

    const/4 p1, 0x0

    iput-object p1, p0, LF4/f;->h:Ljava/lang/String;

    return-object p0
.end method

.method public s(II)LF4/f;
    .locals 0

    iput p1, p0, LF4/f;->i:I

    iput p2, p0, LF4/f;->j:I

    const/4 p1, 0x0

    iput-object p1, p0, LF4/f;->h:Ljava/lang/String;

    return-object p0
.end method

.method public t(Ljava/lang/String;)LF4/f;
    .locals 0

    iput-object p1, p0, LF4/f;->h:Ljava/lang/String;

    return-object p0
.end method

.method public varargs u([LF4/a;)LF4/f;
    .locals 5

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, LF4/f;->a:LH4/d;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4, v4}, LH4/d;->u(LF4/a;ZZ)LH4/d;

    move-result-object v2

    iput-object v2, p0, LF4/f;->a:LH4/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public v(LF4/c;)LF4/f;
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, LF4/f;->c:LF4/d;

    return-object p0
.end method

.method public w(LF4/d;)LF4/f;
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, LF4/d;

    iput-object p1, p0, LF4/f;->c:LF4/d;

    return-object p0
.end method

.method public x()LF4/f;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LF4/f;->p:Z

    return-object p0
.end method

.method public y(LF4/v;)LF4/f;
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, LF4/f;->b:LF4/v;

    return-object p0
.end method

.method public z(LF4/y;)LF4/f;
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, LF4/y;

    iput-object p1, p0, LF4/f;->s:LF4/y;

    return-object p0
.end method
