.class Lcom/zjx/jyandroid/ForegroundService/KeymapManager$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->s(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;)V
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

.field final synthetic val$keymapId:Ljava/lang/String;

.field final synthetic val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$28;->this$0:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$28;->val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;

    iput-object p3, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$28;->val$keymapId:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$28;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 8

    .line 2
    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->m(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$28;->val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;

    if-eqz p1, :cond_0

    .line 4
    new-instance v1, Lcom/zjx/jyandroid/base/MError;

    const-wide v2, -0x1f867dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zjx/jyandroid/R$integer;->http_decryption_error:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->q(I)I

    move-result v3

    new-instance v4, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v5, -0x1f907dacc755L

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/zjx/jyandroid/R$string;->http_decryption_error:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p1, v1, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V

    :cond_0
    return-void

    :cond_1
    const-wide v1, -0x1f977dacc755L

    .line 5
    :try_start_0
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-wide v1, -0x1f9f7dacc755L

    .line 6
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$28;->val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;

    if-eqz v1, :cond_2

    .line 8
    new-instance v2, Lcom/zjx/jyandroid/base/MError;

    const-wide v3, -0x1fa67dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v5, -0x1fb07dacc755L

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, -0x1

    invoke-direct {v2, v3, p1, v4}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {v1, v2, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_2
    :goto_0
    return-void

    .line 9
    :cond_3
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-wide v2, -0x1fb77dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 10
    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$28;->this$0:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$28;->val$keymapId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->l(Ljava/lang/String;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_4

    .line 11
    :try_start_1
    invoke-static {v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->q(Ljava/util/Map;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;

    move-result-object v3

    .line 12
    new-instance v4, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;

    invoke-direct {v4}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 13
    :try_start_2
    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$28;->val$keymapId:Ljava/lang/String;

    iput-object v2, v4, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;->id:Ljava/lang/String;

    const-wide v5, -0x1fbe7dacc755L

    .line 14
    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v4, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;->isOfficial:Z

    const-wide v5, -0x1fc97dacc755L

    .line 15
    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;->bundleId:Ljava/lang/String;

    .line 16
    iget-object p1, v3, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->name:Ljava/lang/String;

    iput-object p1, v4, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->name:Ljava/lang/String;

    .line 17
    iget p1, v3, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->componentCount:I

    iput p1, v4, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->componentCount:I

    .line 18
    iget-boolean p1, v3, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->forPhone:Z

    iput-boolean p1, v4, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->forPhone:Z

    const-wide v2, -0x1fd27dacc755L

    .line 19
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;->updateTime:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-object v2, v4

    .line 20
    :catch_2
    :cond_4
    :try_start_3
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

    invoke-direct {p1, v2, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;Ljava/util/Map;)V

    .line 21
    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$28;->this$0:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    invoke-static {v2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->a(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$28;->val$keymapId:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 22
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$28;->val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;

    if-eqz v1, :cond_5

    .line 23
    invoke-interface {v1, v0, p1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V

    :cond_5
    return-void

    .line 24
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$28;->val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;

    if-eqz p1, :cond_6

    .line 26
    new-instance v1, Lcom/zjx/jyandroid/base/MError;

    const-wide v2, -0x1fd97dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zjx/jyandroid/R$integer;->http_response_error:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->q(I)I

    move-result v3

    new-instance v4, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v5, -0x1fe37dacc755L

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/zjx/jyandroid/R$string;->http_response_error:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p1, v1, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V

    :cond_6
    return-void
.end method
