.class Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->onFloatingPanelDisplay(Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$1300(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->stop()V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->unregisterEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object p1

    invoke-virtual {p1}, Ll/b;->w()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;-><init>()V

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$1402(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$1400(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->load()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$1400(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    move-result-object p1

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$1;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;)V

    iput-object v0, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->actionHandler:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$ActionHandler;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->getRecognitionMapBundleId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$900(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2;

    invoke-direct {v1, p0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$2;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->t(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;)V

    return-void
.end method
