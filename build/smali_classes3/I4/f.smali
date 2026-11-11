.class public final LI4/f;
.super LN4/a;
.source "SourceFile"


# static fields
.field public static final b7:Ljava/io/Reader;

.field public static final c7:Ljava/lang/Object;


# instance fields
.field public X6:[Ljava/lang/Object;

.field public Y6:I

.field public Z6:[Ljava/lang/String;

.field public a7:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LI4/f$a;

    invoke-direct {v0}, LI4/f$a;-><init>()V

    sput-object v0, LI4/f;->b7:Ljava/io/Reader;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LI4/f;->c7:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LF4/k;)V
    .locals 2

    sget-object v0, LI4/f;->b7:Ljava/io/Reader;

    invoke-direct {p0, v0}, LN4/a;-><init>(Ljava/io/Reader;)V

    const/16 v0, 0x20

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, LI4/f;->X6:[Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, p0, LI4/f;->Y6:I

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, LI4/f;->Z6:[Ljava/lang/String;

    new-array v0, v0, [I

    iput-object v0, p0, LI4/f;->a7:[I

    invoke-virtual {p0, p1}, LI4/f;->O0(Ljava/lang/Object;)V

    return-void
.end method

.method private B()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " at path "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, LI4/f;->l(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public C()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, LN4/c;->n6:LN4/c;

    invoke-virtual {p0, v0}, LI4/f;->G0(LN4/c;)V

    invoke-virtual {p0}, LI4/f;->M0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF4/q;

    invoke-virtual {v0}, LF4/q;->d()Z

    move-result v0

    iget v1, p0, LI4/f;->Y6:I

    if-lez v1, :cond_0

    iget-object v2, p0, LI4/f;->a7:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_0
    return v0
.end method

.method public D()D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LI4/f;->j0()LN4/c;

    move-result-object v0

    sget-object v1, LN4/c;->m6:LN4/c;

    if-eq v0, v1, :cond_1

    sget-object v2, LN4/c;->l6:LN4/c;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, LI4/f;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    invoke-virtual {p0}, LI4/f;->L0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF4/q;

    invoke-virtual {v0}, LF4/q;->h()D

    move-result-wide v0

    iget-boolean v2, p0, LN4/a;->Y:Z

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, LN4/e;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    invoke-virtual {p0}, LI4/f;->M0()Ljava/lang/Object;

    iget v2, p0, LI4/f;->Y6:I

    if-lez v2, :cond_4

    iget-object v3, p0, LI4/f;->a7:[I

    add-int/lit8 v2, v2, -0x1

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    :cond_4
    return-wide v0
.end method

.method public E()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LI4/f;->j0()LN4/c;

    move-result-object v0

    sget-object v1, LN4/c;->m6:LN4/c;

    if-eq v0, v1, :cond_1

    sget-object v2, LN4/c;->l6:LN4/c;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, LI4/f;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    invoke-virtual {p0}, LI4/f;->L0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF4/q;

    invoke-virtual {v0}, LF4/q;->k()I

    move-result v0

    invoke-virtual {p0}, LI4/f;->M0()Ljava/lang/Object;

    iget v1, p0, LI4/f;->Y6:I

    if-lez v1, :cond_2

    iget-object v2, p0, LI4/f;->a7:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_2
    return v0
.end method

.method public E0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LI4/f;->j0()LN4/c;

    move-result-object v0

    sget-object v1, LI4/f$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    invoke-virtual {p0}, LI4/f;->M0()Ljava/lang/Object;

    iget v0, p0, LI4/f;->Y6:I

    if-lez v0, :cond_3

    iget-object v2, p0, LI4/f;->a7:[I

    sub-int/2addr v0, v1

    aget v3, v2, v0

    add-int/2addr v3, v1

    aput v3, v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LI4/f;->j()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LI4/f;->i()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, LI4/f;->K0(Z)Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method

.method public final G0(LN4/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LI4/f;->j0()LN4/c;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LI4/f;->j0()LN4/c;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, LI4/f;->B()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public H()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LI4/f;->j0()LN4/c;

    move-result-object v0

    sget-object v1, LN4/c;->m6:LN4/c;

    if-eq v0, v1, :cond_1

    sget-object v2, LN4/c;->l6:LN4/c;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, LI4/f;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    invoke-virtual {p0}, LI4/f;->L0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF4/q;

    invoke-virtual {v0}, LF4/q;->q()J

    move-result-wide v0

    invoke-virtual {p0}, LI4/f;->M0()Ljava/lang/Object;

    iget v2, p0, LI4/f;->Y6:I

    if-lez v2, :cond_2

    iget-object v3, p0, LI4/f;->a7:[I

    add-int/lit8 v2, v2, -0x1

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    :cond_2
    return-wide v0
.end method

.method public I()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LI4/f;->K0(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public J0()LF4/k;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LI4/f;->j0()LN4/c;

    move-result-object v0

    sget-object v1, LN4/c;->k6:LN4/c;

    if-eq v0, v1, :cond_0

    sget-object v1, LN4/c;->Y:LN4/c;

    if-eq v0, v1, :cond_0

    sget-object v1, LN4/c;->V1:LN4/c;

    if-eq v0, v1, :cond_0

    sget-object v1, LN4/c;->p6:LN4/c;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, LI4/f;->L0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF4/k;

    invoke-virtual {p0}, LI4/f;->E0()V

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " when reading a JsonElement."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final K0(Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, LN4/c;->k6:LN4/c;

    invoke-virtual {p0, v0}, LI4/f;->G0(LN4/c;)V

    invoke-virtual {p0}, LI4/f;->L0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, LI4/f;->Z6:[Ljava/lang/String;

    iget v3, p0, LI4/f;->Y6:I

    add-int/lit8 v3, v3, -0x1

    if-eqz p1, :cond_0

    const-string p1, "<skipped>"

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    aput-object p1, v2, v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LI4/f;->O0(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final L0()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LI4/f;->X6:[Ljava/lang/Object;

    iget v1, p0, LI4/f;->Y6:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final M0()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, LI4/f;->X6:[Ljava/lang/Object;

    iget v1, p0, LI4/f;->Y6:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, LI4/f;->Y6:I

    aget-object v2, v0, v1

    const/4 v3, 0x0

    aput-object v3, v0, v1

    return-object v2
.end method

.method public N0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, LN4/c;->k6:LN4/c;

    invoke-virtual {p0, v0}, LI4/f;->G0(LN4/c;)V

    invoke-virtual {p0}, LI4/f;->L0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, LI4/f;->O0(Ljava/lang/Object;)V

    new-instance v1, LF4/q;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, LF4/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, LI4/f;->O0(Ljava/lang/Object;)V

    return-void
.end method

.method public final O0(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, LI4/f;->Y6:I

    iget-object v1, p0, LI4/f;->X6:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, LI4/f;->X6:[Ljava/lang/Object;

    iget-object v1, p0, LI4/f;->a7:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, LI4/f;->a7:[I

    iget-object v1, p0, LI4/f;->Z6:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, LI4/f;->Z6:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, LI4/f;->X6:[Ljava/lang/Object;

    iget v1, p0, LI4/f;->Y6:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LI4/f;->Y6:I

    aput-object p1, v0, v1

    return-void
.end method

.method public Z()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, LN4/c;->o6:LN4/c;

    invoke-virtual {p0, v0}, LI4/f;->G0(LN4/c;)V

    invoke-virtual {p0}, LI4/f;->M0()Ljava/lang/Object;

    iget v0, p0, LI4/f;->Y6:I

    if-lez v0, :cond_0

    iget-object v1, p0, LI4/f;->a7:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, LN4/c;->X:LN4/c;

    invoke-virtual {p0, v0}, LI4/f;->G0(LN4/c;)V

    invoke-virtual {p0}, LI4/f;->L0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF4/h;

    iget-object v0, v0, LF4/h;->X:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, LI4/f;->O0(Ljava/lang/Object;)V

    iget-object v0, p0, LI4/f;->a7:[I

    iget v1, p0, LI4/f;->Y6:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    return-void
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, LN4/c;->Z:LN4/c;

    invoke-virtual {p0, v0}, LI4/f;->G0(LN4/c;)V

    invoke-virtual {p0}, LI4/f;->L0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF4/n;

    iget-object v0, v0, LF4/n;->X:LH4/i;

    invoke-virtual {v0}, LH4/i;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, LI4/f;->O0(Ljava/lang/Object;)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, LI4/f;->c7:Ljava/lang/Object;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LI4/f;->X6:[Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, LI4/f;->Y6:I

    return-void
.end method

.method public h0()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LI4/f;->j0()LN4/c;

    move-result-object v0

    sget-object v1, LN4/c;->l6:LN4/c;

    if-eq v0, v1, :cond_1

    sget-object v2, LN4/c;->m6:LN4/c;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, LI4/f;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    invoke-virtual {p0}, LI4/f;->M0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF4/q;

    invoke-virtual {v0}, LF4/q;->t()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, LI4/f;->Y6:I

    if-lez v1, :cond_2

    iget-object v2, p0, LI4/f;->a7:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_2
    return-object v0
.end method

.method public i()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, LN4/c;->Y:LN4/c;

    invoke-virtual {p0, v0}, LI4/f;->G0(LN4/c;)V

    invoke-virtual {p0}, LI4/f;->M0()Ljava/lang/Object;

    invoke-virtual {p0}, LI4/f;->M0()Ljava/lang/Object;

    iget v0, p0, LI4/f;->Y6:I

    if-lez v0, :cond_0

    iget-object v1, p0, LI4/f;->a7:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public j()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, LN4/c;->V1:LN4/c;

    invoke-virtual {p0, v0}, LI4/f;->G0(LN4/c;)V

    iget-object v0, p0, LI4/f;->Z6:[Ljava/lang/String;

    iget v1, p0, LI4/f;->Y6:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    invoke-virtual {p0}, LI4/f;->M0()Ljava/lang/Object;

    invoke-virtual {p0}, LI4/f;->M0()Ljava/lang/Object;

    iget v0, p0, LI4/f;->Y6:I

    if-lez v0, :cond_0

    iget-object v1, p0, LI4/f;->a7:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public j0()LN4/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, LI4/f;->Y6:I

    if-nez v0, :cond_0

    sget-object v0, LN4/c;->p6:LN4/c;

    return-object v0

    :cond_0
    invoke-virtual {p0}, LI4/f;->L0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_4

    iget-object v1, p0, LI4/f;->X6:[Ljava/lang/Object;

    iget v2, p0, LI4/f;->Y6:I

    add-int/lit8 v2, v2, -0x2

    aget-object v1, v1, v2

    instance-of v1, v1, LF4/n;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    sget-object v0, LN4/c;->k6:LN4/c;

    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, LI4/f;->O0(Ljava/lang/Object;)V

    invoke-virtual {p0}, LI4/f;->j0()LN4/c;

    move-result-object v0

    return-object v0

    :cond_2
    if-eqz v1, :cond_3

    sget-object v0, LN4/c;->V1:LN4/c;

    goto :goto_0

    :cond_3
    sget-object v0, LN4/c;->Y:LN4/c;

    :goto_0
    return-object v0

    :cond_4
    instance-of v1, v0, LF4/n;

    if-eqz v1, :cond_5

    sget-object v0, LN4/c;->Z:LN4/c;

    return-object v0

    :cond_5
    instance-of v1, v0, LF4/h;

    if-eqz v1, :cond_6

    sget-object v0, LN4/c;->X:LN4/c;

    return-object v0

    :cond_6
    instance-of v1, v0, LF4/q;

    if-eqz v1, :cond_a

    check-cast v0, LF4/q;

    iget-object v0, v0, LF4/q;->X:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_7

    sget-object v0, LN4/c;->l6:LN4/c;

    return-object v0

    :cond_7
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    sget-object v0, LN4/c;->n6:LN4/c;

    return-object v0

    :cond_8
    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_9

    sget-object v0, LN4/c;->m6:LN4/c;

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    instance-of v1, v0, LF4/m;

    if-eqz v1, :cond_b

    sget-object v0, LN4/c;->o6:LN4/c;

    return-object v0

    :cond_b
    sget-object v1, LI4/f;->c7:Ljava/lang/Object;

    if-ne v0, v1, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v1, LN4/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Custom JsonElement subclass "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not supported"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final l(Z)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, LI4/f;->Y6:I

    if-ge v1, v2, :cond_4

    iget-object v3, p0, LI4/f;->X6:[Ljava/lang/Object;

    aget-object v4, v3, v1

    instance-of v5, v4, LF4/h;

    if-eqz v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_3

    aget-object v3, v3, v1

    instance-of v3, v3, Ljava/util/Iterator;

    if-eqz v3, :cond_3

    iget-object v3, p0, LI4/f;->a7:[I

    aget v3, v3, v1

    if-eqz p1, :cond_1

    if-lez v3, :cond_1

    add-int/lit8 v4, v2, -0x1

    if-eq v1, v4, :cond_0

    add-int/lit8 v2, v2, -0x2

    if-ne v1, v2, :cond_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    :cond_1
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    instance-of v4, v4, LF4/n;

    if-eqz v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_3

    aget-object v2, v3, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_3

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, LI4/f;->Z6:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public n()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LI4/f;->l(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LI4/f;->j0()LN4/c;

    move-result-object v0

    sget-object v1, LN4/c;->V1:LN4/c;

    if-eq v0, v1, :cond_0

    sget-object v1, LN4/c;->Y:LN4/c;

    if-eq v0, v1, :cond_0

    sget-object v1, LN4/c;->p6:LN4/c;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, LI4/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, LI4/f;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u0()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LI4/f;->l(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
