.class Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4;

.field final synthetic val$originalFlag:I

.field final synthetic val$originalHeight:I

.field final synthetic val$originalWidth:I


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4$1;->this$1:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4;

    iput p2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4$1;->val$originalWidth:I

    iput p3, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4$1;->val$originalHeight:I

    iput p4, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4$1;->val$originalFlag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionTriggered(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4$1;->this$1:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView;

    iget-object v0, p1, Lcom/zjx/jyandroid/base/BaseFloatingView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4$1;->val$originalWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4$1;->val$originalHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4$1;->val$originalFlag:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->updateWindowParams(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
