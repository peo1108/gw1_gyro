.class public Lcom/zjx/jyandroid/ReceivingTouchHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field eventDispatchCenter:Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

.field executor:Ljava/util/concurrent/ExecutorService;

.field ratioX:F

.field ratioY:F

.field screenHeight:I

.field screenWidth:I

.field windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ReceivingTouchHandler;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ReceivingTouchHandler;->eventDispatchCenter:Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zjx/jyandroid/ReceivingTouchHandler;->ratioX:F

    iput v0, p0, Lcom/zjx/jyandroid/ReceivingTouchHandler;->ratioY:F

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/zjx/jyandroid/ReceivingTouchHandler;->windowManager:Landroid/view/WindowManager;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/zjx/jyandroid/ReceivingTouchHandler;->screenWidth:I

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/zjx/jyandroid/ReceivingTouchHandler;->screenHeight:I

    return-void
.end method


# virtual methods
.method public onTouchDeviceMaxValue(II)V
    .locals 1

    int-to-float p1, p1

    iget v0, p0, Lcom/zjx/jyandroid/ReceivingTouchHandler;->screenWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/zjx/jyandroid/ReceivingTouchHandler;->ratioX:F

    int-to-float p1, p2

    iget p2, p0, Lcom/zjx/jyandroid/ReceivingTouchHandler;->screenHeight:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/zjx/jyandroid/ReceivingTouchHandler;->ratioY:F

    return-void
.end method

.method public onTouchEvent([I)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ReceivingTouchHandler;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/zjx/jyandroid/ReceivingTouchHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/zjx/jyandroid/ReceivingTouchHandler$1;-><init>(Lcom/zjx/jyandroid/ReceivingTouchHandler;[I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
