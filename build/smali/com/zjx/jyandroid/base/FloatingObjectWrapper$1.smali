.class Lcom/zjx/jyandroid/base/FloatingObjectWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/base/FloatingObjectWrapper;->setBaseViewDraggable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private dX:F

.field private dY:F

.field final synthetic this$0:Lcom/zjx/jyandroid/base/FloatingObjectWrapper;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/base/FloatingObjectWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper$1;->this$0:Lcom/zjx/jyandroid/base/FloatingObjectWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper$1;->this$0:Lcom/zjx/jyandroid/base/FloatingObjectWrapper;

    iget-object v0, v0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper$1;->x:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper$1;->dX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper$1;->this$0:Lcom/zjx/jyandroid/base/FloatingObjectWrapper;

    iget-object v0, v0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper$1;->y:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    add-float/2addr v1, p2

    iget p2, p0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper$1;->dY:F

    sub-float/2addr v1, p2

    float-to-int p2, v1

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p2, p0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper$1;->this$0:Lcom/zjx/jyandroid/base/FloatingObjectWrapper;

    iget-object v0, p2, Lcom/zjx/jyandroid/base/FloatingObjectWrapper;->windowManager:Landroid/view/WindowManager;

    iget-object p2, p2, Lcom/zjx/jyandroid/base/FloatingObjectWrapper;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper$1;->this$0:Lcom/zjx/jyandroid/base/FloatingObjectWrapper;

    iget-object p1, p1, Lcom/zjx/jyandroid/base/FloatingObjectWrapper;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    iput v0, p0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper$1;->x:F

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float p1, p1

    iput p1, p0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper$1;->y:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper$1;->dX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/zjx/jyandroid/base/FloatingObjectWrapper$1;->dY:F

    :goto_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
