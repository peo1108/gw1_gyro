.class public Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;
.super Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveEventHandling;
.source "SourceFile"


# instance fields
.field final FLAG_EDGE_RELEASE_FINGER:I

.field final FLAG_PERIODIC_RELEASE_FINGER:I

.field private accumulatedValueX:D

.field private accumulatedValueY:D

.field public alwaysPlaceFingerAtCenter:Z

.field public autoReleaseInterval:I

.field public center:Landroid/graphics/Point;

.field private currentCoordinate:Landroid/graphics/Point;

.field private fingerIndex:I

.field public fingerMoveRect:Landroid/graphics/Rect;

.field private fingerPlaced:Z

.field private horizontalCoefficient:F

.field private horizontalSensitivity:I

.field public invertYAxis:Z

.field private lastFingerMoveTime:J

.field public maxAcceleration:I

.field public minAcceleration:I

.field public mouseAccelerationEnable:Z

.field public mouseAccelerationValue:I

.field public noReleaseFinger:Z

.field private operationLock:Ljava/lang/Object;

.field private randomGenerator:Ljava/util/Random;

.field public releaseFingerFlag:I

.field private releaseFingerTimer:Ljava/util/Timer;

.field public touchDownDelay:I

.field public touchDownRandomRangeLimit:I

.field private touchManager:Lcom/zjx/jyandroid/TouchManager;

.field public touchUpDelay:I

.field private verticalCoefficient:F

.field private verticalSensitivity:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveEventHandling;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->accumulatedValueX:D

    .line 3
    iput-wide v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->accumulatedValueY:D

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->FLAG_PERIODIC_RELEASE_FINGER:I

    const/4 v1, 0x2

    .line 5
    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->FLAG_EDGE_RELEASE_FINGER:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->horizontalCoefficient:F

    .line 7
    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->verticalCoefficient:F

    const/16 v1, 0x1f4

    .line 8
    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->horizontalSensitivity:I

    .line 9
    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->verticalSensitivity:I

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->touchUpDelay:I

    .line 11
    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->touchDownDelay:I

    const/16 v2, 0xa

    .line 12
    iput v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->touchDownRandomRangeLimit:I

    .line 13
    iput-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->invertYAxis:Z

    .line 14
    iput-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->mouseAccelerationEnable:Z

    .line 15
    iput-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->noReleaseFinger:Z

    .line 16
    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->releaseFingerFlag:I

    .line 17
    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->alwaysPlaceFingerAtCenter:Z

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->releaseFingerTimer:Ljava/util/Timer;

    const-wide v2, 0xe8d4a50fffL

    .line 19
    iput-wide v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->lastFingerMoveTime:J

    const/16 v0, 0x2bc

    .line 20
    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->autoReleaseInterval:I

    const/16 v0, 0x64

    .line 21
    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->mouseAccelerationValue:I

    const/16 v0, 0xc

    .line 22
    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->maxAcceleration:I

    const/4 v0, 0x3

    .line 23
    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->minAcceleration:I

    .line 24
    iput-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->fingerPlaced:Z

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->fingerIndex:I

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->operationLock:Ljava/lang/Object;

    .line 27
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->currentCoordinate:Landroid/graphics/Point;

    .line 28
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->randomGenerator:Ljava/util/Random;

    .line 29
    invoke-static {}, Lcom/zjx/jyandroid/TouchManager;->f()Lcom/zjx/jyandroid/TouchManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    .line 30
    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v0

    .line 31
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    const/16 v3, 0x32

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->fingerMoveRect:Landroid/graphics/Rect;

    .line 32
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->fingerMoveRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->fingerMoveRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->center:Landroid/graphics/Point;

    .line 33
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.netease.l22"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, -0x270f

    const/16 v2, 0x270f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->fingerMoveRect:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .locals 4

    .line 35
    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveEventHandling;-><init>()V

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->accumulatedValueX:D

    .line 37
    iput-wide v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->accumulatedValueY:D

    const/4 v0, 0x1

    .line 38
    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->FLAG_PERIODIC_RELEASE_FINGER:I

    const/4 v1, 0x2

    .line 39
    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->FLAG_EDGE_RELEASE_FINGER:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 40
    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->horizontalCoefficient:F

    .line 41
    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->verticalCoefficient:F

    const/16 v1, 0x1f4

    .line 42
    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->horizontalSensitivity:I

    .line 43
    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->verticalSensitivity:I

    const/4 v1, 0x0

    .line 44
    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->touchUpDelay:I

    .line 45
    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->touchDownDelay:I

    const/16 v2, 0xa

    .line 46
    iput v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->touchDownRandomRangeLimit:I

    .line 47
    iput-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->invertYAxis:Z

    .line 48
    iput-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->mouseAccelerationEnable:Z

    .line 49
    iput-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->noReleaseFinger:Z

    .line 50
    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->releaseFingerFlag:I

    .line 51
    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->alwaysPlaceFingerAtCenter:Z

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->releaseFingerTimer:Ljava/util/Timer;

    const-wide v2, 0xe8d4a50fffL

    .line 53
    iput-wide v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->lastFingerMoveTime:J

    const/16 v0, 0x2bc

    .line 54
    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->autoReleaseInterval:I

    const/16 v0, 0x64

    .line 55
    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->mouseAccelerationValue:I

    const/16 v0, 0xc

    .line 56
    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->maxAcceleration:I

    const/4 v0, 0x3

    .line 57
    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->minAcceleration:I

    .line 58
    iput-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->fingerPlaced:Z

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->fingerIndex:I

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->operationLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->currentCoordinate:Landroid/graphics/Point;

    .line 62
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->randomGenerator:Ljava/util/Random;

    .line 63
    invoke-static {}, Lcom/zjx/jyandroid/TouchManager;->f()Lcom/zjx/jyandroid/TouchManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    .line 64
    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->fingerMoveRect:Landroid/graphics/Rect;

    .line 65
    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->center:Landroid/graphics/Point;

    .line 66
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.netease.l22"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    new-instance p1, Landroid/graphics/Rect;

    const/16 p2, -0x270f

    const/16 v0, 0x270f

    invoke-direct {p1, p2, p2, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->fingerMoveRect:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->operationLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->fingerPlaced:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;)J
    .locals 2

    iget-wide v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->lastFingerMoveTime:J

    return-wide v0
