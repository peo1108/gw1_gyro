.class Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;
.super Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RCDataManageCellViewHolder"
.end annotation


# instance fields
.field buttonsTableLayout:Landroid/widget/TableLayout;

.field cellContainer:Landroid/view/View;

.field configId:Ljava/lang/String;

.field public deleteButton:Landroid/widget/Button;

.field downloaded:Z

.field headerTextView:Landroid/widget/TextView;

.field isCurrentSelectedData:Z

.field public renameButton:Landroid/widget/Button;

.field public selectButton:Landroid/widget/Button;

.field public selectedIndicator:Landroid/view/View;

.field public shareButton:Landroid/widget/Button;

.field statusTextView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;

.field public uploadButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;Landroid/view/View;)V
    .locals 2
    .param p1    # Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;

    invoke-direct {p0, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/zjx/jyandroid/R$id;->cellContainer:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->cellContainer:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->buttonsTableLayout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->buttonsTableLayout:Landroid/widget/TableLayout;

    sget v0, Lcom/zjx/jyandroid/R$id;->shareButton:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->shareButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/zjx/jyandroid/R$id;->uploadButton:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->uploadButton:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->renameButton:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->renameButton:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->deleteButton:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->deleteButton:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->selectButton:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->selectButton:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->headerTextView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->headerTextView:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->selectedIndicator:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->selectedIndicator:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->statusTextView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->statusTextView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->deleteButton:Landroid/widget/Button;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->selectButton:Landroid/widget/Button;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$2;

    invoke-direct {v0, p0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$2;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->shareButton:Landroid/widget/Button;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3;

    invoke-direct {v0, p0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->uploadButton:Landroid/widget/Button;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$4;

    invoke-direct {v0, p0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$4;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->renameButton:Landroid/widget/Button;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$5;

    invoke-direct {v0, p0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$5;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public applyDataModel(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$RCDataManageCellDataModel;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->headerTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$RCDataManageCellDataModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$RCDataManageCellDataModel;->configId:Ljava/lang/String;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->configId:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$RCDataManageCellDataModel;->downloaded:Z

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->downloaded:Z

    iget-boolean p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$RCDataManageCellDataModel;->isCurrentSelectedData:Z

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->isCurrentSelectedData:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->selectButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->selectedIndicator:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->selectButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->selectedIndicator:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->downloaded:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->statusTextView:Landroid/widget/TextView;

    sget v1, Lcom/zjx/jyandroid/R$string;->rc_data_manage_view_text36:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->statusTextView:Landroid/widget/TextView;

    sget v1, Lcom/zjx/jyandroid/R$color;->system_green:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->shareButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->uploadButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->renameButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->statusTextView:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$string;->rc_data_manage_view_text37:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->statusTextView:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$color;->white:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->shareButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->uploadButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->renameButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public setSelected(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;)V
    .locals 2
    .param p1    # Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setSelected(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;)V

    sget-object v0, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->UNSELECTED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    const/16 v1, 0x8

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->buttonsTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/zjx/jyandroid/R$color;->table_row_background_selected:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->buttonsTableLayout:Landroid/widget/TableLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->isCurrentSelectedData:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->deleteButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder;->deleteButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
