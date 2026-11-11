.class public Lcom/evrencoskun/tableview/handler/SelectionHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UNSELECTED_POSITION:I = -0x1


# instance fields
.field private final mCellLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mPreviousSelectedViewHolder:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;

.field private final mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mSelectedColumnPosition:I

.field private mSelectedRowPosition:I

.field private final mTableView:Lcom/evrencoskun/tableview/ITableView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private shadowEnabled:Z


# direct methods
.method public constructor <init>(Lcom/evrencoskun/tableview/ITableView;)V
    .locals 1
    .param p1    # Lcom/evrencoskun/tableview/ITableView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mSelectedRowPosition:I

    iput v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mSelectedColumnPosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->shadowEnabled:Z

    iput-object p1, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {p1}, Lcom/evrencoskun/tableview/ITableView;->getColumnHeaderRecyclerView()Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-interface {p1}, Lcom/evrencoskun/tableview/ITableView;->getRowHeaderRecyclerView()Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-interface {p1}, Lcom/evrencoskun/tableview/ITableView;->getCellLayoutManager()Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;

    move-result-object p1

    iput-object p1, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mCellLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;

    return-void
.end method

.method private changeVisibleCellViewsBackgroundForColumn(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v0}, Lcom/evrencoskun/tableview/ITableView;->getUnSelectedColor()I

    move-result v0

    sget-object v1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->UNSELECTED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {p2}, Lcom/evrencoskun/tableview/ITableView;->getSelectedColor()I

    move-result v0

    sget-object v1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->SELECTED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    :cond_0
    iget-object p2, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mCellLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    :goto_0
    iget-object v2, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mCellLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ge p2, v2, :cond_2

    iget-object v2, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mCellLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;

    invoke-virtual {v2, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setBackgroundColor(I)V

    invoke-virtual {v2, v1}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setSelected(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;)V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private changeVisibleCellViewsBackgroundForRow(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v0}, Lcom/evrencoskun/tableview/ITableView;->getUnSelectedColor()I

    move-result v0

    sget-object v1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->UNSELECTED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {p2}, Lcom/evrencoskun/tableview/ITableView;->getSelectedColor()I

    move-result v0

    sget-object v1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->SELECTED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    :cond_0
    iget-object p2, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mCellLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, v1, v0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->changeSelectionOfRecyclerView(Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;I)V

    return-void
.end method

.method private restorePreviousSelectedView()V
    .locals 3

    iget v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mSelectedColumnPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v2, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mSelectedRowPosition:I

    if-eq v2, v1, :cond_0

    invoke-direct {p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->unselectedCellView()V

    goto :goto_0

    :cond_0
    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->unselectedColumnHeader()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mSelectedRowPosition:I

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->unselectedRowHeader()V

    :cond_2
    :goto_0
    return-void
.end method

.method private selectedCellView()V
    .locals 3

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v0}, Lcom/evrencoskun/tableview/ITableView;->getShadowColor()I

    move-result v0

    iget-object v1, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    iget v2, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mSelectedRowPosition:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setBackgroundColor(I)V

    sget-object v2, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->SHADOWED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    invoke-virtual {v1, v2}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setSelected(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;)V

    :cond_0
    iget-object v1, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    iget v2, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mSelectedColumnPosition:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setBackgroundColor(I)V

    sget-object v0, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->SHADOWED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    invoke-virtual {v1, v0}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setSelected(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;)V

    :cond_1
    return-void
.end method

.method private selectedColumnHeader()V
    .locals 3

    iget v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mSelectedColumnPosition:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->changeVisibleCellViewsBackgroundForColumn(IZ)V

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    sget-object v1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->SHADOWED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    iget-object v2, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v2}, Lcom/evrencoskun/tableview/ITableView;->getShadowColor()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->changeSelectionOfRecyclerView(Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;I)V

    return-void
.end method

