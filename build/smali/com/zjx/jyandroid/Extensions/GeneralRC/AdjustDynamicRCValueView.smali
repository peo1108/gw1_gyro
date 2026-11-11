.class public Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;
.super Lcom/zjx/jyandroid/base/BaseFloatingView;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$RecoilValueLineGraphPointView;
    }
.end annotation


# instance fields
.field clearButton:Landroid/view/View;

.field closeButton:Landroid/view/View;

.field currentDataNode:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;

.field dataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field deleteButton:Landroid/view/View;

.field downButton:Landroid/view/View;

.field horizontalRangeSlider:Lcom/google/android/material/slider/RangeSlider;

.field insertButton:Landroid/view/View;

.field lastMouseLeftDown:Z

.field leftButton:Landroid/view/View;

.field private leftMouseDownMillisecond:I

.field lineGraphView:Lcom/zjx/jyandroid/base/Components/LineGraphView;

.field lineGraphViewHolder:Landroid/view/View;

.field multiselect:Z

.field multiselectButton:Landroid/view/View;

.field progressBar:Landroid/widget/ProgressBar;

.field progressBarUnder:Landroid/widget/ProgressBar;

.field refreshButton:Landroid/view/View;

.field rightButton:Landroid/view/View;

.field saveButton:Landroid/view/View;

.field timeTextView:Landroid/widget/TextView;

.field upButton:Landroid/view/View;

.field updateProgressRunnable:Ljava/lang/Runnable;

.field verticalRangeSlider:Lcom/google/android/material/slider/RangeSlider;

.field weaponTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->multiselect:Z

    .line 3
    iput p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->leftMouseDownMillisecond:I

    .line 4
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->lastMouseLeftDown:Z

    .line 5
    new-instance p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$15;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$15;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->updateProgressRunnable:Ljava/lang/Runnable;

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

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->multiselect:Z

    .line 8
    iput p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->leftMouseDownMillisecond:I

    .line 9
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->lastMouseLeftDown:Z

    .line 10
    new-instance p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$15;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$15;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->updateProgressRunnable:Ljava/lang/Runnable;

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

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->multiselect:Z

    .line 13
    iput p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->leftMouseDownMillisecond:I

    .line 14
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->lastMouseLeftDown:Z

    .line 15
    new-instance p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$15;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$15;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->updateProgressRunnable:Ljava/lang/Runnable;

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

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->multiselect:Z

    .line 18
    iput p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->leftMouseDownMillisecond:I

    .line 19
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->lastMouseLeftDown:Z

    .line 20
    new-instance p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$15;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$15;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->updateProgressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic access$000(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;)I
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->getProgressBarUnderProgress()I

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;)I
    .locals 0

    iget p0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->leftMouseDownMillisecond:I

    return p0
.end method

