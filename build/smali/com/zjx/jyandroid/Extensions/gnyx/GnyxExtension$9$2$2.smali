.class Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/util/LinkedList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2;

.field final synthetic val$selectedKeymapId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2$2;->this$2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2$2;->val$selectedKeymapId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance p2, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->pubg_extension_text8:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p2, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p2}, Lcom/zjx/jyandroid/base/util/a;->a()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error while pulling recognition map. error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2$2;->this$2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$1400(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->addComponentsAtDefaultPlaces()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2$2;->this$2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$1400(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    move-result-object p1

    iget-object p2, p2, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;->content:Ljava/util/Map;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->applyKeymapToComponentsHolderView(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2$2;->this$2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$1400(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    move-result-object p1

    new-instance p2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2$2$1;

    invoke-direct {p2, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2$2$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2$2;)V

    iput-object p2, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->actionHandler:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$ActionHandler;

    return-void
.end method