.method private selectedRowHeader()V
    .locals 3

    iget v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mSelectedRowPosition:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->changeVisibleCellViewsBackgroundForRow(IZ)V

    iget-boolean v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->shadowEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    sget-object v1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->SHADOWED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    iget-object v2, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v2}, Lcom/evrencoskun/tableview/ITableView;->getShadowColor()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->changeSelectionOfRecyclerView(Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;I)V

    :cond_0
    return-void
.end method

.method private unselectedCellView()V
    .locals 3

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v0}, Lcom/evrencoskun/tableview/ITableView;->getUnSelectedColor()I

    move-result v0

    iget-object v1, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    iget v2, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mSelectedRowPosition:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setBackgroundColor(I)V

    sget-object v2, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->UNSELECTED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    invoke-virtual {v1, v2}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setSelected(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;)V

    :cond_0
    iget-object v1, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    iget v2, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mSelectedColumnPosition:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setBackgroundColor(I)V

    sget-object v0, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->UNSELECTED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    invoke-virtual {v1, v0}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setSelected(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;)V

    :cond_1
    return-void
.end method

.method private unselectedColumnHeader()V
    .locals 3

    iget v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mSelectedColumnPosition:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->changeVisibleCellViewsBackgroundForColumn(IZ)V

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    sget-object v1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->UNSELECTED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    iget-object v2, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v2}, Lcom/evrencoskun/tableview/ITableView;->getUnSelectedColor()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->changeSelectionOfRecyclerView(Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;I)V

    return-void
.end method

.method private unselectedRowHeader()V
    .locals 3

    iget v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mSelectedRowPosition:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->changeVisibleCellViewsBackgroundForRow(IZ)V

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    sget-object v1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->UNSELECTED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    iget-object v2, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v2}, Lcom/evrencoskun/tableview/ITableView;->getUnSelectedColor()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->changeSelectionOfRecyclerView(Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;I)V

    return-void
.end method


