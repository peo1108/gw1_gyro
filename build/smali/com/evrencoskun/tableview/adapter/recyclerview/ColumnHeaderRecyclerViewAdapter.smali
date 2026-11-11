.class public Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;
.super Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CH:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter<",
        "TCH;>;"
    }
.end annotation


# instance fields
.field private mColumnSortHelper:Lcom/evrencoskun/tableview/sort/ColumnSortHelper;

.field private final mTableAdapter:Lcom/evrencoskun/tableview/adapter/ITableAdapter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mTableView:Lcom/evrencoskun/tableview/ITableView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/evrencoskun/tableview/adapter/ITableAdapter;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/evrencoskun/tableview/adapter/ITableAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TCH;>;",
            "Lcom/evrencoskun/tableview/adapter/ITableAdapter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p3, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;->mTableAdapter:Lcom/evrencoskun/tableview/adapter/ITableAdapter;

    invoke-interface {p3}, Lcom/evrencoskun/tableview/adapter/ITableAdapter;->getTableView()Lcom/evrencoskun/tableview/ITableView;

    move-result-object p1

    iput-object p1, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    return-void
.end method


# virtual methods
.method public getColumnSortHelper()Lcom/evrencoskun/tableview/sort/ColumnSortHelper;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;->mColumnSortHelper:Lcom/evrencoskun/tableview/sort/ColumnSortHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/evrencoskun/tableview/sort/ColumnSortHelper;

    iget-object v1, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v1}, Lcom/evrencoskun/tableview/ITableView;->getColumnHeaderLayoutManager()Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evrencoskun/tableview/sort/ColumnSortHelper;-><init>(Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;)V

    iput-object v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;->mColumnSortHelper:Lcom/evrencoskun/tableview/sort/ColumnSortHelper;

    :cond_0
    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;->mColumnSortHelper:Lcom/evrencoskun/tableview/sort/ColumnSortHelper;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;->mTableAdapter:Lcom/evrencoskun/tableview/adapter/ITableAdapter;

    invoke-interface {v0, p1}, Lcom/evrencoskun/tableview/adapter/ITableAdapter;->getColumnHeaderItemViewType(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;->onBindViewHolder(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;I)V
    .locals 2
    .param p1    # Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;->mTableAdapter:Lcom/evrencoskun/tableview/adapter/ITableAdapter;

    invoke-virtual {p0, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Lcom/evrencoskun/tableview/adapter/ITableAdapter;->onBindColumnHeaderViewHolder(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;->mTableAdapter:Lcom/evrencoskun/tableview/adapter/ITableAdapter;

    invoke-interface {v0, p1, p2}, Lcom/evrencoskun/tableview/adapter/ITableAdapter;->onCreateColumnHeaderViewHolder(Landroid/view/ViewGroup;I)Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;

    invoke-virtual {p0, p1}, Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;->onViewAttachedToWindow(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;)V
    .locals 2
    .param p1    # Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 3
    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v0}, Lcom/evrencoskun/tableview/ITableView;->getSelectionHandler()Lcom/evrencoskun/tableview/handler/SelectionHandler;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->getColumnSelectionState(I)Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v1}, Lcom/evrencoskun/tableview/ITableView;->isIgnoreSelectionColors()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v1}, Lcom/evrencoskun/tableview/ITableView;->getSelectionHandler()Lcom/evrencoskun/tableview/handler/SelectionHandler;

    move-result-object v1

    .line 7
    invoke-virtual {v1, p1, v0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->changeColumnBackgroundColorBySelectionStatus(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;)V

    .line 8
    :cond_0
    invoke-virtual {p1, v0}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setSelected(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;)V

    .line 9
    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v0}, Lcom/evrencoskun/tableview/ITableView;->isSortable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    instance-of v0, p1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractSorterViewHolder;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;->getColumnSortHelper()Lcom/evrencoskun/tableview/sort/ColumnSortHelper;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/evrencoskun/tableview/sort/ColumnSortHelper;->getSortingStatus(I)Lcom/evrencoskun/tableview/sort/SortState;

    move-result-object v0

    .line 14
    check-cast p1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractSorterViewHolder;

    invoke-virtual {p1, v0}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractSorterViewHolder;->onSortingStatusChanged(Lcom/evrencoskun/tableview/sort/SortState;)V

    :cond_1
    return-void
.end method
