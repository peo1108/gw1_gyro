.class Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->fixConfigByShareCode(Ljava/lang/String;Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$FixConfigCompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$2;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$2;->val$taskCompleteHandler:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$FixConfigCompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$2;->val$taskCompleteHandler:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$FixConfigCompletionHandler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/zjx/jyandroid/base/MError;

    new-instance v2, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-string v3, "reason"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "HttpError"

    const/4 v3, -0x1

    invoke-direct {v1, p1, v3, v2}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    const/4 p1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$FixConfigCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