.method public static synthetic access$200(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->refreshData()V

    return-void
.end method

.method private getProgressBarUnderProgress()I
    .locals 3

    iget v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->leftMouseDownMillisecond:I

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->lineGraphView:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->getRangeRect()Lcom/zjx/jyandroid/base/FloatRect;

    move-result-object v1

    iget v1, v1, Lcom/zjx/jyandroid/base/FloatRect;->left:F

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->lineGraphView:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->getRangeRect()Lcom/zjx/jyandroid/base/FloatRect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zjx/jyandroid/base/FloatRect;->width()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private refreshData()V
    .locals 2

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v0

    const-class v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->getRcPerformer()Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->getCurrentDataNode()Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;

    move-result-object v1

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->currentDataNode:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCConfigDataProcessor$RecoilControlDataNode;->getDataArray()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->dataArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->weaponTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->getRcPerformer()Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCPerformer;->getCurrentConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->lineGraphViewHolder:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/base/util/b;->C(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public eventOccurred(Ljava/util/LinkedList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/base/InputEvents/InputEvent;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v2

    sget-object v3, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->MouseButtonEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_4

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEvent;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEvent;->getButtonMask()I

    move-result v0

    and-int/2addr v0, v4

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->lastMouseLeftDown:Z

    if-eq v0, v4, :cond_0

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->y()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    iput v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->leftMouseDownMillisecond:I

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$16;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$16;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_2
    iput-boolean v4, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->lastMouseLeftDown:Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v2

    sget-object v3, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->ScrollEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    if-ne v2, v3, :cond_6

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->lineGraphView:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->getIndexesOfSelectedPoints()Ljava/util/Set;

    move-result-object v1

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/ScrollEvent;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->dataArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->dataArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget v3, v0, Lcom/zjx/jyandroid/base/InputEvents/ScrollEvent;->y:I

    int-to-double v8, v3

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    new-instance v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$17;

    invoke-direct {v0, p0, v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$17;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;Ljava/util/Set;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v2

    sget-object v3, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->KeyboardEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    if-ne v2, v3, :cond_0

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;

    iget v2, v0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;->usage:I

    const/16 v3, -0x20

    if-eq v2, v3, :cond_7

    const/16 v3, -0x19

    if-ne v2, v3, :cond_0

    :cond_7
    iget-boolean v0, v0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;->down:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->lineGraphView:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-virtual {v0, v4}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->setEnableMultiselection(Z)V

    goto/16 :goto_0

    :cond_8
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->multiselect:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->lineGraphView:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->setEnableMultiselection(Z)V

    goto/16 :goto_0

    :cond_9
    return v1
.end method

.method public getLeftMouseDownMillisecond()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->leftMouseDownMillisecond:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->refreshData()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->lineGraphView:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$9;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$9;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;)V

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->setDataSource(Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphViewDataSource;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->lineGraphView:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$10;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$10;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;)V

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->setDelegate(Lcom/zjx/jyandroid/base/Components/LineGraphView$LineGraphViewDelegate;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->saveButton:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$11;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$11;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->insertButton:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$12;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$12;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->deleteButton:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$13;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$13;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->refreshButton:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$14;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$14;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->registerEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->unregisterEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    invoke-super {p0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->onFinishInflate()V

    sget v0, Lcom/zjx/jyandroid/R$id;->progressBar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->progressBar:Landroid/widget/ProgressBar;

    sget v0, Lcom/zjx/jyandroid/R$id;->progressBarUnder:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->progressBarUnder:Landroid/widget/ProgressBar;

    sget v0, Lcom/zjx/jyandroid/R$id;->closeButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->closeButton:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->lineGraphView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/LineGraphView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->lineGraphView:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    sget v0, Lcom/zjx/jyandroid/R$id;->lineGraphViewHolder:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->lineGraphViewHolder:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->horizontalRangeSlider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/slider/RangeSlider;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->horizontalRangeSlider:Lcom/google/android/material/slider/RangeSlider;

    sget v0, Lcom/zjx/jyandroid/R$id;->verticalRangeSlider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/slider/RangeSlider;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->verticalRangeSlider:Lcom/google/android/material/slider/RangeSlider;

    sget v0, Lcom/zjx/jyandroid/R$id;->saveButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->saveButton:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->insertButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->insertButton:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->deleteButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->deleteButton:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->refreshButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->refreshButton:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->timeTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->timeTextView:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->weaponTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->weaponTextView:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->clearButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->clearButton:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->multiselectButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->multiselectButton:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->upButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->upButton:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->rightButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->rightButton:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->leftButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->leftButton:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->downButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->downButton:Landroid/view/View;

    new-instance v0, Lcom/zjx/jyandroid/base/FloatRect;

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x43480000    # 200.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/zjx/jyandroid/base/FloatRect;-><init>(FFFF)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->lineGraphView:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->setRangeRect(Lcom/zjx/jyandroid/base/FloatRect;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->horizontalRangeSlider:Lcom/google/android/material/slider/RangeSlider;

    iget v2, v0, Lcom/zjx/jyandroid/base/FloatRect;->left:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, v0, Lcom/zjx/jyandroid/base/FloatRect;->right:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/slider/RangeSlider;->setValues([Ljava/lang/Float;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->verticalRangeSlider:Lcom/google/android/material/slider/RangeSlider;

    iget v2, v0, Lcom/zjx/jyandroid/base/FloatRect;->top:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v0, v0, Lcom/zjx/jyandroid/base/FloatRect;->bottom:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/slider/RangeSlider;->setValues([Ljava/lang/Float;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->multiselectButton:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$1;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$1;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->horizontalRangeSlider:Lcom/google/android/material/slider/RangeSlider;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$2;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$2;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/slider/RangeSlider;->addOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->verticalRangeSlider:Lcom/google/android/material/slider/RangeSlider;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$3;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$3;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/slider/RangeSlider;->addOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->upButton:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$4;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$4;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->downButton:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$5;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$5;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->leftButton:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$6;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$6;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->rightButton:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$7;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$7;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->clearButton:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$8;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$8;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setLeftMouseDownMillisecond(I)V
    .locals 3

    const/16 v0, 0x3a98

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->progressBar:Landroid/widget/ProgressBar;

    int-to-float v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v2, v1, v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->progressBarUnder:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->getProgressBarUnderProgress()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    sget v0, Lcom/zjx/jyandroid/R$string;->adjust_dynamic_rc_value_view_text17:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->leftMouseDownMillisecond:I

    return-void
.end method
