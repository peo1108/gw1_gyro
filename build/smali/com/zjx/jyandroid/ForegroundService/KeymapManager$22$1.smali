.class Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetConfigContentByIdCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22;->onResponse(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22;

.field final synthetic val$macroList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22$1;->this$1:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22$1;->val$macroList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22$1;->this$1:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22;->val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetPresetMacroListCompletionHandler;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/zjx/jyandroid/base/MError;

    const-wide v1, -0x25d57dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/R$integer;->http_response_error:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->q(I)I

    move-result v2

    new-instance v3, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v4, -0x25df7dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x25e67dacc755L

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p2, v1, v2, v3}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p1, p2, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetPresetMacroListCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Ljava/util/HashMap;

    invoke-virtual {p1, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-wide v1, -0x25ed7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$PresetMacroInfo;

    invoke-direct {v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$PresetMacroInfo;-><init>()V

    const-wide v2, -0x25fd7dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$PresetMacroInfo;->name:Ljava/lang/String;

    const-wide v2, -0x26027dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, v1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$PresetMacroInfo;->shareCode:Ljava/lang/String;

    iget-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22$1;->val$macroList:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22$1;->this$1:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22;->val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetPresetMacroListCompletionHandler;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22$1;->val$macroList:Ljava/util/List;

    invoke-interface {p1, v0, p2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetPresetMacroListCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/util/List;)V

    :cond_3
    return-void
.end method
