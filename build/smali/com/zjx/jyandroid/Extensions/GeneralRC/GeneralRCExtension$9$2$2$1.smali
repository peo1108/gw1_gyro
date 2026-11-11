.class Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2$1;->this$3:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;)V
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2$1;->this$3:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2;->this$1:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->access$700(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->unload()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2$1;->this$3:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2;->this$1:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->access$702(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;)Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2$1;->this$3:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2;->this$1:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->registerEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    return-void
.end method

.method public onSave(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2$1;->this$3:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2;->this$1:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->access$300(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->d()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2$1;->this$3:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2;->this$1:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->access$700(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->unload()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2$1;->this$3:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2;->this$1:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->access$702(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;)Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2$1;->this$3:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2;->this$1:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->access$300(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2$1;->this$3:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2;->val$selectedKeymapId:Ljava/lang/String;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2$1$1;

    invoke-direct {v1, p0, p2}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2$1$1;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension$9$2$2$1;Ljava/util/Map;)V

    invoke-virtual {p1, p2, v0, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->L(Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$UpdateKeymapCompletionHandler;)V

    return-void
.end method
