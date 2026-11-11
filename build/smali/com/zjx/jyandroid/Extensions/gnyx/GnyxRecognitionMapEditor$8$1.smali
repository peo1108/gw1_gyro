.class Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetConfigByShareCodeCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$8;->shouldImportByShareCode(Ljava/lang/String;Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$8;

.field final synthetic val$importButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$8;Landroid/widget/Button;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$8$1;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$8;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$8$1;->val$importButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$8$1;->val$importButton:Landroid/widget/Button;

    if-eqz p2, :cond_0

    const-string v0, "\u5bfc\u5165"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance p2, Lcom/zjx/jyandroid/base/util/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u65e0\u6cd5\u5bfc\u5165\u6620\u5c04\uff0c\u539f\u56e0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p2, p1, v0}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p2}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void

    :cond_1
    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    const-string v0, "\u5bfc\u5165\u6210\u529f"

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->b:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$8$1;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$8;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$8;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->access$300(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)V

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Ljava/util/HashMap;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$8$1;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$8;

    iget-object p2, p2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$8;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    invoke-virtual {p2, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->applyKeymapToComponentsHolderView(Ljava/util/Map;)V

    return-void
.end method
