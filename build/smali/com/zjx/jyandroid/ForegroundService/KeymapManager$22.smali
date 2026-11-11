.class Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->x(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetPresetMacroListCompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

.field final synthetic val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetPresetMacroListCompletionHandler;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetPresetMacroListCompletionHandler;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22;->this$0:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22;->val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetPresetMacroListCompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 8

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->m(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22;->val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetPresetMacroListCompletionHandler;

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Lcom/zjx/jyandroid/base/MError;

    const-wide v2, -0x22477dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zjx/jyandroid/R$integer;->http_decryption_error:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->q(I)I

    move-result v3

    new-instance v4, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v5, -0x22517dacc755L

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/zjx/jyandroid/R$string;->http_decryption_error:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v2, v3, v4}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p1, v0, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetPresetMacroListCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    const-wide v2, -0x22587dacc755L

    .line 6
    :try_start_0
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-wide v2, -0x22607dacc755L

    .line 7
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22;->val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetPresetMacroListCompletionHandler;

    if-eqz v0, :cond_2

    .line 9
    new-instance v2, Lcom/zjx/jyandroid/base/MError;

    const-wide v3, -0x22677dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v5, -0x22717dacc755L

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, -0x1

    invoke-direct {v2, v3, p1, v4}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {v0, v2, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetPresetMacroListCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/util/List;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_0
    return-void

    .line 10
    :cond_3
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-wide v3, -0x22787dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v3, Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 12
    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22;->this$0:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-wide v3, -0x22847dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22$1;

    invoke-direct {v3, p0, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22$1;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22;Ljava/util/List;)V

    invoke-virtual {v2, p1, v3}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->p(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetConfigContentByIdCompletionHandler;)V

    goto :goto_1

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22;->val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetPresetMacroListCompletionHandler;

    if-eqz p1, :cond_5

    .line 14
    invoke-interface {p1, v1, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetPresetMacroListCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    return-void

    .line 15
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$22;->val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetPresetMacroListCompletionHandler;

    if-eqz p1, :cond_6

    .line 17
    new-instance v0, Lcom/zjx/jyandroid/base/MError;

    const-wide v2, -0x228e7dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zjx/jyandroid/R$integer;->http_response_error:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->q(I)I

    move-result v3

    new-instance v4, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v5, -0x22987dacc755L

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/zjx/jyandroid/R$string;->http_response_error:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v2, v3, v4}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p1, v0, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetPresetMacroListCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/util/List;)V

    :cond_6
    return-void
.end method
