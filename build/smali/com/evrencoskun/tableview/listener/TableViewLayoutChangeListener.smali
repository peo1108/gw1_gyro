.class public Lcom/evrencoskun/tableview/listener/TableViewLayoutChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private final mCellLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mCellRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/evrencoskun/tableview/ITableView;)V
    .locals 1
    .param p1    # Lcom/evrencoskun/tableview/ITableView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/evrencoskun/tableview/ITableView;->getCellRecyclerView()Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/evrencoskun/tableview/listener/TableViewLayoutChangeListener;->mCellRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-interface {p1}, Lcom/evrencoskun/tableview/ITableView;->getColumnHeaderRecyclerView()Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/evrencoskun/tableview/listener/TableViewLayoutChangeListener;->mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-interface {p1}, Lcom/evrencoskun/tableview/ITableView;->getCellLayoutManager()Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;

    move-result-object p1

    iput-object p1, p0, Lcom/evrencoskun/tableview/listener/TableViewLayoutChangeListener;->mCellLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-eq p4, p8, :cond_1

    iget-object p1, p0, Lcom/evrencoskun/tableview/listener/TableViewLayoutChangeListener;->mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/evrencoskun/tableview/listener/TableViewLayoutChangeListener;->mCellRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    if-le p1, p2, :cond_0

    iget-object p1, p0, Lcom/evrencoskun/tableview/listener/TableViewLayoutChangeListener;->mCellLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;

    invoke-virtual {p1}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->remeasureAllChild()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/evrencoskun/tableview/listener/TableViewLayoutChangeListener;->mCellRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/evrencoskun/tableview/listener/TableViewLayoutChangeListener;->mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    if-le p1, p2, :cond_1

    iget-object p1, p0, Lcom/evrencoskun/tableview/listener/TableViewLayoutChangeListener;->mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 p2, -0x2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/evrencoskun/tableview/listener/TableViewLayoutChangeListener;->mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method
