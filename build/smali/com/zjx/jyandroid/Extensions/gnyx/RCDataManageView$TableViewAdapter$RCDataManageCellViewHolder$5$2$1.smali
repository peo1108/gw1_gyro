.class Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$5$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$UpdateKeymapCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$5$2;->actionTriggered(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$5$2;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$5$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$5$2$1;->this$4:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$5$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$5$2$1;->this$4:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$5$2;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$5$2;->this$3:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$5;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$5;->this$2:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->renameButton:Landroid/widget/Button;

    sget v1, Lcom/zjx/jyandroid/R$string;->rename:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$5$2$1;->this$4:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$5$2;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$5$2;->this$3:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$5;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$5;->this$2:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->renameButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to update rc config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->rc_data_manage_view_upload_failed:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void

    :cond_0
    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->rename_success:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->b:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$5$2$1;->this$4:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$5$2;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$5$2;->this$3:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$5;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$5;->this$2:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->privateKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->y(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$5$2$1;->this$4:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$5$2;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$5$2;->this$3:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$5;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$5;->this$2:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;)V

    return-void
.end method
