.class public Lcom/evrencoskun/tableview/sort/RowHeaderSortHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mSortState:Lcom/evrencoskun/tableview/sort/SortState;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sortingStatusChanged(Lcom/evrencoskun/tableview/sort/SortState;)V
    .locals 0
    .param p1    # Lcom/evrencoskun/tableview/sort/SortState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/evrencoskun/tableview/sort/RowHeaderSortHelper;->mSortState:Lcom/evrencoskun/tableview/sort/SortState;

    return-void
.end method


# virtual methods
.method public clearSortingStatus()V
    .locals 1

    sget-object v0, Lcom/evrencoskun/tableview/sort/SortState;->UNSORTED:Lcom/evrencoskun/tableview/sort/SortState;

    iput-object v0, p0, Lcom/evrencoskun/tableview/sort/RowHeaderSortHelper;->mSortState:Lcom/evrencoskun/tableview/sort/SortState;

    return-void
.end method

.method public getSortingStatus()Lcom/evrencoskun/tableview/sort/SortState;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/sort/RowHeaderSortHelper;->mSortState:Lcom/evrencoskun/tableview/sort/SortState;

    return-object v0
.end method

.method public isSorting()Z
    .locals 2

    iget-object v0, p0, Lcom/evrencoskun/tableview/sort/RowHeaderSortHelper;->mSortState:Lcom/evrencoskun/tableview/sort/SortState;

    sget-object v1, Lcom/evrencoskun/tableview/sort/SortState;->UNSORTED:Lcom/evrencoskun/tableview/sort/SortState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setSortingStatus(Lcom/evrencoskun/tableview/sort/SortState;)V
    .locals 0
    .param p1    # Lcom/evrencoskun/tableview/sort/SortState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/evrencoskun/tableview/sort/RowHeaderSortHelper;->mSortState:Lcom/evrencoskun/tableview/sort/SortState;

    invoke-direct {p0, p1}, Lcom/evrencoskun/tableview/sort/RowHeaderSortHelper;->sortingStatusChanged(Lcom/evrencoskun/tableview/sort/SortState;)V

    return-void
.end method
