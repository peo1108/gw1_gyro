.class public Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;
.super Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;
.source "SourceFile"


# instance fields
.field private final STEP_COUNT:I

.field private currentThread:Ljava/lang/Thread;

.field public endCoordinate:Landroid/graphics/Point;

.field lock:Ljava/util/concurrent/locks/Lock;

.field public mouseHorizontalSwipe:Z

.field public startCoordinate:Landroid/graphics/Point;

.field private stepInterval:I

.field private swipeDuration:I

.field private swipingBackward:Z

.field private touchManager:Lcom/zjx/jyandroid/TouchManager;

.field public triggerLatency:I

.field public final type:Lr/L0$a;

.field private virtualMouse:Lcom/zjx/jyandroid/ForegroundService/UI/a;


# direct methods
.method public constructor <init>(Lr/L0$a;)V
    .locals 2

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->swipingBackward:Z

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->triggerLatency:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->lock:Ljava/util/concurrent/locks/Lock;

    const/16 v0, 0xa

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->STEP_COUNT:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->currentThread:Ljava/lang/Thread;

    invoke-static {}, Lcom/zjx/jyandroid/TouchManager;->f()Lcom/zjx/jyandroid/TouchManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->y()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->virtualMouse:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x64

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->startCoordinate:Landroid/graphics/Point;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->mouseHorizontalSwipe:Z

    new-instance v0, Lr/L0;

    invoke-direct {v0}, Lr/L0;-><init>()V

    invoke-virtual {v0}, Lr/L0;->m()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->setSwipeDuration(I)V

    invoke-virtual {v0}, Lr/L0;->l()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->endCoordinate:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->type:Lr/L0$a;

    return-void
.end method


# virtual methods
.method public getSwipeDuration()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->swipeDuration:I

    return v0
.end method

.method public setSwipeDuration(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->swipeDuration:I

    div-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->stepInterval:I

    return-void
.end method

.method public startActionWithKeyCodes(II)V
    .locals 12

    sget-object p1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode$1;->$SwitchMap$com$zjx$jyandroid$ForegroundService$UI$UploadKeymapModule$Components$ComponentProperties$SwipeTouchComponentProperty$Type:[I

    iget-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->type:Lr/L0$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->virtualMouse:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->triggerLatency:I

    if-lez p1, :cond_2

    int-to-long v3, p1

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;->started:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->currentThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->currentThread:Ljava/lang/Thread;

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->virtualMouse:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->g()Landroid/graphics/Point;

    move-result-object p1

    new-instance v4, Landroid/graphics/Point;

    iget v3, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v2

    iget v5, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v4, v3, v5}, Landroid/graphics/Point;-><init>(II)V

    iget-boolean v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->mouseHorizontalSwipe:Z

    if-nez v3, :cond_4

    new-instance p1, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->endCoordinate:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$g;->a(I)I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->endCoordinate:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$g;->a(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {p1, v3, v5}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    :cond_4
    new-instance v3, Landroid/graphics/Point;

    iget-object v5, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->endCoordinate:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$g;->a(I)I

    move-result v6

    add-int/2addr v5, v6

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$g;->a(I)I

    move-result v6

    add-int/2addr p1, v6

    invoke-direct {v3, v5, p1}, Landroid/graphics/Point;-><init>(II)V

    move-object p1, v3

    :goto_1
    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    iget v5, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v2

    int-to-float v2, v5

    iget v5, v4, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v2, v5}, Lcom/zjx/jyandroid/TouchManager;->i(FF)I

    move-result v2

    new-instance v10, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;

    iget-object v7, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    const/16 v8, 0xa

    iget v9, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->stepInterval:I

    move-object v3, v10

    move-object v5, p1

    move v6, v2

    invoke-direct/range {v3 .. v9}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;ILcom/zjx/jyandroid/TouchManager;II)V

    iput v1, v10, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;->maxRandomXPerStep:I

    iput v1, v10, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;->maxRandomYPerStep:I

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;->started:Z

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {v10}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;->run()V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {v0, v2, v1, p1}, Lcom/zjx/jyandroid/TouchManager;->o(IFF)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->currentThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p1, v0, :cond_9

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;->started:Z

    goto/16 :goto_5

    :cond_5
    iget p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->triggerLatency:I

    if-lez p1, :cond_6

    int-to-long v2, p1

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    return-void

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;->started:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->currentThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->currentThread:Ljava/lang/Thread;

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->type:Lr/L0$a;

    sget-object v2, Lr/L0$a;->b:Lr/L0$a;

    if-ne p1, v2, :cond_8

    iget-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->swipingBackward:Z

    if-eqz p1, :cond_8

    new-instance p1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->endCoordinate:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$g;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->endCoordinate:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$g;->a(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->startCoordinate:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$g;->a(I)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->startCoordinate:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$g;->a(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    :goto_3
    move-object v6, p1

    goto :goto_4

    :cond_8
    new-instance p1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->startCoordinate:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$g;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->startCoordinate:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$g;->a(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->endCoordinate:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$g;->a(I)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->endCoordinate:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$g;->a(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_3

    :goto_4
    iget-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->swipingBackward:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->swipingBackward:Z

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    iget v3, v6, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v6, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Lcom/zjx/jyandroid/TouchManager;->i(FF)I

    move-result p1

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;

    iget-object v9, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    const/16 v10, 0xa

    iget v11, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->stepInterval:I

    move-object v5, v3

    move-object v7, v2

    move v8, p1

    invoke-direct/range {v5 .. v11}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;ILcom/zjx/jyandroid/TouchManager;II)V

    iput v1, v3, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;->maxRandomXPerStep:I

    iput v1, v3, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;->maxRandomYPerStep:I

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;->started:Z

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {v3}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;->run()V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    iget v1, v2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/zjx/jyandroid/TouchManager;->o(IFF)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->currentThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p1, v0, :cond_9

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;->started:Z

    :cond_9
    :goto_5
    return-void
.end method

.method public stopActionWithKeyCodes(II)V
    .locals 0

    return-void
.end method