# virtual methods
.method public changeColumnBackgroundColorBySelectionStatus(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;)V
    .locals 1
    .param p1    # Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->shadowEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->SHADOWED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {p2}, Lcom/evrencoskun/tableview/ITableView;->getShadowColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->SELECTED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {p2}, Lcom/evrencoskun/tableview/ITableView;->getSelectedColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {p2}, Lcom/evrencoskun/tableview/ITableView;->getUnSelectedColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public changeRowBackgroundColorBySelectionStatus(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;)V
    .locals 1
    .param p1    # Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->shadowEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->SHADOWED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {p2}, Lcom/evrencoskun/tableview/ITableView;->getShadowColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->SELECTED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {p2}, Lcom/evrencoskun/tableview/ITableView;->getSelectedColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {p2}, Lcom/evrencoskun/tableview/ITableView;->getUnSelectedColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public changeSelectionOfRecyclerView(Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;I)V
    .locals 4
    .param p2    # Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v3}, Lcom/evrencoskun/tableview/ITableView;->isIgnoreSelectionColors()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p3}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setBackgroundColor(I)V

    :cond_0
    invoke-virtual {v2, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setSelected(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public clearSelection()V
    .locals 0

    invoke-direct {p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->unselectedRowHeader()V

    invoke-direct {p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->unselectedCellView()V

    invoke-direct {p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->unselectedColumnHeader()V

    return-void
.end method

.method public getCellSelectionState(II)Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->isCellSelected(II)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->SELECTED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    return-object p1

    :cond_0
    sget-object p1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->UNSELECTED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    return-object p1
.end method

.method public getColumnSelectionState(I)Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->isColumnShadowed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->SHADOWED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->isColumnSelected(I)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->SELECTED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    return-object p1

    :cond_1
    sget-object p1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->UNSELECTED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    return-object p1
.end method

.method public getRowSelectionState(I)Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->isRowShadowed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->SHADOWED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->isRowSelected(I)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->SELECTED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    return-object p1

    :cond_1
    sget-object p1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->UNSELECTED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    return-object p1
.end method

.method public getSelectedColumnPosition()I
    .locals 1

    iget v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mSelectedColumnPosition:I

    return v0
.end method

.method public getSelectedRowPosition()I
    .locals 1

    iget v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mSelectedRowPosition:I

    return v0
.end method

.method public isAnyColumnSelected()Z
    .locals 2

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->getSelectedColumnPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->getSelectedRowPosition()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCellSelected(II)Z
    .locals 1

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->getSelectedColumnPosition()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->getSelectedRowPosition()I

    move-result v0

    if-eq v0, p2, :cond_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->isColumnSelected(I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->isRowSelected(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isColumnSelected(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->getSelectedColumnPosition()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->getSelectedRowPosition()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isColumnShadowed(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->getSelectedColumnPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->getSelectedRowPosition()I

    move-result p1

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->getSelectedColumnPosition()I

    move-result p1

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->getSelectedRowPosition()I

    move-result p1

    if-eq p1, v1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isRowSelected(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->getSelectedRowPosition()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->getSelectedColumnPosition()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isRowShadowed(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->getSelectedRowPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->getSelectedColumnPosition()I

    move-result p1

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->getSelectedRowPosition()I

    move-result p1

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->getSelectedColumnPosition()I

    move-result p1

    if-eq p1, v1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isShadowEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->shadowEnabled:Z

    return v0
.end method

.method public setPreviousSelectedView(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;)V
    .locals 3
    .param p1    # Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->restorePreviousSelectedView()V

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mPreviousSelectedViewHolder:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v1}, Lcom/evrencoskun/tableview/ITableView;->getUnSelectedColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mPreviousSelectedViewHolder:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;

    sget-object v1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->UNSELECTED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    invoke-virtual {v0, v1}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setSelected(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;)V

    :cond_0
    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mCellLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->getSelectedColumnPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->getSelectedRowPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->getCellViewHolder(II)Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v1}, Lcom/evrencoskun/tableview/ITableView;->getUnSelectedColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setBackgroundColor(I)V

    sget-object v1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->UNSELECTED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    invoke-virtual {v0, v1}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setSelected(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;)V

    :cond_1
    iput-object p1, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mPreviousSelectedViewHolder:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v0}, Lcom/evrencoskun/tableview/ITableView;->getSelectedColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mPreviousSelectedViewHolder:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;

    sget-object v0, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->SELECTED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    invoke-virtual {p1, v0}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setSelected(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;)V

    :cond_2
    return-void
.end method

.method public setSelectedCellPositions(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;II)V
    .locals 0
    .param p1    # Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->setPreviousSelectedView(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;)V

    iput p2, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mSelectedColumnPosition:I

    iput p3, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mSelectedRowPosition:I

    iget-boolean p1, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->shadowEnabled:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->selectedCellView()V

    :cond_0
    return-void
.end method

.method public setSelectedColumnPosition(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mSelectedColumnPosition:I

    return-void
.end method

.method public setSelectedColumnPosition(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;I)V
    .locals 0
    .param p1    # Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->setPreviousSelectedView(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;)V

    .line 2
    iput p2, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mSelectedColumnPosition:I

    .line 3
    invoke-direct {p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->selectedColumnHeader()V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mSelectedRowPosition:I

    return-void
.end method

.method public setSelectedRowPosition(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mSelectedRowPosition:I

    return-void
.end method

.method public setSelectedRowPosition(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;I)V
    .locals 0
    .param p1    # Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->setPreviousSelectedView(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;)V

    .line 2
    iput p2, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mSelectedRowPosition:I

    .line 3
    invoke-direct {p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->selectedRowHeader()V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->mSelectedColumnPosition:I

    return-void
.end method

.method public setShadowEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evrencoskun/tableview/handler/SelectionHandler;->shadowEnabled:Z

    return-void
.end method
