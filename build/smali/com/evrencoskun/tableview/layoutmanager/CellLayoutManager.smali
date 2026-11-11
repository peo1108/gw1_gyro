.class public Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# static fields
.field private static final IGNORE_LEFT:I = -0x1869f

.field private static final LOG_TAG:Ljava/lang/String; = "CellLayoutManager"


# instance fields
.field private final mCachedWidthList:Landroid/util/SparseArray;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mColumnHeaderLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mHorizontalListener:Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;

.field private mLastDy:I

.field private mNeedFit:Z

.field private mNeedSetLeft:Z

.field private final mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mTableView:Lcom/evrencoskun/tableview/ITableView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/evrencoskun/tableview/ITableView;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/evrencoskun/tableview/ITableView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mCachedWidthList:Landroid/util/SparseArray;

    const/4 p1, 0x0

    iput p1, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mLastDy:I

    iput-object p2, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {p2}, Lcom/evrencoskun/tableview/ITableView;->getColumnHeaderLayoutManager()Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    move-result-object p1

    iput-object p1, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mColumnHeaderLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    invoke-interface {p2}, Lcom/evrencoskun/tableview/ITableView;->getRowHeaderRecyclerView()Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-direct {p0}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->initialize()V

    return-void
.end method

.method public static synthetic a(Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->lambda$fitWidthSize$0()V

    return-void
.end method

.method private fit(IIIII)I
    .locals 7

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/evrencoskun/tableview/layoutmanager/ColumnLayoutManager;

    invoke-virtual {p0, p2, p1}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->getCacheWidth(II)I

    move-result v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    if-ne v0, p5, :cond_0

    iget-boolean v3, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mNeedSetLeft:Z

    if-eqz v3, :cond_4

    :cond_0
    if-eq v0, p5, :cond_1

    invoke-static {v2, p5}, Lcom/evrencoskun/tableview/util/TableViewUtils;->setWidth(Landroid/view/View;I)V

    invoke-virtual {p0, p2, p1, p5}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->setCacheWidth(III)V

    goto :goto_0

    :cond_1
    move p5, v0

    :goto_0
    const p2, -0x1869f

    if-eq p3, p2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    if-eq v0, p3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v2, p3}, Landroid/view/View;->setLeft(I)V

    iget-object v3, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mHorizontalListener:Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;

    invoke-virtual {v3}, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->getScrollPositionOffset()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    if-ne p1, v3, :cond_2

    invoke-direct {p0}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->getCellRecyclerViewScrollState()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mHorizontalListener:Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;

    invoke-virtual {p1}, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->getScrollPosition()I

    move-result p1

    iget-object v3, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mHorizontalListener:Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;

    invoke-virtual {v3}, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->getScrollPositionOffset()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mHorizontalListener:Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;

    invoke-virtual {v0, v3}, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->setScrollPositionOffset(I)V

    invoke-virtual {v1, p1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result p1

    if-eq p1, p5, :cond_4

    const/4 p1, 0x1

    if-eq p3, p2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result p2

    add-int/2addr p2, p5

    add-int/lit8 p4, p2, 0x1

    invoke-virtual {v2, p4}, Landroid/view/View;->setRight(I)V

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    :cond_3
    iput-boolean p1, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mNeedSetLeft:Z

    :cond_4
    return p4
.end method

.method private fit2(IIILandroid/view/View;Lcom/evrencoskun/tableview/layoutmanager/ColumnLayoutManager;)V
    .locals 7
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/evrencoskun/tableview/layoutmanager/ColumnLayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2, p1}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->getCacheWidth(II)I

    move-result v0

    invoke-virtual {p5, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    if-ne v0, p3, :cond_0

    iget-boolean v1, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mNeedSetLeft:Z

    if-eqz v1, :cond_3

    :cond_0
    if-eq v0, p3, :cond_1

    invoke-static {v2, p3}, Lcom/evrencoskun/tableview/util/TableViewUtils;->setWidth(Landroid/view/View;I)V

    invoke-virtual {p0, p2, p1, p3}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->setCacheWidth(III)V

    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result p2

    if-ne p1, p2, :cond_2

    invoke-virtual {p4}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result p2

    if-eq p1, p2, :cond_3

    :cond_2
    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setLeft(I)V

    invoke-virtual {p4}, Landroid/view/View;->getRight()I

    move-result p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    invoke-virtual {v2, p1}, Landroid/view/View;->setRight(I)V

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    move-object v1, p5

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    iput-boolean p2, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mNeedSetLeft:Z

    :cond_3
    return-void
.end method

.method private fitSize(IIZ)I
    .locals 7

    iget-object v0, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mColumnHeaderLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;->getCacheWidth(I)I

    move-result v0

    iget-object v1, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mColumnHeaderLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p3

    move v5, v1

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    if-lt p3, v1, :cond_2

    move-object v1, p0

    move v2, p1

    move v3, p3

    move v4, p2

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->fit(IIIII)I

    move-result v5

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p3

    move v5, v1

    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge p3, v1, :cond_2

    move-object v1, p0

    move v2, p1

    move v3, p3

    move v4, p2

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->fit(IIIII)I

    move-result v5

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Warning: column couldn\'t found for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    :cond_2
    return v5
.end method

.method private fitSize2(IZIII)V
    .locals 9

    iget-object v0, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mColumnHeaderLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;->getCacheWidth(I)I

    move-result v0

    iget-object v1, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mColumnHeaderLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    move v8, v1

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v8, v1, :cond_2

    invoke-virtual {p0, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/evrencoskun/tableview/layoutmanager/ColumnLayoutManager;

    if-nez p2, :cond_0

    invoke-virtual {v1}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->getScrolledX()I

    move-result v1

    if-eq p3, v1, :cond_0

    invoke-virtual {v6, p5, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_0
    if-eqz v6, :cond_1

    move-object v1, p0

    move v2, p1

    move v3, v8

    move v4, v0

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->fit2(IIILandroid/view/View;Lcom/evrencoskun/tableview/layoutmanager/ColumnLayoutManager;)V

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getCellRecyclerViewScrollState()I
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v0}, Lcom/evrencoskun/tableview/ITableView;->getCellRecyclerView()Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    return v0
.end method

.method private initialize()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    return-void
.end method

.method private synthetic lambda$fitWidthSize$0()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->fitWidthSize2(Z)V

    return-void
.end method


# virtual methods
.method public clearCachedWidths()V
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mCachedWidthList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public fitWidthSize(IZ)V
    .locals 2

    const v0, -0x1869f

    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, p1, v0, v1}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->fitSize(IIZ)I

    .line 7
    iget-boolean p1, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mNeedSetLeft:Z

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    .line 8
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 9
    new-instance p2, La/a;

    invoke-direct {p2, p0}, La/a;-><init>(Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public fitWidthSize(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mColumnHeaderLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    invoke-virtual {v0}, Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;->getFirstItemLeft()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mColumnHeaderLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mColumnHeaderLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    .line 3
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_0

    .line 4
    invoke-direct {p0, v1, v0, p1}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->fitSize(IIZ)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mNeedSetLeft:Z

    return-void
.end method

.method public fitWidthSize2(IZ)V
    .locals 7

    .line 9
    iget-object v0, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mColumnHeaderLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    invoke-virtual {v0}, Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;->customRequestLayout()V

    .line 10
    iget-object v0, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v0}, Lcom/evrencoskun/tableview/ITableView;->getColumnHeaderRecyclerView()Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->getScrolledX()I

    move-result v4

    .line 11
    iget-object v0, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mColumnHeaderLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    invoke-virtual {v0}, Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;->getFirstItemLeft()I

    move-result v5

    .line 12
    iget-object v0, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mColumnHeaderLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->fitSize2(IZIII)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mNeedSetLeft:Z

    return-void
.end method

.method public fitWidthSize2(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mColumnHeaderLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    invoke-virtual {v0}, Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;->customRequestLayout()V

    .line 2
    iget-object v0, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {v0}, Lcom/evrencoskun/tableview/ITableView;->getColumnHeaderRecyclerView()Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->getScrolledX()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mColumnHeaderLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    invoke-virtual {v1}, Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;->getFirstItemLeft()I

    move-result v7

    .line 4
    iget-object v1, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mColumnHeaderLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v8

    .line 5
    iget-object v1, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mColumnHeaderLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    move v9, v1

    :goto_0
    iget-object v1, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mColumnHeaderLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    .line 6
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v9, v1, :cond_0

    move-object v1, p0

    move v2, v9

    move v3, p1

    move v4, v0

    move v5, v7

    move v6, v8

    .line 7
    invoke-direct/range {v1 .. v6}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->fitSize2(IZIII)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mNeedSetLeft:Z

    return-void
.end method

.method public getCacheWidth(II)I
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mCachedWidthList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public getCellViewHolder(II)Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getVisibleCellRowRecyclerViews()[Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getVisibleCellViewsByColumnPosition(I)[Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    check-cast v3, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    iget-object p2, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {p2}, Lcom/evrencoskun/tableview/ITableView;->hasFixedWidth()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p2

    check-cast p1, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Lcom/evrencoskun/tableview/layoutmanager/ColumnLayoutManager;

    invoke-direct {p0}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->getCellRecyclerViewScrollState()I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lcom/evrencoskun/tableview/layoutmanager/ColumnLayoutManager;->isNeedFit()Z

    move-result p3

    if-eqz p3, :cond_2

    iget p3, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mLastDy:I

    if-gez p3, :cond_1

    sget-object p3, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " fitWidthSize all vertically up"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->fitWidthSize(Z)V

    goto :goto_0

    :cond_1
    sget-object p3, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " fitWidthSize all vertically down"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->fitWidthSize(Z)V

    :goto_0
    invoke-virtual {p1}, Lcom/evrencoskun/tableview/layoutmanager/ColumnLayoutManager;->clearNeedFit()V

    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setInitialPrefetchItemCount(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/evrencoskun/tableview/layoutmanager/ColumnLayoutManager;->getLastDx()I

    move-result p3

    if-nez p3, :cond_5

    invoke-direct {p0}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->getCellRecyclerViewScrollState()I

    move-result p3

    if-nez p3, :cond_5

    invoke-virtual {p1}, Lcom/evrencoskun/tableview/layoutmanager/ColumnLayoutManager;->isNeedFit()Z

    move-result p3

    if-eqz p3, :cond_4

    iput-boolean v0, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mNeedFit:Z

    invoke-virtual {p1}, Lcom/evrencoskun/tableview/layoutmanager/ColumnLayoutManager;->clearNeedFit()V

    :cond_4
    iget-boolean p1, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mNeedFit:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {p1}, Lcom/evrencoskun/tableview/ITableView;->getRowHeaderLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    if-ne p1, p2, :cond_5

    invoke-virtual {p0, v1}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->fitWidthSize2(Z)V

    sget-object p1, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " fitWidthSize populating data for the first time"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mNeedFit:Z

    :cond_5
    :goto_1
    return-void
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mHorizontalListener:Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mTableView:Lcom/evrencoskun/tableview/ITableView;

    invoke-interface {p1}, Lcom/evrencoskun/tableview/ITableView;->getHorizontalRecyclerViewListener()Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;

    move-result-object p1

    iput-object p1, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mHorizontalListener:Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mLastDy:I

    :cond_0
    return-void
.end method

.method public remeasureAllChild()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    iget-object v0, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v0}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->isScrollOthers()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p2

    iput p1, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mLastDy:I

    return p2
.end method

.method public setCacheWidth(II)V
    .locals 2

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6
    invoke-virtual {p0, v0, p1, p2}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->setCacheWidth(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCacheWidth(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mCachedWidthList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    iget-object p2, p0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->mCachedWidthList:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public shouldFitColumns(I)Z
    .locals 3

    invoke-direct {p0}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->getCellRecyclerViewScrollState()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->isScrollOthers()Z

    move-result v1

    if-eqz v1, :cond_1

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
