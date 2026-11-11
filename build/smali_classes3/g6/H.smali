.class public Lg6/H;
.super Lg6/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg6/H$a;,
        Lg6/H$b;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lg6/H$a;

.field public b:Landroid/graphics/Point;

.field public c:I

.field public d:Lg6/H$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lg6/H$a;->X:Lg6/H$a;

    iput-object v0, p0, Lg6/H;->a:Lg6/H$a;

    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x12c

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lg6/H;->b:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput v0, p0, Lg6/H;->c:I

    sget-object v0, Lg6/H$b;->X:Lg6/H$b;

    iput-object v0, p0, Lg6/H;->d:Lg6/H$b;

    return-void
.end method

.method public static synthetic f(Lg6/H;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lg6/H;->n(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic g(Lg6/H;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lg6/H;->p(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic h(Lg6/H;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lg6/H;->q(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic i(Lg6/H;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lg6/H;->o(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic n(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lg6/H$a;->values()[Lg6/H$a;

    move-result-object v0

    const-string v1, "mouseDisplayMode"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lg6/H;->a:Lg6/H$a;

    return-void
.end method

.method private synthetic o(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lg6/H;->b:Landroid/graphics/Point;

    const-string v1, "mouseDisplayPositionX"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lg6/H;->b:Landroid/graphics/Point;

    const-string v1, "mouseDisplayPositionY"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private synthetic p(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "switchMouseLockLatency"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lg6/H;->c:I

    return-void
.end method

.method private synthetic q(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lg6/H$b;->values()[Lg6/H$b;

    move-result-object v0

    const-string v1, "mouseDisplayTriggerType"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lg6/H;->d:Lg6/H$b;

    return-void
.end method


# virtual methods
.method public c(Lf6/g;)V
    .locals 1

    check-cast p1, Lf6/q;

    invoke-virtual {p1}, Lf6/q;->getMouseDisplayMode()Lg6/H$a;

    move-result-object v0

    iput-object v0, p0, Lg6/H;->a:Lg6/H$a;

    invoke-virtual {p1}, Lf6/q;->getMouseDisplayPosition()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lg6/H;->b:Landroid/graphics/Point;

    invoke-virtual {p1}, Lf6/q;->getMouseDisplayLatency()I

    move-result v0

    iput v0, p0, Lg6/H;->c:I

    invoke-virtual {p1}, Lf6/q;->getMouseDisplayTriggerType()Lg6/H$b;

    move-result-object p1

    iput-object p1, p0, Lg6/H;->d:Lg6/H$b;

    return-void
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

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lg6/D;

    invoke-direct {v0, p0, p1}, Lg6/D;-><init>(Lg6/H;Ljava/util/Map;)V

    invoke-static {v0}, Lg6/c;->b(Lg6/c$a;)V

    new-instance v0, Lg6/E;

    invoke-direct {v0, p0, p1}, Lg6/E;-><init>(Lg6/H;Ljava/util/Map;)V

    invoke-static {v0}, Lg6/c;->b(Lg6/c$a;)V

    new-instance v0, Lg6/F;

    invoke-direct {v0, p0, p1}, Lg6/F;-><init>(Lg6/H;Ljava/util/Map;)V

    invoke-static {v0}, Lg6/c;->b(Lg6/c$a;)V

    new-instance v0, Lg6/G;

    invoke-direct {v0, p0, p1}, Lg6/G;-><init>(Lg6/H;Ljava/util/Map;)V

    invoke-static {v0}, Lg6/c;->b(Lg6/c$a;)V

    return-void
.end method

.method public e()Ljava/util/Map;
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

    iget-object v1, p0, Lg6/H;->a:Lg6/H$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mouseDisplayMode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lg6/H;->d:Lg6/H$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mouseDisplayTriggerType"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lg6/H;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "switchMouseLockLatency"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lg6/H;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mouseDisplayPositionX"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lg6/H;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mouseDisplayPositionY"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lg6/H;->c:I

    return v0
.end method

.method public k()Lg6/H$a;
    .locals 1

    iget-object v0, p0, Lg6/H;->a:Lg6/H$a;

    return-object v0
.end method

.method public l()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lg6/H;->b:Landroid/graphics/Point;

    return-object v0
.end method

.method public m()Lg6/H$b;
    .locals 1

    iget-object v0, p0, Lg6/H;->d:Lg6/H$b;

    return-object v0
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lg6/H;->c:I

    return-void
.end method

.method public s(Lg6/H$a;)V
    .locals 0

    iput-object p1, p0, Lg6/H;->a:Lg6/H$a;

    return-void
.end method

.method public t(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lg6/H;->b:Landroid/graphics/Point;

    return-void
.end method

.method public u(Lg6/H$b;)V
    .locals 0

    iput-object p1, p0, Lg6/H;->d:Lg6/H$b;

    return-void
.end method
