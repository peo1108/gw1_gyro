.class public Lcom/evrencoskun/tableview/sort/ColumnSortHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evrencoskun/tableview/sort/ColumnSortHelper$Directive;
    }
.end annotation


# static fields
.field private static final EMPTY_DIRECTIVE:Lcom/evrencoskun/tableview/sort/ColumnSortHelper$Directive;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final mColumnHeaderLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mSortingColumns:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evrencoskun/tableview/sort/ColumnSortHelper$Directive;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/evrencoskun/tableview/sort/ColumnSortHelper$Directive;

    const/4 v1, -0x1

    sget-object v2, Lcom/evrencoskun/tableview/sort/SortState;->UNSORTED:Lcom/evrencoskun/tableview/sort/SortState;

    invoke-direct {v0, v1, v2}, Lcom/evrencoskun/tableview/sort/ColumnSortHelper$Directive;-><init>(ILcom/evrencoskun/tableview/sort/SortState;)V

    sput-object v0, Lcom/evrencoskun/tableview/sort/ColumnSortHelper;->EMPTY_DIRECTIVE:Lcom/evrencoskun/tableview/sort/ColumnSortHelper$Directive;

    return-void
.end method

.method public constructor <init>(Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;)V
    .locals 1
    .param p1    # Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evrencoskun/tableview/sort/ColumnSortHelper;->mSortingColumns:Ljava/util/List;

    iput-object p1, p0, Lcom/evrencoskun/tableview/sort/ColumnSortHelper;->mColumnHeaderLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    return-void
.end method

.method private getDirective(I)Lcom/evrencoskun/tableview/sort/ColumnSortHelper$Directive;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/evrencoskun/tableview/sort/ColumnSortHelper;->mSortingColumns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/evrencoskun/tableview/sort/ColumnSortHelper;->mSortingColumns:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evrencoskun/tableview/sort/ColumnSortHelper$Directive;

    invoke-static {v1}, Lcom/evrencoskun/tableview/sort/ColumnSortHelper$Directive;->access$100(Lcom/evrencoskun/tableview/sort/ColumnSortHelper$Directive;)I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/evrencoskun/tableview/sort/ColumnSortHelper;->EMPTY_DIRECTIVE:Lcom/evrencoskun/tableview/sort/ColumnSortHelper$Directive;

    return-object p1
.end method

.method private sortingStatusChanged(ILcom/evrencoskun/tableview/sort/SortState;)V
    .locals 1
    .param p2    # Lcom/evrencoskun/tableview/sort/SortState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/evrencoskun/tableview/sort/ColumnSortHelper;->mColumnHeaderLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;->getViewHolder(I)Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractSorterViewHolder;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractSorterViewHolder;

    invoke-virtual {p1, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractSorterViewHolder;->onSortingStatusChanged(Lcom/evrencoskun/tableview/sort/SortState;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Column Header ViewHolder must extend AbstractSorterViewHolder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clearSortingStatus()V
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/sort/ColumnSortHelper;->mSortingColumns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getSortingStatus(I)Lcom/evrencoskun/tableview/sort/SortState;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1}, Lcom/evrencoskun/tableview/sort/ColumnSortHelper;->getDirective(I)Lcom/evrencoskun/tableview/sort/ColumnSortHelper$Directive;

    move-result-object p1

    invoke-static {p1}, Lcom/evrencoskun/tableview/sort/ColumnSortHelper$Directive;->access$000(Lcom/evrencoskun/tableview/sort/ColumnSortHelper$Directive;)Lcom/evrencoskun/tableview/sort/SortState;

    move-result-object p1

    return-object p1
.end method

.method public isSorting()Z
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/sort/ColumnSortHelper;->mSortingColumns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setSortingStatus(ILcom/evrencoskun/tableview/sort/SortState;)V
    .locals 2
    .param p2    # Lcom/evrencoskun/tableview/sort/SortState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/evrencoskun/tableview/sort/ColumnSortHelper;->getDirective(I)Lcom/evrencoskun/tableview/sort/ColumnSortHelper$Directive;

    move-result-object v0

    sget-object v1, Lcom/evrencoskun/tableview/sort/ColumnSortHelper;->EMPTY_DIRECTIVE:Lcom/evrencoskun/tableview/sort/ColumnSortHelper$Directive;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/evrencoskun/tableview/sort/ColumnSortHelper;->mSortingColumns:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/evrencoskun/tableview/sort/SortState;->UNSORTED:Lcom/evrencoskun/tableview/sort/SortState;

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/evrencoskun/tableview/sort/ColumnSortHelper;->mSortingColumns:Ljava/util/List;

    new-instance v1, Lcom/evrencoskun/tableview/sort/ColumnSortHelper$Directive;

    invoke-direct {v1, p1, p2}, Lcom/evrencoskun/tableview/sort/ColumnSortHelper$Directive;-><init>(ILcom/evrencoskun/tableview/sort/SortState;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/evrencoskun/tableview/sort/ColumnSortHelper;->sortingStatusChanged(ILcom/evrencoskun/tableview/sort/SortState;)V

    return-void
.end method
