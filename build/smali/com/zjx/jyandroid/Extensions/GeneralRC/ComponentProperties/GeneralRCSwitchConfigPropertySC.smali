.class public Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentProperties/GeneralRCSwitchConfigPropertySC;
.super Lf/c;
.source "SourceFile"


# instance fields
.field public switchToIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lf/c;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentProperties/GeneralRCSwitchConfigPropertySC;->switchToIndex:I

    return-void
.end method

.method public static synthetic b(Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentProperties/GeneralRCSwitchConfigPropertySC;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentProperties/GeneralRCSwitchConfigPropertySC;->lambda$loadFromMap$0(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$loadFromMap$0(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "switchOffset"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentProperties/GeneralRCSwitchConfigPropertySC;->setSwitchToIndex(I)V

    return-void
.end method


# virtual methods
.method public getSwitchToIndex()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentProperties/GeneralRCSwitchConfigPropertySC;->switchToIndex:I

    return v0
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

    new-instance v0, Lc/a;

    invoke-direct {v0, p0, p1}, Lc/a;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentProperties/GeneralRCSwitchConfigPropertySC;Ljava/util/Map;)V

    invoke-static {v0}, Lr/d;->ignoringExc(Lr/d$a;)V

    return-void
.end method

.method public setSwitchToIndex(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentProperties/GeneralRCSwitchConfigPropertySC;->switchToIndex:I

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

    sget-object v2, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->GENERAL_RC_SWITCH_CONFIG_SC:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "data"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentProperties/GeneralRCSwitchConfigPropertySC;->switchToIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "switchOffset"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
