.class Lcom/zjx/jyandroid/ReceivingTouchHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ReceivingTouchHandler;->onTouchEvent([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/ReceivingTouchHandler;

.field final synthetic val$touches:[I


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ReceivingTouchHandler;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ReceivingTouchHandler$1;->this$0:Lcom/zjx/jyandroid/ReceivingTouchHandler;

    iput-object p2, p0, Lcom/zjx/jyandroid/ReceivingTouchHandler$1;->val$touches:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/zjx/jyandroid/ReceivingTouchHandler$1;->this$0:Lcom/zjx/jyandroid/ReceivingTouchHandler;

    iget-object v0, v0, Lcom/zjx/jyandroid/ReceivingTouchHandler;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/zjx/jyandroid/ReceivingTouchHandler$1;->val$touches:[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    add-int/lit8 v4, v2, 0x2

    aget v4, v3, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/zjx/jyandroid/ReceivingTouchHandler$1;->this$0:Lcom/zjx/jyandroid/ReceivingTouchHandler;

    iget v6, v5, Lcom/zjx/jyandroid/ReceivingTouchHandler;->ratioX:F

    div-float/2addr v4, v6

    add-int/lit8 v6, v2, 0x3

    aget v3, v3, v6

    int-to-float v3, v3

    iget v6, v5, Lcom/zjx/jyandroid/ReceivingTouchHandler;->ratioY:F

    div-float/2addr v3, v6

    const/4 v6, 0x1

    if-eq v0, v6, :cond_1

    const/4 v6, 0x3

    if-eq v0, v6, :cond_0

    goto :goto_1

    :cond_0
    iget v5, v5, Lcom/zjx/jyandroid/ReceivingTouchHandler;->screenHeight:I

    int-to-float v5, v5

    sub-float/2addr v5, v3

    move v3, v4

    move v4, v5

    goto :goto_1

    :cond_1
    iget v5, v5, Lcom/zjx/jyandroid/ReceivingTouchHandler;->screenWidth:I

    int-to-float v5, v5

    sub-float v4, v5, v4

    move v9, v4

    move v4, v3

    move v3, v9

    :goto_1
    new-instance v5, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;

    invoke-static {}, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->values()[Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    move-result-object v6

    iget-object v7, p0, Lcom/zjx/jyandroid/ReceivingTouchHandler$1;->val$touches:[I

    aget v8, v7, v2

    aget-object v6, v6, v8

    add-int/lit8 v8, v2, 0x1

    aget v7, v7, v8

    invoke-direct {v5, v6, v7, v4, v3}, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;-><init>(Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zjx/jyandroid/ReceivingTouchHandler$1;->this$0:Lcom/zjx/jyandroid/ReceivingTouchHandler;

    iget-object v0, v0, Lcom/zjx/jyandroid/ReceivingTouchHandler;->eventDispatchCenter:Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->onPhysicalTouchEventReceived(Ljava/util/LinkedList;)V

    return-void
.end method
