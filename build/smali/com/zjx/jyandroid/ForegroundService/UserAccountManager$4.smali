.class Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->k(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$LoginCompleteHandler;)V
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
.field final synthetic this$0:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;

.field final synthetic val$loginCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$LoginCompleteHandler;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$LoginCompleteHandler;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$4;->this$0:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$4;->val$loginCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$LoginCompleteHandler;

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

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$4;->onResponse(Ljava/lang/String;)V

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
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$4;->val$loginCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$LoginCompleteHandler;

    if-eqz p1, :cond_0

    .line 4
    new-instance v1, Lcom/zjx/jyandroid/base/MError;

    const-wide v2, -0x1d937dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zjx/jyandroid/R$integer;->http_decryption_error:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->q(I)I

    move-result v3

    new-instance v4, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v5, -0x1d9d7dacc755L

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/zjx/jyandroid/R$string;->http_decryption_error:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p1, v1, v0}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$LoginCompleteHandler;->loginCompleted(Lcom/zjx/jyandroid/base/MError;Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;)V

    :cond_0
    return-void

    :cond_1
    const-wide v1, -0x1da47dacc755L

    .line 5
    :try_start_0
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-wide v1, -0x1dac7dacc755L

    .line 6
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$4;->val$loginCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$LoginCompleteHandler;

    if-eqz v1, :cond_2

    .line 8
    new-instance v2, Lcom/zjx/jyandroid/base/MError;

    const-wide v3, -0x1db37dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v5, -0x1dbd7dacc755L

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, -0x1

    invoke-direct {v2, v3, p1, v4}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {v1, v2, v0}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$LoginCompleteHandler;->loginCompleted(Lcom/zjx/jyandroid/base/MError;Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-wide v1, -0x1dc47dacc755L

    .line 9
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide v1, -0x1dcd7dacc755L

    .line 10
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-wide v2, -0x1dd87dacc755L

    .line 11
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v5

    const-wide v2, -0x1de07dacc755L

    .line 12
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 13
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$4;->this$0:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;

    invoke-virtual {p1, v8}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->m(Ljava/lang/String;)V

    .line 14
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;

    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$4;->this$0:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;

    int-to-long v6, v1

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;-><init>(Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$4;->this$0:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;

    invoke-static {v1, p1}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->b(Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;)Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;

    .line 16
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$4;->this$0:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->c(Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$4;->val$loginCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$LoginCompleteHandler;

    if-eqz v1, :cond_4

    .line 18
    invoke-interface {v1, v0, p1}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$LoginCompleteHandler;->loginCompleted(Lcom/zjx/jyandroid/base/MError;Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;)V

    .line 19
    :cond_4
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$4;->this$0:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;

    invoke-static {p1}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->d(Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;)V

    return-void

    .line 20
    :goto_1
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$4;->val$loginCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$LoginCompleteHandler;

    if-eqz v1, :cond_5

    .line 21
    new-instance v2, Lcom/zjx/jyandroid/base/MError;

    const-wide v3, -0x1ded7dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/zjx/jyandroid/R$integer;->http_response_error:I

    invoke-static {v4}, Lcom/zjx/jyandroid/base/util/b;->q(I)I

    move-result v4

    new-instance v5, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v6, -0x1df77dacc755L

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

    const-wide v8, -0x1dfe7dacc755L

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

    invoke-interface {v1, v2, v0}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$LoginCompleteHandler;->loginCompleted(Lcom/zjx/jyandroid/base/MError;Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;)V

    :cond_5
    return-void
.end method
