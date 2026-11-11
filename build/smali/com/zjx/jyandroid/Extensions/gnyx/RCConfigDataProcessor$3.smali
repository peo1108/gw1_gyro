.class Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;
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
.field newValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

.field final synthetic val$coefficientMap:Ljava/util/Map;

.field final synthetic val$gestureNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->val$gestureNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iput-object p3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->val$values:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->val$coefficientMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$ConfigValueUpdater;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;)V

    return-void
.end method


# virtual methods
.method public canDeleteData()Z
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->newValue:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public delete()V
    .locals 2

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->canDeleteData()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->val$values:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->newValue:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->val$gestureNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->referencedDataArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->refreshNow()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->access$200(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->refreshPanel()V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->newValue:Ljava/util/HashMap;

    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

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

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->newValue:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->val$coefficientMap:Ljava/util/Map;

    return-object v0
.end method

.method public setDataArray(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->newValue:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->newValue:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->val$gestureNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-short v1, v1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->specialAccessory:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "special"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->newValue:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->val$gestureNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-short v1, v1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->scope:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "scope"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->newValue:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->val$gestureNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-short v1, v1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->muzzle:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "muzzle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->newValue:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->val$gestureNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-short v1, v1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->stock:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "stock"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->newValue:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->val$gestureNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-short v1, v1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->gesture:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "gesture"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->newValue:Ljava/util/HashMap;

    const-string v1, "recoilValue"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->val$values:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->newValue:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->val$gestureNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iput-object p1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->referencedDataArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->refreshNow()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

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

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->val$gestureNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

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
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->val$gestureNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->refreshNow()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->access$200(Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->refreshPanel()V

    return-void
.end method
