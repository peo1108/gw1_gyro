.class public Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;,
        Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;,
        Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$OutdatedFileException;,
        Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$ConfigValueUpdater;,
        Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$IncorrectFileFormatException;
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

.field dataNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;",
            ">;"
        }
    .end annotation
.end field

.field dataNodesCrouch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;",
            ">;"
        }
    .end annotation
.end field

.field dataNodesProne:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;",
            ">;"
        }
    .end annotation
.end field

.field private filePath:Ljava/lang/String;

.field private generalRcExtension:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

.field private loaded:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->loaded:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->dataNodes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->dataNodesCrouch:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->dataNodesProne:Ljava/util/List;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v0

    const-class v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->generalRcExtension:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    return-void
.end method

.method public static synthetic access$000(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;)Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->generalRcExtension:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public static generateValueNodes(Ljava/util/ArrayList;)Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;>;)",
            "Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;

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

    invoke-direct {v1, v3, v5, v6}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;-><init>(ID)V

    move-object v0, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    new-instance v5, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;

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

    invoke-direct {v5, v6, v7, v8}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;-><init>(ID)V

    iput-object v5, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;->next:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlValueNode;

    move-object v0, v5

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getDataNode(I)Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->dataNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;

    return-object p1
.end method


# virtual methods
.method public flushConfigToFile()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->configRoot:Ljava/util/Map;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/util/b;->R(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public isLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->loaded:Z

    return v0
.end method

.method public load(Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loading config at path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->dataNodes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->dataNodesCrouch:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->dataNodesProne:Ljava/util/List;

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->L(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->configRoot:Ljava/util/Map;

    const-string v1, "version"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->configRoot:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "0.0.5"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->filePath:Ljava/lang/String;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->configRoot:Ljava/util/Map;

    const-string v0, "recoil_data"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_4

    move v2, v0

    :goto_1
    const/4 v4, 0x3

    if-ge v2, v4, :cond_3

    new-instance v4, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;

    invoke-direct {v4, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "v"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, v4, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->referencedDataArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "name"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->name:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->refreshNow()V

    if-nez v2, :cond_0

    iget-object v5, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->dataNodes:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    if-ne v2, v3, :cond_1

    iget-object v5, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->dataNodesCrouch:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    iget-object v5, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->dataNodesProne:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    new-instance v5, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$1;

    invoke-direct {v5, p0, v4, p1, v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$1;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;Ljava/util/ArrayList;I)V

    iput-object v5, v4, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->configUpdater:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$ConfigValueUpdater;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iput-boolean v3, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;->loaded:Z

    return v3

    :cond_5
    new-instance p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$OutdatedFileException;

    const-string v0, "\u538b\u67aa\u6570\u636e\u6587\u4ef6\u7248\u672c\u8fc7\u65e7\uff0c\u8bf7\u91cd\u65b0\u521b\u5efa\u6216\u5bfc\u5165\u4e00\u4e2a\u65b0\u538b\u67aa\u6570\u636e"

    invoke-direct {p1, p0, v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$OutdatedFileException;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor;Ljava/lang/String;)V

    throw p1
.end method
