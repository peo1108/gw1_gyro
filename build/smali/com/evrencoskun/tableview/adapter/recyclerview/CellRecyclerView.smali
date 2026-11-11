.class public Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CellRecyclerView"


# instance fields
.field private mIsHorizontalScrollListenerRemoved:Z

.field private mIsVerticalScrollListenerRemoved:Z

.field private mScrolledX:I

.field private mScrolledY:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->mScrolledX:I

    iput v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->mScrolledY:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->mIsHorizontalScrollListenerRemoved:Z

    iput-boolean v1, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->mIsVerticalScrollListenerRemoved:Z

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/evrencoskun/tableview/R$integer;->default_item_cache_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const/high16 p1, 0x100000

    invoke-virtual {p0, p1}, Landroid/view/View;->setDrawingCacheQuality(I)V

    return-void
.end method


# virtual methods
.method public addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->mIsHorizontalScrollListenerRemoved:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->mIsHorizontalScrollListenerRemoved:Z

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->LOG_TAG:Ljava/lang/String;

    const-string v0, "mIsHorizontalScrollListenerRemoved has been tried to add itself before remove the old one"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->mIsVerticalScrollListenerRemoved:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->mIsVerticalScrollListenerRemoved:Z

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->LOG_TAG:Ljava/lang/String;

    const-string v0, "mIsVerticalScrollListenerRemoved has been tried to add itself before remove the old one"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :goto_0
    return-void
.end method

.method public clearScrolledX()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->mScrolledX:I

    return-void
.end method

.method public fling(II)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result p1

    return p1
.end method

.method public getScrolledX()I
    .locals 1

    iget v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->mScrolledX:I

    return v0
.end method

.method public getScrolledY()I
    .locals 1

    iget v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->mScrolledY:I

    return v0
.end method

.method public isHorizontalScrollListenerRemoved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->mIsHorizontalScrollListenerRemoved:Z

    return v0
.end method

.method public isScrollOthers()Z
    .locals 1

    iget-boolean v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->mIsHorizontalScrollListenerRemoved:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onScrolled(II)V
    .locals 1

    iget v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->mScrolledX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->mScrolledX:I

    iget v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->mScrolledY:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->mScrolledY:I

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    return-void
.end method

.method public removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->mIsHorizontalScrollListenerRemoved:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->LOG_TAG:Ljava/lang/String;

    const-string v0, "HorizontalRecyclerViewListener has been tried to remove itself before add new one"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->mIsHorizontalScrollListenerRemoved:Z

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->mIsVerticalScrollListenerRemoved:Z

    if-eqz v0, :cond_2

    sget-object p1, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->LOG_TAG:Ljava/lang/String;

    const-string v0, "mIsVerticalScrollListenerRemoved has been tried to remove itself before add new one"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;->mIsVerticalScrollListenerRemoved:Z

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :goto_0
    return-void
.end method
