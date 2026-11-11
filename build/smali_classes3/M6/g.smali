.class public LM6/g;
.super Lt7/b;
.source "SourceFile"

# interfaces
.implements LN6/e;


# instance fields
.field public V1:LN6/e$b;

.field public X:LN6/e$a;

.field public Y:Landroid/graphics/Point;

.field public Z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LN6/e$a;->X:LN6/e$a;

    iput-object v0, p0, LM6/g;->X:LN6/e$a;

    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x12c

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, LM6/g;->Y:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput v0, p0, LM6/g;->Z:I

    sget-object v0, LN6/e$b;->X:LN6/e$b;

    iput-object v0, p0, LM6/g;->V1:LN6/e$b;

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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, LM6/g;->X:LN6/e$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mdp:mouseDisplayMode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, LM6/g;->V1:LN6/e$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mdp:mouseDisplayTriggerType"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, LM6/g;->Z:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mdp:switchMouseLockLatency"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, LM6/g;->Y:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mdp:mouseDisplayPositionX"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, LM6/g;->Y:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mdp:mouseDisplayPositionY"

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

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, LN6/e$a;->values()[LN6/e$a;

    move-result-object v0

    const-string v1, "mdp:mouseDisplayMode"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, LM6/g;->X:LN6/e$a;

    iget-object v0, p0, LM6/g;->Y:Landroid/graphics/Point;

    const-string v1, "mdp:mouseDisplayPositionX"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, LM6/g;->Y:Landroid/graphics/Point;

    const-string v1, "mdp:mouseDisplayPositionY"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    const-string v0, "mdp:switchMouseLockLatency"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, LM6/g;->Z:I

    invoke-static {}, LN6/e$b;->values()[LN6/e$b;

    move-result-object v0

    const-string v1, "mdp:mouseDisplayTriggerType"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, LM6/g;->V1:LN6/e$b;

    return-void
.end method

.method public getMouseDisplayLatency()I
    .locals 1

    iget v0, p0, LM6/g;->Z:I

    return v0
.end method

.method public getMouseDisplayMode()LN6/e$a;
    .locals 1

    iget-object v0, p0, LM6/g;->X:LN6/e$a;

    return-object v0
.end method

.method public getMouseDisplayPosition()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, LM6/g;->Y:Landroid/graphics/Point;

    return-object v0
.end method

.method public getMouseDisplayTriggerType()LN6/e$b;
    .locals 1

    iget-object v0, p0, LM6/g;->V1:LN6/e$b;

    return-object v0
.end method

.method public setMouseDisplayLatency(I)V
    .locals 0

    iput p1, p0, LM6/g;->Z:I

    return-void
.end method

.method public setMouseDisplayMode(LN6/e$a;)V
    .locals 0

    iput-object p1, p0, LM6/g;->X:LN6/e$a;

    return-void
.end method

.method public setMouseDisplayPosition(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, LM6/g;->Y:Landroid/graphics/Point;

    return-void
.end method

.method public setMouseDisplayTriggerType(LN6/e$b;)V
    .locals 0

    iput-object p1, p0, LM6/g;->V1:LN6/e$b;

    return-void
.end method
