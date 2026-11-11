.class public final LF4/h;
.super LF4/k;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF4/k;",
        "Ljava/lang/Iterable<",
        "LF4/k;",
        ">;"
    }
.end annotation


# instance fields
.field public final X:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "LF4/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LF4/h;->X:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, LF4/h;->X:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Character;)V
    .locals 2

    iget-object v0, p0, LF4/h;->X:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    sget-object p1, LF4/m;->X:LF4/m;

    goto :goto_0

    :cond_0
    new-instance v1, LF4/q;

    invoke-direct {v1, p1}, LF4/q;-><init>(Ljava/lang/Character;)V

    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public B(Ljava/lang/Number;)V
    .locals 2

    iget-object v0, p0, LF4/h;->X:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    sget-object p1, LF4/m;->X:LF4/m;

    goto :goto_0

    :cond_0
    new-instance v1, LF4/q;

    invoke-direct {v1, p1}, LF4/q;-><init>(Ljava/lang/Number;)V

    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public C(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, LF4/h;->X:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    sget-object p1, LF4/m;->X:LF4/m;

    goto :goto_0

    :cond_0
    new-instance v1, LF4/q;

    invoke-direct {v1, p1}, LF4/q;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public D(LF4/h;)V
    .locals 1

    iget-object v0, p0, LF4/h;->X:Ljava/util/ArrayList;

    iget-object p1, p1, LF4/h;->X:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public E()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LF4/k;",
            ">;"
        }
    .end annotation

    new-instance v0, LH4/j;

    iget-object v1, p0, LF4/h;->X:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, LH4/j;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public F(LF4/k;)Z
    .locals 1

    iget-object v0, p0, LF4/h;->X:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public G()LF4/h;
    .locals 3

    iget-object v0, p0, LF4/h;->X:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, LF4/h;

    iget-object v1, p0, LF4/h;->X:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, LF4/h;-><init>(I)V

    iget-object v1, p0, LF4/h;->X:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LF4/k;

    invoke-virtual {v2}, LF4/k;->a()LF4/k;

    move-result-object v2

    invoke-virtual {v0, v2}, LF4/h;->y(LF4/k;)V

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, LF4/h;

    invoke-direct {v0}, LF4/h;-><init>()V

    return-object v0
.end method

.method public H(I)LF4/k;
    .locals 1

    iget-object v0, p0, LF4/h;->X:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LF4/k;

    return-object p1
.end method

.method public final I()LF4/k;
    .locals 3

    iget-object v0, p0, LF4/h;->X:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LF4/h;->X:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF4/k;

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Array must have size 1, but has size "

    invoke-static {v2, v0}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public J(I)LF4/k;
    .locals 1

    iget-object v0, p0, LF4/h;->X:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LF4/k;

    return-object p1
.end method

.method public K(LF4/k;)Z
    .locals 1

    iget-object v0, p0, LF4/h;->X:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public L(ILF4/k;)LF4/k;
    .locals 1

    iget-object v0, p0, LF4/h;->X:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    sget-object p2, LF4/m;->X:LF4/m;

    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LF4/k;

    return-object p1
.end method

.method public bridge synthetic a()LF4/k;
    .locals 1

    invoke-virtual {p0}, LF4/h;->G()LF4/h;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/math/BigDecimal;
    .locals 1

    invoke-virtual {p0}, LF4/h;->I()LF4/k;

    move-result-object v0

    invoke-virtual {v0}, LF4/k;->b()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, LF4/h;->I()LF4/k;

    move-result-object v0

    invoke-virtual {v0}, LF4/k;->c()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, LF4/h;->I()LF4/k;

    move-result-object v0

    invoke-virtual {v0}, LF4/k;->d()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    instance-of v0, p1, LF4/h;

    if-eqz v0, :cond_0

    check-cast p1, LF4/h;

    iget-object p1, p1, LF4/h;->X:Ljava/util/ArrayList;

    iget-object v0, p0, LF4/h;->X:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public f()B
    .locals 1

    invoke-virtual {p0}, LF4/h;->I()LF4/k;

    move-result-object v0

    invoke-virtual {v0}, LF4/k;->f()B

    move-result v0

    return v0
.end method

.method public g()C
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, LF4/h;->I()LF4/k;

    move-result-object v0

    invoke-virtual {v0}, LF4/k;->g()C

    move-result v0

    return v0
.end method

.method public h()D
    .locals 2

    invoke-virtual {p0}, LF4/h;->I()LF4/k;

    move-result-object v0

    invoke-virtual {v0}, LF4/k;->h()D

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LF4/h;->X:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LF4/h;->X:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "LF4/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LF4/h;->X:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public j()F
    .locals 1

    invoke-virtual {p0}, LF4/h;->I()LF4/k;

    move-result-object v0

    invoke-virtual {v0}, LF4/k;->j()F

    move-result v0

    return v0
.end method

.method public k()I
    .locals 1

    invoke-virtual {p0}, LF4/h;->I()LF4/k;

    move-result-object v0

    invoke-virtual {v0}, LF4/k;->k()I

    move-result v0

    return v0
.end method

.method public q()J
    .locals 2

    invoke-virtual {p0}, LF4/h;->I()LF4/k;

    move-result-object v0

    invoke-virtual {v0}, LF4/k;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method public r()Ljava/lang/Number;
    .locals 1

    invoke-virtual {p0}, LF4/h;->I()LF4/k;

    move-result-object v0

    invoke-virtual {v0}, LF4/k;->r()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public s()S
    .locals 1

    invoke-virtual {p0}, LF4/h;->I()LF4/k;

    move-result-object v0

    invoke-virtual {v0}, LF4/k;->s()S

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LF4/h;->X:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, LF4/h;->I()LF4/k;

    move-result-object v0

    invoke-virtual {v0}, LF4/k;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y(LF4/k;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, LF4/m;->X:LF4/m;

    :cond_0
    iget-object v0, p0, LF4/h;->X:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public z(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, LF4/h;->X:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    sget-object p1, LF4/m;->X:LF4/m;

    goto :goto_0

    :cond_0
    new-instance v1, LF4/q;

    invoke-direct {v1, p1}, LF4/q;-><init>(Ljava/lang/Boolean;)V

    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
