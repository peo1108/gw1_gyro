.class public Lcom/evrencoskun/tableview/sort/ColumnSortComparator;
.super Lcom/evrencoskun/tableview/sort/AbstractSortComparator;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evrencoskun/tableview/sort/AbstractSortComparator;",
        "Ljava/util/Comparator<",
        "Ljava/util/List<",
        "Lcom/evrencoskun/tableview/sort/ISortableModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mXPosition:I


# direct methods
.method public constructor <init>(ILcom/evrencoskun/tableview/sort/SortState;)V
    .locals 0
    .param p2    # Lcom/evrencoskun/tableview/sort/SortState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/evrencoskun/tableview/sort/AbstractSortComparator;-><init>()V

    iput p1, p0, Lcom/evrencoskun/tableview/sort/ColumnSortComparator;->mXPosition:I

    iput-object p2, p0, Lcom/evrencoskun/tableview/sort/AbstractSortComparator;->mSortState:Lcom/evrencoskun/tableview/sort/SortState;

    return-void
.end method


# virtual methods
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
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/evrencoskun/tableview/sort/ColumnSortComparator;->compare(Ljava/util/List;Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/util/List;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evrencoskun/tableview/sort/ISortableModel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/evrencoskun/tableview/sort/ISortableModel;",
            ">;)I"
        }
    .end annotation

    .line 2
    iget v0, p0, Lcom/evrencoskun/tableview/sort/ColumnSortComparator;->mXPosition:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evrencoskun/tableview/sort/ISortableModel;

    invoke-interface {p1}, Lcom/evrencoskun/tableview/sort/ISortableModel;->getContent()Ljava/lang/Object;

    move-result-object p1

    .line 3
    iget v0, p0, Lcom/evrencoskun/tableview/sort/ColumnSortComparator;->mXPosition:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evrencoskun/tableview/sort/ISortableModel;

    invoke-interface {p2}, Lcom/evrencoskun/tableview/sort/ISortableModel;->getContent()Ljava/lang/Object;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lcom/evrencoskun/tableview/sort/AbstractSortComparator;->mSortState:Lcom/evrencoskun/tableview/sort/SortState;

    sget-object v1, Lcom/evrencoskun/tableview/sort/SortState;->DESCENDING:Lcom/evrencoskun/tableview/sort/SortState;

    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/evrencoskun/tableview/sort/AbstractSortComparator;->compareContent(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/evrencoskun/tableview/sort/AbstractSortComparator;->compareContent(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
