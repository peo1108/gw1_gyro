.class public Lcom/zjx/jyandroid/Extensions/pubg/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/pubg/g$f;,
        Lcom/zjx/jyandroid/Extensions/pubg/g$g;,
        Lcom/zjx/jyandroid/Extensions/pubg/g$d;,
        Lcom/zjx/jyandroid/Extensions/pubg/g$e;
    }
.end annotation


# instance fields
.field public a:Lcom/zjx/jyandroid/Extensions/pubg/d;

.field public final b:Z

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;>;",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/Extensions/pubg/g$f;",
            ">;>;"
        }
    .end annotation
.end field

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;>;",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/Extensions/pubg/g$f;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/zjx/jyandroid/Extensions/pubg/g;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g;->d:Z

    .line 4
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g;->b:Z

    .line 5
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object p1

    const-class v0, Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/pubg/d;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    return-void
.end method

.method public static synthetic a(Ljava/util/ArrayList;D)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/zjx/jyandroid/Extensions/pubg/g;->k(Ljava/util/ArrayList;D)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/zjx/jyandroid/Extensions/pubg/g;IIIIII)Lcom/zjx/jyandroid/Extensions/pubg/g$f;
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/zjx/jyandroid/Extensions/pubg/g;->h(IIIIII)Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/zjx/jyandroid/Extensions/pubg/g;)Lcom/zjx/jyandroid/Extensions/pubg/d;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    return-object p0
.end method

