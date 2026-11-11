.class public Lr/H;
.super Lr/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr/H$a;,
        Lr/H$b;
    }
.end annotation


# instance fields
.field public a:Lr/H$a;

.field public b:Landroid/graphics/Point;

.field public c:I

.field public d:Lr/H$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lr/c;-><init>()V

    sget-object v0, Lr/H$a;->a:Lr/H$a;

    iput-object v0, p0, Lr/H;->a:Lr/H$a;

    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x12c

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lr/H;->b:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput v0, p0, Lr/H;->c:I

    sget-object v0, Lr/H$b;->a:Lr/H$b;

    iput-object v0, p0, Lr/H;->d:Lr/H$b;

    return-void
.end method

.method public static synthetic g(Lr/H;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/H;->o(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic h(Lr/H;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/H;->q(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic i(Lr/H;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/H;->r(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic j(Lr/H;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/H;->p(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic o(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lr/H$a;->values()[Lr/H$a;

    move-result-object v0

    const-string v1, "mouseDisplayMode"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lr/H;->a:Lr/H$a;

    return-void
.end method

.method private synthetic p(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lr/H;->b:Landroid/graphics/Point;

    const-string v1, "mouseDisplayPositionX"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lr/H;->b:Landroid/graphics/Point;

    const-string v1, "mouseDisplayPositionY"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private synthetic q(Ljava/util/Map;)V
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

    iput p1, p0, Lr/H;->c:I

    return-void
.end method

.method private synthetic r(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lr/H$b;->values()[Lr/H$b;

    move-result-object v0

    const-string v1, "mouseDisplayTriggerType"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lr/H;->d:Lr/H$b;

    return-void
.end method


# virtual methods
.method public d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 1

    check-cast p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->getMouseDisplayMode()Lr/H$a;

    move-result-object v0

    iput-object v0, p0, Lr/H;->a:Lr/H$a;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->getMouseDisplayPosition()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lr/H;->b:Landroid/graphics/Point;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->getMouseDisplayLatency()I

    move-result v0

    iput v0, p0, Lr/H;->c:I

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->getMouseDisplayTriggerType()Lr/H$b;

    move-result-object p1

    iput-object p1, p0, Lr/H;->d:Lr/H$b;

    return-void
.end method

.method public e(Ljava/util/Map;)V
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
    new-instance v0, Lr/D;

    invoke-direct {v0, p0, p1}, Lr/D;-><init>(Lr/H;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/E;

    invoke-direct {v0, p0, p1}, Lr/E;-><init>(Lr/H;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/F;

    invoke-direct {v0, p0, p1}, Lr/F;-><init>(Lr/H;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/G;

    invoke-direct {v0, p0, p1}, Lr/G;-><init>(Lr/H;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    return-void
.end method

.method public f()Ljava/util/Map;
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

    iget-object v1, p0, Lr/H;->a:Lr/H$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mouseDisplayMode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lr/H;->d:Lr/H$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mouseDisplayTriggerType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lr/H;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "switchMouseLockLatency"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lr/H;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mouseDisplayPositionX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lr/H;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mouseDisplayPositionY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lr/H;->c:I

    return v0
.end method

.method public l()Lr/H$a;
    .locals 1

    iget-object v0, p0, Lr/H;->a:Lr/H$a;

    return-object v0
.end method

.method public m()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lr/H;->b:Landroid/graphics/Point;

    return-object v0
.end method

.method public n()Lr/H$b;
    .locals 1

    iget-object v0, p0, Lr/H;->d:Lr/H$b;

    return-object v0
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lr/H;->c:I

    return-void
.end method

.method public t(Lr/H$a;)V
    .locals 0

    iput-object p1, p0, Lr/H;->a:Lr/H$a;

    return-void
.end method

.method public u(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lr/H;->b:Landroid/graphics/Point;

    return-void
.end method

.method public v(Lr/H$b;)V
    .locals 0

    iput-object p1, p0, Lr/H;->d:Lr/H$b;

    return-void
.end method
