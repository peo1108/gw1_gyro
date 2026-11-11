.class Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$1;
.super Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView$MapPanelViewAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$1;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCMapPanelView$MapPanelViewAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddFingerRegionButtonClicked(Landroid/widget/Button;)V
    .locals 3

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$1;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;

    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x12c

    const/16 v2, 0x258

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->access$000(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onAddFireRegionButtonClicked(Landroid/widget/Button;)V
    .locals 5

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$1;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;

    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x1f4

    const/16 v2, 0x384

    const/16 v3, 0x12c

    const/16 v4, 0x2bc

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->access$100(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onExitButtonClicked(Landroid/widget/Button;)V
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$1;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;

    iget-object v0, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->actionHandler:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$ActionHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$ActionHandler;->onCancel(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;)V

    :cond_0
    return-void
.end method

.method public onResetButtonClicked(Landroid/widget/Button;)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$1;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->clear()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$1;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->addComponentsAtDefaultPlaces()V

    return-void
.end method

.method public onSaveButtonClicked(Landroid/widget/Button;)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$1;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;

    iget-object v0, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->actionHandler:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$ActionHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->getKeymapComponentData()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$ActionHandler;->onSave(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
