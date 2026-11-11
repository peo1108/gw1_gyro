.class Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$SetSelectedKeymapCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$2;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$2$2;->this$3:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$2$2;->this$3:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$2;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$2;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->selectButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Select current RC data failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/zjx/jyandroid/base/util/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/zjx/jyandroid/R$string;->rc_data_manage_view_text34:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/zjx/jyandroid/base/MError;->userInfo:Ljava/util/Map;

    const-string v2, "reason"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v0, p1, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void

    :cond_0
    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->rc_data_manage_view_text31:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->b:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$2$2;->this$3:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$2;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$2;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->this$1:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter;->baseView:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;->access$000(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;)V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object p1

    const-class v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->onPause()V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->onResume()V

    return-void
.end method
