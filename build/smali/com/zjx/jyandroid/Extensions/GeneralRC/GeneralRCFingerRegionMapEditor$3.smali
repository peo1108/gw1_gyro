.class Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$3;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$3;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;

    iget-boolean v0, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->blockUnselectComponent:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->setSelectedComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$3;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;

    iput-boolean p2, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;->blockUnselectComponent:Z

    :cond_2
    :goto_0
    return p2
.end method
