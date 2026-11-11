.class Lcom/zjx/jyandroid/ForegroundService/KeymapManager$17$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/KeymapManager$17;->onResponse(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$17;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$17;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$17$1;->this$1:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$17$1;->this$1:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$17;

    iget-object p2, p2, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$17;->val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;

    if-eqz p2, :cond_0

    new-instance v1, Lcom/zjx/jyandroid/base/MError;

    const-wide v2, -0x214a7dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v4, -0x21587dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v6, -0x215f7dacc755L

    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, -0x1

    invoke-direct {v1, v2, p1, v3}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p2, v1, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$17$1;->this$1:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$17;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$17;->val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0, p2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
