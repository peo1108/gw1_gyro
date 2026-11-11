.class public Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected currentPoint:Landroid/graphics/Point;

.field protected destinationPoint:Landroid/graphics/Point;

.field fingerIndex:I

.field public maxRandomXPerStep:I

.field public maxRandomYPerStep:I

.field protected startPoint:Landroid/graphics/Point;

.field stepCount:I

.field stepInterval:I

.field public taskCompleteCallback:Ljava/lang/Runnable;

.field touchManager:Lcom/zjx/jyandroid/TouchManager;


# direct methods
.method public constructor <init>(Landroid/graphics/Point;Landroid/graphics/Point;ILcom/zjx/jyandroid/TouchManager;I)V
    .locals 7

    const/4 v6, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;ILcom/zjx/jyandroid/TouchManager;II)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;Landroid/graphics/Point;ILcom/zjx/jyandroid/TouchManager;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;->maxRandomXPerStep:I

    .line 3
    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;->maxRandomYPerStep:I

    .line 4
    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;->startPoint:Landroid/graphics/Point;

    .line 5
    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;->destinationPoint:Landroid/graphics/Point;

    .line 6
    iput p3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;->fingerIndex:I

    .line 7
    iput-object p4, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    .line 8
    iput p5, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;->stepCount:I

    .line 9
    iput p6, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;->stepInterval:I

    .line 10
    new-instance p2, Landroid/graphics/Point;

    iget p3, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p2, p3, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;->currentPoint:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;->destinationPoint:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;->startPoint:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;->stepCount:I

    div-int/2addr v1, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v3

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;->stepCount:I

    if-ge v2, v3, :cond_2

    :try_start_0
    iget v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;->stepInterval:I

    add-int/lit8 v4, v3, -0x1

    invoke-static {v4}, Lcom/zjx/jyandroid/base/util/b$g;->a(I)I

    move-result v4

    add-int/2addr v3, v4

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;->currentPoint:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v0

    iput v5, v3, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;->maxRandomXPerStep:I

    if-lez v3, :cond_0

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b$g;->a(I)I

    move-result v3

    add-int/2addr v4, v3

    :cond_0
    iget v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;->maxRandomYPerStep:I

    if-lez v3, :cond_1

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b$g;->a(I)I

    move-result v3

    add-int/2addr v5, v3

    :cond_1
    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    iget v6, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;->fingerIndex:I

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual {v3, v6, v4, v5}, Lcom/zjx/jyandroid/TouchManager;->m(IFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return-void
.end method
