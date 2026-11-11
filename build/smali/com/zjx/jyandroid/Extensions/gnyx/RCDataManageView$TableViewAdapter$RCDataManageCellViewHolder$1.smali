.class Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;

.field final synthetic val$this$1:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;->this$2:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;->val$this$1:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;->this$2:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;

    iget-object v0, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->configId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->isCurrentSelectedData:Z

    if-eqz v0, :cond_1

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->rc_data_manage_view_text1:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->d:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void

    :cond_1
    iget-boolean v0, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->downloaded:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/zjx/jyandroid/base/Components/Alert;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;

    sget v1, Lcom/zjx/jyandroid/R$string;->rc_data_manage_view_text2:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/R$string;->rc_data_manage_view_text3:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/zjx/jyandroid/base/Components/Alert;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v1, Lcom/zjx/jyandroid/R$string;->rc_data_manage_view_text4:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DESTRUCTIVE:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1$1;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;)V

    invoke-direct {p1, v1, v2, v3}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    new-instance p1, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v1, Lcom/zjx/jyandroid/R$string;->rc_data_manage_view_text8:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1$2;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1$2;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;)V

    invoke-direct {p1, v1, v2, v3}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    new-instance p1, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v1, Lcom/zjx/jyandroid/R$string;->cancel:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1$3;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1$3;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;)V

    invoke-direct {p1, v1, v2, v3}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/Components/Alert;->show()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/zjx/jyandroid/base/Components/Alert;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;

    sget v1, Lcom/zjx/jyandroid/R$string;->rc_data_manage_view_text2:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/R$string;->rc_data_manage_view_text10:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/zjx/jyandroid/base/Components/Alert;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v1, Lcom/zjx/jyandroid/R$string;->cancel:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1$4;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1$4;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;)V

    invoke-direct {p1, v1, v2, v3}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    new-instance p1, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v1, Lcom/zjx/jyandroid/R$string;->ok:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DESTRUCTIVE:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1$5;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1$5;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;)V

    invoke-direct {p1, v1, v2, v3}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/Components/Alert;->show()V

    :goto_0
    return-void
.end method
