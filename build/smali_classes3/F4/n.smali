.class public final LF4/n;
.super LF4/k;
.source "SourceFile"


# instance fields
.field public final X:LH4/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LH4/i<",
            "Ljava/lang/String;",
            "LF4/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LH4/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LH4/i;-><init>(Z)V

    iput-object v0, p0, LF4/n;->X:LH4/i;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, LF4/m;->X:LF4/m;

    goto :goto_0

    :cond_0
    new-instance v0, LF4/q;

    invoke-direct {v0, p2}, LF4/q;-><init>(Ljava/lang/Character;)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, LF4/n;->y(Ljava/lang/String;LF4/k;)V

    return-void
.end method

.method public B(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, LF4/m;->X:LF4/m;

    goto :goto_0

    :cond_0
    new-instance v0, LF4/q;

    invoke-direct {v0, p2}, LF4/q;-><init>(Ljava/lang/Number;)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, LF4/n;->y(Ljava/lang/String;LF4/k;)V

    return-void
.end method

.method public C(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, LF4/m;->X:LF4/m;

    goto :goto_0

    :cond_0
    new-instance v0, LF4/q;

    invoke-direct {v0, p2}, LF4/q;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, LF4/n;->y(Ljava/lang/String;LF4/k;)V

    return-void
.end method

.method public D()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LF4/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LF4/n;->X:LH4/i;

    return-object v0
.end method

.method public E()LF4/n;
    .locals 4

    new-instance v0, LF4/n;

    invoke-direct {v0}, LF4/n;-><init>()V

    iget-object v1, p0, LF4/n;->X:LH4/i;

    invoke-virtual {v1}, LH4/i;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LF4/k;

    invoke-virtual {v2}, LF4/k;->a()LF4/k;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, LF4/n;->y(Ljava/lang/String;LF4/k;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public F()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "LF4/k;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, LF4/n;->X:LH4/i;

    invoke-virtual {v0}, LH4/i;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public G(Ljava/lang/String;)LF4/k;
    .locals 1

    iget-object v0, p0, LF4/n;->X:LH4/i;

    invoke-virtual {v0, p1}, LH4/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LF4/k;

    return-object p1
.end method

.method public H(Ljava/lang/String;)LF4/h;
    .locals 1

    iget-object v0, p0, LF4/n;->X:LH4/i;

    invoke-virtual {v0, p1}, LH4/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LF4/h;

    return-object p1
.end method

.method public I(Ljava/lang/String;)LF4/n;
    .locals 1

    iget-object v0, p0, LF4/n;->X:LH4/i;

    invoke-virtual {v0, p1}, LH4/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LF4/n;

    return-object p1
.end method

.method public J(Ljava/lang/String;)LF4/q;
    .locals 1

    iget-object v0, p0, LF4/n;->X:LH4/i;

    invoke-virtual {v0, p1}, LH4/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LF4/q;

    return-object p1
.end method

.method public K(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, LF4/n;->X:LH4/i;

    invoke-virtual {v0, p1}, LH4/i;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public L()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LF4/n;->X:LH4/i;

    invoke-virtual {v0}, LH4/i;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public M(Ljava/lang/String;)LF4/k;
    .locals 1

    iget-object v0, p0, LF4/n;->X:LH4/i;

    invoke-virtual {v0, p1}, LH4/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LF4/k;

    return-object p1
.end method

.method public bridge synthetic a()LF4/k;
    .locals 1

    invoke-virtual {p0}, LF4/n;->E()LF4/n;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    instance-of v0, p1, LF4/n;

    if-eqz v0, :cond_0

    check-cast p1, LF4/n;

    iget-object p1, p1, LF4/n;->X:LH4/i;

    iget-object v0, p0, LF4/n;->X:LH4/i;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LF4/n;->X:LH4/i;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LF4/n;->X:LH4/i;

    iget v0, v0, LH4/i;->V1:I

    return v0
.end method

.method public y(Ljava/lang/String;LF4/k;)V
    .locals 1

    iget-object v0, p0, LF4/n;->X:LH4/i;

    if-nez p2, :cond_0

    sget-object p2, LF4/m;->X:LF4/m;

    :cond_0
    invoke-virtual {v0, p1, p2}, LH4/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public z(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, LF4/m;->X:LF4/m;

    goto :goto_0

    :cond_0
    new-instance v0, LF4/q;

    invoke-direct {v0, p2}, LF4/q;-><init>(Ljava/lang/Boolean;)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, LF4/n;->y(Ljava/lang/String;LF4/k;)V

    return-void
.end method
