.class public Lcom/zjx/jyandroid/base/CustomViews/NavigationView;
.super Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/base/CustomViews/NavigationView$ViewStackOnChangedListener;
    }
.end annotation


# instance fields
.field private backButton:Landroid/view/View;

.field private rightButton:Landroid/view/View;

.field private rootView:Landroid/view/View;

.field private viewStackOnChangedListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/base/CustomViews/NavigationView$ViewStackOnChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private viewsStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->rootView:Landroid/view/View;

    .line 3
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->viewStackOnChangedListeners:Ljava/util/LinkedList;

    .line 4
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->viewsStack:Ljava/util/Stack;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->rootView:Landroid/view/View;

    .line 7
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->viewStackOnChangedListeners:Ljava/util/LinkedList;

    .line 8
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->viewsStack:Ljava/util/Stack;

    .line 9
    sget-object v1, Lcom/zjx/jyandroid/R$styleable;->NavigationView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 10
    :try_start_0
    sget p2, Lcom/zjx/jyandroid/R$styleable;->NavigationView_rootView:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p1

    if-nez p1, :cond_0

    .line 13
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    .line 14
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setId(I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 16
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->rootView:Landroid/view/View;

    .line 17
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    .line 18
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    throw p2
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

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->rootView:Landroid/view/View;

    .line 22
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->viewStackOnChangedListeners:Ljava/util/LinkedList;

    .line 23
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->viewsStack:Ljava/util/Stack;

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

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->rootView:Landroid/view/View;

    .line 26
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->viewStackOnChangedListeners:Ljava/util/LinkedList;

    .line 27
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->viewsStack:Ljava/util/Stack;

    return-void
.end method

.method private refreshBackButtonVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->backButton:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->viewsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->backButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->backButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getBackButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->backButton:Landroid/view/View;

    return-object v0
.end method

.method public getRightButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->rightButton:Landroid/view/View;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    iget-object v0, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->pushView(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public popToRootView(Z)V
    .locals 0

    return-void
.end method

.method public popToView(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public popView(Z)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->viewsStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object p1, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->viewsStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->refreshBackButtonVisibility()V

    iget-object p1, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->viewStackOnChangedListeners:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView$ViewStackOnChangedListener;

    iget-object v1, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->viewsStack:Ljava/util/Stack;

    invoke-interface {v0, v1}, Lcom/zjx/jyandroid/base/CustomViews/NavigationView$ViewStackOnChangedListener;->viewStackChanged(Ljava/util/Stack;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pushView(Landroid/view/View;Z)V
    .locals 3

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->viewsStack:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    new-instance p2, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p2}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x4

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p2, p1, v0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-direct {p0}, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->refreshBackButtonVisibility()V

    iget-object p1, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->viewStackOnChangedListeners:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zjx/jyandroid/base/CustomViews/NavigationView$ViewStackOnChangedListener;

    iget-object v0, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->viewsStack:Ljava/util/Stack;

    invoke-interface {p2, v0}, Lcom/zjx/jyandroid/base/CustomViews/NavigationView$ViewStackOnChangedListener;->viewStackChanged(Ljava/util/Stack;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerOnViewStackChangedListener(Lcom/zjx/jyandroid/base/CustomViews/NavigationView$ViewStackOnChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->viewStackOnChangedListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBackButton(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView$1;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/base/CustomViews/NavigationView$1;-><init>(Lcom/zjx/jyandroid/base/CustomViews/NavigationView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->backButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iput-object p1, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->backButton:Landroid/view/View;

    invoke-direct {p0}, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->refreshBackButtonVisibility()V

    return-void
.end method

.method public setRightButton(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->rightButton:Landroid/view/View;

    return-void
.end method

.method public unregisterOnViewStackChangedListener(Lcom/zjx/jyandroid/base/CustomViews/NavigationView$ViewStackOnChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->viewStackOnChangedListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
