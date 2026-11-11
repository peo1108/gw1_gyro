.class public Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VerticalRecyclerViewListener"


# instance fields
.field private dx:F

.field private dy:F

.field private final mCellRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentRVTouched:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mIsMoved:Z

.field private mLastTouchedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mYPosition:I


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

    iput-object v0, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mCurrentRVTouched:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    iput v0, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->dx:F

    iput v0, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->dy:F

    invoke-interface {p1}, Lcom/evrencoskun/tableview/ITableView;->getRowHeaderRecyclerView()Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-interface {p1}, Lcom/evrencoskun/tableview/ITableView;->getCellRecyclerView()Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mCellRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    return-void
.end method

.method private verticalDirection(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->dx:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->dx:F

    :cond_0
    iget v0, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->dy:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->dy:F

    :cond_1
    iget v0, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->dx:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->dy:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->dx:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->dy:F

    cmpg-float p1, v0, v1

    if-gtz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    return v2
.end method


# virtual methods
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

    iget-object v0, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mCurrentRVTouched:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p2}, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->verticalDirection(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iput-object v2, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mCurrentRVTouched:Landroidx/recyclerview/widget/RecyclerView;

    return v3

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    iput-object p1, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mCurrentRVTouched:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mLastTouchedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_2

    if-eq p1, p2, :cond_2

    invoke-virtual {p0, v3}, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->removeLastTouchedRecyclerViewScrollListener(Z)V

    :cond_2
    move-object p2, p1

    check-cast p2, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->getScrolledY()I

    move-result p2

    iput p2, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mYPosition:I

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object p2, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mCellRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    if-ne p1, p2, :cond_3

    sget-object p1, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->LOG_TAG:Ljava/lang/String;

    const-string p2, "mCellRecyclerView scroll listener added"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    if-ne p1, p2, :cond_4

    sget-object p1, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->LOG_TAG:Ljava/lang/String;

    const-string p2, "mRowHeaderRecyclerView scroll listener added"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    iput-boolean v3, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mIsMoved:Z

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    iput-object p1, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mCurrentRVTouched:Landroidx/recyclerview/widget/RecyclerView;

    iput-boolean v1, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mIsMoved:Z

    goto :goto_2

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v1, :cond_9

    iput-object v2, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mCurrentRVTouched:Landroidx/recyclerview/widget/RecyclerView;

    move-object p2, p1

    check-cast p2, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->getScrolledY()I

    move-result p2

    iget v0, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mYPosition:I

    if-ne v0, p2, :cond_8

    iget-boolean p2, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mIsMoved:Z

    if-nez p2, :cond_8

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object p2, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mCellRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    if-ne p1, p2, :cond_7

    sget-object p2, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->LOG_TAG:Ljava/lang/String;

    const-string v0, "mCellRecyclerView scroll listener removed from up "

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    iget-object p2, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    if-ne p1, p2, :cond_8

    sget-object p2, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->LOG_TAG:Ljava/lang/String;

    const-string v0, "mRowHeaderRecyclerView scroll listener removed from up"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    iput-object p1, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mLastTouchedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    :cond_9
    :goto_2
    return v3
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_1

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mIsMoved:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mCurrentRVTouched:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mCellRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    if-ne p1, p2, :cond_0

    sget-object p1, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->LOG_TAG:Ljava/lang/String;

    const-string p2, "mCellRecyclerView scroll listener removed from onScrollStateChanged"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    if-ne p1, p2, :cond_1

    sget-object p1, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->LOG_TAG:Ljava/lang/String;

    const-string p2, "mRowHeaderRecyclerView scroll listener removed from onScrollStateChanged"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mCellRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    if-ne p1, v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    iget-object p1, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mCellRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_1
    :goto_0
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

.method public removeLastTouchedRecyclerViewScrollListener(Z)V
    .locals 3

    iget-object v0, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mLastTouchedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mCellRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    const-string v2, "mCellRecyclerView scroll listener removed from last touched"

    if-ne v0, v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object p1, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mCellRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    sget-object p1, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v0, p0}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    sget-object v0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mRowHeaderRecyclerView scroll listener removed from last touched"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mCellRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p1, p0}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object p1, p0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;->mCellRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
