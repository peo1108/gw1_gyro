.class Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->f(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$DepositCompleteHandler;)V
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

.field final synthetic val$depositCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$DepositCompleteHandler;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$DepositCompleteHandler;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$7;->this$0:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$7;->val$depositCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$DepositCompleteHandler;

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

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$7;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 11

    .line 2
    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->m(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-wide/16 v0, -0x1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$7;->val$depositCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$DepositCompleteHandler;

    if-eqz p1, :cond_0

    .line 4
    new-instance v2, Lcom/zjx/jyandroid/base/MError;

    const-wide v3, -0x12d57dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/zjx/jyandroid/R$integer;->http_decryption_error:I

    invoke-static {v4}, Lcom/zjx/jyandroid/base/util/b;->q(I)I

    move-result v4

    new-instance v5, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v6, -0x12df7dacc755L

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/zjx/jyandroid/R$string;->http_decryption_error:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p1, v2, v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$DepositCompleteHandler;->depositCompleted(Lcom/zjx/jyandroid/base/MError;J)V

    :cond_0
    return-void

    :cond_1
    const-wide v2, -0x12e67dacc755L

    .line 5
    :try_start_0
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-wide v2, -0x12ee7dacc755L

    .line 6
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$7;->val$depositCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$DepositCompleteHandler;

    if-eqz v2, :cond_2

    .line 8
    new-instance v3, Lcom/zjx/jyandroid/base/MError;

    const-wide v4, -0x12f57dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v6, -0x12ff7dacc755L

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, p1}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, -0x1

    invoke-direct {v3, v4, p1, v5}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {v2, v3, v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$DepositCompleteHandler;->depositCompleted(Lcom/zjx/jyandroid/base/MError;J)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-wide v2, -0x13067dacc755L

    .line 9
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 10
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$7;->this$0:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;

    invoke-static {p1}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->a(Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;)Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;

    move-result-object p1

    iput-wide v2, p1, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;->expireTime:J

    .line 11
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$7;->this$0:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->c(Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$7;->val$depositCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$DepositCompleteHandler;

    if-eqz p1, :cond_4

    .line 13
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$7;->this$0:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;

    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->a(Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;)Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;

    move-result-object v0

    iget-wide v0, v0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;->expireTime:J

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$DepositCompleteHandler;->depositCompleted(Lcom/zjx/jyandroid/base/MError;J)V

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$7;->this$0:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;

    invoke-static {p1}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->d(Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;)V

    return-void

    .line 15
    :goto_1
    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$7;->val$depositCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$DepositCompleteHandler;

    if-eqz v2, :cond_5

    .line 16
    new-instance v3, Lcom/zjx/jyandroid/base/MError;

    const-wide v4, -0x13147dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/zjx/jyandroid/R$integer;->http_response_error:I

    invoke-static {v5}, Lcom/zjx/jyandroid/base/util/b;->q(I)I

    move-result v5

    new-instance v6, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v7, -0x131e7dacc755L

    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/zjx/jyandroid/R$string;->http_response_error:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v9, -0x13257dacc755L

    invoke-static {v9, v10}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, v7, p1}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {v2, v3, v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$DepositCompleteHandler;->depositCompleted(Lcom/zjx/jyandroid/base/MError;J)V

    :cond_5
    return-void
.end method
