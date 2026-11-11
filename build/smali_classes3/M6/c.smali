.class public LM6/c;
.super Lt7/b;
.source "SourceFile"

# interfaces
.implements LN6/b;


# instance fields
.field public V1:I

.field public X:I

.field public Y:I

.field public Z:I

.field public k6:LN6/b$c;

.field public l6:LN6/b$b;

.field public m6:LN6/b$a;

.field public n6:LN6/b$a;

.field public o6:I

.field public p6:I

.field public q6:I

.field public r6:I

.field public s6:I

.field public t6:I

.field public u6:I

.field public v6:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LM6/c;->X:I

    iput v0, p0, LM6/c;->Y:I

    const/16 v1, 0xc8

    iput v1, p0, LM6/c;->Z:I

    iput v0, p0, LM6/c;->V1:I

    sget-object v1, LN6/b$c;->X:LN6/b$c;

    iput-object v1, p0, LM6/c;->k6:LN6/b$c;

    sget-object v1, LN6/b$b;->X:LN6/b$b;

    iput-object v1, p0, LM6/c;->l6:LN6/b$b;

    sget-object v1, LN6/b$a;->X:LN6/b$a;

    iput-object v1, p0, LM6/c;->m6:LN6/b$a;

    iput-object v1, p0, LM6/c;->n6:LN6/b$a;

    const/16 v1, 0x1a

    iput v1, p0, LM6/c;->o6:I

    const/16 v1, 0x16

    iput v1, p0, LM6/c;->p6:I

    const/4 v1, 0x4

    iput v1, p0, LM6/c;->q6:I

    const/4 v1, 0x7

    iput v1, p0, LM6/c;->r6:I

    const/4 v1, -0x1

    iput v1, p0, LM6/c;->s6:I

    iput v1, p0, LM6/c;->t6:I

    const/4 v1, 0x5

    iput v1, p0, LM6/c;->u6:I

    iput-boolean v0, p0, LM6/c;->v6:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, LM6/c;->v6:Z

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

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, LM6/c;->V1:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "joystick:switchRadiusKeyCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p0, LM6/c;->l6:LN6/b$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "joystick:switchRadiusMode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, LM6/c;->Z:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "joystick:switchRadiusRatio"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, LM6/c;->Y:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "joystick:zeroRadiusRatio"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, LM6/c;->X:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "joystick:delayResponseTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p0, LM6/c;->k6:LN6/b$c;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "joystick:triggerMode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, LM6/c;->o6:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "joystick:northKeyCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, LM6/c;->p6:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "joystick:southKeyCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, LM6/c;->q6:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "joystick:westKeyCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, LM6/c;->r6:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "joystick:eastKeyCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, LM6/c;->u6:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "joystick:totalMoveStep"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, LM6/c;->s6:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "joystick:smallAngleKeyCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, LM6/c;->t6:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "joystick:largeAngleKeyCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p0, LM6/c;->n6:LN6/b$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "joystick:switchSmallAngleMode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p0, LM6/c;->m6:LN6/b$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "joystick:switchLargeAngleMode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, LM6/c;->v6:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "joystick:recenterWhenPressingOppositeDirection"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public d(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "joystick:switchRadiusKeyCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/c;->setSwitchRadiusKeyCode(I)V

    invoke-static {}, LN6/b$b;->values()[LN6/b$b;

    move-result-object v0

    const-string v1, "joystick:switchRadiusMode"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, LM6/c;->setSwitchRadiusMode(LN6/b$b;)V

    const-string v0, "joystick:switchRadiusRatio"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/c;->setSwitchRadiusRatio(I)V

    const-string v0, "joystick:zeroRadiusRatio"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/c;->setZeroRadiusRatio(I)V

    const-string v0, "joystick:delayResponseTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/c;->setDelayResponseTime(I)V

    invoke-static {}, LN6/b$c;->values()[LN6/b$c;

    move-result-object v0

    const-string v1, "joystick:triggerMode"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, LM6/c;->setTriggerMode(LN6/b$c;)V

    const-string v0, "joystick:totalMoveStep"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/c;->setTotalMoveStep(I)V

    const-string v0, "joystick:northKeyCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/c;->setNorthKeyCode(I)V

    const-string v0, "joystick:southKeyCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/c;->setSouthKeyCode(I)V

    const-string v0, "joystick:eastKeyCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/c;->setEastKeyCode(I)V

    const-string v0, "joystick:westKeyCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/c;->setWestKeyCode(I)V

    :try_start_0
    const-string v0, "joystick:smallAngleKeyCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/c;->setSmallAngleKeyCode(I)V

    const-string v0, "joystick:largeAngleKeyCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/c;->setLargeAngleKeyCode(I)V

    invoke-static {}, LN6/b$a;->values()[LN6/b$a;

    move-result-object v0

    const-string v1, "joystick:switchSmallAngleMode"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, LM6/c;->setSwitchSmallAngleMode(LN6/b$a;)V

    invoke-static {}, LN6/b$a;->values()[LN6/b$a;

    move-result-object v0

    const-string v1, "joystick:switchLargeAngleMode"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, LM6/c;->setSwitchLargeAngleMode(LN6/b$a;)V

    const-string v0, "joystick:recenterWhenPressingOppositeDirection"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, LM6/c;->setRecenterWhenPressingOppositeDirection(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getDelayResponseTime()I
    .locals 1

    iget v0, p0, LM6/c;->X:I

    return v0
.end method

.method public getEastKeyCode()I
    .locals 1

    iget v0, p0, LM6/c;->r6:I

    return v0
.end method

.method public getLargeAngleKeyCode()I
    .locals 1

    iget v0, p0, LM6/c;->t6:I

    return v0
.end method

.method public getNorthKeyCode()I
    .locals 1

    iget v0, p0, LM6/c;->o6:I

    return v0
.end method

.method public getSmallAngleKeyCode()I
    .locals 1

    iget v0, p0, LM6/c;->s6:I

    return v0
.end method

.method public getSouthKeyCode()I
    .locals 1

    iget v0, p0, LM6/c;->p6:I

    return v0
.end method

.method public getSwitchLargeAngleMode()LN6/b$a;
    .locals 1

    iget-object v0, p0, LM6/c;->m6:LN6/b$a;

    return-object v0
.end method

.method public getSwitchRadiusKeyCode()I
    .locals 1

    iget v0, p0, LM6/c;->V1:I

    return v0
.end method

.method public getSwitchRadiusMode()LN6/b$b;
    .locals 1

    iget-object v0, p0, LM6/c;->l6:LN6/b$b;

    return-object v0
.end method

.method public getSwitchRadiusRatio()I
    .locals 1

    iget v0, p0, LM6/c;->Z:I

    return v0
.end method

.method public getSwitchSmallAngleMode()LN6/b$a;
    .locals 1

    iget-object v0, p0, LM6/c;->n6:LN6/b$a;

    return-object v0
.end method

.method public getTotalMoveStep()I
    .locals 1

    iget v0, p0, LM6/c;->u6:I

    return v0
.end method

.method public getTriggerMode()LN6/b$c;
    .locals 1

    iget-object v0, p0, LM6/c;->k6:LN6/b$c;

    return-object v0
.end method

.method public getWestKeyCode()I
    .locals 1

    iget v0, p0, LM6/c;->q6:I

    return v0
.end method

.method public getZeroRadiusRatio()I
    .locals 1

    iget v0, p0, LM6/c;->Y:I

    return v0
.end method

.method public setDelayResponseTime(I)V
    .locals 0

    iput p1, p0, LM6/c;->X:I

    return-void
.end method

.method public setEastKeyCode(I)V
    .locals 0

    iput p1, p0, LM6/c;->r6:I

    return-void
.end method

.method public setLargeAngleKeyCode(I)V
    .locals 0

    iput p1, p0, LM6/c;->t6:I

    return-void
.end method

.method public setNorthKeyCode(I)V
    .locals 0

    iput p1, p0, LM6/c;->o6:I

    return-void
.end method

.method public setRecenterWhenPressingOppositeDirection(Z)V
    .locals 0

    iput-boolean p1, p0, LM6/c;->v6:Z

    return-void
.end method

.method public setSmallAngleKeyCode(I)V
    .locals 0

    iput p1, p0, LM6/c;->s6:I

    return-void
.end method

.method public setSouthKeyCode(I)V
    .locals 0

    iput p1, p0, LM6/c;->p6:I

    return-void
.end method

.method public setSwitchLargeAngleMode(LN6/b$a;)V
    .locals 0

    iput-object p1, p0, LM6/c;->m6:LN6/b$a;

    return-void
.end method

.method public setSwitchRadiusKeyCode(I)V
    .locals 0

    iput p1, p0, LM6/c;->V1:I

    return-void
.end method

.method public setSwitchRadiusMode(LN6/b$b;)V
    .locals 0

    iput-object p1, p0, LM6/c;->l6:LN6/b$b;

    return-void
.end method

.method public setSwitchRadiusRatio(I)V
    .locals 0

    iput p1, p0, LM6/c;->Z:I

    return-void
.end method

.method public setSwitchSmallAngleMode(LN6/b$a;)V
    .locals 0

    iput-object p1, p0, LM6/c;->n6:LN6/b$a;

    return-void
.end method

.method public setTotalMoveStep(I)V
    .locals 0

    iput p1, p0, LM6/c;->u6:I

    return-void
.end method

.method public setTriggerMode(LN6/b$c;)V
    .locals 0

    iput-object p1, p0, LM6/c;->k6:LN6/b$c;

    return-void
.end method

.method public setWestKeyCode(I)V
    .locals 0

    iput p1, p0, LM6/c;->q6:I

    return-void
.end method

.method public setZeroRadiusRatio(I)V
    .locals 0

    iput p1, p0, LM6/c;->Y:I

    return-void
.end method
