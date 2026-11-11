.class public abstract Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;
.super Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s$b;
    }
.end annotation


# static fields
.field public static final MOUSE_DISPLAY_LATENCY_RANGE:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private indicatorView:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s$b;

.field private mouseDisplayLatency:I

.field public mouseDisplayMode:Lr/H$a;

.field private mouseDisplayPosition:Landroid/graphics/Point;

.field private mouseDisplayTriggerType:Lr/H$b;

.field private showMouseIndicator:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x4b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->MOUSE_DISPLAY_LATENCY_RANGE:Landroid/util/Range;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Lr/H$a;->a:Lr/H$a;

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->mouseDisplayMode:Lr/H$a;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->showMouseIndicator:Z

    .line 4
    sget-object v0, Lr/H$b;->a:Lr/H$b;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->mouseDisplayTriggerType:Lr/H$b;

    .line 5
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->mouseDisplayLatency:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    sget-object p1, Lr/H$a;->a:Lr/H$a;

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->mouseDisplayMode:Lr/H$a;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->showMouseIndicator:Z

    .line 9
    sget-object p2, Lr/H$b;->a:Lr/H$b;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->mouseDisplayTriggerType:Lr/H$b;

    .line 10
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->mouseDisplayLatency:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    sget-object p1, Lr/H$a;->a:Lr/H$a;

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->mouseDisplayMode:Lr/H$a;

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->showMouseIndicator:Z

    .line 14
    sget-object p2, Lr/H$b;->a:Lr/H$b;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->mouseDisplayTriggerType:Lr/H$b;

    .line 15
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->mouseDisplayLatency:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 17
    sget-object p1, Lr/H$a;->a:Lr/H$a;

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->mouseDisplayMode:Lr/H$a;

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->showMouseIndicator:Z

    .line 19
    sget-object p2, Lr/H$b;->a:Lr/H$b;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->mouseDisplayTriggerType:Lr/H$b;

    .line 20
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->mouseDisplayLatency:I

    return-void
.end method


# virtual methods
.method public getMouseDisplayLatency()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->mouseDisplayLatency:I

    return v0
.end method

.method public getMouseDisplayMode()Lr/H$a;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->mouseDisplayMode:Lr/H$a;

    return-object v0
.end method

.method public getMouseDisplayPosition()Landroid/graphics/Point;
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->mouseDisplayPosition:Landroid/graphics/Point;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x64

    invoke-virtual {p0}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->mouseDisplayPosition:Landroid/graphics/Point;

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->mouseDisplayPosition:Landroid/graphics/Point;

    return-object v0
.end method

.method public getMouseDisplayTriggerType()Lr/H$b;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->mouseDisplayTriggerType:Lr/H$b;

    return-object v0
.end method

.method public hideMousePointerIndicator()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->showMouseIndicator:Z

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->showMouseIndicator:Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->indicatorView:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s$b;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->indicatorView:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s$b;

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->showMouseIndicator:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->indicatorView:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s$b;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public setMouseDisplayLatency(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->mouseDisplayLatency:I

    return-void
.end method

.method public setMouseDisplayMode(Lr/H$a;)V
    .locals 1

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->mouseDisplayMode:Lr/H$a;

    sget-object v0, Lr/H$a;->b:Lr/H$a;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->showMousePointerIndicator()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->hideMousePointerIndicator()V

    :goto_0
    return-void
.end method

.method public setMouseDisplayPosition(Landroid/graphics/Point;)V
    .locals 8

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->indicatorView:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s$b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s$b;->getDefaultSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s$b;->getDefaultSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->indicatorView:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s$b;

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x2

    sub-int v5, v4, v0

    iget v6, p1, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    sub-int v7, v6, v1

    add-int/2addr v4, v0

    add-int/2addr v6, v1

    invoke-direct {v3, v5, v7, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    :cond_0
    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->mouseDisplayPosition:Landroid/graphics/Point;

    return-void
.end method

.method public setMouseDisplayTriggerType(Lr/H$b;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->mouseDisplayTriggerType:Lr/H$b;

    return-void
.end method

.method public showMousePointerIndicator()V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->showMouseIndicator:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->showMouseIndicator:Z

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s$b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s$b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->indicatorView:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s$b;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s$b;->getDefaultSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s$b;->getDefaultSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->indicatorView:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s$b;

    new-instance v4, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s$a;

    invoke-direct {v4, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;)V

    invoke-virtual {v3, v4}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setOnFrameChangedListener(Lcom/zjx/jyandroid/base/Interfaces/OnFrameChangedListener;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->getMouseDisplayPosition()Landroid/graphics/Point;

    move-result-object v3

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->indicatorView:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s$b;

    new-instance v5, Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v1, 0x2

    sub-int v7, v6, v7

    iget v3, v3, Landroid/graphics/Point;->y:I

    div-int/lit8 v8, v2, 0x2

    sub-int v8, v3, v8

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v6, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v2

    invoke-direct {v5, v7, v8, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->indicatorView:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s$b;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->indicatorView:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s$b;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelected(Z)V

    :cond_1
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
