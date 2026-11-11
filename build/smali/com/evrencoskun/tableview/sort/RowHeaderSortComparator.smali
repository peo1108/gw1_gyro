.class public Lcom/evrencoskun/tableview/sort/RowHeaderSortComparator;
.super Lcom/evrencoskun/tableview/sort/AbstractSortComparator;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evrencoskun/tableview/sort/AbstractSortComparator;",
        "Ljava/util/Comparator<",
        "Lcom/evrencoskun/tableview/sort/ISortableModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/evrencoskun/tableview/sort/SortState;)V
    .locals 0
    .param p1    # Lcom/evrencoskun/tableview/sort/SortState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/evrencoskun/tableview/sort/AbstractSortComparator;-><init>()V

    iput-object p1, p0, Lcom/evrencoskun/tableview/sort/AbstractSortComparator;->mSortState:Lcom/evrencoskun/tableview/sort/SortState;

    return-void
.end method


# virtual methods
.method public compare(Lcom/evrencoskun/tableview/sort/ISortableModel;Lcom/evrencoskun/tableview/sort/ISortableModel;)I
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/evrencoskun/tableview/sort/AbstractSortComparator;->mSortState:Lcom/evrencoskun/tableview/sort/SortState;

    sget-object v1, Lcom/evrencoskun/tableview/sort/SortState;->DESCENDING:Lcom/evrencoskun/tableview/sort/SortState;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-interface {p2}, Lcom/evrencoskun/tableview/sort/ISortableModel;->getContent()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1}, Lcom/evrencoskun/tableview/sort/ISortableModel;->getContent()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/evrencoskun/tableview/sort/AbstractSortComparator;->compareContent(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-interface {p1}, Lcom/evrencoskun/tableview/sort/ISortableModel;->getContent()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2}, Lcom/evrencoskun/tableview/sort/ISortableModel;->getContent()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/evrencoskun/tableview/sort/AbstractSortComparator;->compareContent(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
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
    check-cast p1, Lcom/evrencoskun/tableview/sort/ISortableModel;

    check-cast p2, Lcom/evrencoskun/tableview/sort/ISortableModel;

    invoke-virtual {p0, p1, p2}, Lcom/evrencoskun/tableview/sort/RowHeaderSortComparator;->compare(Lcom/evrencoskun/tableview/sort/ISortableModel;Lcom/evrencoskun/tableview/sort/ISortableModel;)I

    move-result p1

    return p1
.end method
