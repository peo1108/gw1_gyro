.class Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$4;
.super Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$MapPanelViewAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$4;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$MapPanelViewAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownButtonClicked(Landroid/widget/Button;)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$4;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->moveSelectedComponentRelative(II)V

    return-void
.end method

.method public onExitButtonClicked(Landroid/widget/Button;)V
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$4;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    iget-object v0, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->actionHandler:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$ActionHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$ActionHandler;->onCancel(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)V

    :cond_0
    return-void
.end method

.method public onLeftButtonClicked(Landroid/widget/Button;)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$4;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->moveSelectedComponentRelative(II)V

    return-void
.end method

.method public onPresetMapsButtonClicked(Landroid/widget/Button;)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$4;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->access$100(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)V

    return-void
.end method

.method public onResetButtonClicked(Landroid/widget/Button;)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$4;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->clear()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$4;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->addComponentsAtDefaultPlaces()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$4;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->resetWeaponAndScopeSizes()V

    return-void
.end method

.method public onRightButtonClicked(Landroid/widget/Button;)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$4;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->moveSelectedComponentRelative(II)V

    return-void
.end method

.method public onSaveButtonClicked(Landroid/widget/Button;)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$4;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    iget-object v0, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->actionHandler:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$ActionHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->getKeymapComponentData()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$ActionHandler;->onSave(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onShareButtonClicked(Landroid/widget/Button;)V
    .locals 4

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->J()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$4;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->getKeymapComponentData()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$4$1;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$4$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$4;)V

    const/4 v2, -0x1

    const-string v3, "rmg"

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->E(Ljava/util/Map;ILjava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;)V

    return-void
.end method

.method public onUpButtonClicked(Landroid/widget/Button;)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$4;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->moveSelectedComponentRelative(II)V

    return-void
.end method
