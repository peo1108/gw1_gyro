.class Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;
.super Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$ConfigValueUpdater;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->load(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

.field final synthetic val$gestureNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

.field final synthetic val$value:Ljava/util/Map;

.field final synthetic val$values:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;->val$gestureNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iput-object p3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;->val$values:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;->val$value:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$ConfigValueUpdater;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;)V

    return-void
.end method

.method private isUsingBasicData()Z
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;->val$gestureNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-short v1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->muzzle:S

    if-nez v1, :cond_0

    iget-short v1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->specialAccessory:S

    if-nez v1, :cond_0

    iget-short v1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->stock:S

    if-nez v1, :cond_0

    iget-short v1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->gesture:S

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->referencedDataArray:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public canDeleteData()Z
    .locals 1

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;->isUsingBasicData()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public delete()V
    .locals 2

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;->canDeleteData()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;->val$values:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;->val$value:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;->val$gestureNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->referencedDataArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->refreshNow()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->access$200(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->refreshPanel()V

    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->configRoot:Ljava/util/Map;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->access$300(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zjx/jyandroid/base/util/b;->R(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public getCoefficientMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;->isUsingBasicData()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;->val$gestureNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->coefficientMap:Ljava/util/Map;

    return-object v0
.end method

.method public setDataArray(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;->val$gestureNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->referencedDataArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;->val$values:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;->val$value:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;->val$gestureNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;->val$value:Ljava/util/Map;

    const-string v2, "recoilValue"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->referencedDataArray:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;->val$gestureNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->referencedDataArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;->val$gestureNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->referencedDataArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;->isUsingBasicData()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    move v7, p1

    :goto_2
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;->values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    move-result-object v0

    array-length v0, v0

    if-ge v7, v0, :cond_5

    move v8, p1

    :goto_3
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;->values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

    move-result-object v0

    array-length v0, v0

    if-ge v8, v0, :cond_4

    move v9, p1

    :goto_4
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    move-result-object v0

    array-length v0, v0

    if-ge v9, v0, :cond_3

    move v10, p1

    :goto_5
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;->values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    move-result-object v0

    array-length v0, v0

    if-ge v10, v0, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;->val$gestureNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-short v4, v1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->weapon:S

    iget-short v5, v1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->scope:S

    move v1, v7

    move v2, v8

    move v3, v9

    move v6, v10

    invoke-static/range {v0 .. v6}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->access$100(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;IIIIII)Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->needRefreshValueNode:Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;->val$gestureNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->refreshNow()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->access$200(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->refreshPanel()V

    return-void
.end method

.method public updateSameSourceNodeValuesWithNewCoefficients()V
    .locals 12

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;->values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    move-result-object v1

    array-length v1, v1

    if-ge v8, v1, :cond_3

    move v9, v0

    :goto_1
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;->values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

    move-result-object v1

    array-length v1, v1

    if-ge v9, v1, :cond_2

    move v10, v0

    :goto_2
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    move-result-object v1

    array-length v1, v1

    if-ge v10, v1, :cond_1

    move v11, v0

    :goto_3
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;->values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    move-result-object v1

    array-length v1, v1

    if-ge v11, v1, :cond_0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$2;->val$gestureNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-short v5, v2, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->weapon:S

    iget-short v6, v2, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->scope:S

    move v2, v8

    move v3, v9

    move v4, v10

    move v7, v11

    invoke-static/range {v1 .. v7}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->access$100(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;IIIIII)Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->needRefreshValueNode:Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
