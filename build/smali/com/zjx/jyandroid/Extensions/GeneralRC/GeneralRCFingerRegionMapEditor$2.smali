.class Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Interfaces/MView$OnViewConfigurationChangedListener;


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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor$2;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFingerRegionMapEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/view/View;Landroid/content/res/Configuration;)V
    .locals 2

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->g()Landroid/util/Size;

    move-result-object p2

    check-cast p1, Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    iget-object v0, p1, Lcom/zjx/jyandroid/base/BaseFloatingView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->updateWindowParams(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onConfigurationWillChange(Landroid/view/View;Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method
