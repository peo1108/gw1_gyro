.class public Lcom/evrencoskun/tableview/handler/ScrollHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCellLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mColumnHeaderLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mRowHeaderLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mTableView:Lcom/evrencoskun/tableview/ITableView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/evrencoskun/tableview/ITableView;)V
    .locals 1
    .param p1    # Lcom/evrencoskun/tableview/ITableView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evrencoskun/tableview/handler/ScrollHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {p1}, Lcom/evrencoskun/tableview/ITableView;->getCellLayoutManager()Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/evrencoskun/tableview/handler/ScrollHandler;->mCellLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;

    invoke-interface {p1}, Lcom/evrencoskun/tableview/ITableView;->getRowHeaderLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/evrencoskun/tableview/handler/ScrollHandler;->mRowHeaderLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-interface {p1}, Lcom/evrencoskun/tableview/ITableView;->getColumnHeaderLayoutManager()Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    move-result-object p1

    iput-object p1, p0, Lcom/evrencoskun/tableview/handler/ScrollHandler;->mColumnHeaderLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    return-void
.end method

.method private scrollCellHorizontally(II)V
    .locals 3

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/ScrollHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v0}, Lcom/evrencoskun/tableview/ITableView;->getCellLayoutManager()Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Lcom/evrencoskun/tableview/layoutmanager/ColumnLayoutManager;

    invoke-virtual {v2, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private scrollColumnHeader(II)V
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/ScrollHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v0}, Lcom/evrencoskun/tableview/ITableView;->getColumnHeaderLayoutManager()Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method


# virtual methods
.method public getColumnPosition()I
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/ScrollHandler;->mColumnHeaderLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    return v0
.end method

.method public getColumnPositionOffset()I
    .locals 2

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/ScrollHandler;->mColumnHeaderLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRowPosition()I
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/ScrollHandler;->mRowHeaderLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    return v0
.end method

.method public getRowPositionOffset()I
    .locals 2

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/ScrollHandler;->mRowHeaderLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public scrollToColumnPosition(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/ScrollHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/ScrollHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v0}, Lcom/evrencoskun/tableview/ITableView;->getHorizontalRecyclerViewListener()Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->setScrollPosition(I)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/evrencoskun/tableview/handler/ScrollHandler;->scrollColumnHeader(II)V

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/evrencoskun/tableview/handler/ScrollHandler;->scrollCellHorizontally(II)V

    return-void
.end method

.method public scrollToColumnPosition(II)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/ScrollHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/ScrollHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v0}, Lcom/evrencoskun/tableview/ITableView;->getHorizontalRecyclerViewListener()Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->setScrollPosition(I)V

    .line 7
    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/ScrollHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v0}, Lcom/evrencoskun/tableview/ITableView;->getHorizontalRecyclerViewListener()Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->setScrollPositionOffset(I)V

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/evrencoskun/tableview/handler/ScrollHandler;->scrollColumnHeader(II)V

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/evrencoskun/tableview/handler/ScrollHandler;->scrollCellHorizontally(II)V

    return-void
.end method

.method public scrollToRowPosition(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/ScrollHandler;->mRowHeaderLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 2
    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/ScrollHandler;->mCellLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    return-void
.end method

.method public scrollToRowPosition(II)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/ScrollHandler;->mRowHeaderLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 4
    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/ScrollHandler;->mCellLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method
