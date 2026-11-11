.class Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1$5;->this$3:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionTriggered(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1$5;->this$3:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;->this$2:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->deleteButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->rc_data_manage_view_deleting:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1$5;->this$3:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;->this$2:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;

    iget-object v0, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->privateKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->configId:Ljava/lang/String;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1$5$1;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1$5$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1$5;)V

    invoke-virtual {v0, p1, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->j(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$DeleteKeymapCompletionHandler;)V

    return-void
.end method
