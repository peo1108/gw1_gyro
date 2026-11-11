.class public Lf/g;
.super Lf/c;
.source "SourceFile"


# instance fields
.field public a:Lf/c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lf/c;-><init>()V

    sget-object v0, Lf/c$a;->a:Lf/c$a;

    iput-object v0, p0, Lf/g;->a:Lf/c$a;

    return-void
.end method

.method public static synthetic b(Lf/g;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lf/g;->lambda$loadFromMap$0(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$loadFromMap$0(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lf/c$a;->values()[Lf/c$a;

    move-result-object v0

    const-string v1, "enableType"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lf/g;->d(Lf/c$a;)V

    return-void
.end method


# virtual methods
.method public c()Lf/c$a;
    .locals 1

    iget-object v0, p0, Lf/g;->a:Lf/c$a;

    return-object v0
.end method

.method public d(Lf/c$a;)V
    .locals 0

    iput-object p1, p0, Lf/g;->a:Lf/c$a;

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

    new-instance v0, Lf/f;

    invoke-direct {v0, p0, p1}, Lf/f;-><init>(Lf/g;Ljava/util/Map;)V

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

    sget-object v2, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->BIND_HORIZONTAL_RECOIL_CONTROL:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "data"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lf/g;->a:Lf/c$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "enableType"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
