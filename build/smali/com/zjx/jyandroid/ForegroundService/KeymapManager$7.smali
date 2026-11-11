.class Lcom/zjx/jyandroid/ForegroundService/KeymapManager$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->j(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$DeleteKeymapCompletionHandler;)V
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

.field final synthetic val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$DeleteKeymapCompletionHandler;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$DeleteKeymapCompletionHandler;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$7;->this$0:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$7;->val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$DeleteKeymapCompletionHandler;

    iput-object p3, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$7;->val$keymapId:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$7;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 7

    .line 2
    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->m(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$7;->val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$DeleteKeymapCompletionHandler;

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Lcom/zjx/jyandroid/base/MError;

    const-wide v1, -0x26877dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/R$integer;->http_decryption_error:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->q(I)I

    move-result v2

    new-instance v3, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v4, -0x26917dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/zjx/jyandroid/R$string;->http_decryption_error:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$DeleteKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;)V

    :cond_0
    return-void

    :cond_1
    const-wide v0, -0x26987dacc755L

    .line 5
    :try_start_0
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-wide v0, -0x26a07dacc755L

    .line 6
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$7;->val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$DeleteKeymapCompletionHandler;

    if-eqz v0, :cond_2

    .line 8
    new-instance v1, Lcom/zjx/jyandroid/base/MError;

    const-wide v2, -0x26a77dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v4, -0x26b17dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, -0x1

    invoke-direct {v1, v2, p1, v3}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$DeleteKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$7;->this$0:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    invoke-static {p1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->b(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10
    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$7;->this$0:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    invoke-static {v2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->b(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$BundleInfo;

    .line 11
    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$BundleInfo;->keymapInfoList:Ljava/util/LinkedList;

    .line 12
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;

    .line 13
    iget-object v4, v3, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;->id:Ljava/lang/String;

    iget-object v5, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$7;->val$keymapId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_6
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_4

    .line 14
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 15
    :cond_7
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$7;->val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$DeleteKeymapCompletionHandler;

    if-eqz p1, :cond_8

    .line 16
    invoke-interface {p1, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$DeleteKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;)V

    :cond_8
    return-void

    .line 17
    :catch_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$7;->val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$DeleteKeymapCompletionHandler;

    if-eqz p1, :cond_9

    .line 18
    new-instance v0, Lcom/zjx/jyandroid/base/MError;

    const-wide v1, -0x26b87dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/R$integer;->http_response_error:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->q(I)I

    move-result v2

    new-instance v3, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v4, -0x26c27dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/zjx/jyandroid/R$string;->http_response_error:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$DeleteKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;)V

    :cond_9
    return-void
.end method
