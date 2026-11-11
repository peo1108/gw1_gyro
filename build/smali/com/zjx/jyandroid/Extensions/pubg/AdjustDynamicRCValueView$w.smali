.class public Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$w;
.super Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "w"
.end annotation


# instance fields
.field public a:Ljava/lang/Runnable;

.field public b:Landroid/os/Handler;

.field public final synthetic c:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$w;->c:Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;

    invoke-direct {p0}, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;->longPressingThresholdMill:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$k;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$w;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView;)V

    return-void
.end method


# virtual methods
.method public draggedAfterLongPressed(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public longPressed(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$w;->b:Landroid/os/Handler;

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$w;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public motionFinished(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$w;->b:Landroid/os/Handler;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustDynamicRCValueView$w;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
