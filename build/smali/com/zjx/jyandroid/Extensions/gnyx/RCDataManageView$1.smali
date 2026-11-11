.class Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->fixConfigByShareCode(Ljava/lang/String;Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$FixConfigCompletionHandler;)V
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
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;

.field final synthetic val$taskCompleteHandler:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$FixConfigCompletionHandler;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$FixConfigCompletionHandler;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$1;->val$taskCompleteHandler:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$FixConfigCompletionHandler;

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

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 8

    .line 2
    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->m(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3
    const-string v0, "HttpError"

    const/4 v1, 0x0

    const-string v2, "reason"

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$1;->val$taskCompleteHandler:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$FixConfigCompletionHandler;

    if-eqz p1, :cond_0

    .line 5
    new-instance v3, Lcom/zjx/jyandroid/base/MError;

    sget v4, Lcom/zjx/jyandroid/R$integer;->http_decryption_error:I

    invoke-static {v4}, Lcom/zjx/jyandroid/base/util/b;->q(I)I

    move-result v4

    new-instance v5, Lcom/zjx/jyandroid/base/SingleElementMap;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/zjx/jyandroid/R$string;->http_decryption_error:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v3, v0, v4, v5}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p1, v3, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$FixConfigCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 6
    :cond_1
    :try_start_0
    const-string v3, "success"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 7
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$1;->val$taskCompleteHandler:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$FixConfigCompletionHandler;

    if-eqz v3, :cond_2

    .line 9
    new-instance v4, Lcom/zjx/jyandroid/base/MError;

    new-instance v5, Lcom/zjx/jyandroid/base/SingleElementMap;

    invoke-direct {v5, v2, p1}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, -0x1

    invoke-direct {v4, v0, p1, v5}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {v3, v4, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$FixConfigCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 10
    :cond_3
    const-string v3, "share_code"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$1;->val$taskCompleteHandler:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$FixConfigCompletionHandler;

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {v0, v1, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$FixConfigCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_4
    return-void

    .line 13
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$1;->val$taskCompleteHandler:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$FixConfigCompletionHandler;

    if-eqz p1, :cond_5

    .line 15
    new-instance v3, Lcom/zjx/jyandroid/base/MError;

    sget v4, Lcom/zjx/jyandroid/R$integer;->http_response_error:I

    invoke-static {v4}, Lcom/zjx/jyandroid/base/util/b;->q(I)I

    move-result v4

    new-instance v5, Lcom/zjx/jyandroid/base/SingleElementMap;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/zjx/jyandroid/R$string;->http_response_error:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v3, v0, v4, v5}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p1, v3, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$FixConfigCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_5
    return-void
.end method
