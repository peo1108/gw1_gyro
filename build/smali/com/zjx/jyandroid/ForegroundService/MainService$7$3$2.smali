.class Lcom/zjx/jyandroid/ForegroundService/MainService$7$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$SetSelectedKeymapCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/MainService$7$3;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/util/LinkedList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zjx/jyandroid/ForegroundService/MainService$7$3;

.field final synthetic val$finalShouldAutoSelectKeymapId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/MainService$7$3;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService$7$3$2;->this$2:Lcom/zjx/jyandroid/ForegroundService/MainService$7$3;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/MainService$7$3$2;->val$finalShouldAutoSelectKeymapId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while setting selected keymap. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    const-string v0, "\u81ea\u52a8\u9009\u62e9\u6620\u5c04\u5931\u8d25\uff0c\u8bf7\u624b\u52a8\u9009\u62e9\u6620\u5c04\u56fe"

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void

    :cond_0
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->J()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService$7$3$2;->val$finalShouldAutoSelectKeymapId:Ljava/lang/String;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/MainService$7$3$2$1;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/MainService$7$3$2$1;-><init>(Lcom/zjx/jyandroid/ForegroundService/MainService$7$3$2;)V

    invoke-virtual {p1, v0, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->r(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;)V

    return-void
.end method
