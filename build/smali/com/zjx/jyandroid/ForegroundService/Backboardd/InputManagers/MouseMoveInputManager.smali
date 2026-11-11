.class public Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ActivateKeymapChangedListener;
.implements Lcom/zjx/jyandroid/ForegroundService/MainService$MappingServiceStatusChangedListener;
.implements Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;
.implements Lcom/zjx/jyandroid/base/Interfaces/Focusable;
.implements Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;


# static fields
.field static instance:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;


# instance fields
.field private alwaysFocus:Z

.field private currentMouseMoveEventParser:Lcom/zjx/jyandroid/base/Interfaces/FocusableMoveEventHandling;

.field private currentMouseMoveEventParserLock:Ljava/lang/Object;

.field private isFocusing:Z

.field public lastButtonMask:I

.field private mainService:Lcom/zjx/jyandroid/ForegroundService/MainService;

.field private mouseMoveEventParsers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/base/Interfaces/FocusableMoveEventHandling;",
            ">;"
        }
    .end annotation
.end field

.field private parseKeymapLock:Ljava/lang/Object;

.field private readyToReceiveEvent:Z

.field private scrollWorker:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

.field private shouldLoseMainViewFocusWhenNewControllerAdded:Z

.field public virtualMouse:Lcom/zjx/jyandroid/ForegroundService/UI/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->parseKeymapLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->readyToReceiveEvent:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->scrollWorker:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->y()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v1

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->virtualMouse:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    const/4 v1, 0x0

    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->lastButtonMask:I

    iput-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->alwaysFocus:Z

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->mouseMoveEventParsers:Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->currentMouseMoveEventParser:Lcom/zjx/jyandroid/base/Interfaces/FocusableMoveEventHandling;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->currentMouseMoveEventParserLock:Ljava/lang/Object;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->mainService:Lcom/zjx/jyandroid/ForegroundService/MainService;

    iput-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->shouldLoseMainViewFocusWhenNewControllerAdded:Z

    iput-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->isFocusing:Z

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->registerServiceStatusChangedListener(Lcom/zjx/jyandroid/ForegroundService/MainService$MappingServiceStatusChangedListener;)V

    return-void
.end method

.method public static sharedInstance()Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->instance:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;-><init>()V

    sput-object v0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->instance:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    :cond_0
    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->instance:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    return-object v0
.end method


