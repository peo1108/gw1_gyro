.class public Lcom/evrencoskun/tableview/handler/FilterHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/evrencoskun/tableview/filter/IFilterableModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final adapterDataSetChangedListener:Lcom/evrencoskun/tableview/adapter/AdapterDataSetChangedListener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private filterChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evrencoskun/tableview/filter/FilterChangedListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final mCellRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final mRowHeaderRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/RowHeaderRecyclerViewAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/evrencoskun/tableview/adapter/recyclerview/RowHeaderRecyclerViewAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private originalCellDataStore:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private originalRowDataStore:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/evrencoskun/tableview/ITableView;)V
    .locals 2
    .param p1    # Lcom/evrencoskun/tableview/ITableView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/evrencoskun/tableview/handler/FilterHandler$1;

    invoke-direct {v0, p0}, Lcom/evrencoskun/tableview/handler/FilterHandler$1;-><init>(Lcom/evrencoskun/tableview/handler/FilterHandler;)V

    iput-object v0, p0, Lcom/evrencoskun/tableview/handler/FilterHandler;->adapterDataSetChangedListener:Lcom/evrencoskun/tableview/adapter/AdapterDataSetChangedListener;

    invoke-interface {p1}, Lcom/evrencoskun/tableview/ITableView;->getAdapter()Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->addAdapterDataSetChangedListener(Lcom/evrencoskun/tableview/adapter/AdapterDataSetChangedListener;)V

    invoke-interface {p1}, Lcom/evrencoskun/tableview/ITableView;->getCellRecyclerView()Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;

    iput-object v0, p0, Lcom/evrencoskun/tableview/handler/FilterHandler;->mCellRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;

    invoke-interface {p1}, Lcom/evrencoskun/tableview/ITableView;->getRowHeaderRecyclerView()Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/evrencoskun/tableview/adapter/recyclerview/RowHeaderRecyclerViewAdapter;

    iput-object p1, p0, Lcom/evrencoskun/tableview/handler/FilterHandler;->mRowHeaderRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/RowHeaderRecyclerViewAdapter;

    return-void
.end method

.method public static synthetic access$002(Lcom/evrencoskun/tableview/handler/FilterHandler;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/evrencoskun/tableview/handler/FilterHandler;->originalRowDataStore:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$102(Lcom/evrencoskun/tableview/handler/FilterHandler;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/evrencoskun/tableview/handler/FilterHandler;->originalCellDataStore:Ljava/util/List;

    return-object p1
.end method

.method private dispatchFilterChangedToListeners(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/FilterHandler;->filterChangedListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evrencoskun/tableview/filter/FilterChangedListener;

    invoke-virtual {v1, p1, p2}, Lcom/evrencoskun/tableview/filter/FilterChangedListener;->onFilterChanged(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchFilterClearedToListeners(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/FilterHandler;->filterChangedListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evrencoskun/tableview/filter/FilterChangedListener;

    invoke-virtual {v1, p1, p2}, Lcom/evrencoskun/tableview/filter/FilterChangedListener;->onFilterCleared(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addFilterChangedListener(Lcom/evrencoskun/tableview/filter/FilterChangedListener;)V
    .locals 1
    .param p1    # Lcom/evrencoskun/tableview/filter/FilterChangedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evrencoskun/tableview/filter/FilterChangedListener<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/FilterHandler;->filterChangedListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evrencoskun/tableview/handler/FilterHandler;->filterChangedListeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/FilterHandler;->filterChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public filter(Lcom/evrencoskun/tableview/filter/Filter;)V
    .locals 11
    .param p1    # Lcom/evrencoskun/tableview/filter/Filter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/FilterHandler;->originalCellDataStore:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/FilterHandler;->originalRowDataStore:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/evrencoskun/tableview/handler/FilterHandler;->originalCellDataStore:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/evrencoskun/tableview/handler/FilterHandler;->originalRowDataStore:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/evrencoskun/tableview/filter/Filter;->getFilterItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/evrencoskun/tableview/handler/FilterHandler;->originalCellDataStore:Ljava/util/List;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/evrencoskun/tableview/handler/FilterHandler;->originalRowDataStore:Ljava/util/List;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/evrencoskun/tableview/handler/FilterHandler;->originalCellDataStore:Ljava/util/List;

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/FilterHandler;->originalRowDataStore:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/evrencoskun/tableview/handler/FilterHandler;->dispatchFilterClearedToListeners(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_3

    :cond_1
    const/4 v4, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/evrencoskun/tableview/filter/Filter;->getFilterItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    invoke-virtual {p1}, Lcom/evrencoskun/tableview/filter/Filter;->getFilterItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/evrencoskun/tableview/filter/FilterItem;

    invoke-virtual {v5}, Lcom/evrencoskun/tableview/filter/FilterItem;->getFilterType()Lcom/evrencoskun/tableview/filter/FilterType;

    move-result-object v6

    sget-object v7, Lcom/evrencoskun/tableview/filter/FilterType;->ALL:Lcom/evrencoskun/tableview/filter/FilterType;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/evrencoskun/tableview/filter/IFilterableModel;

    invoke-interface {v9}, Lcom/evrencoskun/tableview/filter/IFilterableModel;->getFilterableKeyword()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/evrencoskun/tableview/filter/FilterItem;->getFilter()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/evrencoskun/tableview/filter/IFilterableModel;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {v5}, Lcom/evrencoskun/tableview/filter/FilterItem;->getColumn()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/evrencoskun/tableview/filter/IFilterableModel;

    invoke-interface {v8}, Lcom/evrencoskun/tableview/filter/IFilterableModel;->getFilterableKeyword()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/evrencoskun/tableview/filter/FilterItem;->getFilter()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/evrencoskun/tableview/filter/IFilterableModel;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1}, Lcom/evrencoskun/tableview/filter/Filter;->getFilterItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/evrencoskun/tableview/handler/FilterHandler;->mRowHeaderRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/RowHeaderRecyclerViewAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v3, v0}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->setItems(Ljava/util/List;Z)V

    iget-object p1, p0, Lcom/evrencoskun/tableview/handler/FilterHandler;->mCellRecyclerViewAdapter:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;

    invoke-virtual {p1, v2, v0}, Lcom/evrencoskun/tableview/adapter/recyclerview/AbstractRecyclerViewAdapter;->setItems(Ljava/util/List;Z)V

    invoke-direct {p0, v2, v3}, Lcom/evrencoskun/tableview/handler/FilterHandler;->dispatchFilterChangedToListeners(Ljava/util/List;Ljava/util/List;)V

    :cond_9
    :goto_4
    return-void
.end method
