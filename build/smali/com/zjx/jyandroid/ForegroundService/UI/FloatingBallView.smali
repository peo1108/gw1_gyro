.class public Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;
.super Lcom/zjx/jyandroid/base/BaseFloatingView;
.source "SourceFile"


# instance fields
.field public a:Landroid/os/Handler;

.field public b:I

.field public c:I

.field public d:Z


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
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;->b:I

    .line 3
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;->c:I

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;->a:Landroid/os/Handler;

    .line 5
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView$a;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;)V

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->addOnTouchHandler(Lcom/zjx/jyandroid/base/Interfaces/MView$OnTouchHandler;)V

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
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;->b:I

    .line 8
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;->c:I

    .line 9
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;->a:Landroid/os/Handler;

    .line 10
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView$a;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;)V

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->addOnTouchHandler(Lcom/zjx/jyandroid/base/Interfaces/MView$OnTouchHandler;)V

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
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;->b:I

    .line 13
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;->c:I

    .line 14
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;->a:Landroid/os/Handler;

    .line 15
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView$a;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;)V

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->addOnTouchHandler(Lcom/zjx/jyandroid/base/Interfaces/MView$OnTouchHandler;)V

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
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;->b:I

    .line 18
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;->c:I

    .line 19
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;->a:Landroid/os/Handler;

    .line 20
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView$a;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;)V

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->addOnTouchHandler(Lcom/zjx/jyandroid/base/Interfaces/MView$OnTouchHandler;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;->b:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;->a:Landroid/os/Handler;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView$b;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView$b;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;)V

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;->b:I

    iget v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;->c:I

    sub-int v1, v0, v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_2

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;->c:I

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;->c:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;->setHalfHidden(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_0
    invoke-super {p0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public setHalfHidden(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->updatePositionInWindow(II)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setY(F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setY(F)V
    :goto_0
    # MDM: half-hidden ball fades to 50%, full when touched
    if-eqz p1, :mdm_full
    const/high16 v0, 0x3f000000    # 0.5f
    goto :mdm_set
    :mdm_full
    const/high16 v0, 0x3f800000    # 1.0f
    :mdm_set
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;->d:Z

    return-void
.end method
