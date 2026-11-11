.class public Lcom/evrencoskun/tableview/listener/itemclick/ColumnHeaderRecyclerViewItemClickListener;
.super Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;Lcom/evrencoskun/tableview/ITableView;)V
    .locals 0
    .param p1    # Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/evrencoskun/tableview/ITableView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener;-><init>(Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;Lcom/evrencoskun/tableview/ITableView;)V

    return-void
.end method


# virtual methods
.method public clickAction(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener;->mRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    iget-object v0, p0, Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v0}, Lcom/evrencoskun/tableview/ITableView;->isIgnoreSelectionColors()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener;->mSelectionHandler:Lcom/evrencoskun/tableview/handler/SelectionHandler;

    invoke-virtual {v0, p1, p2}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->setSelectedColumnPosition(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener;->getTableViewListener()Lcom/evrencoskun/tableview/listener/ITableViewListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/evrencoskun/tableview/listener/ITableViewListener;->onColumnHeaderClicked(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public doubleClickAction(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener;->mRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener;->mRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v1}, Lcom/evrencoskun/tableview/ITableView;->isIgnoreSelectionColors()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener;->mSelectionHandler:Lcom/evrencoskun/tableview/handler/SelectionHandler;

    invoke-virtual {v1, p1, v0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->setSelectedColumnPosition(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener;->getTableViewListener()Lcom/evrencoskun/tableview/listener/ITableViewListener;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/evrencoskun/tableview/listener/ITableViewListener;->onColumnHeaderDoubleClicked(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public longPressAction(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener;->mRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener;->mRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener;->mRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/listener/itemclick/AbstractItemClickListener;->getTableViewListener()Lcom/evrencoskun/tableview/listener/ITableViewListener;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/evrencoskun/tableview/listener/ITableViewListener;->onColumnHeaderLongPressed(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_1
    return-void
.end method
