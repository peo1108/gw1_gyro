.class public Lr/C;
.super Lr/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr/C$b;,
        Lr/C$a;
    }
.end annotation


# instance fields
.field public a:Lr/C$b;

.field public b:Lr/C$a;

.field public c:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr/d;-><init>()V

    sget-object v0, Lr/C$b;->a:Lr/C$b;

    iput-object v0, p0, Lr/C;->a:Lr/C$b;

    sget-object v0, Lr/C$a;->a:Lr/C$a;

    iput-object v0, p0, Lr/C;->b:Lr/C$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lr/C;->c:Ljava/util/UUID;

    return-void
.end method

.method public static synthetic b(Lr/C;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/C;->lambda$loadFromMap$0(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic c(Lr/C;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/C;->h(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic d(Lr/C;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/C;->i(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic h(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lr/C$b;->values()[Lr/C$b;

    move-result-object v0

    const-string v1, "triggerTerminationMode"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lr/C;->l(Lr/C$b;)V

    return-void
.end method

.method private synthetic i(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "terminateMacroUUID"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr/C;->j(Ljava/util/UUID;)V

    return-void
.end method

.method private synthetic lambda$loadFromMap$0(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lr/C$a;->values()[Lr/C$a;

    move-result-object v0

    const-string v1, "terminateType"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lr/C;->k(Lr/C$a;)V

    return-void
.end method


# virtual methods
.method public e()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lr/C;->c:Ljava/util/UUID;

    return-object v0
.end method

.method public f()Lr/C$a;
    .locals 1

    iget-object v0, p0, Lr/C;->b:Lr/C$a;

    return-object v0
.end method

.method public g()Lr/C$b;
    .locals 1

    iget-object v0, p0, Lr/C;->a:Lr/C$b;

    return-object v0
.end method

.method public j(Ljava/util/UUID;)V
    .locals 0

    iput-object p1, p0, Lr/C;->c:Ljava/util/UUID;

    return-void
.end method

.method public k(Lr/C$a;)V
    .locals 0

    iput-object p1, p0, Lr/C;->b:Lr/C$a;

    return-void
.end method

.method public l(Lr/C$b;)V
    .locals 0

    iput-object p1, p0, Lr/C;->a:Lr/C$b;

    return-void
.end method

.method public loadFromMap(Ljava/util/Map;)V
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

    const-string v0, "data"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    new-instance v0, Lr/z;

    invoke-direct {v0, p0, p1}, Lr/z;-><init>(Lr/C;Ljava/util/Map;)V

    invoke-static {v0}, Lr/d;->ignoringExc(Lr/d$a;)V

    new-instance v0, Lr/A;

    invoke-direct {v0, p0, p1}, Lr/A;-><init>(Lr/C;Ljava/util/Map;)V

    invoke-static {v0}, Lr/d;->ignoringExc(Lr/d$a;)V

    new-instance v0, Lr/B;

    invoke-direct {v0, p0, p1}, Lr/B;-><init>(Lr/C;Ljava/util/Map;)V

    invoke-static {v0}, Lr/d;->ignoringExc(Lr/d$a;)V

    return-void
.end method

.method public toMap()Ljava/util/Map;
    .locals 4
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

    sget-object v2, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->MACRO_TERMINATE_SC:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "data"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lr/C;->b:Lr/C$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "terminateType"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lr/C;->a:Lr/C$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "triggerTerminationMode"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lr/C;->c:Ljava/util/UUID;

    if-eqz v2, :cond_0

    const-string v3, "terminateMacroUUID"

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
