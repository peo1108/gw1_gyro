.class public Lcom/zjx/jyandroid/ADB/app_process/TouchManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static maxFingerCount:I = 0x14


# instance fields
.field private existingFingerIndexes:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private existingTouchEventList:[Lcom/zjx/jyandroid/base/Touch/TouchInfo;

.field private injector:Lcom/zjx/jyandroid/ADB/app_process/EventInjector;

.field private r:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->r:Ljava/util/Random;

    sget v0, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->maxFingerCount:I

    new-array v0, v0, [Lcom/zjx/jyandroid/base/Touch/TouchInfo;

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->existingTouchEventList:[Lcom/zjx/jyandroid/base/Touch/TouchInfo;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->existingFingerIndexes:Ljava/util/TreeSet;

    :try_start_0
    new-instance v0, Lcom/zjx/jyandroid/ADB/app_process/EventInjector;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ADB/app_process/EventInjector;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->injector:Lcom/zjx/jyandroid/ADB/app_process/EventInjector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create event injector "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private declared-synchronized performTouch(Lcom/zjx/jyandroid/base/Touch/TouchInfo;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    iget v2, v0, Lcom/zjx/jyandroid/base/Touch/TouchInfo;->fingerIndex:I

    iget v3, v0, Lcom/zjx/jyandroid/base/Touch/TouchInfo;->type:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v5, :cond_0

    if-eq v3, v4, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v6, v1, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->existingTouchEventList:[Lcom/zjx/jyandroid/base/Touch/TouchInfo;

    aget-object v6, v6, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v6, v1, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->existingFingerIndexes:Ljava/util/TreeSet;

    invoke-virtual {v6}, Ljava/util/TreeSet;->size()I

    move-result v6

    :goto_0
    move v12, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_2
    iget-object v6, v1, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->existingTouchEventList:[Lcom/zjx/jyandroid/base/Touch/TouchInfo;

    aget-object v6, v6, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    iget-object v6, v1, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->existingFingerIndexes:Ljava/util/TreeSet;

    invoke-virtual {v6}, Ljava/util/TreeSet;->size()I

    move-result v6

    add-int/2addr v6, v5

    goto :goto_0

    :goto_1
    new-array v13, v12, [Landroid/view/MotionEvent$PointerProperties;

    new-array v14, v12, [Landroid/view/MotionEvent$PointerCoords;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v6, 0x0

    const/4 v7, 0x5

    if-eqz v3, :cond_8

    if-eq v3, v5, :cond_6

    if-eq v3, v4, :cond_4

    monitor-exit p0

    return-void

    :cond_4
    :try_start_4
    iget-object v8, v1, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->existingFingerIndexes:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->size()I

    move-result v8

    if-ne v8, v5, :cond_5

    move v8, v5

    goto :goto_2

    :cond_5
    iget-object v8, v1, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->existingFingerIndexes:Ljava/util/TreeSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/TreeSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    or-int/lit8 v8, v8, 0x6

    :goto_2
    iget-object v9, v1, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->existingTouchEventList:[Lcom/zjx/jyandroid/base/Touch/TouchInfo;

    aput-object v0, v9, v2

    :goto_3
    move v11, v8

    goto :goto_5

    :cond_6
    iget-object v8, v1, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->existingTouchEventList:[Lcom/zjx/jyandroid/base/Touch/TouchInfo;

    aget-object v9, v8, v2

    if-eqz v9, :cond_7

    iget v9, v9, Lcom/zjx/jyandroid/base/Touch/TouchInfo;->touchRadius:F

    iput v9, v0, Lcom/zjx/jyandroid/base/Touch/TouchInfo;->touchRadius:F

    :cond_7
    aput-object v0, v8, v2

    move v11, v4

    goto :goto_5

    :cond_8
    iget-object v8, v1, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->existingFingerIndexes:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->size()I

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, v1, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->existingFingerIndexes:Ljava/util/TreeSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move v8, v6

    goto :goto_4

    :cond_9
    iget-object v8, v1, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->existingFingerIndexes:Ljava/util/TreeSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-object v8, v1, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->existingFingerIndexes:Ljava/util/TreeSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/TreeSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v7

    :goto_4
    iget-object v9, v1, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->existingTouchEventList:[Lcom/zjx/jyandroid/base/Touch/TouchInfo;

    aput-object v0, v9, v2

    goto :goto_3

    :goto_5
    iget-object v0, v1, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->existingFingerIndexes:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v1, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->existingTouchEventList:[Lcom/zjx/jyandroid/base/Touch/TouchInfo;

    aget-object v9, v9, v8

    if-ne v3, v4, :cond_a

    if-ne v8, v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v10, v1, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->existingTouchEventList:[Lcom/zjx/jyandroid/base/Touch/TouchInfo;

    const/4 v15, 0x0

    aput-object v15, v10, v8

    :cond_a
    new-instance v8, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v8}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v8, v13, v6

    iget v10, v9, Lcom/zjx/jyandroid/base/Touch/TouchInfo;->fingerIndex:I

    iput v10, v8, Landroid/view/MotionEvent$PointerProperties;->id:I

    iput v5, v8, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    new-instance v8, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v8}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v8, v14, v6

    iget v8, v9, Lcom/zjx/jyandroid/base/Touch/TouchInfo;->touchRadius:F

    const/4 v10, 0x0

    cmpl-float v10, v8, v10

    const/high16 v15, 0x41200000    # 10.0f

    if-nez v10, :cond_b

    iget-object v8, v1, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->r:Ljava/util/Random;

    invoke-virtual {v8, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x32

    int-to-float v8, v8

    div-float/2addr v8, v15

    goto :goto_7

    :cond_b
    iget-object v10, v1, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->r:Ljava/util/Random;

    const/16 v4, 0xa

    invoke-virtual {v10, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    sub-int/2addr v4, v7

    int-to-float v4, v4

    div-float/2addr v4, v15

    add-float/2addr v8, v4

    :goto_7
    const/high16 v4, 0x40000000    # 2.0f

    cmpg-float v4, v8, v4

    const/high16 v10, 0x41500000    # 13.0f

    if-ltz v4, :cond_c

    cmpl-float v4, v8, v10

    if-lez v4, :cond_d

    :cond_c
    iget-object v4, v1, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->r:Ljava/util/Random;

    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x32

    int-to-float v4, v4

    div-float v8, v4, v15

    :cond_d
    iput v8, v9, Lcom/zjx/jyandroid/base/Touch/TouchInfo;->touchRadius:F

    aget-object v4, v14, v6

    iput v8, v4, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    iput v8, v4, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    iput v8, v4, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    iput v8, v4, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    const v15, 0x3c23d70a    # 0.01f

    mul-float/2addr v15, v8

    iput v15, v4, Landroid/view/MotionEvent$PointerCoords;->size:F

    div-float/2addr v8, v10

    iput v8, v4, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iget v8, v9, Lcom/zjx/jyandroid/base/Touch/TouchInfo;->x:F

    iput v8, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v8, v9, Lcom/zjx/jyandroid/base/Touch/TouchInfo;->y:F

    iput v8, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x2

    goto/16 :goto_6

    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/16 v21, 0x1002

    const/16 v22, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x6

    const/16 v20, 0x0

    move-wide v7, v9

    invoke-static/range {v7 .. v22}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v2, v1, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->injector:Lcom/zjx/jyandroid/ADB/app_process/EventInjector;

    invoke-virtual {v2, v0}, Lcom/zjx/jyandroid/ADB/app_process/EventInjector;->injectEvent(Landroid/view/InputEvent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_8
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method


# virtual methods
.method public touchDown(IFFFF)V
    .locals 8

    new-instance v7, Lcom/zjx/jyandroid/base/Touch/TouchInfo;

    const/4 v1, 0x0

    move-object v0, v7

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/zjx/jyandroid/base/Touch/TouchInfo;-><init>(IIFFFF)V

    invoke-direct {p0, v7}, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->performTouch(Lcom/zjx/jyandroid/base/Touch/TouchInfo;)V

    return-void
.end method

.method public touchMove(IFFFF)V
    .locals 8

    new-instance v7, Lcom/zjx/jyandroid/base/Touch/TouchInfo;

    const/4 v1, 0x1

    move-object v0, v7

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/zjx/jyandroid/base/Touch/TouchInfo;-><init>(IIFFFF)V

    invoke-direct {p0, v7}, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->performTouch(Lcom/zjx/jyandroid/base/Touch/TouchInfo;)V

    return-void
.end method

.method public touchUp(IFFFF)V
    .locals 8

    new-instance v7, Lcom/zjx/jyandroid/base/Touch/TouchInfo;

    const/4 v1, 0x2

    move-object v0, v7

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/zjx/jyandroid/base/Touch/TouchInfo;-><init>(IIFFFF)V

    invoke-direct {p0, v7}, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;->performTouch(Lcom/zjx/jyandroid/base/Touch/TouchInfo;)V

    return-void
.end method
