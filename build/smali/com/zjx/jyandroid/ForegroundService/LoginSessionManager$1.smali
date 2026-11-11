.class Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->loginOrRegister(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$LoginCompletionHandleable;)V
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
.field final synthetic this$0:Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;

.field final synthetic val$handler:Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$LoginCompletionHandleable;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$LoginCompletionHandleable;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$1;->this$0:Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$1;->val$handler:Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$LoginCompletionHandleable;

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

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 10

    .line 2
    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->m(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$1;->val$handler:Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$LoginCompletionHandleable;

    if-eqz p1, :cond_0

    .line 4
    new-instance v1, Lcom/zjx/jyandroid/base/MError;

    const-wide v2, -0x27c67dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zjx/jyandroid/R$integer;->http_decryption_error:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->q(I)I

    move-result v3

    new-instance v4, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v5, -0x27d07dacc755L

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/zjx/jyandroid/R$string;->http_decryption_error:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p1, v1, v0}, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$LoginCompletionHandleable;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-wide v1, -0x27d77dacc755L

    .line 5
    :try_start_0
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-wide v1, -0x27df7dacc755L

    .line 6
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$1;->val$handler:Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$LoginCompletionHandleable;

    if-eqz v1, :cond_2

    .line 8
    new-instance v2, Lcom/zjx/jyandroid/base/MError;

    const-wide v3, -0x27e67dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v5, -0x27f07dacc755L

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, -0x1

    invoke-direct {v2, v3, p1, v4}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {v1, v2, v0}, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$LoginCompletionHandleable;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$1;->this$0:Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;

    const-wide v2, -0x27f77dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->loginToken:Ljava/lang/String;

    .line 10
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$1;->this$0:Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->alreadyLogin:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$1;->val$handler:Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$LoginCompletionHandleable;

    if-eqz v1, :cond_4

    .line 12
    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->loginToken:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$LoginCompletionHandleable;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_4
    return-void

    .line 13
    :goto_1
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$1;->val$handler:Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$LoginCompletionHandleable;

    if-eqz v1, :cond_5

    .line 14
    new-instance v2, Lcom/zjx/jyandroid/base/MError;

    const-wide v3, -0x28047dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/zjx/jyandroid/R$integer;->http_response_error:I

    invoke-static {v4}, Lcom/zjx/jyandroid/base/util/b;->q(I)I

    move-result v4

    new-instance v5, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v6, -0x280e7dacc755L

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/zjx/jyandroid/R$string;->http_response_error:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v8, -0x28157dacc755L

    invoke-static {v8, v9}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, v6, p1}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {v1, v2, v0}, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$LoginCompletionHandleable;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_5
    return-void
.end method
