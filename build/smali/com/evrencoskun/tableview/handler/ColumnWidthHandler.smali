.class public Lcom/evrencoskun/tableview/handler/ColumnWidthHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mTableView:Lcom/evrencoskun/tableview/ITableView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/evrencoskun/tableview/ITableView;)V
    .locals 0
    .param p1    # Lcom/evrencoskun/tableview/ITableView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evrencoskun/tableview/handler/ColumnWidthHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    return-void
.end method


# virtual methods
.method public setColumnWidth(II)V
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/ColumnWidthHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v0}, Lcom/evrencoskun/tableview/ITableView;->getColumnHeaderLayoutManager()Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;->setCacheWidth(II)V

    iget-object v0, p0, Lcom/evrencoskun/tableview/handler/ColumnWidthHandler;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v0}, Lcom/evrencoskun/tableview/ITableView;->getCellLayoutManager()Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->setCacheWidth(II)V

    return-void
.end method