.method public static synthetic d(Lcom/zjx/jyandroid/Extensions/pubg/g;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static f()Ljava/util/Map;
    .locals 17
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

    const-string v1, "dataVersion"

    const-string v2, "0.0.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "global_sensitivity_type"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "name"

    const-string v3, "\u9ed8\u8ba4\u914d\u7f6e"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "recoil_value_coefficient"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "sensitivity"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$c;->k()Z

    move-result v3

    invoke-static {v3}, Lcom/zjx/jyandroid/Extensions/pubg/d;->A(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "share_code"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    const-string v5, "split_gesture_data"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "version"

    const-string v5, "0.0.5"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "recoil_data"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v4

    :goto_0
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->values()[Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    move-result-object v6

    array-length v6, v6

    add-int/2addr v6, v2

    if-ge v5, v6, :cond_2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v8, v4

    :goto_1
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->values()[Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    move-result-object v9

    array-length v9, v9

    add-int/2addr v9, v1

    if-ge v8, v9, :cond_1

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    new-instance v11, Ljava/lang/Double;

    const-wide v12, 0x3fecccccc0000000L    # 0.8999999761581421

    invoke-direct {v11, v12, v13}, Ljava/lang/Double;-><init>(D)V

    const-string v14, "compensatorMuzzle"

    invoke-interface {v10, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Ljava/lang/Double;

    const-wide v14, 0x3fe99999a0000000L    # 0.800000011920929

    invoke-direct {v11, v14, v15}, Ljava/lang/Double;-><init>(D)V

    const-string v14, "crouch"

    invoke-interface {v10, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Ljava/lang/Double;

    invoke-direct {v11, v12, v13}, Ljava/lang/Double;-><init>(D)V

    const-string v14, "flashHidderMuzzle"

    invoke-interface {v10, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Ljava/lang/Double;

    invoke-direct {v11, v12, v13}, Ljava/lang/Double;-><init>(D)V

    const-string v14, "generalStock"

    invoke-interface {v10, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Ljava/lang/Double;

    const-wide v14, 0x3fedc28f60000000L    # 0.9300000071525574

    invoke-direct {v11, v14, v15}, Ljava/lang/Double;-><init>(D)V

    const-string v14, "halfGrip"

    invoke-interface {v10, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Ljava/lang/Double;

    const-wide v14, 0x3fef0a3d80000000L    # 0.9700000286102295

    invoke-direct {v11, v14, v15}, Ljava/lang/Double;-><init>(D)V

    const-string v1, "horizontalGrip"

    invoke-interface {v10, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Double;

    move-object/from16 v16, v3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    const-string v4, "laserGrip"

    invoke-interface {v10, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, v14, v15}, Ljava/lang/Double;-><init>(D)V

    const-string v4, "lightGrip"

    invoke-interface {v10, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Double;

    const-wide v14, 0x3fe3333340000000L    # 0.6000000238418579

    invoke-direct {v1, v14, v15}, Ljava/lang/Double;-><init>(D)V

    const-string v4, "prone"

    invoke-interface {v10, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    const-string v4, "stand"

    invoke-interface {v10, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    const-string v2, "suppressorMuzzle"

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, v12, v13}, Ljava/lang/Double;-><init>(D)V

    const-string v2, "thumbGrip"

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Double;

    const-wide v2, 0x3fea8f5c20000000L    # 0.8299999833106995

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    const-string v2, "verticalGrip"

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$b;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "gesture"

    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$c;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "grip"

    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$d;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "muzzle"

    invoke-interface {v9, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "scope"

    invoke-interface {v9, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "stock"

    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x0

    if-nez v5, :cond_0

    move-wide v3, v1

    goto :goto_2

    :cond_0
    const-wide v3, 0x4046800000000000L    # 45.0

    :goto_2
    new-instance v10, Ljava/util/ArrayList;

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    filled-new-array {v12}, [Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "recoilValue"

    invoke-interface {v9, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v16

    const/4 v1, 0x2

    const/16 v2, 0xa

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_1
    move-object/from16 v16, v3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "v"

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "coefficients"

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v16

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move-object v3, v2

    const/4 v1, 0x2

    const/16 v2, 0xa

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_2
    return-object v0
.end method

.method public static g(Ljava/util/ArrayList;)Lcom/zjx/jyandroid/Extensions/pubg/g$g;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;>;)",
            "Lcom/zjx/jyandroid/Extensions/pubg/g$g;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-direct {v1, v3, v5, v6}, Lcom/zjx/jyandroid/Extensions/pubg/g$g;-><init>(ID)V

    move-object v0, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    new-instance v5, Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->intValue()I

    move-result v6

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-direct {v5, v6, v7, v8}, Lcom/zjx/jyandroid/Extensions/pubg/g$g;-><init>(ID)V

    iput-object v5, v0, Lcom/zjx/jyandroid/Extensions/pubg/g$g;->c:Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    move-object v0, v5

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static k(Ljava/util/ArrayList;D)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;>;D)",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    mul-double/2addr v3, p1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/util/b;->R(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public final h(IIIIII)Lcom/zjx/jyandroid/Extensions/pubg/g$f;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g;->f:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    return-object p1
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g;->d:Z

    return v0
.end method

.method public j(Ljava/lang/String;)Z
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loading config at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ly/c;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/g;->g:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/g;->h:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Lcom/zjx/jyandroid/base/util/b;->L(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/g;->e:Ljava/util/Map;

    iput-object v0, v1, Lcom/zjx/jyandroid/Extensions/pubg/g;->c:Ljava/lang/String;

    const-string v0, "recoil_data"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v2, Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    invoke-direct {v2, v1}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/g;)V

    iput-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/g;->f:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    const/4 v3, 0x0

    :goto_0
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c$d;->values()[Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_e

    new-instance v4, Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    invoke-direct {v4, v1}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/g;)V

    iget-object v6, v1, Lcom/zjx/jyandroid/Extensions/pubg/g;->f:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    invoke-virtual {v4, v6}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->g(Lcom/zjx/jyandroid/Extensions/pubg/g$f;)V

    iget-object v6, v1, Lcom/zjx/jyandroid/Extensions/pubg/g;->f:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    invoke-virtual {v6, v4}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->a(Lcom/zjx/jyandroid/Extensions/pubg/g$f;)V

    const/4 v6, 0x0

    :goto_1
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c$c;->values()[Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_d

    new-instance v7, Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    invoke-direct {v7, v1}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/g;)V

    invoke-virtual {v7, v4}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->g(Lcom/zjx/jyandroid/Extensions/pubg/g$f;)V

    invoke-virtual {v4, v7}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->a(Lcom/zjx/jyandroid/Extensions/pubg/g$f;)V

    const/4 v8, 0x0

    :goto_2
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c$h;->values()[Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    move-result-object v9

    array-length v9, v9

    if-ge v8, v9, :cond_c

    new-instance v9, Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    invoke-direct {v9, v1}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/g;)V

    invoke-virtual {v9, v7}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->g(Lcom/zjx/jyandroid/Extensions/pubg/g$f;)V

    invoke-virtual {v7, v9}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->a(Lcom/zjx/jyandroid/Extensions/pubg/g$f;)V

    const/4 v10, 0x0

    :goto_3
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->values()[Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    move-result-object v11

    array-length v11, v11

    if-ge v10, v11, :cond_b

    new-instance v11, Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    invoke-direct {v11, v1}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/g;)V

    invoke-virtual {v11, v9}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->g(Lcom/zjx/jyandroid/Extensions/pubg/g$f;)V

    invoke-virtual {v9, v11}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->a(Lcom/zjx/jyandroid/Extensions/pubg/g$f;)V

    const/4 v12, 0x0

    :goto_4
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->values()[Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    move-result-object v13

    array-length v13, v13

    if-ge v12, v13, :cond_a

    new-instance v13, Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    invoke-direct {v13, v1}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/g;)V

    invoke-virtual {v13, v11}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->g(Lcom/zjx/jyandroid/Extensions/pubg/g$f;)V

    invoke-virtual {v11, v13}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->a(Lcom/zjx/jyandroid/Extensions/pubg/g$f;)V

    const/4 v14, 0x0

    :goto_5
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c$b;->values()[Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    move-result-object v15

    array-length v15, v15

    if-ge v14, v15, :cond_9

    new-instance v15, Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    invoke-direct {v15, v1}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/g;)V

    invoke-virtual {v15, v13}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->g(Lcom/zjx/jyandroid/Extensions/pubg/g$f;)V

    invoke-virtual {v13, v15}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->a(Lcom/zjx/jyandroid/Extensions/pubg/g$f;)V

    int-to-short v5, v14

    iput-short v5, v15, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->g:S

    int-to-short v5, v3

    iput-short v5, v15, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->i:S

    int-to-short v5, v6

    iput-short v5, v15, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->j:S

    int-to-short v5, v8

    iput-short v5, v15, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->k:S

    int-to-short v5, v10

    iput-short v5, v15, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->l:S

    int-to-short v5, v12

    iput-short v5, v15, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->h:S

    if-nez v10, :cond_0

    new-instance v5, Lcom/zjx/jyandroid/Extensions/pubg/g$a;

    invoke-direct {v5, v1}, Lcom/zjx/jyandroid/Extensions/pubg/g$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/g;)V

    iput-object v5, v15, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->n:Lcom/zjx/jyandroid/Extensions/pubg/g$d;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v17, 0x0

    move-object/from16 v19, v4

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v5, v15, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->d:Ljava/util/ArrayList;

    invoke-virtual {v15}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->e()V

    move-object/from16 v18, v0

    move-object/from16 v20, v7

    move-object/from16 v21, v9

    move/from16 v24, v10

    move-object/from16 v22, v11

    move-object/from16 v23, v13

    move-object v9, v1

    goto/16 :goto_b

    :cond_0
    move-object/from16 v19, v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v10, v2, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v2, v10, v2

    add-int/lit8 v2, v2, 0xa

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v2, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    invoke-static {v5}, Lmdm/RcPad;->copy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_1
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v4, "coefficients"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_8

    const-string v5, "v"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/16 v16, 0x0

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v20, v7

    const-string v7, "recoilValue"

    move-object/from16 v21, v9

    const-string v9, "gesture"

    move-object/from16 v22, v11

    const-string v11, "stock"

    move-object/from16 v23, v13

    const-string v13, "muzzle"

    move/from16 v24, v10

    const-string v10, "scope"

    const-string v1, "grip"

    if-eqz v16, :cond_3

    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v25, v5

    move-object/from16 v5, v16

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-nez v1, :cond_2

    if-ne v10, v12, :cond_2

    if-nez v13, :cond_2

    if-nez v11, :cond_2

    if-nez v9, :cond_2

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_8

    :catch_0
    move-exception v0

    move-object/from16 v9, p0

    goto/16 :goto_c

    :cond_2
    :goto_8
    move-object/from16 v1, p0

    move-object/from16 v7, v20

    move-object/from16 v9, v21

    move-object/from16 v11, v22

    move-object/from16 v13, v23

    move/from16 v10, v24

    move-object/from16 v5, v25

    goto :goto_7

    :cond_3
    iput-object v0, v15, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->e:Ljava/util/ArrayList;

    iput-object v4, v15, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->f:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v25, v0

    move-object/from16 v0, v16

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    move-object/from16 v26, v1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    move-object/from16 v27, v10

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    move-object/from16 v28, v13

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v13

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    move-object/from16 v29, v11

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    move-object/from16 v30, v9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-ne v1, v6, :cond_4

    if-ne v10, v12, :cond_4

    if-ne v13, v3, :cond_4

    if-ne v11, v8, :cond_4

    if-ne v9, v14, :cond_4

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v15, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->d:Ljava/util/ArrayList;

    invoke-virtual {v15}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->e()V

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/g$b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v9, p0

    move-object/from16 v10, v26

    :try_start_2
    invoke-direct {v1, v9, v15, v2, v0}, Lcom/zjx/jyandroid/Extensions/pubg/g$b;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/g;Lcom/zjx/jyandroid/Extensions/pubg/g$f;Ljava/util/ArrayList;Ljava/util/Map;)V

    iput-object v1, v15, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->n:Lcom/zjx/jyandroid/Extensions/pubg/g$d;

    const/4 v5, 0x1

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_c

    :cond_4
    move-object/from16 v9, p0

    move-object/from16 v10, v26

    :goto_a
    move-object v1, v10

    move-object/from16 v0, v25

    move-object/from16 v10, v27

    move-object/from16 v13, v28

    move-object/from16 v11, v29

    move-object/from16 v9, v30

    goto :goto_9

    :cond_5
    move-object/from16 v9, p0

    if-nez v5, :cond_6

    invoke-virtual {v15}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->e()V

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;

    invoke-direct {v0, v9, v15, v2, v4}, Lcom/zjx/jyandroid/Extensions/pubg/g$c;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/g;Lcom/zjx/jyandroid/Extensions/pubg/g$f;Ljava/util/ArrayList;Ljava/util/Map;)V

    iput-object v0, v15, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->n:Lcom/zjx/jyandroid/Extensions/pubg/g$d;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_6
    :goto_b
    add-int/lit8 v14, v14, 0x1

    move-object v1, v9

    move-object/from16 v0, v18

    move-object/from16 v4, v19

    move-object/from16 v7, v20

    move-object/from16 v9, v21

    move-object/from16 v11, v22

    move-object/from16 v13, v23

    move/from16 v10, v24

    goto/16 :goto_5

    :catch_2
    move-exception v0

    move-object v9, v1

    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ly/c;->b(Ljava/lang/String;)V

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/g$e;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v9, v0}, Lcom/zjx/jyandroid/Extensions/pubg/g$e;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/g;Ljava/lang/String;)V

    throw v1

    :cond_7
    move-object v9, v1

    move/from16 v24, v10

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/g$e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get values of the weapon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v24

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v9, v1}, Lcom/zjx/jyandroid/Extensions/pubg/g$e;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/g;Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v9, v1

    move v2, v10

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/g$e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get coefficient map of the weapon: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v9, v1}, Lcom/zjx/jyandroid/Extensions/pubg/g$e;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/g;Ljava/lang/String;)V

    throw v0

    :cond_9
    move-object/from16 v18, v0

    move-object/from16 v19, v4

    move-object/from16 v20, v7

    move-object/from16 v21, v9

    move v2, v10

    move-object/from16 v22, v11

    move-object v9, v1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v9, v21

    goto/16 :goto_4

    :cond_a
    move-object/from16 v18, v0

    move-object/from16 v19, v4

    move-object/from16 v20, v7

    move-object/from16 v21, v9

    move v2, v10

    move-object v9, v1

    add-int/lit8 v10, v2, 0x1

    move-object/from16 v9, v21

    goto/16 :goto_3

    :cond_b
    move-object/from16 v18, v0

    move-object v9, v1

    move-object/from16 v19, v4

    move-object/from16 v20, v7

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :cond_c
    move-object/from16 v18, v0

    move-object v9, v1

    move-object/from16 v19, v4

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_d
    move-object/from16 v18, v0

    move-object v9, v1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_e
    move-object v9, v1

    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/zjx/jyandroid/Extensions/pubg/g;->d:Z

    return v0
.end method
