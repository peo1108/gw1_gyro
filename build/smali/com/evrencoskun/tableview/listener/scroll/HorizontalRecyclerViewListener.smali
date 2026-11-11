.class public Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HorizontalRecyclerViewListener"


# instance fields
.field private final mCellLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentRVTouched:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mIsMoved:Z

.field private mLastTouchedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mScrollPosition:I

.field private mScrollPositionOffset:I

.field private final mVerticalRecyclerViewListener:Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mXPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/evrencoskun/tableview/ITableView;)V
    .locals 1
    .param p1    # Lcom/evrencoskun/tableview/ITableView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mScrollPositionOffset:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mCurrentRVTouched:Landroidx/recyclerview/widget/RecyclerView;

    invoke-interface {p1}, Lcom/evrencoskun/tableview/ITableView;->getColumnHeaderRecyclerView()Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-interface {p1}, Lcom/evrencoskun/tableview/ITableView;->getCellRecyclerView()Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mCellLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-interface {p1}, Lcom/evrencoskun/tableview/ITableView;->getVerticalRecyclerViewListener()Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;

    move-result-object p1

    iput-object p1, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mVerticalRecyclerViewListener:Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;

    return-void
.end method

.method private getIndex(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mCellLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mCellLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private renewScrollPosition(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mScrollPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mScrollPosition:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mScrollPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mScrollPosition:I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mScrollPosition:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iput p1, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mScrollPositionOffset:I

    return-void
.end method


# virtual methods
.method public getScrollPosition()I
    .locals 1

    iget v0, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mScrollPosition:I

    return v0
.end method

.method public getScrollPositionOffset()I
    .locals 1

    iget v0, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mScrollPositionOffset:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mCurrentRVTouched:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    const-string v3, "Scroll listener  has been removed to "

    if-nez v0, :cond_3

    iput-object p1, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mCurrentRVTouched:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mLastTouchedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_2

    if-eq p1, p2, :cond_2

    iget-object v0, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    if-ne p2, v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object p2, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    sget-object p2, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Scroll listener  has been removed to mColumnHeaderRecyclerView at last touch control"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->getIndex(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p2

    if-ltz p2, :cond_2

    iget-object v0, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mCellLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_2

    iget-object v0, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mLastTouchedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    check-cast v0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v0}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->isHorizontalScrollListenerRemoved()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mCellLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    sget-object v0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mLastTouchedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " CellRecyclerView at last touch control"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mCellLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    :cond_2
    :goto_0
    move-object p2, p1

    check-cast p2, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->getScrolledX()I

    move-result p2

    iput p2, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mXPosition:I

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    sget-object p2, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scroll listener  has been added to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " at action down"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    iput-object p1, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mCurrentRVTouched:Landroidx/recyclerview/widget/RecyclerView;

    iput-boolean v1, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mIsMoved:Z

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x0

    if-ne v0, v1, :cond_6

    iput-object v4, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mCurrentRVTouched:Landroidx/recyclerview/widget/RecyclerView;

    move-object p2, p1

    check-cast p2, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->getScrolledX()I

    move-result p2

    iget v0, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mXPosition:I

    if-ne v0, p2, :cond_5

    iget-boolean p2, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mIsMoved:Z

    if-nez p2, :cond_5

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    sget-object p2, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at action up"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput-object p1, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mLastTouchedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_7

    invoke-direct {p0, p1}, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->renewScrollPosition(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    sget-object p2, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at action cancel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mIsMoved:Z

    iput-object p1, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mLastTouchedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v4, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mCurrentRVTouched:Landroidx/recyclerview/widget/RecyclerView;

    :cond_7
    :goto_1
    return v2
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->renewScrollPosition(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    sget-object p2, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scroll listener has been removed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " at onScrollStateChanged"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mIsMoved:Z

    iget-object p2, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mLastTouchedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    if-eq p2, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    iget-object p2, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mVerticalRecyclerViewListener:Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;

    invoke-virtual {p2, p1}, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->removeLastTouchedRecyclerViewScrollListener(Z)V

    :cond_1
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    move p1, v1

    :goto_0
    iget-object p3, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mCellLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p3

    if-ge p1, p3, :cond_2

    iget-object p3, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mCellLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p3, p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    move p3, v1

    :goto_1
    iget-object v0, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mCellLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-ge p3, v0, :cond_2

    iget-object v0, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mCellLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    if-eq v0, p1, :cond_1

    invoke-virtual {v0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public setScrollPosition(I)V
    .locals 0

    iput p1, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mScrollPosition:I

    return-void
.end method

.method public setScrollPositionOffset(I)V
    .locals 0

    iput p1, p0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;->mScrollPositionOffset:I

    return-void
.end method
