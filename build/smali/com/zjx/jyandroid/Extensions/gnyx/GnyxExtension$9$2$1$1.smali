.class Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2$1;->onSave(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2$1;

.field final synthetic val$keymapContent:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2$1;Ljava/util/Map;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2$1$1;->this$3:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2$1;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2$1$1;->val$keymapContent:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance p2, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->save_failed:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p2, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p2}, Lcom/zjx/jyandroid/base/util/a;->a()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error while uploading recognition map. error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2$1$1;->this$3:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2$1;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2$1;->this$2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$900(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p1

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2$1$1$1;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2$1$1$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2$1$1;)V

    invoke-virtual {p1, p2, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->D(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$SetSelectedKeymapCompletionHandler;)V

    return-void
.end method
