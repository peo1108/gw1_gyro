.class public abstract Lcom/evrencoskun/tableview/sort/ColumnSortStateChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColumnSortStatusChanged(ILcom/evrencoskun/tableview/sort/SortState;)V
    .locals 0
    .param p2    # Lcom/evrencoskun/tableview/sort/SortState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onRowHeaderSortStatusChanged(Lcom/evrencoskun/tableview/sort/SortState;)V
    .locals 0
    .param p1    # Lcom/evrencoskun/tableview/sort/SortState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
