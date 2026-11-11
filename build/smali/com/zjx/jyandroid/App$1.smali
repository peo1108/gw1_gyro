.class Lcom/zjx/jyandroid/App$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/App;->getMessageFromServer(Ljava/lang/String;Lcom/zjx/jyandroid/App$GetMessageTaskCompleteHandler;)V
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
.field final synthetic this$0:Lcom/zjx/jyandroid/App;

.field final synthetic val$taskCompleteHandler:Lcom/zjx/jyandroid/App$GetMessageTaskCompleteHandler;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/App;Lcom/zjx/jyandroid/App$GetMessageTaskCompleteHandler;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/App$1;->this$0:Lcom/zjx/jyandroid/App;

    iput-object p2, p0, Lcom/zjx/jyandroid/App$1;->val$taskCompleteHandler:Lcom/zjx/jyandroid/App$GetMessageTaskCompleteHandler;

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

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/App$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 5

    .line 2
    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->r(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/zjx/jyandroid/App$1;->val$taskCompleteHandler:Lcom/zjx/jyandroid/App$GetMessageTaskCompleteHandler;

    if-eqz v1, :cond_0

    .line 4
    const-string v2, "has_message"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "title"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "message"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, v2, v3, p1}, Lcom/zjx/jyandroid/App$GetMessageTaskCompleteHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    .line 5
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    iget-object p1, p0, Lcom/zjx/jyandroid/App$1;->val$taskCompleteHandler:Lcom/zjx/jyandroid/App$GetMessageTaskCompleteHandler;

    if-eqz p1, :cond_1

    .line 7
    new-instance v1, Lcom/zjx/jyandroid/base/MError;

    new-instance v2, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-string v3, "reason"

    const-string v4, "\u8fd4\u56de\u6570\u636e\u6709\u8bef"

    invoke-direct {v2, v3, v4}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "HttpError"

    const/4 v4, -0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0, v0}, Lcom/zjx/jyandroid/App$GetMessageTaskCompleteHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
