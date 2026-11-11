.class Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1;

.field final synthetic val$keymapId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1;->val$keymapId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Download RC data failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1;

    iget-object p2, p2, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1;->val$errorPrompt:Ljava/lang/String;

    sget-object v0, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, p2, v0}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p2, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;->content:Ljava/util/Map;

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1;->val$keymapId:Ljava/lang/String;

    invoke-static {p2}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->getRcConfigPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zjx/jyandroid/base/util/b;->R(Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1;->this$1:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->access$000(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p1

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1;->val$keymapId:Ljava/lang/String;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1$1;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1$1;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1;)V

    invoke-virtual {p1, p2, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->D(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$SetSelectedKeymapCompletionHandler;)V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to write rc config to file: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1$1;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1;

    iget-object p2, p2, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$1$1;->val$errorPrompt:Ljava/lang/String;

    sget-object v0, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, p2, v0}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void
.end method
