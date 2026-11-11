.class Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$SetSelectedKeymapCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1$1;->this$3:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Select current RC data failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1$1;->this$3:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1;->val$errorPrompt:Ljava/lang/String;

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void

    :cond_0
    new-instance p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1$1$1;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1$1$1;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1$1;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
