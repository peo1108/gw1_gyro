.class public Lcom/zjx/jyandroid/base/Components/LineGraphView;
.super Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphViewDelegate;,
        Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphViewDataSource;,
        Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;
    }
.end annotation


# instance fields
.field private _draggableHelperDx:F

.field private _draggableHelperDy:F

.field private _draggableHelperX:F

.field private _draggableHelperY:F

.field private dataSource:Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphViewDataSource;

.field private delegate:Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphViewDelegate;

.field private enableMultiselection:Z

.field private points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;",
            ">;"
        }
    .end annotation
.end field

.field private rangeRect:Lcom/zjx/jyandroid/base/FloatRect;

.field selectedPoints:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/zjx/jyandroid/base/FloatRect;

    const/4 v0, 0x0

    const/high16 v1, 0x43480000    # 200.0f

    invoke-direct {p1, v0, v0, v1, v1}, Lcom/zjx/jyandroid/base/FloatRect;-><init>(FFFF)V

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->rangeRect:Lcom/zjx/jyandroid/base/FloatRect;

    .line 3
    new-instance p1, Lcom/zjx/jyandroid/base/Components/LineGraphView$1;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/base/Components/LineGraphView$1;-><init>(Lcom/zjx/jyandroid/base/Components/LineGraphView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->selectedPoints:Ljava/util/Set;

    .line 6
    iput-boolean p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->enableMultiselection:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    new-instance p1, Lcom/zjx/jyandroid/base/FloatRect;

    const/4 p2, 0x0

    const/high16 v0, 0x43480000    # 200.0f

    invoke-direct {p1, p2, p2, v0, v0}, Lcom/zjx/jyandroid/base/FloatRect;-><init>(FFFF)V

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->rangeRect:Lcom/zjx/jyandroid/base/FloatRect;

    .line 9
    new-instance p1, Lcom/zjx/jyandroid/base/Components/LineGraphView$1;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/base/Components/LineGraphView$1;-><init>(Lcom/zjx/jyandroid/base/Components/LineGraphView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 11
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->selectedPoints:Ljava/util/Set;

    .line 12
    iput-boolean p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->enableMultiselection:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance p1, Lcom/zjx/jyandroid/base/FloatRect;

    const/4 p2, 0x0

    const/high16 p3, 0x43480000    # 200.0f

    invoke-direct {p1, p2, p2, p3, p3}, Lcom/zjx/jyandroid/base/FloatRect;-><init>(FFFF)V

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->rangeRect:Lcom/zjx/jyandroid/base/FloatRect;

    .line 15
    new-instance p1, Lcom/zjx/jyandroid/base/Components/LineGraphView$1;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/base/Components/LineGraphView$1;-><init>(Lcom/zjx/jyandroid/base/Components/LineGraphView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 17
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->selectedPoints:Ljava/util/Set;

    .line 18
    iput-boolean p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->enableMultiselection:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 20
    new-instance p1, Lcom/zjx/jyandroid/base/FloatRect;

    const/4 p2, 0x0

    const/high16 p3, 0x43480000    # 200.0f

    invoke-direct {p1, p2, p2, p3, p3}, Lcom/zjx/jyandroid/base/FloatRect;-><init>(FFFF)V

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->rangeRect:Lcom/zjx/jyandroid/base/FloatRect;

    .line 21
    new-instance p1, Lcom/zjx/jyandroid/base/Components/LineGraphView$1;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/base/Components/LineGraphView$1;-><init>(Lcom/zjx/jyandroid/base/Components/LineGraphView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 23
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->selectedPoints:Ljava/util/Set;

    .line 24
    iput-boolean p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->enableMultiselection:Z

    return-void
.end method

.method public static synthetic access$100(Lcom/zjx/jyandroid/base/Components/LineGraphView;)F
    .locals 0

    iget p0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->_draggableHelperX:F

    return p0
.end method

.method public static synthetic access$102(Lcom/zjx/jyandroid/base/Components/LineGraphView;F)F
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->_draggableHelperX:F

    return p1
.end method

.method public static synthetic access$200(Lcom/zjx/jyandroid/base/Components/LineGraphView;)F
    .locals 0

    iget p0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->_draggableHelperY:F

    return p0
.end method

.method public static synthetic access$202(Lcom/zjx/jyandroid/base/Components/LineGraphView;F)F
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->_draggableHelperY:F

    return p1
.end method

.method public static synthetic access$300(Lcom/zjx/jyandroid/base/Components/LineGraphView;)F
    .locals 0

    iget p0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->_draggableHelperDx:F

    return p0
.end method

.method public static synthetic access$302(Lcom/zjx/jyandroid/base/Components/LineGraphView;F)F
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->_draggableHelperDx:F

    return p1
.end method

.method public static synthetic access$400(Lcom/zjx/jyandroid/base/Components/LineGraphView;)F
    .locals 0

    iget p0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->_draggableHelperDy:F

    return p0
.end method

.method public static synthetic access$402(Lcom/zjx/jyandroid/base/Components/LineGraphView;F)F
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->_draggableHelperDy:F

    return p1
.end method

.method public static synthetic access$500(Lcom/zjx/jyandroid/base/Components/LineGraphView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->enableMultiselection:Z

    return p0
.end method

.method public static synthetic access$600(Lcom/zjx/jyandroid/base/Components/LineGraphView;)Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphViewDelegate;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->delegate:Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphViewDelegate;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/zjx/jyandroid/base/Components/LineGraphView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->points:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/zjx/jyandroid/base/Components/LineGraphView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->updateGraphDisplayByPoints(Ljava/util/List;)V

    return-void
.end method

.method private clear()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private updateGraphDisplayByPoints(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->clear()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;

    invoke-static {v1}, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->access$000(Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;)Lcom/zjx/jyandroid/base/FloatPoint;

    move-result-object v2

    iget-object v3, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->rangeRect:Lcom/zjx/jyandroid/base/FloatRect;

    invoke-static {v3, v2}, Lcom/zjx/jyandroid/base/util/b;->G(Lcom/zjx/jyandroid/base/FloatRect;Lcom/zjx/jyandroid/base/FloatPoint;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->convertToRelativeCoordinate(Lcom/zjx/jyandroid/base/FloatPoint;)Lcom/zjx/jyandroid/base/FloatPoint;

    move-result-object v2

    iget v3, v2, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    invoke-virtual {v1, v3}, Landroid/view/View;->setX(F)V

    iget v2, v2, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    invoke-virtual {v1}, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->setSelected(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->setSelected(Z)V

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/zjx/jyandroid/base/Components/LineGraphView$2;

    invoke-direct {v2, p0, p1}, Lcom/zjx/jyandroid/base/Components/LineGraphView$2;-><init>(Lcom/zjx/jyandroid/base/Components/LineGraphView;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public declared-synchronized addSelectedPoint(Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;)V
    .locals 1
    .param p1    # Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->addSelectedPoints(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized addSelectedPointAtIndex(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->points:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->addSelectedPoints(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized addSelectedPoints(Ljava/util/Set;)V
    .locals 2
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->setSelected(Z)V

    iget-object v1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->selectedPoints:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized addSelectedPointsAtIndexes(Ljava/util/Set;)V
    .locals 2
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->setSelected(Z)V

    iget-object v1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->selectedPoints:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized clearSelectedPoints()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->selectedPoints:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->setSelected(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->selectedPoints:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public convertToAbsoluteCoordinate(Lcom/zjx/jyandroid/base/FloatPoint;)Lcom/zjx/jyandroid/base/FloatPoint;
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p1, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    int-to-float v0, v0

    div-float/2addr v2, v0

    iget p1, p1, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    const/high16 v0, 0x41a00000    # 20.0f

    add-float/2addr p1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    new-instance p1, Lcom/zjx/jyandroid/base/FloatPoint;

    iget-object v1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->rangeRect:Lcom/zjx/jyandroid/base/FloatRect;

    iget v3, v1, Lcom/zjx/jyandroid/base/FloatRect;->left:F

    iget v4, v1, Lcom/zjx/jyandroid/base/FloatRect;->right:F

    sub-float/2addr v4, v3

    mul-float/2addr v2, v4

    add-float/2addr v3, v2

    iget v2, v1, Lcom/zjx/jyandroid/base/FloatRect;->top:F

    iget v1, v1, Lcom/zjx/jyandroid/base/FloatRect;->bottom:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    invoke-direct {p1, v3, v2}, Lcom/zjx/jyandroid/base/FloatPoint;-><init>(FF)V

    return-object p1
.end method

.method public convertToRelativeCoordinate(Lcom/zjx/jyandroid/base/FloatPoint;)Lcom/zjx/jyandroid/base/FloatPoint;
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p1, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iget p1, p1, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    iget-object v3, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->rangeRect:Lcom/zjx/jyandroid/base/FloatRect;

    iget v4, v3, Lcom/zjx/jyandroid/base/FloatRect;->left:F

    sub-float/2addr v2, v4

    iget v4, v3, Lcom/zjx/jyandroid/base/FloatRect;->top:F

    sub-float/2addr p1, v4

    int-to-float v0, v0

    invoke-virtual {v3}, Lcom/zjx/jyandroid/base/FloatRect;->width()F

    move-result v3

    div-float/2addr v0, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->rangeRect:Lcom/zjx/jyandroid/base/FloatRect;

    invoke-virtual {v3}, Lcom/zjx/jyandroid/base/FloatRect;->height()F

    move-result v3

    div-float v3, v1, v3

    new-instance v4, Lcom/zjx/jyandroid/base/FloatPoint;

    mul-float/2addr v2, v0

    mul-float/2addr p1, v3

    sub-float/2addr v1, p1

    const/high16 p1, 0x41a00000    # 20.0f

    sub-float/2addr v1, p1

    invoke-direct {v4, v2, v1}, Lcom/zjx/jyandroid/base/FloatPoint;-><init>(FF)V

    return-object v4
.end method

.method public getAbsoluteCoordinateAtIndex(I)Lcom/zjx/jyandroid/base/FloatPoint;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->points:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->getAbsoluteCoordinate()Lcom/zjx/jyandroid/base/FloatPoint;

    move-result-object p1

    return-object p1
.end method

.method public getDataSource()Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphViewDataSource;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->dataSource:Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphViewDataSource;

    return-object v0
.end method

.method public getDelegate()Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphViewDelegate;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->delegate:Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphViewDelegate;

    return-object v0
.end method

.method public getIndexesOfSelectedPoints()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->selectedPoints:Ljava/util/Set;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;

    iget-object v3, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->points:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getPointAtIndex(I)Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->points:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;

    return-object p1
.end method

.method public getRangeRect()Lcom/zjx/jyandroid/base/FloatRect;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->rangeRect:Lcom/zjx/jyandroid/base/FloatRect;

    return-object v0
.end method

.method public declared-synchronized getSelectedPoints()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->selectedPoints:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->selectedPoints:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public isEnableMultiselection()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->enableMultiselection:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    new-instance v0, Lcom/zjx/jyandroid/base/Components/LineGraphView$3;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/base/Components/LineGraphView$3;-><init>(Lcom/zjx/jyandroid/base/Components/LineGraphView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reloadData()V
    .locals 6

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->dataSource:Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphViewDataSource;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->clearSelectedPoints()V

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->dataSource:Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphViewDataSource;

    invoke-interface {v0, p0}, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphViewDataSource;->numberOfPointsInGraphView(Lcom/zjx/jyandroid/base/Components/LineGraphView;)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->points:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->dataSource:Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphViewDataSource;

    invoke-interface {v2, p0, v1}, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphViewDataSource;->pointAtIndex(Lcom/zjx/jyandroid/base/Components/LineGraphView;I)Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->points:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->points:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    invoke-static {v3}, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->access$000(Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;)Lcom/zjx/jyandroid/base/FloatPoint;

    move-result-object v4

    iget v4, v4, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    invoke-static {v3}, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->access$000(Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;)Lcom/zjx/jyandroid/base/FloatPoint;

    move-result-object v5

    iget v5, v5, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The line graph point x absolute coordinate is less than the previous one. Current x:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->access$000(Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;)Lcom/zjx/jyandroid/base/FloatPoint;

    move-result-object v2

    iget v2, v2, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", prev x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;->access$000(Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphPointView;)Lcom/zjx/jyandroid/base/FloatPoint;

    move-result-object v2

    iget v2, v2, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->points:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Point returned by datasource is null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->points:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->updateGraphDisplayByPoints(Ljava/util/List;)V

    return-void
.end method

.method public setDataSource(Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphViewDataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->dataSource:Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphViewDataSource;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->clear()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->reloadData()V

    :goto_0
    return-void
.end method

.method public setDelegate(Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->delegate:Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphViewDelegate;

    return-void
.end method

.method public setEnableMultiselection(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->enableMultiselection:Z

    return-void
.end method

.method public setRangeRect(Lcom/zjx/jyandroid/base/FloatRect;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->rangeRect:Lcom/zjx/jyandroid/base/FloatRect;

    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/LineGraphView;->points:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->updateGraphDisplayByPoints(Ljava/util/List;)V

    return-void
.end method
