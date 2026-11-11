.class public abstract Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;
.super Lcom/zjx/jyandroid/base/TouchParsers/ViewTouchEventParser;
.source "SourceFile"


# instance fields
.field private longPressing:Z

.field public longPressingThresholdMill:I

.field private movedCount:I

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zjx/jyandroid/base/TouchParsers/ViewTouchEventParser;-><init>()V

    const/16 v0, 0x352

    iput v0, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;->longPressingThresholdMill:I

    return-void
.end method

.method private _internal(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;->movedCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;->movedCount:I

    iget-boolean v1, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;->longPressing:Z

    if-nez v1, :cond_1

    const/16 p1, 0x1e

    if-le v0, p1, :cond_4

    invoke-direct {p0}, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;->cancelLongPressing()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;->draggedAfterLongPressed(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;->movedCount:I

    invoke-direct {p0}, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;->cancelLongPressing()V

    invoke-virtual {p0, p1, p2}, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;->motionFinished(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser$1;-><init>(Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;Landroid/view/View;Landroid/view/MotionEvent;)V

    iget p1, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;->longPressingThresholdMill:I

    int-to-long p1, p1

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static synthetic access$002(Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;->longPressing:Z

    return p1
.end method

.method private cancelLongPressing()V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;->longPressing:Z

    return-void
.end method


# virtual methods
.method public abstract draggedAfterLongPressed(Landroid/view/View;Landroid/view/MotionEvent;)V
.end method

.method public abstract longPressed(Landroid/view/View;Landroid/view/MotionEvent;)V
.end method

.method public abstract motionFinished(Landroid/view/View;Landroid/view/MotionEvent;)V
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;->_internal(Landroid/view/View;Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public touchOccurred(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;->_internal(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method
