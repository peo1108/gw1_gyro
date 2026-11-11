.class Lcom/zjx/jyandroid/ForegroundService/KeymapManager$45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->E(Ljava/util/Map;ILjava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

.field final synthetic val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$45;->this$0:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$45;->val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 6

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$45;->val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/zjx/jyandroid/base/MError;

    const-wide v2, -0x21397dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v4, -0x21437dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, -0x1

    invoke-direct {v1, v2, p1, v3}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    const/4 p1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
