.class public Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;
.super Lf/c;
.source "SourceFile"


# instance fields
.field public sensitivity:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lf/c;-><init>()V

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;->sensitivity:F

    return-void
.end method

.method public static synthetic b(Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;->lambda$loadFromMap$0(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$loadFromMap$0(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "sensitivity"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;->setSensitivity(F)V

    return-void
.end method


# virtual methods
.method public getSensitivity()F
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;->sensitivity:F

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

    new-instance v0, Ld/a;

    invoke-direct {v0, p0, p1}, Ld/a;-><init>(Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;Ljava/util/Map;)V

    invoke-static {v0}, Lr/d;->ignoringExc(Lr/d$a;)V

    return-void
.end method

.method public setSensitivity(F)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;->sensitivity:F

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

    sget-object v2, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->DNF_CAST_SKILL:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "data"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;->sensitivity:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "sensitivity"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
