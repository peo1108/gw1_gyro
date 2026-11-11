.class public LM6/f;
.super Lt7/b;
.source "SourceFile"

# interfaces
.implements LN6/d;


# instance fields
.field public V1:I

.field public X:Lh7/b;

.field public Y:Lh7/b;

.field public Z:Lh7/b;

.field public k6:I

.field public l6:LN6/d$a;

.field public m6:I

.field public n6:F

.field public o6:I

.field public p6:I

.field public q6:I

.field public r6:Z

.field public s6:Z

.field public t6:Z

.field public u6:I

.field public v6:I

.field public w6:I

.field public x6:I

.field public y6:I

.field public z6:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh7/b;

    const v1, 0xfffd

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lh7/b;-><init>(II)V

    iput-object v0, p0, LM6/f;->X:Lh7/b;

    new-instance v0, Lh7/b;

    invoke-direct {v0}, Lh7/b;-><init>()V

    iput-object v0, p0, LM6/f;->Y:Lh7/b;

    new-instance v0, Lh7/b;

    invoke-direct {v0}, Lh7/b;-><init>()V

    iput-object v0, p0, LM6/f;->Z:Lh7/b;

    const/16 v0, 0x15e

    iput v0, p0, LM6/f;->V1:I

    iput v0, p0, LM6/f;->k6:I

    sget-object v0, LN6/d$a;->X:LN6/d$a;

    iput-object v0, p0, LM6/f;->l6:LN6/d$a;

    const/16 v0, 0x12c

    iput v0, p0, LM6/f;->m6:I

    const/high16 v1, 0x40e00000    # 7.0f

    iput v1, p0, LM6/f;->n6:F

    iput v0, p0, LM6/f;->o6:I

    const/4 v1, 0x0

    iput v1, p0, LM6/f;->p6:I

    const/16 v2, 0xf

    iput v2, p0, LM6/f;->q6:I

    iput-boolean v1, p0, LM6/f;->r6:Z

    iput-boolean v1, p0, LM6/f;->s6:Z

    iput-boolean v1, p0, LM6/f;->t6:Z

    const/16 v1, 0x2bc

    iput v1, p0, LM6/f;->u6:I

    const/16 v1, 0x64

    iput v1, p0, LM6/f;->v6:I

    const/16 v2, 0xc

    iput v2, p0, LM6/f;->w6:I

    const/4 v2, 0x3

    iput v2, p0, LM6/f;->x6:I

    iput v2, p0, LM6/f;->y6:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v1, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, LM6/f;->z6:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public K()Z
    .locals 1

    iget-boolean v0, p0, LM6/f;->t6:Z

    return v0
.end method

