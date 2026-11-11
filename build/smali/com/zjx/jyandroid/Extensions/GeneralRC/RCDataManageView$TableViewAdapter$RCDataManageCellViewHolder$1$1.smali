.class Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1$1;->this$3:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionTriggered(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1$1;->this$3:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->deleteButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->rc_data_manage_view_deleting:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1$1;->this$3:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->configId:Ljava/lang/String;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->getRcConfigPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->rc_data_manage_view_text6:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1$1;->this$3:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;

    iget-object v0, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->this$1:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;->pubgRelatedKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->configId:Ljava/lang/String;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1$1$1;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1$1$1;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->j(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$DeleteKeymapCompletionHandler;)V

    return-void
.end method
