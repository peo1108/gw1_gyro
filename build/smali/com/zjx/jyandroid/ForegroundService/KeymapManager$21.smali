.class Lcom/zjx/jyandroid/ForegroundService/KeymapManager$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetConfigByShareCodeCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->w(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetMacroByShareCodeCompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

.field final synthetic val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetMacroByShareCodeCompletionHandler;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetMacroByShareCodeCompletionHandler;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$21;->this$0:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$21;->val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetMacroByShareCodeCompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$21;->val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetMacroByShareCodeCompletionHandler;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1, v0, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetMacroByShareCodeCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Ljava/util/HashMap;

    invoke-virtual {p1, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-wide v1, -0x28187dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-wide v1, -0x281f7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$21;->val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetMacroByShareCodeCompletionHandler;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0, p2, p1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetMacroByShareCodeCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    return-void
.end method