# virtual methods
.method public activatedKeymapHasChanged(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)Z
    .locals 12

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->parseKeymapLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->readyToReceiveEvent:Z

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->scrollWorker:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->onFocusLose()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    :goto_0
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->y()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->w(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;)V

    iput-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->scrollWorker:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    if-nez p1, :cond_1

    monitor-exit v0

    return v1

    :cond_1
    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;->content:Ljava/util/Map;

    const-string v2, "components"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/AbstractList;

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    :cond_2
    invoke-virtual {p1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v4, "type"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->MOUSE_SCROLL:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_3

    new-instance v4, Lr/F0;

    invoke-direct {v4}, Lr/F0;-><init>()V

    invoke-virtual {v4, v2}, Lr/F0;->e(Ljava/util/Map;)V

    invoke-virtual {v4}, Lr/F0;->b()Landroid/graphics/Rect;

    move-result-object v5

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    new-instance v7, Landroid/graphics/Point;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v6, v5, v7}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;-><init>(Landroid/graphics/Rect;Landroid/graphics/Point;)V

    iput-object v6, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->scrollWorker:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    invoke-virtual {v4}, Lr/F0;->m()I

    move-result v7

    mul-int/lit8 v7, v7, 0xa

    invoke-virtual {v6, v7}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->setVerticalSensitivity(I)V

    iget-object v6, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->scrollWorker:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    iput-boolean v1, v6, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->noReleaseFinger:Z

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput v3, v6, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->releaseFingerFlag:I

    invoke-virtual {v4}, Lr/F0;->o()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->scrollWorker:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    iget v7, v6, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->releaseFingerFlag:I

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    or-int/lit8 v7, v7, 0x2

    iput v7, v6, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->releaseFingerFlag:I

    goto :goto_2

    :catch_0
    move-exception v3

    goto/16 :goto_3

    :catch_1
    move-exception v3

    goto/16 :goto_4

    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->scrollWorker:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    invoke-virtual {v4}, Lr/F0;->l()I

    move-result v7

    iput v7, v6, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->autoReleaseInterval:I

    iget-object v6, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->scrollWorker:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    invoke-virtual {v4}, Lr/F0;->p()Z

    move-result v7

    xor-int/2addr v7, v3

    iput-boolean v7, v6, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->alwaysPlaceFingerAtCenter:Z

    iget-object v6, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->scrollWorker:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    invoke-virtual {v4}, Lr/F0;->n()Z

    move-result v7

    iput-boolean v7, v6, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->invertYAxis:Z

    iget-object v6, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->scrollWorker:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    invoke-virtual {v6}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->onFocusGain()V

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->g()Landroid/util/Size;

    move-result-object v6

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->f()[I

    move-result-object v7

    new-instance v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v10

    aget v11, v7, v1

    add-int/2addr v10, v11

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    aget v7, v7, v3

    add-int/2addr v6, v7

    invoke-direct {v9, v1, v1, v10, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Point;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-direct {v6, v7, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v8, v9, v6}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;-><init>(Landroid/graphics/Rect;Landroid/graphics/Point;)V

    invoke-virtual {v4}, Lr/F0;->m()I

    move-result v5

    mul-int/lit8 v5, v5, 0xa

    invoke-virtual {v8, v5}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->setVerticalSensitivity(I)V

    iput-boolean v1, v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->noReleaseFinger:Z

    iput v3, v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->releaseFingerFlag:I

    invoke-virtual {v4}, Lr/F0;->o()Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->releaseFingerFlag:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->releaseFingerFlag:I

    :cond_5
    invoke-virtual {v4}, Lr/F0;->l()I

    move-result v5

    iput v5, v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->autoReleaseInterval:I

    invoke-virtual {v4}, Lr/F0;->p()Z

    move-result v5

    xor-int/2addr v3, v5

    iput-boolean v3, v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->alwaysPlaceFingerAtCenter:Z

    iput v1, v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->touchDownRandomRangeLimit:I

    invoke-virtual {v4}, Lr/F0;->n()Z

    move-result v3

    iput-boolean v3, v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->invertYAxis:Z

    invoke-virtual {v8}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->onFocusGain()V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->y()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->w(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :goto_3
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KeyInputManager: \u9519\u8bef\u3002componentInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Error: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ly/c;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KeyInputManager: \u6620\u5c04\u56fe\u9519\u8bef\u3002componentInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Error: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ly/c;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    iput-boolean v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->readyToReceiveEvent:Z

    monitor-exit v0

    return v1

    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public addMouseMoveFingerManagerAndSetCurrentManager(ILcom/zjx/jyandroid/base/Interfaces/FocusableMoveEventHandling;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->mouseMoveEventParsers:Ljava/util/LinkedList;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->mouseMoveEventParsers:Ljava/util/LinkedList;

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->mouseMoveEventParsers:Ljava/util/LinkedList;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->mouseMoveEventParsers:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/base/Interfaces/FocusableMoveEventHandling;

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->setCurrentMouseMoveEventParser(Lcom/zjx/jyandroid/base/Interfaces/FocusableMoveEventHandling;)V

    .line 12
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addMouseMoveFingerManagerAndSetCurrentManager(Lcom/zjx/jyandroid/base/Interfaces/FocusableMoveEventHandling;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->mouseMoveEventParsers:Ljava/util/LinkedList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->mouseMoveEventParsers:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->mouseMoveEventParsers:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->setCurrentMouseMoveEventParser(Lcom/zjx/jyandroid/base/Interfaces/FocusableMoveEventHandling;)V

    .line 6
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public eventOccurred(Ljava/util/LinkedList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/base/InputEvents/InputEvent;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->MouseMoveEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    if-ne v1, v2, :cond_1

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/MouseMoveEvent;

    iget v1, v0, Lcom/zjx/jyandroid/base/InputEvents/MouseMoveEvent;->x:I

    iget v0, v0, Lcom/zjx/jyandroid/base/InputEvents/MouseMoveEvent;->y:I

    invoke-virtual {p0, v1, v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->movedRelative(II)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->ScrollEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    if-ne v1, v2, :cond_0

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/ScrollEvent;

    iget v0, v0, Lcom/zjx/jyandroid/base/InputEvents/ScrollEvent;->y:I

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->scrollRelative(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getCurrentMouseMoveEventParser()Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->currentMouseMoveEventParser:Lcom/zjx/jyandroid/base/Interfaces/FocusableMoveEventHandling;

    return-object v0
.end method

.method public getMouseMoveEventParsers()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/base/Interfaces/FocusableMoveEventHandling;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->mouseMoveEventParsers:Ljava/util/LinkedList;

    return-object v0
.end method

.method public isAlwaysFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->alwaysFocus:Z

    return v0
.end method

.method public isFocusing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->isFocusing:Z

    return v0
.end method

.method public isReadyToReceiveEvent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->readyToReceiveEvent:Z

    return v0
.end method

.method public moveAbsolute(II)V
    .locals 0

    return-void
.end method

.method public movedRelative(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->readyToReceiveEvent:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->currentMouseMoveEventParser:Lcom/zjx/jyandroid/base/Interfaces/FocusableMoveEventHandling;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;->movedRelative(II)V

    return-void
.end method

.method public movedRelativeRaw(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->readyToReceiveEvent:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->currentMouseMoveEventParser:Lcom/zjx/jyandroid/base/Interfaces/FocusableMoveEventHandling;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;->movedRelativeRaw(II)V

    return-void
.end method

.method public declared-synchronized onFocusGain()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->isFocusing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->currentMouseMoveEventParser:Lcom/zjx/jyandroid/base/Interfaces/FocusableMoveEventHandling;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/zjx/jyandroid/base/Interfaces/Focusable;->onFocusGain()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->registerEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->isFocusing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized onFocusLose()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->alwaysFocus:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->isFocusing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->currentMouseMoveEventParser:Lcom/zjx/jyandroid/base/Interfaces/FocusableMoveEventHandling;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/zjx/jyandroid/base/Interfaces/Focusable;->onFocusLose()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->unregisterEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->isFocusing:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public refocusCurrentMouseMoveEventParser()V
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->readyToReceiveEvent:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->currentMouseMoveEventParser:Lcom/zjx/jyandroid/base/Interfaces/FocusableMoveEventHandling;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/zjx/jyandroid/base/Interfaces/Focusable;->onFocusLose()V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->currentMouseMoveEventParser:Lcom/zjx/jyandroid/base/Interfaces/FocusableMoveEventHandling;

    invoke-interface {v0}, Lcom/zjx/jyandroid/base/Interfaces/Focusable;->onFocusGain()V

    return-void
.end method

.method public removeAllParsablesAndSetCurrentManager()V
    .locals 4

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->mouseMoveEventParsers:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->mouseMoveEventParsers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Interfaces/FocusableMoveEventHandling;

    invoke-interface {v2}, Lcom/zjx/jyandroid/base/Interfaces/Focusable;->isFocusing()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/zjx/jyandroid/base/Interfaces/Focusable;->onFocusLose()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->mouseMoveEventParsers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->setCurrentMouseMoveEventParser(Lcom/zjx/jyandroid/base/Interfaces/FocusableMoveEventHandling;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeMouseMoveFingerManagerAndSetCurrentManager(Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->mouseMoveEventParsers:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->mouseMoveEventParsers:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->mouseMoveEventParsers:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->setCurrentMouseMoveEventParser(Lcom/zjx/jyandroid/base/Interfaces/FocusableMoveEventHandling;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->mouseMoveEventParsers:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/base/Interfaces/FocusableMoveEventHandling;

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->setCurrentMouseMoveEventParser(Lcom/zjx/jyandroid/base/Interfaces/FocusableMoveEventHandling;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public scrollRelative(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->readyToReceiveEvent:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->scrollWorker:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$g;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->scrollWorker:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    invoke-virtual {v1, v0, p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->movedRelative(II)V

    return-void
.end method

.method public setAlwaysFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->alwaysFocus:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->onFocusGain()V

    :cond_0
    return-void
.end method

.method public setCurrentMouseMoveEventParser(Lcom/zjx/jyandroid/base/Interfaces/FocusableMoveEventHandling;)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->currentMouseMoveEventParserLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->currentMouseMoveEventParser:Lcom/zjx/jyandroid/base/Interfaces/FocusableMoveEventHandling;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->shouldLoseMainViewFocusWhenNewControllerAdded:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->mouseMoveEventParsers:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->currentMouseMoveEventParser:Lcom/zjx/jyandroid/base/Interfaces/FocusableMoveEventHandling;

    invoke-interface {v1}, Lcom/zjx/jyandroid/base/Interfaces/Focusable;->onFocusLose()V

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/zjx/jyandroid/base/Interfaces/Focusable;->onFocusGain()V

    :cond_2
    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->currentMouseMoveEventParser:Lcom/zjx/jyandroid/base/Interfaces/FocusableMoveEventHandling;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public shouldStartMapping()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->lastButtonMask:I

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->J()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->A(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ActivateKeymapChangedListener;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.dts.freefireth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->shouldLoseMainViewFocusWhenNewControllerAdded:Z

    return-void
.end method

.method public shouldStopMapping()V
    .locals 1

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->J()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->K(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ActivateKeymapChangedListener;)V

    return-void
.end method