.method public R()Z
    .locals 1

    iget-boolean v0, p0, LM6/f;->s6:Z

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

    iget-object v1, p0, LM6/f;->X:Lh7/b;

    invoke-virtual {v1}, Lh7/b;->u()[I

    move-result-object v1

    const-string v2, "mainview:switchMouseLockHotkey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, LM6/f;->Y:Lh7/b;

    invoke-virtual {v1}, Lh7/b;->u()[I

    move-result-object v1

    const-string v2, "mainview:switchSensitivityHotkey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, LM6/f;->Z:Lh7/b;

    invoke-virtual {v1}, Lh7/b;->u()[I

    move-result-object v1

    const-string v2, "mainview:resetViewKeyCodeArray"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, LM6/f;->V1:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "mainview:horizontalSensitivity"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, LM6/f;->k6:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "mainview:verticalSensitivity"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p0, LM6/f;->l6:LN6/d$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "mainview:switchSensitivityMode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, LM6/f;->m6:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "mainview:horizontalSensitivityAfterSwitch"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, LM6/f;->o6:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "mainview:verticalSensitivityAfterSwitch"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, LM6/f;->p6:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "mainview:touchUpDelay"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, LM6/f;->q6:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "mainview:touchDownDelay"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, LM6/f;->r6:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mainview:customPlayerViewRectangle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, LM6/f;->s6:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mainview:mouseAccelerationEnable"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, LM6/f;->t6:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mainview:edgeReleaseOnly"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, LM6/f;->u6:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "mainview:autoReleaseInterval"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, LM6/f;->v6:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "mainview:mouseAccelerationValue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, LM6/f;->w6:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "mainview:maxAcceleration"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, LM6/f;->x6:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "mainview:minAcceleration"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, LM6/f;->y6:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "mainview:mouseAccelerationCoefficient"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Float;

    iget v2, p0, LM6/f;->n6:F

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    const-string v2, "mainview:freefireDeacclerationValue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, LM6/f;->z6:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mainview:customViewRectangle.left"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, LM6/f;->z6:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mainview:customViewRectangle.right"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, LM6/f;->z6:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mainview:customViewRectangle.top"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, LM6/f;->z6:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mainview:customViewRectangle.bottom"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public d(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lh7/b;

    const-string v1, "mainview:switchMouseLockHotkey"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v1}, Lh7/b;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, LM6/f;->setSwitchMouseLockHotkey(Lh7/b;)V

    new-instance v0, Lh7/b;

    const-string v1, "mainview:switchSensitivityHotkey"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v1}, Lh7/b;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, LM6/f;->setSwitchSensitivityHotkey(Lh7/b;)V

    new-instance v0, Lh7/b;

    const-string v1, "mainview:resetViewKeyCodeArray"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v1}, Lh7/b;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, LM6/f;->setResetViewHotkey(Lh7/b;)V

    const-string v0, "mainview:horizontalSensitivity"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/f;->setHorizontalSensitivity(I)V

    const-string v0, "mainview:verticalSensitivity"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/f;->setVerticalSensitivity(I)V

    const-string v0, "mainview:freefireDeacclerationValue"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, LM6/f;->setFreefireDeacclerationValue(F)V

    invoke-static {}, LN6/d$a;->values()[LN6/d$a;

    move-result-object v0

    const-string v1, "mainview:switchSensitivityMode"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, LM6/f;->setSwitchSensitivityMode(LN6/d$a;)V

    const-string v0, "mainview:horizontalSensitivityAfterSwitch"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/f;->setHorizontalSensitivityAfterSwitch(I)V

    const-string v0, "mainview:verticalSensitivityAfterSwitch"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/f;->setVerticalSensitivityAfterSwitch(I)V

    const-string v0, "mainview:touchUpDelay"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/f;->setTouchUpDelay(I)V

    const-string v0, "mainview:touchDownDelay"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/f;->setTouchDownDelay(I)V

    const-string v0, "mainview:customPlayerViewRectangle"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, LM6/f;->setCustomPlayerViewRectangle(Z)V

    const-string v0, "mainview:mouseAccelerationEnable"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, LM6/f;->setMouseAccelerationEnable(Z)V

    const-string v0, "mainview:edgeReleaseOnly"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, LM6/f;->setEdgeReleaseOnly(Z)V

    const-string v0, "mainview:autoReleaseInterval"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/f;->setAutoReleaseInterval(I)V

    const-string v0, "mainview:mouseAccelerationValue"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/f;->setMouseAccelerationValue(I)V

    const-string v0, "mainview:maxAcceleration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/f;->setMaxAcceleration(I)V

    const-string v0, "mainview:minAcceleration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/f;->setMinAcceleration(I)V

    const-string v0, "mainview:mouseAccelerationCoefficient"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LM6/f;->setMouseAccelerationCoefficient(I)V

    new-instance v0, Landroid/graphics/Rect;

    const-string v1, "mainview:customViewRectangle.left"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const-string v2, "mainview:customViewRectangle.top"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const-string v3, "mainview:customViewRectangle.right"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "mainview:customViewRectangle.bottom"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, LM6/f;->setCustomViewRectangle(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getAutoReleaseInterval()I
    .locals 1

    iget v0, p0, LM6/f;->u6:I

    return v0
.end method

.method public getCustomViewRectangle()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, LM6/f;->z6:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFreefireDeacclerationValue()F
    .locals 1

    iget v0, p0, LM6/f;->n6:F

    return v0
.end method

.method public getHorizontalSensitivity()I
    .locals 1

    iget v0, p0, LM6/f;->V1:I

    return v0
.end method

.method public getHorizontalSensitivityAfterSwitch()I
    .locals 1

    iget v0, p0, LM6/f;->m6:I

    return v0
.end method

.method public getMaxAcceleration()I
    .locals 1

    iget v0, p0, LM6/f;->w6:I

    return v0
.end method

.method public getMinAcceleration()I
    .locals 1

    iget v0, p0, LM6/f;->x6:I

    return v0
.end method

.method public getMouseAccelerationCoefficient()I
    .locals 1

    iget v0, p0, LM6/f;->y6:I

    return v0
.end method

.method public getMouseAccelerationValue()I
    .locals 1

    iget v0, p0, LM6/f;->v6:I

    return v0
.end method

.method public getResetViewHotkey()Lh7/b;
    .locals 1

    iget-object v0, p0, LM6/f;->Z:Lh7/b;

    return-object v0
.end method

.method public getSwitchMouseLockHotkey()Lh7/b;
    .locals 1

    iget-object v0, p0, LM6/f;->X:Lh7/b;

    return-object v0
.end method

.method public getSwitchSensitivityHotkey()Lh7/b;
    .locals 1

    iget-object v0, p0, LM6/f;->Y:Lh7/b;

    return-object v0
.end method

.method public getSwitchSensitivityMode()LN6/d$a;
    .locals 1

    iget-object v0, p0, LM6/f;->l6:LN6/d$a;

    return-object v0
.end method

.method public getTouchDownDelay()I
    .locals 2

    iget v0, p0, LM6/f;->q6:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public getTouchUpDelay()I
    .locals 1

    iget v0, p0, LM6/f;->p6:I

    return v0
.end method

.method public getVerticalSensitivity()I
    .locals 1

    iget v0, p0, LM6/f;->k6:I

    return v0
.end method

.method public getVerticalSensitivityAfterSwitch()I
    .locals 1

    iget v0, p0, LM6/f;->o6:I

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, LM6/f;->r6:Z

    return v0
.end method

.method public setAutoReleaseInterval(I)V
    .locals 0

    iput p1, p0, LM6/f;->u6:I

    return-void
.end method

.method public setCustomPlayerViewRectangle(Z)V
    .locals 0

    iput-boolean p1, p0, LM6/f;->r6:Z

    return-void
.end method

.method public setCustomViewRectangle(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, LM6/f;->z6:Landroid/graphics/Rect;

    return-void
.end method

.method public setEdgeReleaseOnly(Z)V
    .locals 0

    iput-boolean p1, p0, LM6/f;->t6:Z

    return-void
.end method

.method public setFreefireDeacclerationValue(F)V
    .locals 0

    iput p1, p0, LM6/f;->n6:F

    return-void
.end method

.method public setHorizontalSensitivity(I)V
    .locals 0

    iput p1, p0, LM6/f;->V1:I

    return-void
.end method

.method public setHorizontalSensitivityAfterSwitch(I)V
    .locals 0

    iput p1, p0, LM6/f;->m6:I

    return-void
.end method

.method public setMaxAcceleration(I)V
    .locals 0

    iput p1, p0, LM6/f;->w6:I

    return-void
.end method

.method public setMinAcceleration(I)V
    .locals 0

    iput p1, p0, LM6/f;->x6:I

    return-void
.end method

.method public setMouseAccelerationCoefficient(I)V
    .locals 0

    iput p1, p0, LM6/f;->y6:I

    return-void
.end method

.method public setMouseAccelerationEnable(Z)V
    .locals 0

    iput-boolean p1, p0, LM6/f;->s6:Z

    return-void
.end method

.method public setMouseAccelerationValue(I)V
    .locals 0

    iput p1, p0, LM6/f;->v6:I

    return-void
.end method

.method public setResetViewHotkey(Lh7/b;)V
    .locals 0

    iput-object p1, p0, LM6/f;->Z:Lh7/b;

    return-void
.end method

.method public setSwitchMouseLockHotkey(Lh7/b;)V
    .locals 0

    iput-object p1, p0, LM6/f;->X:Lh7/b;

    return-void
.end method

.method public setSwitchSensitivityHotkey(Lh7/b;)V
    .locals 0

    iput-object p1, p0, LM6/f;->Y:Lh7/b;

    return-void
.end method

.method public setSwitchSensitivityMode(LN6/d$a;)V
    .locals 0

    iput-object p1, p0, LM6/f;->l6:LN6/d$a;

    return-void
.end method

.method public setTouchDownDelay(I)V
    .locals 1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, LM6/f;->q6:I

    return-void
.end method

.method public setTouchUpDelay(I)V
    .locals 0

    iput p1, p0, LM6/f;->p6:I

    return-void
.end method

.method public setVerticalSensitivity(I)V
    .locals 0

    iput p1, p0, LM6/f;->k6:I

    return-void
.end method

.method public setVerticalSensitivityAfterSwitch(I)V
    .locals 0

    iput p1, p0, LM6/f;->o6:I

    return-void
.end method
