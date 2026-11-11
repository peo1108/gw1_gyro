.class Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$1;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)V
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$1;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$1300(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->start()V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$1;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->registerEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$1;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$1400(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->unload()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$1;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$1402(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    return-void
.end method

.method public onSave(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$1;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->access$1300(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->start()V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object p1

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9$1;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;

    iget-object p2, p2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension$9;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->registerEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    return-void
.end method
