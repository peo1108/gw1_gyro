.class Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$2;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/util/LinkedList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zjx/jyandroid/base/MError;",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$2;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$900(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p1

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$c;->k()Z

    move-result p2

    invoke-static {p2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->getDefaultRcConfigShareCode(Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->rcConfigBundleId()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$2$1;

    const-string v1, "\u81ea\u52a8\u521b\u5efa\u538b\u67aa\u6570\u636e\u5931\u8d25\uff0c\u9700\u624b\u52a8\u521b\u5efa\u540e\u91cd\u65b0\u5f00\u542f\u667a\u80fd\u8bc6\u522b"

    invoke-direct {v0, p0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$2$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$2;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->g(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;)V

    return-void

    :cond_0
    new-instance p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$2$2;

    invoke-direct {p1, p0, p3}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$2$2;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$2;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
