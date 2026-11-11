.class public LM6/b;
.super Lt7/b;
.source "SourceFile"

# interfaces
.implements LN6/a;


# instance fields
.field public A:Z

.field public B:I

.field public D:I

.field public E:I

.field public F:I

.field public G:Z

.field public H:Z

.field public I:I

.field public X:F

.field public Y:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x43a00000    # 320.0f

    iput v0, p0, LM6/b;->X:F

    const/4 v0, 0x0

    iput-boolean v0, p0, LM6/b;->Y:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, LM6/b;->A:Z

    const/16 v0, 0x96

    iput v0, p0, LM6/b;->B:I

    const/4 v0, 0x5

    iput v0, p0, LM6/b;->D:I

    const/16 v0, 0x64

    iput v0, p0, LM6/b;->E:I

    const/16 v0, 0x3c

    iput v0, p0, LM6/b;->F:I

    const/4 v0, 0x0

    iput-boolean v0, p0, LM6/b;->G:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, LM6/b;->H:Z

    const/16 v0, 0x1e

    iput v0, p0, LM6/b;->I:I

    return-void
.end method


# virtual methods
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

    .annotation build Li/P;
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget v1, p0, LM6/b;->X:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "<\u00b5Q\u00c4b\u0014\u0087>\u00f8\\\u00f9g\u0005\u008a$\u00d4\\\u00fep\u0008"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, LM6/b;->Y:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "<\u00b5Q\u00c4b\u0014\u0087>\u00f8]\u00f9z\u0013\u0097\'\u00d5O\u00f9v\u0014\u00bf(\u00d0@\u00f6\u0098\t"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, LM6/b;->A:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "<\u00b5Q\u00c4b\u0014\u0087>\u00f8A\u00fdm\u0013\u0084)\u00cfE\u00fak\u0015\u00bb"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, LM6/b;->B:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "<\u00b5Q\u00c4b\u0014\u0087>\u00f8F\u00f2`\u0002\u008a1\u00d1Z\u00e2h\u001d\u00ba$\u00cfK"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, LM6/b;->D:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "<\u00b5Q\u00c4b\u0014\u0087>\u00f8A\u00fdm\u0013\u0084)\u00cfE\u00e4t\u0014\u00bb/"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, LM6/b;->E:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "<\u00b5Q\u00c4b\u0014\u0087>\u00f8L\u00eef\u0003\u00808\u00cd_\u00fbh\u0015\u00b1<\u00d6"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, LM6/b;->F:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "<\u00b5Q\u00c4b\u0014\u0087>\u00f8_\u00eef\u0018\u0086 \u00c8F\u00fb`\u001e\u00a9%"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, LM6/b;->G:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "<\u00b5Q\u00c4b\u0014\u0087>\u00f8H\u00e5{\u0019\u008a>\u00cbO\u00e5p"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, LM6/b;->H:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "<\u00b5Q\u00c4b\u0014\u0087>\u00f8\\\u00ff{\u0019\u008f<\u00dcN\u00fdq\u0002\u00aa"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, LM6/b;->I:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "<\u00b5Q\u00c4b\u0014\u0087>\u00f8\\\u00ff{\u0019\u008f<\u00ce^\u00f2t"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public d(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Li/P;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<\u00b5Q\u00c4b\u0014\u0087>\u00f8\\\u00f9g\u0005\u008a$\u00d4\\\u00fep\u0008"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, LM6/b;->setSensitivity(F)V

    const-string v0, "<\u00b5Q\u00c4b\u0014\u0087>\u00f8]\u00f9z\u0013\u0097\'\u00d5O\u00f9v\u0014\u00bf(\u00d0@\u00f6\u0098\t"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, LM6/b;->setResetWhenReachEdge(Z)V

    const-string v0, "<\u00b5Q\u00c4b\u0014\u0087>\u00f8A\u00fdm\u0013\u0084)\u00cfE\u00fak\u0015\u00bb"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, LM6/b;->setNadeGyroMode(Z)V

    const-string v0, "<\u00b5Q\u00c4b\u0014\u0087>\u00f8F\u00f2`\u0002\u008a1\u00d1Z\u00e2h\u001d\u00ba$\u00cfK"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/b;->setInitialPullDown(I)V

    const-string v0, "<\u00b5Q\u00c4b\u0014\u0087>\u00f8A\u00fdm\u0013\u0084)\u00cfE\u00e4t\u0014\u00bb/"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/b;->setNadeGyroSpeed(I)V

    :cond_0
    const-string v0, "<\u00b5Q\u00c4b\u0014\u0087>\u00f8L\u00eef\u0003\u00808\u00cd_\u00fbh\u0015\u00b1<\u00d6"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/b;->setCrouchPullDown(I)V

    :cond_1
    const-string v0, "<\u00b5Q\u00c4b\u0014\u0087>\u00f8_\u00eef\u0018\u0086 \u00c8F\u00fb`\u001e\u00a9%"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/b;->setPronePullDown(I)V

    :cond_2
    const-string v0, "<\u00b5Q\u00c4b\u0014\u0087>\u00f8H\u00e5{\u0019\u008a>\u00cbO\u00e5p"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, LM6/b;->setGyroInvert(Z)V

    :cond_3
    const-string v0, "<\u00b5Q\u00c4b\u0014\u0087>\u00f8\\\u00ff{\u0019\u008f<\u00dcN\u00fdq\u0002\u00aa"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, LM6/b;->setScrollAdjust(Z)V

    :cond_4
    const-string v0, "<\u00b5Q\u00c4b\u0014\u0087>\u00f8\\\u00ff{\u0019\u008f<\u00ce^\u00f2t"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/b;->setScrollStep(I)V

    :cond_5
    return-void
.end method

.method public getCrouchPullDown()I
    .locals 1

    iget v0, p0, LM6/b;->E:I

    return v0
.end method

.method public getInitialPullDown()I
    .locals 1

    iget v0, p0, LM6/b;->B:I

    return v0
.end method

.method public getNadeGyroSpeed()I
    .locals 1

    iget v0, p0, LM6/b;->D:I

    return v0
.end method

.method public getPronePullDown()I
    .locals 1

    iget v0, p0, LM6/b;->F:I

    return v0
.end method

.method public getScrollAdjust()Z
    .locals 1

    iget-boolean v0, p0, LM6/b;->H:Z

    return v0
.end method

.method public getScrollStep()I
    .locals 1

    iget v0, p0, LM6/b;->I:I

    return v0
.end method

.method public getSensitivity()F
    .locals 1

    iget v0, p0, LM6/b;->X:F

    return v0
.end method

.method public isGyroInvert()Z
    .locals 1

    iget-boolean v0, p0, LM6/b;->G:Z

    return v0
.end method

.method public isNadeGyroMode()Z
    .locals 1

    iget-boolean v0, p0, LM6/b;->A:Z

    return v0
.end method

.method public setCrouchPullDown(I)V
    .locals 0

    iput p1, p0, LM6/b;->E:I

    return-void
.end method

.method public setGyroInvert(Z)V
    .locals 0

    iput-boolean p1, p0, LM6/b;->G:Z

    return-void
.end method

.method public setInitialPullDown(I)V
    .locals 0

    iput p1, p0, LM6/b;->B:I

    return-void
.end method

.method public setNadeGyroMode(Z)V
    .locals 1

    iput-boolean p1, p0, LM6/b;->A:Z

    invoke-static {}, LK6/m;->getInstance()LK6/m;

    move-result-object v0

    invoke-virtual {v0, p1}, LK6/m;->setNadeServerWanted(Z)V

    return-void
.end method

.method public setNadeGyroSpeed(I)V
    .locals 0

    iput p1, p0, LM6/b;->D:I

    return-void
.end method

.method public setPronePullDown(I)V
    .locals 0

    iput p1, p0, LM6/b;->F:I

    return-void
.end method

.method public setResetWhenReachEdge(Z)V
    .locals 0

    iput-boolean p1, p0, LM6/b;->Y:Z

    return-void
.end method

.method public setScrollAdjust(Z)V
    .locals 0

    iput-boolean p1, p0, LM6/b;->H:Z

    return-void
.end method

.method public setScrollStep(I)V
    .locals 0

    iput p1, p0, LM6/b;->I:I

    return-void
.end method

.method public setSensitivity(F)V
    .locals 0

    iput p1, p0, LM6/b;->X:F

    return-void
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, LM6/b;->Y:Z

    return v0
.end method
