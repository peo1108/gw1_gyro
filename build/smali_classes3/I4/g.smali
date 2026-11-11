.class public final LI4/g;
.super LN4/d;
.source "SourceFile"


# static fields
.field public static final v6:Ljava/io/Writer;

.field public static final w6:LF4/q;


# instance fields
.field public final s6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LF4/k;",
            ">;"
        }
    .end annotation
.end field

.field public t6:Ljava/lang/String;

.field public u6:LF4/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LI4/g$a;

    invoke-direct {v0}, LI4/g$a;-><init>()V

    sput-object v0, LI4/g;->v6:Ljava/io/Writer;

    new-instance v0, LF4/q;

    const-string v1, "closed"

    invoke-direct {v0, v1}, LF4/q;-><init>(Ljava/lang/String;)V

    sput-object v0, LI4/g;->w6:LF4/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, LI4/g;->v6:Ljava/io/Writer;

    invoke-direct {p0, v0}, LN4/d;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LI4/g;->s6:Ljava/util/List;

    sget-object v0, LF4/m;->X:LF4/m;

    iput-object v0, p0, LI4/g;->u6:LF4/k;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)LN4/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "name == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, LI4/g;->s6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LI4/g;->t6:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, LI4/g;->z0()LF4/k;

    move-result-object v0

    instance-of v0, v0, LF4/n;

    if-eqz v0, :cond_0

    iput-object p1, p0, LI4/g;->t6:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public C()LN4/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, LF4/m;->X:LF4/m;

    invoke-virtual {p0, v0}, LI4/g;->E0(LF4/k;)V

    return-object p0
.end method

.method public final E0(LF4/k;)V
    .locals 2

    iget-object v0, p0, LI4/g;->t6:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, LF4/k;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LN4/d;->o6:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, LI4/g;->z0()LF4/k;

    move-result-object v0

    check-cast v0, LF4/n;

    iget-object v1, p0, LI4/g;->t6:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, LF4/n;->y(Ljava/lang/String;LF4/k;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, LI4/g;->t6:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, LI4/g;->s6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, LI4/g;->u6:LF4/k;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, LI4/g;->z0()LF4/k;

    move-result-object v0

    instance-of v1, v0, LF4/h;

    if-eqz v1, :cond_4

    check-cast v0, LF4/h;

    invoke-virtual {v0, p1}, LF4/h;->y(LF4/k;)V

    :goto_0
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LI4/g;->s6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LI4/g;->s6:Ljava/util/List;

    sget-object v1, LI4/g;->w6:LF4/q;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()LN4/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, LF4/h;

    invoke-direct {v0}, LF4/h;-><init>()V

    invoke-virtual {p0, v0}, LI4/g;->E0(LF4/k;)V

    iget-object v1, p0, LI4/g;->s6:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public f()LN4/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, LF4/n;

    invoke-direct {v0}, LF4/n;-><init>()V

    invoke-virtual {p0, v0}, LI4/g;->E0(LF4/k;)V

    iget-object v1, p0, LI4/g;->s6:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public i()LN4/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LI4/g;->s6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LI4/g;->t6:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, LI4/g;->z0()LF4/k;

    move-result-object v0

    instance-of v0, v0, LF4/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, LI4/g;->s6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public j()LN4/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LI4/g;->s6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LI4/g;->t6:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, LI4/g;->z0()LF4/k;

    move-result-object v0

    instance-of v0, v0, LF4/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, LI4/g;->s6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public j0(D)LN4/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LN4/d;->l6:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, LF4/q;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, LF4/q;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, LI4/g;->E0(LF4/k;)V

    return-object p0
.end method

.method public l0(F)LN4/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LN4/d;->l6:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, LF4/q;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v0, p1}, LF4/q;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, LI4/g;->E0(LF4/k;)V

    return-object p0
.end method

.method public m0(J)LN4/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, LF4/q;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, LF4/q;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, LI4/g;->E0(LF4/k;)V

    return-object p0
.end method

.method public p(Ljava/lang/String;)LN4/d;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q0(Ljava/lang/Boolean;)LN4/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, LF4/m;->X:LF4/m;

    invoke-virtual {p0, p1}, LI4/g;->E0(LF4/k;)V

    return-object p0

    :cond_0
    new-instance v0, LF4/q;

    invoke-direct {v0, p1}, LF4/q;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, LI4/g;->E0(LF4/k;)V

    return-object p0
.end method

.method public r0(Ljava/lang/Number;)LN4/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, LF4/m;->X:LF4/m;

    invoke-virtual {p0, p1}, LI4/g;->E0(LF4/k;)V

    return-object p0

    :cond_0
    iget-boolean v0, p0, LN4/d;->l6:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    new-instance v0, LF4/q;

    invoke-direct {v0, p1}, LF4/q;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, LI4/g;->E0(LF4/k;)V

    return-object p0
.end method

.method public s0(Ljava/lang/String;)LN4/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, LF4/m;->X:LF4/m;

    invoke-virtual {p0, p1}, LI4/g;->E0(LF4/k;)V

    return-object p0

    :cond_0
    new-instance v0, LF4/q;

    invoke-direct {v0, p1}, LF4/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, LI4/g;->E0(LF4/k;)V

    return-object p0
.end method

.method public w0(Z)LN4/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, LF4/q;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, LF4/q;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, LI4/g;->E0(LF4/k;)V

    return-object p0
.end method

.method public y0()LF4/k;
    .locals 3

    iget-object v0, p0, LI4/g;->s6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LI4/g;->u6:LF4/k;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected one JSON element but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LI4/g;->s6:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final z0()LF4/k;
    .locals 2

    iget-object v0, p0, LI4/g;->s6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF4/k;

    return-object v0
.end method
