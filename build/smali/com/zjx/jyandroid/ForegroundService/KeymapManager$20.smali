.class Lcom/zjx/jyandroid/ForegroundService/KeymapManager$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->I(Ljava/util/List;ILjava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareMacroCompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

.field final synthetic val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareMacroCompletionHandler;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareMacroCompletionHandler;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$20;->this$0:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$20;->val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareMacroCompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$20;->val$taskCompleteHandler:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareMacroCompletionHandler;

    invoke-interface {v0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareMacroCompletionHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V

    return-void
.end method
