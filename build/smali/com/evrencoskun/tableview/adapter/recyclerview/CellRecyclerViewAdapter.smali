.class public Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;
.super Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter$CellRowViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private final mRecycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mRecyclerViewId:I

.field private final mTableView:Lcom/evrencoskun/tableview/ITableView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/evrencoskun/tableview/ITableView;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/evrencoskun/tableview/ITableView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TC;>;",
            "Lcom/evrencoskun/tableview/ITableView;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->mRecyclerViewId:I

    iput-object p3, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object p1, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->mRecycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    return-void
.end method


# virtual methods
.method public addColumnItems(ILjava/util/List;)V
    .locals 5
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TC;>;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

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

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->addItem(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, p1, :cond_2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->setItems(Ljava/util/List;Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public getColumnItems(I)Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, p1, :cond_0

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public notifyCellDataSetChanged()V
    .locals 4

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v0}, Lcom/evrencoskun/tableview/ITableView;->getCellLayoutManager()Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->getVisibleCellRowRecyclerViews()[Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
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

    invoke-virtual {p0, p1, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->onBindViewHolder(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;I)V
    .locals 1
    .param p1    # Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    check-cast p1, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter$CellRowViewHolder;

    .line 3
    iget-object p1, p1, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter$CellRowViewHolder;->recyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRowRecyclerViewAdapter;

    .line 5
    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 6
    invoke-virtual {p1, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRowRecyclerViewAdapter;->setYPosition(I)V

    .line 7
    invoke-virtual {p1, v0}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->setItems(Ljava/util/List;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p1, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    iget-object p2, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object p2, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->mRecycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 4
    iget-object p2, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {p2}, Lcom/evrencoskun/tableview/ITableView;->isShowHorizontalSeparators()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {p2}, Lcom/evrencoskun/tableview/ITableView;->getHorizontalItemDecoration()Landroidx/recyclerview/widget/DividerItemDecoration;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {p2}, Lcom/evrencoskun/tableview/ITableView;->hasFixedWidth()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 7
    iget-object p2, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {p2}, Lcom/evrencoskun/tableview/ITableView;->getHorizontalRecyclerViewListener()Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 8
    iget-object p2, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {p2}, Lcom/evrencoskun/tableview/ITableView;->isAllowClickInsideCell()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    new-instance p2, Lcom/evrencoskun/tableview/listener/itemclick/CellRecyclerViewItemClickListener;

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-direct {p2, p1, v0}, Lcom/evrencoskun/tableview/listener/itemclick/CellRecyclerViewItemClickListener;-><init>(Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;Lcom/evrencoskun/tableview/ITableView;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 10
    :cond_1
    new-instance p2, Lcom/evrencoskun/tableview/layoutmanager/ColumnLayoutManager;

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-direct {p2, v0, v1}, Lcom/evrencoskun/tableview/layoutmanager/ColumnLayoutManager;-><init>(Landroid/content/Context;Lcom/evrencoskun/tableview/ITableView;)V

    .line 11
    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v0}, Lcom/evrencoskun/tableview/ITableView;->getReverseLayout()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 12
    :cond_2
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 13
    new-instance p2, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRowRecyclerViewAdapter;

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-direct {p2, v0, v2}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRowRecyclerViewAdapter;-><init>(Landroid/content/Context;Lcom/evrencoskun/tableview/ITableView;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    iget p2, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->mRecyclerViewId:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    .line 15
    iget p2, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->mRecyclerViewId:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->mRecyclerViewId:I

    .line 16
    new-instance p2, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter$CellRowViewHolder;

    invoke-direct {p2, p1}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter$CellRowViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
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

    invoke-virtual {p0, p1}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->onViewAttachedToWindow(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;)V
    .locals 4
    .param p1    # Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter$CellRowViewHolder;

    .line 4
    iget-object v1, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v1}, Lcom/evrencoskun/tableview/ITableView;->getScrollHandler()Lcom/evrencoskun/tableview/handler/ScrollHandler;

    move-result-object v1

    .line 5
    iget-object v2, v0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter$CellRowViewHolder;->recyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Lcom/evrencoskun/tableview/layoutmanager/ColumnLayoutManager;

    .line 6
    invoke-virtual {v1}, Lcom/evrencoskun/tableview/handler/ScrollHandler;->getColumnPosition()I

    move-result v3

    .line 7
    invoke-virtual {v1}, Lcom/evrencoskun/tableview/handler/ScrollHandler;->getColumnPositionOffset()I

    move-result v1

    .line 8
    invoke-virtual {v2, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 9
    iget-object v1, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v1}, Lcom/evrencoskun/tableview/ITableView;->getSelectionHandler()Lcom/evrencoskun/tableview/handler/SelectionHandler;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->isAnyColumnSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    iget-object p1, v0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter$CellRowViewHolder;->recyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    .line 12
    invoke-virtual {v1}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->getSelectedColumnPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;

    if-eqz p1, :cond_2

    .line 13
    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v0}, Lcom/evrencoskun/tableview/ITableView;->isIgnoreSelectionColors()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v0}, Lcom/evrencoskun/tableview/ITableView;->getSelectedColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setBackgroundColor(I)V

    .line 15
    :cond_0
    sget-object v0, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->SELECTED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    invoke-virtual {p1, v0}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setSelected(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->isRowSelected(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 17
    iget-object p1, v0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter$CellRowViewHolder;->recyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    sget-object v0, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->SELECTED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    iget-object v2, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    .line 18
    invoke-interface {v2}, Lcom/evrencoskun/tableview/ITableView;->getSelectedColor()I

    move-result v2

    .line 19
    invoke-virtual {v1, p1, v0, v2}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->changeSelectionOfRecyclerView(Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
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

    invoke-virtual {p0, p1}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->onViewDetachedFromWindow(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;)V
    .locals 3
    .param p1    # Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 3
    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v0}, Lcom/evrencoskun/tableview/ITableView;->getSelectionHandler()Lcom/evrencoskun/tableview/handler/SelectionHandler;

    move-result-object v0

    check-cast p1, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter$CellRowViewHolder;

    iget-object p1, p1, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter$CellRowViewHolder;->recyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    sget-object v1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->UNSELECTED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    iget-object v2, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    .line 4
    invoke-interface {v2}, Lcom/evrencoskun/tableview/ITableView;->getUnSelectedColor()I

    move-result v2

    .line 5
    invoke-virtual {v0, p1, v1, v2}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->changeSelectionOfRecyclerView(Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;I)V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
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

    invoke-virtual {p0, p1}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->onViewRecycled(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;)V
    .locals 0
    .param p1    # Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 3
    check-cast p1, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter$CellRowViewHolder;

    .line 4
    iget-object p1, p1, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter$CellRowViewHolder;->recyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p1}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->clearScrolledX()V

    return-void
.end method

.method public removeColumnItems(I)V
    .locals 5

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v0}, Lcom/evrencoskun/tableview/ITableView;->getCellLayoutManager()Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->getVisibleCellRowRecyclerViews()[Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    check-cast v4, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;

    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->deleteItem(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, p1, :cond_2

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0, v2}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->setItems(Ljava/util/List;Z)V

    return-void
.end method
