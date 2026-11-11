.class public LM6/i;
.super Lt7/b;
.source "SourceFile"

# interfaces
.implements LN6/g;


# instance fields
.field public V1:I

.field public X:I

.field public Y:Z

.field public Z:Z

.field public k6:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x5dc

    iput v0, p0, LM6/i;->X:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LM6/i;->Y:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, LM6/i;->Z:Z

    const/16 v1, 0x50

    iput v1, p0, LM6/i;->V1:I

    iput-boolean v0, p0, LM6/i;->k6:Z

    return-void
.end method


# virtual methods
.method public D()Z
    .locals 1

    iget-boolean v0, p0, LM6/i;->Y:Z

    return v0
.end method

.method public J()Z
    .locals 1

    iget-boolean v0, p0, LM6/i;->k6:Z

    return v0
.end method

.method public c()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lr6/b;->Z:Lr6/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scp:type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, LM6/i;->Y:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "scp:resetFinger"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, LM6/i;->Z:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "scp:scrollFromPreviousPosition"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, LM6/i;->X:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "scp:sensitivity"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, LM6/i;->V1:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "scp:autoReleaseInterval"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, LM6/i;->k6:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "scp:invertYAxis"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public d(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "scp:sensitivity"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/i;->setSensitivity(I)V

    const-string v0, "scp:resetFinger"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, LM6/i;->setResetOnEdge(Z)V

    const-string v0, "scp:scrollFromPreviousPosition"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, LM6/i;->setScrollFromLastPosition(Z)V

    const-string v0, "scp:autoReleaseInterval"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/i;->setAutoReleaseInterval(I)V

    const-string v0, "scp:invertYAxis"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, LM6/i;->setInvertYAxis(Z)V

    return-void
.end method

.method public getAutoReleaseInterval()I
    .locals 1

    iget v0, p0, LM6/i;->V1:I

    return v0
.end method

.method public getSensitivity()I
    .locals 1

    iget v0, p0, LM6/i;->X:I

    return v0
.end method

.method public setAutoReleaseInterval(I)V
    .locals 0

    iput p1, p0, LM6/i;->V1:I

    return-void
.end method

.method public setInvertYAxis(Z)V
    .locals 0

    iput-boolean p1, p0, LM6/i;->k6:Z

    return-void
.end method

.method public setResetOnEdge(Z)V
    .locals 0

    iput-boolean p1, p0, LM6/i;->Y:Z

    return-void
.end method

.method public setScrollFromLastPosition(Z)V
    .locals 0

    iput-boolean p1, p0, LM6/i;->Z:Z

    return-void
.end method

.method public setSensitivity(I)V
    .locals 0

    iput p1, p0, LM6/i;->X:I

    return-void
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, LM6/i;->Z:Z

    return v0
.end method
