.class public Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecoilControlDataNode"
.end annotation


# instance fields
.field public configUpdater:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$ConfigValueUpdater;

.field private firstValueNode:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;

.field public name:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public needRefreshValueNode:Z

.field public referencedDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->name:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->needRefreshValueNode:Z

    return-void
.end method


# virtual methods
.method public getDataArray()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->firstValueNode:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;

    :goto_0
    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-wide v3, v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;->timeMillisecond:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v3, v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;->value:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;->next:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public declared-synchronized getFirstValueNode()Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->needRefreshValueNode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->refreshNow()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->firstValueNode:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized refreshNow()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->referencedDataArray:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->generateValueNodes(Ljava/util/ArrayList;)Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->firstValueNode:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->needRefreshValueNode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