.end method

.method public static synthetic access$300(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;)V
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->releaseFinger()V

    return-void
.end method

.method private placeFinger()V
    .locals 4

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->touchDownDelay:I

    if-lez v0, :cond_0

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->touchDownRandomRangeLimit:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->currentCoordinate:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->center:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->randomGenerator:Ljava/util/Random;

    invoke-static {v3, v0}, Lcom/zjx/jyandroid/base/util/b$g;->c(Ljava/util/Random;I)I

    move-result v0

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->currentCoordinate:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->center:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->randomGenerator:Ljava/util/Random;

    iget v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->touchDownRandomRangeLimit:I

    invoke-static {v2, v3}, Lcom/zjx/jyandroid/base/util/b$g;->c(Ljava/util/Random;I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->currentCoordinate:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->center:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, v0, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->currentCoordinate:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/zjx/jyandroid/TouchManager;->i(FF)I

    move-result v0

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->fingerIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->fingerPlaced:Z

    return-void
.end method

.method private releaseFinger()V
    .locals 4

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    iget v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->fingerIndex:I

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->currentCoordinate:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/zjx/jyandroid/TouchManager;->o(IFF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->fingerPlaced:Z

    return-void
.end method


# virtual methods
.method public getHorizontalSensitivity()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->horizontalSensitivity:I

    return v0
.end method

.method public getVerticalSensitivity()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->verticalSensitivity:I

    return v0
.end method

.method public moveAbsolute(II)V
    .locals 0

    new-instance p1, Lkotlin/NotImplementedError;

    const-string p2, "not support move absolute"

    invoke-direct {p1, p2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public movedRelative(II)V
    .locals 5

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->operationLock:Ljava/lang/Object;

    monitor-enter v0

    int-to-float p1, p1

    :try_start_0
    iget v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->horizontalCoefficient:F

    mul-float/2addr p1, v1

    float-to-double v1, p1

    int-to-float p1, p2

    iget p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->verticalCoefficient:F

    mul-float/2addr p1, p2

    float-to-double p1, p1

    iget-wide v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->accumulatedValueX:D

    add-double/2addr v3, v1

    iput-wide v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->accumulatedValueX:D

    iget-wide v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->accumulatedValueY:D

    add-double/2addr v1, p1

    iput-wide v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->accumulatedValueY:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, p1, v1

    if-gez p1, :cond_0

    iget-wide p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->accumulatedValueY:D

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    cmpg-double p1, p1, v1

    if-gez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->lastFingerMoveTime:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-wide p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->accumulatedValueX:D

    double-to-int p1, p1

    iget-wide v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->accumulatedValueY:D

    double-to-int p2, v1

    invoke-virtual {p0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->movedRelativeRaw(II)V

    iget-wide p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->accumulatedValueX:D

    double-to-int v1, p1

    int-to-double v1, v1

    sub-double/2addr p1, v1

    iput-wide p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->accumulatedValueX:D

    iget-wide p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->accumulatedValueY:D

    double-to-int v1, p1

    int-to-double v1, v1

    sub-double/2addr p1, v1

    iput-wide p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->accumulatedValueY:D

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public movedRelativeRaw(II)V
    .locals 4

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->operationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveEventHandling;->isFocusing()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    iget-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->fingerPlaced:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->placeFinger()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->lastFingerMoveTime:J

    monitor-exit v0

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->invertYAxis:Z

    if-eqz v1, :cond_2

    neg-int p2, p2

    :cond_2
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->currentCoordinate:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v2, p1

    iget p1, v1, Landroid/graphics/Point;->y:I

    add-int/2addr p1, p2

    iput v2, v1, Landroid/graphics/Point;->x:I

    iput p1, v1, Landroid/graphics/Point;->y:I

    iget-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->noReleaseFinger:Z

    if-nez p2, :cond_4

    iget p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->releaseFingerFlag:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->fingerMoveRect:Landroid/graphics/Rect;

    invoke-static {p1, v1}, Lcom/zjx/jyandroid/base/util/b;->D(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p1

    if-nez p1, :cond_8

    iget p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->touchUpDelay:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_3

    int-to-long p1, p1

    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->releaseFinger()V

    monitor-exit v0

    return-void

    :cond_4
    iget-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->fingerMoveRect:Landroid/graphics/Rect;

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_5

    iput v3, v1, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_5
    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_6

    iput v3, v1, Landroid/graphics/Point;->x:I

    :cond_6
    :goto_0
    iget v2, p2, Landroid/graphics/Rect;->top:I

    if-ge p1, v2, :cond_7

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_7
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-le p1, p2, :cond_8

    iput p2, v1, Landroid/graphics/Point;->y:I

    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    iget p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->fingerIndex:I

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->currentCoordinate:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, p2, v2, v1}, Lcom/zjx/jyandroid/TouchManager;->m(IFF)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->lastFingerMoveTime:J

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onFocusGain()V
    .locals 9

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->operationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveEventHandling;->onFocusGain()V

    iget-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->noReleaseFinger:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->releaseFingerFlag:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->releaseFingerTimer:Ljava/util/Timer;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Z)V

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->releaseFingerTimer:Ljava/util/Timer;

    new-instance v4, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker$1;

    invoke-direct {v4, p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker$1;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;)V

    iget v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->autoReleaseInterval:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iput v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->autoReleaseInterval:I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->releaseFingerTimer:Ljava/util/Timer;

    iget v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->autoReleaseInterval:I

    div-int/lit8 v1, v1, 0x2

    int-to-long v7, v1

    const-wide/16 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onFocusLose()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->operationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveEventHandling;->onFocusLose()V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->releaseFingerTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->releaseFingerTimer:Ljava/util/Timer;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->fingerPlaced:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->releaseFinger()V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setHorizontalSensitivity(I)V
    .locals 2

    int-to-float v0, p1

    const/high16 v1, 0x43fa0000    # 500.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->horizontalCoefficient:F

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->horizontalSensitivity:I

    return-void
.end method

.method public setVerticalSensitivity(I)V
    .locals 2

    int-to-float v0, p1

    const/high16 v1, 0x43fa0000    # 500.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->verticalCoefficient:F

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->verticalSensitivity:I

    return-void
.end method
