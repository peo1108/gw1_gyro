.class public LM6/h;
.super Lt7/b;
.source "SourceFile"

# interfaces
.implements LN6/f;


# instance fields
.field public V1:Z

.field public X:LN6/f$a;

.field public Y:F

.field public Z:F

.field public k6:F

.field public l6:Z

.field public m6:F

.field public n6:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LN6/f$a;->X:LN6/f$a;

    iput-object v0, p0, LM6/h;->X:LN6/f$a;

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, LM6/h;->Y:F

    iput v0, p0, LM6/h;->Z:F

    const/4 v0, 0x0

    iput-boolean v0, p0, LM6/h;->V1:Z

    const/high16 v1, 0x437a0000    # 250.0f

    iput v1, p0, LM6/h;->k6:F

    iput-boolean v0, p0, LM6/h;->l6:Z

    iput v1, p0, LM6/h;->m6:F

    iput-boolean v0, p0, LM6/h;->n6:Z

    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 0

    iput-boolean p1, p0, LM6/h;->l6:Z

    return-void
.end method

.method public B()Z
    .locals 1

    iget-boolean v0, p0, LM6/h;->l6:Z

    return v0
.end method

.method public C()F
    .locals 1

    iget v0, p0, LM6/h;->Z:F

    return v0
.end method

.method public E()F
    .locals 1

    iget v0, p0, LM6/h;->k6:F

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

    .annotation build Li/P;
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, LM6/h;->X:LN6/f$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ntp:Type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, LM6/h;->Y:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "ntp:ClickDuration"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, LM6/h;->Z:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "ntp:ClickInterval"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, LM6/h;->V1:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ntp:ResetView"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, LM6/h;->k6:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "ntp:ResetViewLatency"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, LM6/h;->l6:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ntp:ReactivateJoystick"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, LM6/h;->m6:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "ntp:ReactivateJoystickLatency"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, LM6/h;->n6:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ntp:SwitchMouseLock"

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

    invoke-static {}, LN6/f$a;->values()[LN6/f$a;

    move-result-object v0

    const-string v1, "ntp:Type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, LM6/h;->z(LN6/f$a;)V

    const-string v0, "ntp:ClickDuration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, LM6/h;->p(F)V

    const-string v0, "ntp:ClickInterval"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, LM6/h;->u(F)V

    const-string v0, "ntp:ResetView"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, LM6/h;->t(Z)V

    const-string v0, "ntp:ResetViewLatency"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, LM6/h;->x(F)V

    const-string v0, "ntp:ReactivateJoystick"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, LM6/h;->A(Z)V

    const-string v0, "ntp:ReactivateJoystickLatency"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, LM6/h;->n(F)V

    const-string v0, "ntp:SwitchMouseLock"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, LM6/h;->g(Z)V

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, LM6/h;->V1:Z

    return v0
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, LM6/h;->n6:Z

    return-void
.end method

.method public getType()LN6/f$a;
    .locals 1

    iget-object v0, p0, LM6/h;->X:LN6/f$a;

    return-object v0
.end method

.method public i()F
    .locals 1

    iget v0, p0, LM6/h;->m6:F

    return v0
.end method

.method public n(F)V
    .locals 0

    iput p1, p0, LM6/h;->m6:F

    return-void
.end method

.method public p(F)V
    .locals 0

    iput p1, p0, LM6/h;->Y:F

    return-void
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, LM6/h;->n6:Z

    return v0
.end method

.method public t(Z)V
    .locals 0

    iput-boolean p1, p0, LM6/h;->V1:Z

    return-void
.end method

.method public u(F)V
    .locals 0

    iput p1, p0, LM6/h;->Z:F

    return-void
.end method

.method public w()F
    .locals 1

    iget v0, p0, LM6/h;->Y:F

    return v0
.end method

.method public x(F)V
    .locals 0

    iput p1, p0, LM6/h;->k6:F

    return-void
.end method

.method public z(LN6/f$a;)V
    .locals 0

    iput-object p1, p0, LM6/h;->X:LN6/f$a;

    return-void
.end method
