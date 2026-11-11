.class public abstract Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/evrencoskun/tableview/adapter/ITableAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CH:",
        "Ljava/lang/Object;",
        "RH:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/evrencoskun/tableview/adapter/ITableAdapter<",
        "TCH;TRH;TC;>;"
    }
.end annotation


# instance fields
.field private dataSetChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evrencoskun/tableview/adapter/AdapterDataSetChangedListener<",
            "TCH;TRH;TC;>;>;"
        }
    .end annotation
.end field

.field protected mCellItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field private mCellRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;

.field private mColumnHeaderHeight:I

.field protected mColumnHeaderItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TCH;>;"
        }
    .end annotation
.end field

.field private mColumnHeaderRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter<",
            "TCH;>;"
        }
    .end annotation
.end field

.field private mCornerView:Landroid/view/View;

.field protected mRowHeaderItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TRH;>;"
        }
    .end annotation
.end field

.field private mRowHeaderRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/RowHeaderRecyclerViewAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/evrencoskun/tableview/adapter/recyclerview/RowHeaderRecyclerViewAdapter<",
            "TRH;>;"
        }
    .end annotation
.end field

.field private mRowHeaderWidth:I

.field private mTableView:Lcom/evrencoskun/tableview/ITableView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dispatchCellDataSetChangesToListeners(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TC;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->dataSetChangedListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evrencoskun/tableview/adapter/AdapterDataSetChangedListener;

    invoke-virtual {v1, p1}, Lcom/evrencoskun/tableview/adapter/AdapterDataSetChangedListener;->onCellItemsChanged(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchColumnHeaderDataSetChangesToListeners(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TCH;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->dataSetChangedListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evrencoskun/tableview/adapter/AdapterDataSetChangedListener;

    invoke-virtual {v1, p1}, Lcom/evrencoskun/tableview/adapter/AdapterDataSetChangedListener;->onColumnHeaderItemsChanged(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchRowHeaderDataSetChangesToListeners(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TRH;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->dataSetChangedListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evrencoskun/tableview/adapter/AdapterDataSetChangedListener;

    invoke-virtual {v1, p1}, Lcom/evrencoskun/tableview/adapter/AdapterDataSetChangedListener;->onRowHeaderItemsChanged(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initialize()V
    .locals 4

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v0}, Lcom/evrencoskun/tableview/ITableView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;

    iget-object v2, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mColumnHeaderItems:Ljava/util/List;

    invoke-direct {v1, v0, v2, p0}, Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/evrencoskun/tableview/adapter/ITableAdapter;)V

    iput-object v1, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mColumnHeaderRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;

    new-instance v1, Lcom/evrencoskun/tableview/adapter/recyclerview/RowHeaderRecyclerViewAdapter;

    iget-object v2, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mRowHeaderItems:Ljava/util/List;

    invoke-direct {v1, v0, v2, p0}, Lcom/evrencoskun/tableview/adapter/recyclerview/RowHeaderRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/evrencoskun/tableview/adapter/ITableAdapter;)V

    iput-object v1, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mRowHeaderRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/RowHeaderRecyclerViewAdapter;

    new-instance v1, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;

    iget-object v2, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCellItems:Ljava/util/List;

    iget-object v3, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-direct {v1, v0, v2, v3}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/evrencoskun/tableview/ITableView;)V

    iput-object v1, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCellRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;

    return-void
.end method


# virtual methods
.method public addAdapterDataSetChangedListener(Lcom/evrencoskun/tableview/adapter/AdapterDataSetChangedListener;)V
    .locals 1
    .param p1    # Lcom/evrencoskun/tableview/adapter/AdapterDataSetChangedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evrencoskun/tableview/adapter/AdapterDataSetChangedListener<",
            "TCH;TRH;TC;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->dataSetChangedListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->dataSetChangedListeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->dataSetChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addColumn(ILjava/lang/Object;Ljava/util/List;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITCH;",
            "Ljava/util/List<",
            "TC;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mColumnHeaderRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->addItem(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCellRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;

    invoke-virtual {p2, p1, p3}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->addColumnItems(ILjava/util/List;)V

    return-void
.end method

.method public addRow(ILjava/lang/Object;Ljava/util/List;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITRH;",
            "Ljava/util/List<",
            "TC;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCellRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;

    invoke-virtual {v0, p1, p3}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->addItem(ILjava/lang/Object;)V

    iget-object p3, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mRowHeaderRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/RowHeaderRecyclerViewAdapter;

    invoke-virtual {p3, p1, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->addItem(ILjava/lang/Object;)V

    return-void
.end method

.method public addRowRange(ILjava/util/List;Ljava/util/List;)V
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TRH;>;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TC;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mRowHeaderRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/RowHeaderRecyclerViewAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->addItemRange(ILjava/util/List;)V

    iget-object p2, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCellRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;

    invoke-virtual {p2, p1, p3}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->addItemRange(ILjava/util/List;)V

    return-void
.end method

.method public changeCellItem(IILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITC;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCellRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;

    invoke-virtual {v0, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    invoke-interface {v0, p1, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCellRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;

    invoke-virtual {p1, p2, v0}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->changeItem(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public changeColumnHeader(ILjava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITCH;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mColumnHeaderRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->changeItem(ILjava/lang/Object;)V

    return-void
.end method

.method public changeColumnHeaderRange(ILjava/util/List;)V
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TCH;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mColumnHeaderRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->changeItemRange(ILjava/util/List;)V

    return-void
.end method

.method public changeRowHeaderItem(ILjava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITRH;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mRowHeaderRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/RowHeaderRecyclerViewAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->changeItem(ILjava/lang/Object;)V

    return-void
.end method

.method public changeRowHeaderItemRange(ILjava/util/List;)V
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TRH;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mRowHeaderRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/RowHeaderRecyclerViewAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->changeItemRange(ILjava/util/List;)V

    return-void
.end method

.method public getCellColumnItems(I)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCellRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->getColumnItems(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCellItem(II)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCellItems:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCellItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCellItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ltz p2, :cond_1

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCellItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCellItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCellItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getCellRecyclerViewAdapter()Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCellRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;

    return-object v0
.end method

.method public getCellRowItems(I)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCellRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getColumnHeaderItem(I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TCH;"
        }
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mColumnHeaderItems:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mColumnHeaderItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mColumnHeaderItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getColumnHeaderItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getColumnHeaderRecyclerViewAdapter()Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mColumnHeaderRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;

    return-object v0
.end method

.method public getCornerView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCornerView:Landroid/view/View;

    return-object v0
.end method

.method public getRowHeaderItem(I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TRH;"
        }
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mRowHeaderItems:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mRowHeaderItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mRowHeaderItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRowHeaderItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getRowHeaderRecyclerViewAdapter()Lcom/evrencoskun/tableview/adapter/recyclerview/RowHeaderRecyclerViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mRowHeaderRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/RowHeaderRecyclerViewAdapter;

    return-object v0
.end method

.method public getTableView()Lcom/evrencoskun/tableview/ITableView;
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    return-object v0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mColumnHeaderRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mRowHeaderRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/RowHeaderRecyclerViewAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCellRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->notifyCellDataSetChanged()V

    return-void
.end method

.method public removeColumn(I)V
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mColumnHeaderRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->deleteItem(I)V

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCellRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;->removeColumnItems(I)V

    return-void
.end method

.method public removeRow(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCellRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->deleteItem(I)V

    .line 2
    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mRowHeaderRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/RowHeaderRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->deleteItem(I)V

    return-void
.end method

.method public removeRow(IZ)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCellRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->deleteItem(I)V

    if-eqz p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mRowHeaderRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/RowHeaderRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 5
    iget-object p2, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCellRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mRowHeaderRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/RowHeaderRecyclerViewAdapter;

    invoke-virtual {p2, p1}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->deleteItem(I)V

    return-void
.end method

.method public removeRowRange(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCellRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->deleteItemRange(II)V

    .line 2
    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mRowHeaderRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/RowHeaderRecyclerViewAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->deleteItemRange(II)V

    return-void
.end method

.method public removeRowRange(IIZ)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCellRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->deleteItemRange(II)V

    if-eqz p3, :cond_0

    .line 4
    iget-object p1, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mRowHeaderRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/RowHeaderRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    sub-int/2addr p1, p2

    .line 5
    iget-object p3, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCellRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    :cond_0
    iget-object p3, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mRowHeaderRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/RowHeaderRecyclerViewAdapter;

    invoke-virtual {p3, p1, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->deleteItemRange(II)V

    return-void
.end method

.method public setAllItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TCH;>;",
            "Ljava/util/List<",
            "TRH;>;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TC;>;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->setColumnHeaderItems(Ljava/util/List;)V

    invoke-virtual {p0, p2}, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->setRowHeaderItems(Ljava/util/List;)V

    invoke-virtual {p0, p3}, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->setCellItems(Ljava/util/List;)V

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCornerView:Landroid/view/View;

    if-nez v0, :cond_2

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/evrencoskun/tableview/ITableView;->getShowCornerView()Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-interface {p0, p1}, Lcom/evrencoskun/tableview/adapter/ITableAdapter;->onCreateCornerView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCornerView:Landroid/view/View;

    iget-object p2, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mRowHeaderWidth:I

    iget v1, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mColumnHeaderHeight:I

    iget-object v2, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v2}, Lcom/evrencoskun/tableview/ITableView;->getGravity()I

    move-result v2

    invoke-direct {p3, v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-interface {p2, p1, p3}, Lcom/evrencoskun/tableview/ITableView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCornerView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCornerView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setCellItems(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TC;>;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCellItems:Ljava/util/List;

    iget-object p1, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {p1}, Lcom/evrencoskun/tableview/ITableView;->getCellLayoutManager()Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->clearCachedWidths()V

    iget-object p1, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCellRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCellItems:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->setItems(Ljava/util/List;)V

    iget-object p1, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCellItems:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->dispatchCellDataSetChangesToListeners(Ljava/util/List;)V

    return-void
.end method

.method public setColumnHeaderHeight(I)V
    .locals 0

    iput p1, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mColumnHeaderHeight:I

    return-void
.end method

.method public setColumnHeaderItems(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TCH;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mColumnHeaderItems:Ljava/util/List;

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v0}, Lcom/evrencoskun/tableview/ITableView;->getColumnHeaderLayoutManager()Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;->clearCachedWidths()V

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mColumnHeaderRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;

    iget-object v1, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mColumnHeaderItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->setItems(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->dispatchColumnHeaderDataSetChangesToListeners(Ljava/util/List;)V

    return-void
.end method

.method public setRowHeaderItems(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TRH;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mRowHeaderItems:Ljava/util/List;

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mRowHeaderRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/RowHeaderRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->setItems(Ljava/util/List;)V

    iget-object p1, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mRowHeaderItems:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->dispatchRowHeaderDataSetChangesToListeners(Ljava/util/List;)V

    return-void
.end method

.method public setRowHeaderWidth(I)V
    .locals 1

    iput p1, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mRowHeaderWidth:I

    iget-object v0, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mCornerView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    return-void
.end method

.method public setTableView(Lcom/evrencoskun/tableview/ITableView;)V
    .locals 0
    .param p1    # Lcom/evrencoskun/tableview/ITableView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-direct {p0}, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->initialize()V

    return-void
.end method
