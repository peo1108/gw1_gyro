.class Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$1;
.super Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$ConfigValueUpdater;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->load(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;

.field final synthetic val$finalI:I

.field final synthetic val$node:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;

.field final synthetic val$recoilDataArray:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;Ljava/util/ArrayList;I)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$1;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$1;->val$node:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;

    iput-object p3, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$1;->val$recoilDataArray:Ljava/util/ArrayList;

    iput p4, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$1;->val$finalI:I

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$ConfigValueUpdater;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;)V

    return-void
.end method


# virtual methods
.method public canDeleteData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public delete()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$1;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->configRoot:Ljava/util/Map;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->access$100(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zjx/jyandroid/base/util/b;->R(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public rename(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    sget p1, Lcom/zjx/jyandroid/R$string;->no_name:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$1;->val$recoilDataArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$1;->val$finalI:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$1;->val$node:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;

    iput-object p1, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->name:Ljava/lang/String;

    return-void
.end method

.method public setDataArray(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$1;->val$node:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->referencedDataArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$1;->val$node:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->referencedDataArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$1;->val$node:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->refreshNow()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$1;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->access$000(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;)Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->refreshPanel()V

    return-void
.end method
