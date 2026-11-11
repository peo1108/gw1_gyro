.class public Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickButton;,
        Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;
    }
.end annotation


# instance fields
.field public buttonDown:[I

.field private center:Landroid/graphics/Point;

.field private currentFingerPosition:Landroid/graphics/Point;

.field private directionCoordinate:[Landroid/graphics/Point;

.field private fingerDown:Z

.field private fingerDownLock:Ljava/lang/Object;

.field private fingerIndex:I

.field private fingerMoveThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private isFreefire:Z

.field private lastMoveTask:Ljava/util/concurrent/Future;

.field public latency:I

.field private mIsUsingBezierJoystick:Z

.field private mJoystickDestinationAngleRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mJoystickDestinationRandomRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mJoystickTouchDownRandomRange:I

.field private mPause:Z

.field mTouchRect:Landroid/graphics/Rect;

.field private performTouchLock:Ljava/lang/Object;

.field private radius:I

.field private randomGenerator:Ljava/util/Random;

.field public stepCount:I

.field public stepInterval:I

.field private touchManager:Lcom/zjx/jyandroid/TouchManager;

.field public xOffsetMoved:F

.field public yOffsetMoved:F


# direct methods
.method public constructor <init>(Landroid/graphics/Point;ILjava/util/concurrent/ExecutorService;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->latency:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->stepCount:I

    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->stepInterval:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->performTouchLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->isFreefire:Z

    const/4 v2, 0x5

    iput v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->mJoystickTouchDownRandomRange:I

    new-instance v3, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->mJoystickDestinationRandomRange:Landroid/util/Range;

    new-instance v3, Landroid/util/Range;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->mJoystickDestinationAngleRange:Landroid/util/Range;

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->mIsUsingBezierJoystick:Z

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->mPause:Z

    iput-object p3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->fingerMoveThreadExecutor:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->center:Landroid/graphics/Point;

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->radius:I

    invoke-static {}, Lcom/zjx/jyandroid/TouchManager;->f()Lcom/zjx/jyandroid/TouchManager;

    move-result-object p3

    iput-object p3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    new-instance p3, Landroid/graphics/Point;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->currentFingerPosition:Landroid/graphics/Point;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickButton;->values()[Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickButton;

    move-result-object p3

    array-length p3, p3

    new-array p3, p3, [I

    iput-object p3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->buttonDown:[I

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->fingerDownLock:Ljava/lang/Object;

    new-instance p3, Ljava/util/Random;

    invoke-direct {p3}, Ljava/util/Random;-><init>()V

    iput-object p3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->randomGenerator:Ljava/util/Random;

    invoke-virtual {p0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->updateDirectionCoordinate(Landroid/graphics/Point;I)V

    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->stepCount:I

    iput v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->stepInterval:I

    new-instance p1, Landroid/graphics/Rect;

    const p2, -0x7fffffff

    const p3, 0x7fffffff

    invoke-direct {p1, p2, p2, p3, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->mTouchRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/c;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput v5, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->mJoystickTouchDownRandomRange:I

    new-instance p1, Landroid/util/Range;

    const/16 p2, 0x1e

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x3c

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->mJoystickDestinationRandomRange:Landroid/util/Range;

    new-instance p1, Landroid/util/Range;

    const/high16 p2, 0x41600000    # 14.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p1, v6, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->mJoystickDestinationAngleRange:Landroid/util/Range;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->mIsUsingBezierJoystick:Z

    const/4 p1, 0x4

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->stepInterval:I

    :cond_0
    return-void
.end method

.method private moveToDirection(Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;)V
    .locals 16

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->fingerDownLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->fingerDown:Z

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->center:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v4, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->randomGenerator:Ljava/util/Random;

    iget v5, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->mJoystickTouchDownRandomRange:I

    invoke-static {v4, v5}, Lcom/zjx/jyandroid/base/util/b$g;->c(Ljava/util/Random;I)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->center:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->randomGenerator:Ljava/util/Random;

    iget v6, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->mJoystickTouchDownRandomRange:I

    invoke-static {v5, v6}, Lcom/zjx/jyandroid/base/util/b$g;->c(Ljava/util/Random;I)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    int-to-float v6, v0

    int-to-float v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/zjx/jyandroid/TouchManager;->i(FF)I

    move-result v5

    iput v5, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->fingerIndex:I

    iput-boolean v3, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->fingerDown:Z

    iget-object v5, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->currentFingerPosition:Landroid/graphics/Point;

    iput v0, v5, Landroid/graphics/Point;->x:I

    iput v4, v5, Landroid/graphics/Point;->y:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->lastMoveTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    iget-object v0, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->mJoystickDestinationRandomRange:Landroid/util/Range;

    iget-object v4, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->mJoystickDestinationAngleRange:Landroid/util/Range;

    iget-object v5, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextBoolean()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    int-to-float v5, v5

    iget-object v7, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v7, v8, v4}, Lcom/zjx/jyandroid/base/util/b$g;->e(Ljava/util/Random;FF)F

    move-result v4

    mul-float/2addr v5, v4

    iget-object v4, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->directionCoordinate:[Landroid/graphics/Point;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget-object v4, v4, v7

    iget-object v7, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextBoolean()Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v3

    goto :goto_2

    :cond_3
    move v7, v6

    :goto_2
    iget-object v8, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextBoolean()Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    move v3, v6

    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/high16 v8, 0x42340000    # 45.0f

    packed-switch v6, :pswitch_data_0

    iget-object v3, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/zjx/jyandroid/base/util/b$g;->c(Ljava/util/Random;I)I

    move-result v3

    int-to-double v3, v3

    iget-object v5, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v5, v0}, Lcom/zjx/jyandroid/base/util/b$g;->c(Ljava/util/Random;I)I

    move-result v0

    int-to-double v5, v0

    goto/16 :goto_6

    :pswitch_0
    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v6, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v6, v7, v0}, Lcom/zjx/jyandroid/base/util/b$g;->d(Ljava/util/Random;II)I

    move-result v0

    mul-int/2addr v0, v3

    add-int/2addr v4, v0

    int-to-double v3, v4

    iget-object v0, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->center:Landroid/graphics/Point;

    iget v6, v0, Landroid/graphics/Point;->x:I

    int-to-double v6, v6

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-double v9, v0

    sub-double v9, v3, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    add-float/2addr v5, v8

    float-to-double v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->tan(D)D

    move-result-wide v11

    :goto_4
    mul-double/2addr v9, v11

    add-double v5, v6, v9

    :goto_5
    move-wide v14, v3

    move-wide v3, v5

    move-wide v5, v14

    goto/16 :goto_6

    :pswitch_1
    iget v3, v4, Landroid/graphics/Point;->x:I

    iget-object v4, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v4, v6, v0}, Lcom/zjx/jyandroid/base/util/b$g;->d(Ljava/util/Random;II)I

    move-result v0

    mul-int/2addr v0, v7

    add-int/2addr v3, v0

    int-to-double v3, v3

    iget-object v0, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->center:Landroid/graphics/Point;

    iget v6, v0, Landroid/graphics/Point;->y:I

    int-to-double v6, v6

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v9, v0

    sub-double v9, v3, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    add-float/2addr v5, v8

    float-to-double v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->tan(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double v5, v6, v9

    goto/16 :goto_6

    :pswitch_2
    iget v3, v4, Landroid/graphics/Point;->x:I

    iget-object v4, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v4, v6, v0}, Lcom/zjx/jyandroid/base/util/b$g;->d(Ljava/util/Random;II)I

    move-result v0

    mul-int/2addr v0, v7

    add-int/2addr v3, v0

    int-to-double v3, v3

    iget-object v0, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->center:Landroid/graphics/Point;

    iget v6, v0, Landroid/graphics/Point;->y:I

    int-to-double v6, v6

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v9, v0

    sub-double v9, v3, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    sub-float/2addr v5, v8

    float-to-double v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->tan(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    sub-double v5, v6, v9

    goto/16 :goto_6

    :pswitch_3
    iget v3, v4, Landroid/graphics/Point;->x:I

    iget-object v4, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v4, v6, v0}, Lcom/zjx/jyandroid/base/util/b$g;->d(Ljava/util/Random;II)I

    move-result v0

    mul-int/2addr v0, v7

    add-int/2addr v3, v0

    int-to-double v3, v3

    iget-object v0, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->center:Landroid/graphics/Point;

    iget v6, v0, Landroid/graphics/Point;->y:I

    int-to-double v6, v6

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v8, v0

    sub-double v8, v3, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double v5, v6, v8

    goto :goto_6

    :pswitch_4
    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v6, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v6, v7, v0}, Lcom/zjx/jyandroid/base/util/b$g;->d(Ljava/util/Random;II)I

    move-result v0

    mul-int/2addr v0, v3

    add-int/2addr v4, v0

    int-to-double v3, v4

    iget-object v0, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->center:Landroid/graphics/Point;

    iget v6, v0, Landroid/graphics/Point;->x:I

    int-to-double v6, v6

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-double v9, v0

    sub-double v9, v3, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    sub-float/2addr v5, v8

    float-to-double v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->tan(D)D

    move-result-wide v11

    goto/16 :goto_4

    :pswitch_5
    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v6, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v6, v7, v0}, Lcom/zjx/jyandroid/base/util/b$g;->d(Ljava/util/Random;II)I

    move-result v0

    mul-int/2addr v0, v3

    add-int/2addr v4, v0

    int-to-double v3, v4

    iget-object v0, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->center:Landroid/graphics/Point;

    iget v6, v0, Landroid/graphics/Point;->x:I

    int-to-double v6, v6

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-double v8, v0

    sub-double v8, v3, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double v5, v6, v8

    goto/16 :goto_5

    :goto_6
    new-instance v0, Landroid/graphics/Point;

    double-to-int v3, v3

    double-to-int v4, v5

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget-object v4, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->mTouchRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    const/16 v6, 0xd

    const/4 v7, 0x0

    if-ge v3, v5, :cond_5

    invoke-static {v7, v6}, Lcom/zjx/jyandroid/base/util/b$g;->b(II)I

    move-result v3

    add-int/2addr v5, v3

    iput v5, v0, Landroid/graphics/Point;->x:I

    goto :goto_7

    :cond_5
    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-le v3, v4, :cond_6

    invoke-static {v7, v6}, Lcom/zjx/jyandroid/base/util/b$g;->b(II)I

    move-result v3

    sub-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Point;->x:I

    :cond_6
    :goto_7
    iget v3, v0, Landroid/graphics/Point;->y:I

    iget-object v4, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->mTouchRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    if-ge v3, v5, :cond_7

    invoke-static {v7, v6}, Lcom/zjx/jyandroid/base/util/b$g;->b(II)I

    move-result v3

    add-int/2addr v5, v3

    iput v5, v0, Landroid/graphics/Point;->y:I

    goto :goto_8

    :cond_7
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v3, v4, :cond_8

    invoke-static {v7, v6}, Lcom/zjx/jyandroid/base/util/b$g;->b(II)I

    move-result v3

    sub-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Point;->y:I

    :cond_8
    :goto_8
    iget-boolean v3, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->mIsUsingBezierJoystick:Z

    if-eqz v3, :cond_9

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/Backboardd/BezierJoystickSwipeTouchOperation;

    iget-object v8, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->currentFingerPosition:Landroid/graphics/Point;

    iget v10, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->fingerIndex:I

    iget-object v11, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    iget v12, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->stepCount:I

    iget v13, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->stepInterval:I

    move-object v7, v3

    move-object v9, v0

    invoke-direct/range {v7 .. v13}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/BezierJoystickSwipeTouchOperation;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;ILcom/zjx/jyandroid/TouchManager;II)V

    goto :goto_9

    :cond_9
    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;

    iget-object v8, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->currentFingerPosition:Landroid/graphics/Point;

    iget v10, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->fingerIndex:I

    iget-object v11, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    iget v12, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->stepCount:I

    iget v13, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->stepInterval:I

    move-object v7, v3

    move-object v9, v0

    invoke-direct/range {v7 .. v13}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;ILcom/zjx/jyandroid/TouchManager;II)V

    const/4 v4, 0x3

    iput v4, v3, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;->maxRandomXPerStep:I

    iput v4, v3, Lcom/zjx/jyandroid/ForegroundService/Backboardd/SwipeTouchOperation;->maxRandomYPerStep:I

    :goto_9
    iput-object v0, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->currentFingerPosition:Landroid/graphics/Point;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->fingerMoveThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->lastMoveTask:Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    monitor-exit v2

    return-void

    :goto_a
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private releaseAllFingers()V
    .locals 5

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->fingerDownLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->fingerDown:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->lastMoveTask:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    iget v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->fingerIndex:I

    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->currentFingerPosition:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/zjx/jyandroid/TouchManager;->o(IFF)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->fingerDown:Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public buttonPressed(Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickButton;)V
    .locals 2

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->latency:I

    if-lez v0, :cond_0

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void

    :cond_0
    :goto_0
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->buttonDown:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    iget-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->mPause:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->performTouch()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public buttonReleased(Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickButton;)V
    .locals 2

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->latency:I

    if-lez v0, :cond_0

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void

    :cond_0
    :goto_0
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->buttonDown:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    iget-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->mPause:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->performTouch()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getRadius()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->radius:I

    return v0
.end method

.method public movedToOffset(FF)V
    .locals 7

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->fingerDownLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->xOffsetMoved:F

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->yOffsetMoved:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->releaseAllFingers()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->fingerDown:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->center:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->randomGenerator:Ljava/util/Random;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/zjx/jyandroid/base/util/b$g;->c(Ljava/util/Random;I)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->center:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->randomGenerator:Ljava/util/Random;

    const/16 v5, 0xa

    invoke-static {v4, v5}, Lcom/zjx/jyandroid/base/util/b$g;->c(Ljava/util/Random;I)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    int-to-float v5, v1

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/zjx/jyandroid/TouchManager;->i(FF)I

    move-result v4

    iput v4, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->fingerIndex:I

    iput-boolean v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->fingerDown:Z

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->currentFingerPosition:Landroid/graphics/Point;

    iput v1, v4, Landroid/graphics/Point;->x:I

    iput v3, v4, Landroid/graphics/Point;->y:I

    :cond_1
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->center:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->radius:I

    int-to-float v5, v4

    mul-float/2addr v5, p1

    add-float/2addr v3, v5

    float-to-int p1, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    int-to-float v3, v4

    mul-float/2addr v3, p2

    sub-float/2addr v1, v3

    float-to-int p2, v1

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->lastMoveTask:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_2

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    iget v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->fingerIndex:I

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v2, v3, p1, p2}, Lcom/zjx/jyandroid/TouchManager;->m(IFF)V

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->currentFingerPosition:Landroid/graphics/Point;

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public performTouch()V
    .locals 8

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->performTouchLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->buttonDown:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x3

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-lez v3, :cond_2

    aget v3, v1, v4

    if-lez v3, :cond_1

    :cond_0
    :goto_0
    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v6

    goto :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_4

    :cond_2
    aget v4, v1, v4

    if-lez v4, :cond_0

    if-lez v3, :cond_3

    goto :goto_0

    :cond_3
    move v3, v5

    :goto_1
    aget v4, v1, v6

    const/4 v7, 0x2

    if-lez v4, :cond_5

    aget v1, v1, v7

    if-lez v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v6

    goto :goto_2

    :cond_5
    aget v1, v1, v7

    if-lez v1, :cond_7

    if-lez v4, :cond_6

    goto :goto_2

    :cond_6
    move v2, v5

    :cond_7
    :goto_2
    if-ne v3, v6, :cond_a

    if-nez v2, :cond_8

    sget-object v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;->N:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;

    invoke-direct {p0, v1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->moveToDirection(Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;)V

    goto :goto_3

    :cond_8
    if-ne v2, v6, :cond_9

    sget-object v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;->NW:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;

    invoke-direct {p0, v1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->moveToDirection(Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;)V

    goto :goto_3

    :cond_9
    if-ne v2, v5, :cond_10

    sget-object v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;->NE:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;

    invoke-direct {p0, v1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->moveToDirection(Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;)V

    goto :goto_3

    :cond_a
    if-nez v3, :cond_d

    if-nez v2, :cond_b

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->releaseAllFingers()V

    goto :goto_3

    :cond_b
    if-ne v2, v6, :cond_c

    sget-object v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;->W:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;

    invoke-direct {p0, v1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->moveToDirection(Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;)V

    goto :goto_3

    :cond_c
    if-ne v2, v5, :cond_10

    sget-object v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;->E:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;

    invoke-direct {p0, v1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->moveToDirection(Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;)V

    goto :goto_3

    :cond_d
    if-ne v3, v5, :cond_10

    if-nez v2, :cond_e

    sget-object v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;->S:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;

    invoke-direct {p0, v1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->moveToDirection(Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;)V

    goto :goto_3

    :cond_e
    if-ne v2, v6, :cond_f

    sget-object v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;->SW:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;

    invoke-direct {p0, v1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->moveToDirection(Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;)V

    goto :goto_3

    :cond_f
    if-ne v2, v5, :cond_10

    sget-object v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;->SE:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;

    invoke-direct {p0, v1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->moveToDirection(Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;)V

    :cond_10
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reactivate()V
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->releaseAllFingers()V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->performTouch()V

    return-void
.end method

.method public setPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->mPause:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->releaseAllFingers()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->performTouch()V

    :goto_0
    return-void
.end method

.method public setRadius(I)V
    .locals 1

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->radius:I

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->center:Landroid/graphics/Point;

    invoke-virtual {p0, v0, p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->updateDirectionCoordinate(Landroid/graphics/Point;I)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->performTouch()V

    return-void
.end method

.method public updateDirectionCoordinate(Landroid/graphics/Point;I)V
    .locals 7

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->fingerDownLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;->values()[Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Landroid/graphics/Point;

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->directionCoordinate:[Landroid/graphics/Point;

    sget-object v2, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;->N:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    iget v4, p1, Landroid/graphics/Point;->x:I

    iget v5, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, p2

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->directionCoordinate:[Landroid/graphics/Point;

    sget-object v2, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;->NW:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    iget v4, p1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    int-to-float v5, p2

    const v6, 0x3f666666    # 0.9f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget v6, p1, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    sub-float/2addr v6, v5

    float-to-int v6, v6

    invoke-direct {v3, v4, v6}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->directionCoordinate:[Landroid/graphics/Point;

    sget-object v2, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;->NE:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    iget v4, p1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v6, p1, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    sub-float/2addr v6, v5

    float-to-int v6, v6

    invoke-direct {v3, v4, v6}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->directionCoordinate:[Landroid/graphics/Point;

    sget-object v2, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;->W:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    iget v4, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, p2

    iget v6, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v4, v6}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->directionCoordinate:[Landroid/graphics/Point;

    sget-object v2, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;->SW:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    iget v4, p1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget v6, p1, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    float-to-int v6, v6

    invoke-direct {v3, v4, v6}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->directionCoordinate:[Landroid/graphics/Point;

    sget-object v2, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;->S:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    iget v4, p1, Landroid/graphics/Point;->x:I

    iget v6, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v6, p2

    invoke-direct {v3, v4, v6}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->directionCoordinate:[Landroid/graphics/Point;

    sget-object v2, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;->SE:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    iget v4, p1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v6, p1, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    float-to-int v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->directionCoordinate:[Landroid/graphics/Point;

    sget-object v2, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;->E:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickDirection;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    iget v4, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v4, p2

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v4, p1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v1, v2

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
