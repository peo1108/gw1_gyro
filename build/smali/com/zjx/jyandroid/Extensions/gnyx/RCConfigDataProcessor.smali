.class public Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;,
        Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlValueNode;,
        Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$ConfigValueUpdater;,
        Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$IncorrectFileFormatException;
    }
.end annotation


# instance fields
.field public configRoot:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private filePath:Ljava/lang/String;

.field private loaded:Z

.field private pubgExtension:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

.field public recoilControlDataNodeRoot:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

.field private sameSourceNodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;>;",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;",
            ">;>;"
        }
    .end annotation
.end field

.field private sameSourceNodeMapNoRemove:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;>;",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;",
            ">;>;"
        }
    .end annotation
.end field

.field public final splitGestureData:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->loaded:Z

    .line 4
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->splitGestureData:Z

    .line 5
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object p1

    const-class v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->pubgExtension:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    return-void
.end method

.method public static synthetic access$000(Ljava/util/ArrayList;D)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->multiplyDataArrayByCoefficient(Ljava/util/ArrayList;D)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;IIIIII)Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->getDataNode(IIIIII)Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->pubgExtension:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public static generateValueNodes(Ljava/util/ArrayList;)Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlValueNode;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;>;)",
            "Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlValueNode;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlValueNode;

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

    invoke-direct {v1, v3, v5, v6}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlValueNode;-><init>(ID)V

    move-object v0, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    new-instance v5, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlValueNode;

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

    invoke-direct {v5, v6, v7, v8}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlValueNode;-><init>(ID)V

    iput-object v5, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlValueNode;->next:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlValueNode;

    move-object v0, v5

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getDataNode(IIIIII)Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->recoilControlDataNodeRoot:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->children:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->children:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->children:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->children:Ljava/util/ArrayList;

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->children:Ljava/util/ArrayList;

    invoke-virtual {p1, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    return-object p1
.end method

.method private static multiplyDataArrayByCoefficient(Ljava/util/ArrayList;D)Ljava/util/ArrayList;
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

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    mul-double/2addr v3, p1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

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
.method public flushConfigToFile()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->configRoot:Ljava/util/Map;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/util/b;->R(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public isLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->loaded:Z

    return v0
.end method

.method public load(Ljava/lang/String;)Z
    .locals 30
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

    iput-object v2, v1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->sameSourceNodeMap:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->sameSourceNodeMapNoRemove:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Lcom/zjx/jyandroid/base/util/b;->L(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, v1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->configRoot:Ljava/util/Map;

    iput-object v0, v1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->filePath:Ljava/lang/String;

    const-string v0, "recoil_data"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v2, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    invoke-direct {v2, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;)V

    iput-object v2, v1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->recoilControlDataNodeRoot:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    const/4 v3, 0x0

    :goto_0
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;->values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_e

    new-instance v4, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    invoke-direct {v4, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;)V

    iget-object v6, v1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->recoilControlDataNodeRoot:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    invoke-virtual {v4, v6}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->setParent(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;)V

    iget-object v6, v1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->recoilControlDataNodeRoot:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    invoke-virtual {v6, v4}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->appendChild(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;)V

    const/4 v6, 0x0

    :goto_1
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;->values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_d

    new-instance v7, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    invoke-direct {v7, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;)V

    invoke-virtual {v7, v4}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->setParent(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;)V

    invoke-virtual {v4, v7}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->appendChild(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;)V

    const/4 v8, 0x0

    :goto_2
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    move-result-object v9

    array-length v9, v9

    if-ge v8, v9, :cond_c

    new-instance v9, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    invoke-direct {v9, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;)V

    invoke-virtual {v9, v7}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->setParent(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;)V

    invoke-virtual {v7, v9}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->appendChild(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;)V

    const/4 v10, 0x0

    :goto_3
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    move-result-object v11

    array-length v11, v11

    if-ge v10, v11, :cond_b

    new-instance v11, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    invoke-direct {v11, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;)V

    invoke-virtual {v11, v9}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->setParent(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;)V

    invoke-virtual {v9, v11}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->appendChild(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;)V

    const/4 v12, 0x0

    :goto_4
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;->values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    move-result-object v13

    array-length v13, v13

    if-ge v12, v13, :cond_a

    new-instance v13, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    invoke-direct {v13, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;)V

    invoke-virtual {v13, v11}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->setParent(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;)V

    invoke-virtual {v11, v13}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->appendChild(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;)V

    const/4 v14, 0x0

    :goto_5
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;->values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    move-result-object v15

    array-length v15, v15

    if-ge v14, v15, :cond_9

    new-instance v15, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    invoke-direct {v15, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;)V

    invoke-virtual {v15, v13}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->setParent(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;)V

    invoke-virtual {v13, v15}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->appendChild(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;)V

    int-to-short v2, v14

    iput-short v2, v15, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->gesture:S

    int-to-short v2, v3

    iput-short v2, v15, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->muzzle:S

    int-to-short v2, v6

    iput-short v2, v15, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->specialAccessory:S

    int-to-short v2, v8

    iput-short v2, v15, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->stock:S

    int-to-short v2, v10

    iput-short v2, v15, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->weapon:S

    int-to-short v2, v12

    iput-short v2, v15, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->scope:S

    sget-object v2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->Empty:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v10, v2, :cond_0

    new-instance v2, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$1;

    invoke-direct {v2, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;)V

    iput-object v2, v15, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->configUpdater:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$ConfigValueUpdater;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v16, 0x0

    move-object/from16 v18, v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v2, v15, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->referencedDataArray:Ljava/util/ArrayList;

    invoke-virtual {v15}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->refreshNow()V

    move-object/from16 v17, v0

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    move/from16 v23, v10

    move-object/from16 v21, v11

    move-object/from16 v22, v13

    move-object v9, v1

    goto/16 :goto_a

    :cond_0
    move-object/from16 v18, v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_8

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

    if-eqz v4, :cond_7

    const-string v5, "v"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/16 v16, 0x0

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v19, v7

    const-string v7, "recoilValue"

    move-object/from16 v20, v9

    const-string v9, "gesture"

    move-object/from16 v21, v11

    const-string v11, "stock"

    move-object/from16 v22, v13

    const-string v13, "muzzle"

    move/from16 v23, v10

    const-string v10, "scope"

    const-string v1, "special"

    if-eqz v16, :cond_2

    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v24, v5

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

    if-nez v1, :cond_1

    if-ne v10, v12, :cond_1

    if-nez v13, :cond_1

    if-nez v11, :cond_1

    if-nez v9, :cond_1

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_7

    :catch_0
    move-exception v0

    move-object/from16 v9, p0

    goto/16 :goto_b

    :cond_1
    :goto_7
    move-object/from16 v1, p0

    move-object/from16 v7, v19

    move-object/from16 v9, v20

    move-object/from16 v11, v21

    move-object/from16 v13, v22

    move/from16 v10, v23

    move-object/from16 v5, v24

    goto :goto_6

    :cond_2
    iput-object v0, v15, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->baseDataArray:Ljava/util/ArrayList;

    iput-object v4, v15, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->coefficientMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    move-object/from16 v25, v1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    move-object/from16 v26, v10

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    move-object/from16 v27, v13

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v13

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    move-object/from16 v28, v11

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    move-object/from16 v29, v9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-ne v1, v6, :cond_3

    if-ne v10, v12, :cond_3

    if-ne v13, v3, :cond_3

    if-ne v11, v8, :cond_3

    if-ne v9, v14, :cond_3

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v15, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->referencedDataArray:Ljava/util/ArrayList;

    invoke-virtual {v15}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->refreshNow()V

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v9, p0

    move-object/from16 v10, v25

    :try_start_2
    invoke-direct {v1, v9, v15, v2, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;Ljava/util/ArrayList;Ljava/util/Map;)V

    iput-object v1, v15, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->configUpdater:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$ConfigValueUpdater;

    const/4 v5, 0x1

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_b

    :cond_3
    move-object/from16 v9, p0

    move-object/from16 v10, v25

    :goto_9
    move-object v1, v10

    move-object/from16 v0, v24

    move-object/from16 v10, v26

    move-object/from16 v13, v27

    move-object/from16 v11, v28

    move-object/from16 v9, v29

    goto :goto_8

    :cond_4
    move-object/from16 v9, p0

    if-nez v5, :cond_5

    invoke-virtual {v15}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->refreshNow()V

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;

    invoke-direct {v0, v9, v15, v2, v4}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;Ljava/util/ArrayList;Ljava/util/Map;)V

    iput-object v0, v15, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->configUpdater:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$ConfigValueUpdater;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_5
    :goto_a
    add-int/lit8 v14, v14, 0x1

    move-object v1, v9

    move-object/from16 v0, v17

    move-object/from16 v4, v18

    move-object/from16 v7, v19

    move-object/from16 v9, v20

    move-object/from16 v11, v21

    move-object/from16 v13, v22

    move/from16 v10, v23

    goto/16 :goto_5

    :catch_2
    move-exception v0

    move-object v9, v1

    :goto_b
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

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$IncorrectFileFormatException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v9, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$IncorrectFileFormatException;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;Ljava/lang/String;)V

    throw v1

    :cond_6
    move-object v9, v1

    move/from16 v23, v10

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$IncorrectFileFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get values of the weapon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v9, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$IncorrectFileFormatException;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v9, v1

    move v2, v10

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$IncorrectFileFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get coefficient map of the weapon: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v9, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$IncorrectFileFormatException;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v9, v1

    move v2, v10

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$IncorrectFileFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Weapon array too short. Weapon: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v9, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$IncorrectFileFormatException;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;Ljava/lang/String;)V

    throw v0

    :cond_9
    move-object/from16 v17, v0

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    move v2, v10

    move-object/from16 v21, v11

    move-object v9, v1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v9, v20

    goto/16 :goto_4

    :cond_a
    move-object/from16 v17, v0

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    move v2, v10

    move-object v9, v1

    add-int/lit8 v10, v2, 0x1

    move-object/from16 v9, v20

    goto/16 :goto_3

    :cond_b
    move-object/from16 v17, v0

    move-object v9, v1

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :cond_c
    move-object/from16 v17, v0

    move-object v9, v1

    move-object/from16 v18, v4

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_d
    move-object/from16 v17, v0

    move-object v9, v1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_e
    move-object v9, v1

    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->loaded:Z

    return v0
.end method
