.class Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView;

.field final synthetic val$generalRCExtension:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView;Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4;->val$generalRCExtension:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4;->val$generalRCExtension:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->getRcPerformer()Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->adjust_rc_value_floating_panel_text2:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    const-string p1, "Unable to get rc performer"

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->getCurrentDataNode()Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->adjust_rc_value_floating_panel_text2:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    const-string p1, "Unable to get current data node"

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView;

    iget-object p1, p1, Lcom/zjx/jyandroid/base/BaseFloatingView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x10e

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView;

    iget-object p1, p1, Lcom/zjx/jyandroid/base/BaseFloatingView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0xc8

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView;

    iget-object v0, p1, Lcom/zjx/jyandroid/base/BaseFloatingView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    and-int/lit8 v1, v6, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->updateWindowParams(Landroid/view/WindowManager$LayoutParams;)V

    new-instance p1, Lcom/zjx/jyandroid/base/Components/Alert;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView;

    sget v1, Lcom/zjx/jyandroid/R$string;->rename:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/zjx/jyandroid/R$string;->select_keymap_container_view_enter_name:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v0, v1, v3}, Lcom/zjx/jyandroid/base/Components/Alert;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/Components/Alert;->addTextField()Landroid/widget/EditText;

    move-result-object v3

    iget-object v0, v2, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v1, Lcom/zjx/jyandroid/R$string;->cancel:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v8, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4$1;

    invoke-direct {v8, p0, v4, v5, v6}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4$1;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4;III)V

    invoke-direct {v0, v1, v7, v8}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    new-instance v8, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v0, Lcom/zjx/jyandroid/R$string;->ok:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4$2;

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4$2;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustRCValueFloatingPanelView$4;Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;Landroid/widget/EditText;III)V

    invoke-direct {v8, v9, v7, v10}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {p1, v8}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/Components/Alert;->show()V

    return-void
.end method
