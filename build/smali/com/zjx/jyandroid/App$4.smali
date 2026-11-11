.class Lcom/zjx/jyandroid/App$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/App;->getUpdateInfoFromServer(ILcom/zjx/jyandroid/App$GetUpdateInfoCompleteHandler;)V
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

.field final synthetic val$taskCompleteHandler:Lcom/zjx/jyandroid/App$GetUpdateInfoCompleteHandler;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/App;Lcom/zjx/jyandroid/App$GetUpdateInfoCompleteHandler;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/App$4;->this$0:Lcom/zjx/jyandroid/App;

    iput-object p2, p0, Lcom/zjx/jyandroid/App$4;->val$taskCompleteHandler:Lcom/zjx/jyandroid/App$GetUpdateInfoCompleteHandler;

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

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/App$4;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/zjx/jyandroid/base/util/b;->r(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, -0x1

    .line 3
    :try_start_0
    const-string v3, "has_update"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4
    const-string v3, "new_version_code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 5
    const-string v4, "update_content"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    const-string v5, "file_url"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 7
    const-string v7, "force_update"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v10, v1

    move v7, v3

    move-object v8, v4

    move-object v9, v5

    goto :goto_0

    .line 8
    :cond_0
    const-string v1, ""

    const/4 v3, 0x0

    move-object v8, v1

    move-object v9, v8

    move v7, v2

    move v10, v3

    .line 9
    :goto_0
    :try_start_1
    iget-object v4, v0, Lcom/zjx/jyandroid/App$4;->val$taskCompleteHandler:Lcom/zjx/jyandroid/App$GetUpdateInfoCompleteHandler;

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    .line 10
    invoke-interface/range {v4 .. v10}, Lcom/zjx/jyandroid/App$GetUpdateInfoCompleteHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;ZILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    return-void

    .line 11
    :catch_0
    iget-object v11, v0, Lcom/zjx/jyandroid/App$4;->val$taskCompleteHandler:Lcom/zjx/jyandroid/App$GetUpdateInfoCompleteHandler;

    if-eqz v11, :cond_2

    .line 12
    new-instance v12, Lcom/zjx/jyandroid/base/MError;

    new-instance v1, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-string v3, "reason"

    const-string v4, "\u8fd4\u56de\u6570\u636e\u6709\u8bef"

    invoke-direct {v1, v3, v4}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "HttpError"

    invoke-direct {v12, v3, v2, v1}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    invoke-interface/range {v11 .. v17}, Lcom/zjx/jyandroid/App$GetUpdateInfoCompleteHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;ZILjava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method
