.class public Lcom/zjx/jyandroid/base/BaseFloatingView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/base/BaseFloatingView$OnFloatingViewMoveListener;
    }
.end annotation


# instance fields
.field private _draggableHelperDx:F

.field private _draggableHelperDy:F

.field private _draggableHelperX:I

.field private _draggableHelperY:I

.field private draggable:Z

.field protected draggableMaxX:I

.field protected draggableMaxY:I

.field protected draggableMinX:I

.field protected draggableMinY:I

.field public layoutParams:Landroid/view/WindowManager$LayoutParams;

.field private loaded:Z

.field private onConfigurationChangedListener:Lcom/zjx/jyandroid/base/Interfaces/MView$OnViewConfigurationChangedListener;

.field private onFloatingViewMoveListener:Lcom/zjx/jyandroid/base/BaseFloatingView$OnFloatingViewMoveListener;

.field public onTouchEventReceiver:Landroid/view/View$OnTouchListener;

.field protected showing:Z

.field protected touchListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/zjx/jyandroid/base/Interfaces/MView$OnTouchHandler;",
            ">;"
        }
    .end annotation
.end field

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const p1, -0xf423f

    .line 2
    iput p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggableMinX:I

    iput p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggableMinY:I

    const p1, 0xf423f

    iput p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggableMaxX:I

    iput p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggableMaxY:I

    .line 3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->touchListeners:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, -0xf423f

    .line 5
    iput p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggableMinX:I

    iput p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggableMinY:I

    const p1, 0xf423f

    iput p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggableMaxX:I

    iput p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggableMaxY:I

    .line 6
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->touchListeners:Ljava/util/HashSet;

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

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, -0xf423f

    .line 8
    iput p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggableMinX:I

    iput p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggableMinY:I

    const p1, 0xf423f

    iput p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggableMaxX:I

    iput p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggableMaxY:I

    .line 9
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->touchListeners:Ljava/util/HashSet;

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

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, -0xf423f

    .line 11
    iput p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggableMinX:I

    iput p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggableMinY:I

    const p1, 0xf423f

    iput p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggableMaxX:I

    iput p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggableMaxY:I

    .line 12
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->touchListeners:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public addOnTouchHandler(Lcom/zjx/jyandroid/base/Interfaces/MView$OnTouchHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->touchListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->onTouchEventReceiver:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggable:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->_draggableHelperX:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->_draggableHelperDx:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->_draggableHelperY:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->_draggableHelperDy:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggableMinX:I

    if-ge v1, v2, :cond_2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggableMaxY:I

    if-le v1, v2, :cond_3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_3
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggableMinY:I

    if-ge v1, v2, :cond_4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggableMaxY:I

    if-le v1, v2, :cond_5

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->onFloatingViewMoveListener:Lcom/zjx/jyandroid/base/BaseFloatingView$OnFloatingViewMoveListener;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-interface {v0, v2, v1}, Lcom/zjx/jyandroid/base/BaseFloatingView$OnFloatingViewMoveListener;->onFloatingViewMoved(II)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->_draggableHelperX:I

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->_draggableHelperY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->_draggableHelperDx:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->_draggableHelperDy:F

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->touchListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/base/Interfaces/MView$OnTouchHandler;

    invoke-interface {v1, p0, p1}, Lcom/zjx/jyandroid/base/Interfaces/MView$OnTouchHandler;->touchOccurred(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_3

    :cond_8
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getOnMoveListener()Lcom/zjx/jyandroid/base/BaseFloatingView$OnFloatingViewMoveListener;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->onFloatingViewMoveListener:Lcom/zjx/jyandroid/base/BaseFloatingView$OnFloatingViewMoveListener;

    return-object v0
.end method

.method public isDraggable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->showing:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->onConfigurationChangedListener:Lcom/zjx/jyandroid/base/Interfaces/MView$OnViewConfigurationChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/zjx/jyandroid/base/Interfaces/MView$OnViewConfigurationChangedListener;->onConfigurationWillChange(Landroid/view/View;Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->onConfigurationChangedListener:Lcom/zjx/jyandroid/base/Interfaces/MView$OnViewConfigurationChangedListener;

    invoke-interface {v0, p0, p1}, Lcom/zjx/jyandroid/base/Interfaces/MView$OnViewConfigurationChangedListener;->onConfigurationChanged(Landroid/view/View;Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->viewWillLoad()V

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->viewDidLoad()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public removeAllOnTouchHandler()V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->touchListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public removeOnTouchHandler(Lcom/zjx/jyandroid/base/Interfaces/MView$OnTouchHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->touchListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDraggable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggable:Z

    return-void
.end method

.method public setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public setOnConfigurationChangedListener(Lcom/zjx/jyandroid/base/Interfaces/MView$OnViewConfigurationChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->onConfigurationChangedListener:Lcom/zjx/jyandroid/base/Interfaces/MView$OnViewConfigurationChangedListener;

    return-void
.end method

.method public setOnMoveListener(Lcom/zjx/jyandroid/base/BaseFloatingView$OnFloatingViewMoveListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->onFloatingViewMoveListener:Lcom/zjx/jyandroid/base/BaseFloatingView$OnFloatingViewMoveListener;

    return-void
.end method

.method public setWindowManager(Landroid/view/WindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->windowManager:Landroid/view/WindowManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->showing:Z

    return-void
.end method

.method public updatePositionInWindow(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->showing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->updateWindowParams(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public updateWindowParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->windowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public viewDidAppear()V
    .locals 0

    return-void
.end method

.method public viewDidLoad()V
    .locals 0

    return-void
.end method

.method public viewWillAppear()V
    .locals 0

    return-void
.end method

.method public viewWillLoad()V
    .locals 0

    return-void
.end method
