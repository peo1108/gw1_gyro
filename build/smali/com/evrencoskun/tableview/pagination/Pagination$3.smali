.class Lcom/evrencoskun/tableview/pagination/Pagination$3;
.super Lcom/evrencoskun/tableview/sort/ColumnSortStateChangedListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evrencoskun/tableview/pagination/Pagination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evrencoskun/tableview/pagination/Pagination;


# direct methods
.method public constructor <init>(Lcom/evrencoskun/tableview/pagination/Pagination;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/evrencoskun/tableview/pagination/Pagination$3;->this$0:Lcom/evrencoskun/tableview/pagination/Pagination;

    invoke-direct {p0}, Lcom/evrencoskun/tableview/sort/ColumnSortStateChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onColumnSortStatusChanged(ILcom/evrencoskun/tableview/sort/SortState;)V
    .locals 1
    .param p2    # Lcom/evrencoskun/tableview/sort/SortState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/evrencoskun/tableview/pagination/Pagination$3;->this$0:Lcom/evrencoskun/tableview/pagination/Pagination;

    invoke-static {v0, p1, p2}, Lcom/evrencoskun/tableview/pagination/Pagination;->access$300(Lcom/evrencoskun/tableview/pagination/Pagination;ILcom/evrencoskun/tableview/sort/SortState;)V

    return-void
.end method

.method public onRowHeaderSortStatusChanged(Lcom/evrencoskun/tableview/sort/SortState;)V
    .locals 2
    .param p1    # Lcom/evrencoskun/tableview/sort/SortState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/evrencoskun/tableview/pagination/Pagination$3;->this$0:Lcom/evrencoskun/tableview/pagination/Pagination;

    const/4 v1, -0x1

    invoke-static {v0, v1, p1}, Lcom/evrencoskun/tableview/pagination/Pagination;->access$300(Lcom/evrencoskun/tableview/pagination/Pagination;ILcom/evrencoskun/tableview/sort/SortState;)V

    return-void
.end method
