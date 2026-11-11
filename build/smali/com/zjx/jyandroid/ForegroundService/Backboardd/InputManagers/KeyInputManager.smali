.class public Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ActivateKeymapChangedListener;
.implements Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$NodeWithStartKeyCodeWrapper;
    }
.end annotation


# static fields
.field static instance:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;


# instance fields
.field private candidateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private enabled:Z

.field private joystickAdded:Z

.field private joystickExecutorService:Ljava/util/concurrent/ExecutorService;

.field private joystickTouchPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;

.field private keyActionNodeExecutor:Ljava/util/concurrent/ExecutorService;

.field private keyCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private lastButtonMask:I

.field private nonNotifiedFinishedNodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;",
            ">;>;"
        }
    .end annotation
.end field

.field private parseKeymapLock:Ljava/lang/Object;

.field private final totalGameControllerButtonCount:I

.field private final totalMouseButtonsCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lastButtonMask:I

    const/4 v1, 0x7

    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->totalMouseButtonsCount:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->totalGameControllerButtonCount:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->parseKeymapLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->enabled:Z

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->joystickAdded:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->joystickTouchPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->keyCodeMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->candidateMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->nonNotifiedFinishedNodes:Ljava/util/Map;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->keyActionNodeExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->J()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->A(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ActivateKeymapChangedListener;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lambda$activatedKeymapHasChanged$5(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$000(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->keyActionNodeExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method private appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V
    .locals 3

    array-length v0, p2

    if-eqz v0, :cond_5

    array-length v0, p2

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->keyCodeMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    aget p2, p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    aget v0, p2, v2

    aget p2, p2, v1

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->keyCodeMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->keyCodeMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public static synthetic b(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lambda$activatedKeymapHasChanged$2(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lambda$activatedKeymapHasChanged$23(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method private convertNumberListToIntegerArray(Ljava/util/AbstractList;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList<",
            "Ljava/lang/Number;",
            ">;)[I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic d(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lambda$activatedKeymapHasChanged$18(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic e(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lambda$activatedKeymapHasChanged$3(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic f(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lambda$activatedKeymapHasChanged$13(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic g(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lambda$activatedKeymapHasChanged$4(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic h(Ljava/lang/Number;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lambda$activatedKeymapHasChanged$20(Ljava/lang/Number;)I

    move-result p0

    return p0
.end method

.method public static synthetic i(Ljava/lang/Number;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lambda$activatedKeymapHasChanged$21(Ljava/lang/Number;)I

    move-result p0

    return p0
.end method

.method public static synthetic j(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lambda$activatedKeymapHasChanged$25(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method private joystickMovedEventReceived(FF)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->joystickTouchPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;->movedToOffset(FF)V

    return-void
.end method

.method public static synthetic k(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lambda$activatedKeymapHasChanged$22(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic l(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lambda$activatedKeymapHasChanged$19(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$activatedKeymapHasChanged$0(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$activatedKeymapHasChanged$1(Ljava/lang/Number;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$activatedKeymapHasChanged$10(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$activatedKeymapHasChanged$11(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$activatedKeymapHasChanged$12(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$activatedKeymapHasChanged$13(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$activatedKeymapHasChanged$14(Ljava/lang/Number;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$activatedKeymapHasChanged$15(Ljava/lang/Number;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$activatedKeymapHasChanged$16(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$activatedKeymapHasChanged$17(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$activatedKeymapHasChanged$18(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$activatedKeymapHasChanged$19(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$activatedKeymapHasChanged$2(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$activatedKeymapHasChanged$20(Ljava/lang/Number;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$activatedKeymapHasChanged$21(Ljava/lang/Number;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$activatedKeymapHasChanged$22(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$activatedKeymapHasChanged$23(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$activatedKeymapHasChanged$24(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$activatedKeymapHasChanged$25(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$activatedKeymapHasChanged$3(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$activatedKeymapHasChanged$4(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$activatedKeymapHasChanged$5(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$activatedKeymapHasChanged$6(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$activatedKeymapHasChanged$7(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$activatedKeymapHasChanged$8(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$activatedKeymapHasChanged$9(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static synthetic m(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lambda$activatedKeymapHasChanged$0(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic n(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lambda$activatedKeymapHasChanged$17(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic o(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lambda$activatedKeymapHasChanged$6(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic p(Ljava/lang/Number;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lambda$activatedKeymapHasChanged$1(Ljava/lang/Number;)I

    move-result p0

    return p0
.end method

.method public static synthetic q(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lambda$activatedKeymapHasChanged$12(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic r(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lambda$activatedKeymapHasChanged$11(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic s(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lambda$activatedKeymapHasChanged$10(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static sharedInstance()Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->instance:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;-><init>()V

    sput-object v0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->instance:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;

    :cond_0
    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->instance:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;

    return-object v0
.end method

.method public static synthetic t(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lambda$activatedKeymapHasChanged$24(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic u(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lambda$activatedKeymapHasChanged$16(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic v(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lambda$activatedKeymapHasChanged$7(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic w(Ljava/lang/Number;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lambda$activatedKeymapHasChanged$14(Ljava/lang/Number;)I

    move-result p0

    return p0
.end method

.method public static synthetic x(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lambda$activatedKeymapHasChanged$8(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic y(Ljava/lang/Number;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lambda$activatedKeymapHasChanged$15(Ljava/lang/Number;)I

    move-result p0

    return p0
.end method

.method public static synthetic z(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lambda$activatedKeymapHasChanged$9(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public activatedKeymapHasChanged(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)Z
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->parseKeymapLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->reset()V

    const/4 v4, 0x0

    if-nez v2, :cond_0

    monitor-exit v3

    return v4

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_26

    :cond_0
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, v2, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;->content:Ljava/util/Map;

    const-string v6, "components"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/AbstractList;

    invoke-virtual {v5, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v5}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eqz v8, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v11, "x"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    const-string v11, "y"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    const-string v11, "width"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    const-string v11, "height"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    const-string v11, "data"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    const-string v12, "type"

    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    sget-object v13, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->JOYSTICK:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    if-ne v12, v13, :cond_3

    iget-object v9, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->joystickTouchPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;

    if-nez v9, :cond_2

    new-instance v9, Lr/q;

    invoke-direct {v9}, Lr/q;-><init>()V

    invoke-virtual {v9, v8}, Lr/q;->e(Ljava/util/Map;)V

    const-string v10, "switchRadiusRatio"

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    const-string v10, "zeroRadiusRatio"

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    const-string v10, "delayResponseTime"

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    const-string v10, "triggerMode"

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    const-string v10, "totalMoveStep"

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    invoke-virtual {v9}, Lr/q;->t()I

    move-result v10

    invoke-virtual {v9}, Lr/q;->u()I

    move-result v11

    invoke-virtual {v9}, Lr/q;->A()I

    move-result v12

    invoke-virtual {v9}, Lr/q;->s()I

    move-result v13

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    iput-object v4, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->joystickExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v9}, Lr/q;->b()Landroid/graphics/Rect;

    move-result-object v4

    new-instance v14, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;

    new-instance v15, Landroid/graphics/Point;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 p1, v6

    :try_start_4
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v6
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v18, v5

    :try_start_5
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-direct {v15, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v4, v4, v16

    double-to-int v4, v4

    iget-object v5, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->joystickExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v14, v15, v4, v5}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;-><init>(Landroid/graphics/Point;ILjava/util/concurrent/ExecutorService;)V

    iput-object v14, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->joystickTouchPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;

    new-instance v4, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/JoystickMoveKeyActionNode;

    sget-object v5, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickButton;->NORTH:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickButton;

    invoke-direct {v4, v14, v5}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/JoystickMoveKeyActionNode;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickButton;)V

    new-instance v5, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/JoystickMoveKeyActionNode;

    iget-object v6, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->joystickTouchPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;

    sget-object v14, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickButton;->WEST:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickButton;

    invoke-direct {v5, v6, v14}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/JoystickMoveKeyActionNode;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickButton;)V

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/JoystickMoveKeyActionNode;

    iget-object v14, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->joystickTouchPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;

    sget-object v15, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickButton;->EAST:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickButton;

    invoke-direct {v6, v14, v15}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/JoystickMoveKeyActionNode;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickButton;)V

    new-instance v14, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/JoystickMoveKeyActionNode;

    iget-object v15, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->joystickTouchPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v19, v7

    :try_start_6
    sget-object v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickButton;->SOUTH:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickButton;

    invoke-direct {v14, v15, v7}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/JoystickMoveKeyActionNode;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer$JoystickButton;)V

    invoke-static {v10}, Ljava/util/stream/IntStream;->of(I)Ljava/util/stream/IntStream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v7

    invoke-direct {v1, v4, v7}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V

    invoke-static {v12}, Ljava/util/stream/IntStream;->of(I)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v4

    invoke-direct {v1, v5, v4}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V

    invoke-static {v13}, Ljava/util/stream/IntStream;->of(I)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v4

    invoke-direct {v1, v6, v4}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V

    invoke-static {v11}, Ljava/util/stream/IntStream;->of(I)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v4

    invoke-direct {v1, v14, v4}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V

    invoke-virtual {v9}, Lr/q;->w()Lr/q$a;

    move-result-object v4

    sget-object v5, Lr/q$a;->c:Lr/q$a;

    if-eq v4, v5, :cond_1

    new-instance v4, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchJoystickRadiusKeyActionNode;

    iget-object v5, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->joystickTouchPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;

    invoke-virtual {v9}, Lr/q;->w()Lr/q$a;

    move-result-object v6

    invoke-virtual {v9}, Lr/q;->x()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchJoystickRadiusKeyActionNode;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;Lr/q$a;I)V

    invoke-virtual {v9}, Lr/q;->v()I

    move-result v5

    invoke-static {v5}, Ljava/util/stream/IntStream;->of(I)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object/from16 v7, v19

    goto/16 :goto_7

    :catch_2
    move-exception v0

    move-object v4, v0

    move-object/from16 v7, v19

    goto/16 :goto_8

    :cond_1
    :goto_1
    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :catch_3
    move-exception v0

    :goto_2
    move-object/from16 v19, v7

    move-object v4, v0

    goto/16 :goto_7

    :catch_4
    move-exception v0

    :goto_3
    move-object/from16 v19, v7

    move-object v4, v0

    goto/16 :goto_8

    :catch_5
    move-exception v0

    move-object/from16 v18, v5

    goto :goto_2

    :catch_6
    move-exception v0

    move-object/from16 v18, v5

    goto :goto_3

    :catch_7
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 p1, v6

    goto :goto_2

    :catch_8
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 p1, v6

    goto :goto_3

    :cond_2
    move-object/from16 v18, v5

    move-object/from16 p1, v6

    move-object/from16 v19, v7

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Joystick component already added. But there is another in the keymap."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    move-object/from16 v18, v5

    move-object/from16 p1, v6

    move-object/from16 v19, v7

    sget-object v4, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->FPS_VIEW:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v12, v4, :cond_a

    if-nez v19, :cond_9

    new-instance v4, Lr/w0;

    invoke-direct {v4}, Lr/w0;-><init>()V

    invoke-virtual {v4, v8}, Lr/w0;->e(Ljava/util/Map;)V

    invoke-virtual {v4}, Lr/w0;->H()Ljava/util/LinkedList;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/a;

    invoke-direct {v6}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/a;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v5

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v6

    iget-boolean v7, v4, Lr/w0;->l:Z

    const/16 v9, 0x32

    if-nez v7, :cond_4

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v12

    sub-int/2addr v12, v9

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    sub-int/2addr v6, v9

    invoke-direct {v7, v9, v9, v12, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_4

    :cond_4
    invoke-virtual {v4}, Lr/w0;->b()Landroid/graphics/Rect;

    move-result-object v7

    :goto_4
    new-instance v6, Landroid/graphics/Point;

    invoke-virtual {v4}, Lr/w0;->b()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    invoke-virtual {v4}, Lr/w0;->b()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    invoke-direct {v6, v12, v13}, Landroid/graphics/Point;-><init>(II)V

    new-instance v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    invoke-direct {v12, v7, v6}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;-><init>(Landroid/graphics/Rect;Landroid/graphics/Point;)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iput v9, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->touchDownRandomRangeLimit:I

    invoke-virtual {v4}, Lr/w0;->P()Z

    move-result v6

    const/4 v7, 0x0

    iput-boolean v7, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->noReleaseFinger:Z

    if-eqz v6, :cond_5

    iput v10, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->releaseFingerFlag:I

    goto :goto_5

    :catch_9
    move-exception v0

    move-object v4, v0

    move-object v7, v12

    goto/16 :goto_7

    :catch_a
    move-exception v0

    move-object v4, v0

    move-object v7, v12

    goto/16 :goto_8

    :cond_5
    const/4 v6, 0x3

    iput v6, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->releaseFingerFlag:I

    invoke-virtual {v4}, Lr/w0;->x()I

    move-result v6

    iput v6, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->autoReleaseInterval:I

    :goto_5
    invoke-virtual {v4}, Lr/w0;->L()I

    move-result v6

    iput v6, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->touchUpDelay:I

    invoke-virtual {v4}, Lr/w0;->K()I

    move-result v6

    iput v6, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->touchDownDelay:I

    const/16 v7, 0xf

    if-ge v6, v7, :cond_6

    iput v7, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->touchDownDelay:I

    :cond_6
    invoke-virtual {v4}, Lr/w0;->y()I

    move-result v6

    invoke-virtual {v12, v6}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->setHorizontalSensitivity(I)V

    invoke-virtual {v4}, Lr/w0;->M()I

    move-result v6

    invoke-virtual {v12, v6}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->setVerticalSensitivity(I)V

    invoke-virtual {v4}, Lr/w0;->F()Lr/H$a;

    move-result-object v6

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;

    invoke-direct {v7, v12, v6}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveEventHandling;Lr/H$a;)V

    invoke-virtual {v4}, Lr/w0;->G()Landroid/graphics/Point;

    move-result-object v4

    iput-object v4, v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->mouseDisplayPosition:Landroid/graphics/Point;

    invoke-direct {v1, v7, v5}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->y()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->l()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->onFocusGain()V

    :cond_7
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;->values()[Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;

    move-result-object v4

    const-string v5, "switchSensitivityMode"

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    sget-object v5, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;

    if-eq v4, v5, :cond_8

    const-string v5, "switchMouseSensitivityKeyCodeArray"

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/AbstractList;

    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/c;

    invoke-direct {v6}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/c;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v5

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;

    invoke-direct {v6, v12, v4}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;)V

    const-string v4, "horizontalSensitivityAfterSwitch"

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iput v4, v6, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->horizontalSensitivityAfterSwitch:I

    const-string v4, "verticalSensitivityAfterSwitch"

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iput v4, v6, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchViewSensitivityKeyActionNode;->verticalSensitivityAfterSwitch:I

    invoke-direct {v1, v6, v5}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V

    :cond_8
    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v7, v12

    goto/16 :goto_9

    :cond_9
    :try_start_8
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "View component already added. But there is another in the keymap."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_a
    sget-object v4, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->JOYSTICK_SC:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v12, v4, :cond_d

    iget-object v4, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->joystickTouchPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;

    if-nez v4, :cond_c

    new-instance v4, Lr/q;

    invoke-direct {v4}, Lr/q;-><init>()V

    invoke-virtual {v4, v8}, Lr/q;->e(Ljava/util/Map;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    iput-object v5, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->joystickExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v4}, Lr/q;->b()Landroid/graphics/Rect;

    move-result-object v5

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;

    new-instance v7, Landroid/graphics/Point;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    invoke-direct {v7, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-double v10, v5

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    double-to-int v5, v10

    iget-object v10, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->joystickExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v6, v7, v5, v10}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;-><init>(Landroid/graphics/Point;ILjava/util/concurrent/ExecutorService;)V

    iput-object v6, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->joystickTouchPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;

    invoke-virtual {v4}, Lr/q;->w()Lr/q$a;

    move-result-object v5

    sget-object v6, Lr/q$a;->c:Lr/q$a;

    if-eq v5, v6, :cond_b

    new-instance v5, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchJoystickRadiusKeyActionNode;

    iget-object v6, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->joystickTouchPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;

    invoke-virtual {v4}, Lr/q;->w()Lr/q$a;

    move-result-object v7

    invoke-virtual {v4}, Lr/q;->x()I

    move-result v10

    invoke-direct {v5, v6, v7, v10}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchJoystickRadiusKeyActionNode;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;Lr/q$a;I)V

    invoke-virtual {v5, v9}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchJoystickRadiusKeyActionNode;->setJoystickMode(Z)V

    invoke-virtual {v4}, Lr/q;->v()I

    move-result v4

    invoke-static {v4}, Ljava/util/stream/IntStream;->of(I)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v4

    invoke-direct {v1, v5, v4}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V

    :cond_b
    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Joystick component already added. But there is another in the keymap."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_d
    :goto_6
    move-object/from16 v7, v19

    goto :goto_9

    :goto_7
    :try_start_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KeyInputManager: \u9519\u8bef\u3002componentInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ". Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ly/c;->b(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KeyInputManager: \u6620\u5c04\u56fe\u9519\u8bef\u3002componentInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ". Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ly/c;->b(Ljava/lang/String;)V

    :goto_9
    move-object/from16 v6, p1

    move-object/from16 v5, v18

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_e
    move-object/from16 v18, v5

    move-object/from16 v19, v7

    invoke-virtual/range {v18 .. v18}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v9

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v7, :cond_f

    move-object/from16 v20, v2

    move v2, v10

    move-object/from16 v13, v19

    goto/16 :goto_21

    :cond_f
    :try_start_a
    const-string v7, "type"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    sget-object v8, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->NORMAL_TOUCH_POINT:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1b
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-ne v7, v8, :cond_23

    :try_start_b
    new-instance v7, Lr/X;

    invoke-direct {v7}, Lr/X;-><init>()V

    invoke-virtual {v7, v6}, Lr/X;->e(Ljava/util/Map;)V

    invoke-virtual {v7}, Lr/X;->a()Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v11

    if-eqz v11, :cond_10

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v11

    if-le v11, v10, :cond_11

    :cond_10
    move-object/from16 v13, v19

    goto/16 :goto_13

    :cond_11
    invoke-virtual {v7}, Lr/X;->b()Landroid/graphics/Rect;

    move-result-object v11

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v12

    invoke-virtual {v12}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.dts.freefireth"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_f
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v12, :cond_12

    :try_start_c
    invoke-virtual {v7}, Lr/X;->a()Ljava/util/LinkedList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v12

    if-ne v12, v9, :cond_12

    invoke-virtual {v7}, Lr/X;->a()Ljava/util/LinkedList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    const v13, 0xfffe

    if-ne v12, v13, :cond_12

    move v12, v9

    goto :goto_b

    :catch_b
    move-exception v0

    move-object v7, v0

    move-object/from16 v20, v2

    move v2, v10

    move-object/from16 v13, v19

    goto/16 :goto_22

    :catch_c
    move-exception v0

    move-object v7, v0

    move-object/from16 v20, v2

    move v2, v10

    move-object/from16 v13, v19

    goto/16 :goto_23

    :cond_12
    const/4 v12, 0x0

    :goto_b
    :try_start_d
    iget-boolean v13, v7, Lr/X;->m:Z

    if-nez v13, :cond_13

    if-eqz v12, :cond_14

    :cond_13
    move-object/from16 v13, v19

    goto/16 :goto_12

    :cond_14
    invoke-virtual {v7}, Lr/X;->H()Lr/X$a;

    move-result-object v12

    sget-object v13, Lr/X$a;->a:Lr/X$a;
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_f
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-ne v12, v13, :cond_15

    :try_start_e
    new-instance v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/NormalPressKeyActionNode;

    invoke-direct {v12}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/NormalPressKeyActionNode;-><init>()V

    new-instance v13, Landroid/graphics/Point;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v14

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v15

    invoke-direct {v13, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    iput-object v13, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->coordinate:Landroid/graphics/Point;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v13

    iput v13, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->width:I

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    iput v11, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->height:I

    iget v11, v7, Lr/X;->p:I

    iput v11, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/NormalPressKeyActionNode;->triggerLatency:I

    invoke-virtual {v7}, Lr/X;->a()Ljava/util/LinkedList;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v11

    new-instance v13, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/k;

    invoke-direct {v13}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/k;-><init>()V

    invoke-interface {v11, v13}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v11

    invoke-direct {v1, v12, v11}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_d

    :cond_15
    :try_start_f
    sget-object v13, Lr/X$a;->b:Lr/X$a;
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_10
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-ne v12, v13, :cond_16

    :try_start_10
    new-instance v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SingleClickKeyActionNode;

    invoke-direct {v12}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SingleClickKeyActionNode;-><init>()V

    new-instance v13, Landroid/graphics/Point;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v14

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v15

    invoke-direct {v13, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    iput-object v13, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->coordinate:Landroid/graphics/Point;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v13

    iput v13, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->width:I

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    iput v11, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->height:I

    invoke-virtual {v7}, Lr/X;->u()I

    move-result v11

    iput v11, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SingleClickKeyActionNode;->clickDuration:I

    iget v11, v7, Lr/X;->p:I

    iput v11, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SingleClickKeyActionNode;->triggerLatency:I

    invoke-virtual {v7}, Lr/X;->a()Ljava/util/LinkedList;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v11

    new-instance v13, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/m;

    invoke-direct {v13}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/m;-><init>()V

    invoke-interface {v11, v13}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v11

    invoke-direct {v1, v12, v11}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_d

    :cond_16
    :try_start_11
    sget-object v13, Lr/X$a;->c:Lr/X$a;
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_10
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-ne v12, v13, :cond_19

    :try_start_12
    invoke-virtual {v7}, Lr/X;->L()Z

    move-result v12

    if-nez v12, :cond_17

    new-instance v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/CrazyTapKeyActionNode;

    invoke-direct {v12}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/CrazyTapKeyActionNode;-><init>()V

    new-instance v13, Landroid/graphics/Point;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v14

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v15

    invoke-direct {v13, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    iput-object v13, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->coordinate:Landroid/graphics/Point;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v13

    iput v13, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->width:I

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    iput v11, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->height:I

    invoke-virtual {v7}, Lr/X;->u()I

    move-result v11

    iput v11, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/CrazyTapKeyActionNode;->clickDuration:I

    invoke-virtual {v7}, Lr/X;->v()I

    move-result v11

    iput v11, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/CrazyTapKeyActionNode;->clickInterval:I

    iget v11, v7, Lr/X;->p:I

    iput v11, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/CrazyTapKeyActionNode;->triggerLatency:I

    invoke-virtual {v7}, Lr/X;->a()Ljava/util/LinkedList;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v11

    new-instance v13, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/n;

    invoke-direct {v13}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/n;-><init>()V

    invoke-interface {v11, v13}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v11

    invoke-direct {v1, v12, v11}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V

    goto/16 :goto_d

    :cond_17
    new-instance v12, Lh/a;

    invoke-direct {v12}, Lh/a;-><init>()V

    new-instance v13, Landroid/graphics/Point;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v14

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    invoke-direct {v13, v14, v11}, Landroid/graphics/Point;-><init>(II)V

    iput-object v13, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->coordinate:Landroid/graphics/Point;

    invoke-virtual {v7}, Lr/X;->u()I

    move-result v11

    invoke-virtual {v12, v11}, Lh/a;->e(I)V

    invoke-virtual {v7}, Lr/X;->v()I

    move-result v11

    invoke-virtual {v12, v11}, Lh/a;->f(I)V

    invoke-virtual {v7}, Lr/X;->w()Ljava/util/List;

    move-result-object v11

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->values()[Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    move-result-object v15

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    aget-object v14, v15, v14

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_18
    invoke-virtual {v12, v13}, Lh/a;->g(Ljava/util/Set;)V

    invoke-virtual {v7}, Lr/X;->a()Ljava/util/LinkedList;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v11

    new-instance v13, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/o;

    invoke-direct {v13}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/o;-><init>()V

    invoke-interface {v11, v13}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v11

    invoke-direct {v1, v12, v11}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_b
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_d

    :cond_19
    :try_start_13
    sget-object v13, Lr/X$a;->d:Lr/X$a;
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_10
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_f
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-ne v12, v13, :cond_1a

    :try_start_14
    new-instance v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/DownUpClickKeyActionNode;

    invoke-direct {v12}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/DownUpClickKeyActionNode;-><init>()V

    new-instance v13, Landroid/graphics/Point;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v14

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v15

    invoke-direct {v13, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    iput-object v13, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->coordinate:Landroid/graphics/Point;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v13

    iput v13, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->width:I

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    iput v11, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->height:I

    invoke-virtual {v7}, Lr/X;->u()I

    move-result v11

    int-to-long v13, v11

    iput-wide v13, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/DownUpClickKeyActionNode;->clickDuration:J

    invoke-virtual {v7}, Lr/X;->a()Ljava/util/LinkedList;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v11

    new-instance v13, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/p;

    invoke-direct {v13}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/p;-><init>()V

    invoke-interface {v11, v13}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v11

    invoke-direct {v1, v12, v11}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_d

    :cond_1a
    :try_start_15
    sget-object v13, Lr/X$a;->f:Lr/X$a;
    :try_end_15
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_10
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_f
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    if-ne v12, v13, :cond_1b

    :try_start_16
    new-instance v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/UpTriggerKeyActionNode;

    invoke-direct {v12}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/UpTriggerKeyActionNode;-><init>()V

    new-instance v13, Landroid/graphics/Point;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v14

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v15

    invoke-direct {v13, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    iput-object v13, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->coordinate:Landroid/graphics/Point;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v13

    iput v13, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->width:I

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    iput v11, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->height:I

    invoke-virtual {v7}, Lr/X;->u()I

    move-result v11

    int-to-long v13, v11

    iput-wide v13, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/UpTriggerKeyActionNode;->clickDuration:J

    invoke-virtual {v7}, Lr/X;->a()Ljava/util/LinkedList;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v11

    new-instance v13, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/q;

    invoke-direct {v13}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/q;-><init>()V

    invoke-interface {v11, v13}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v11

    invoke-direct {v1, v12, v11}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_b
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :cond_1b
    :goto_d
    :try_start_17
    invoke-virtual {v7}, Lr/X;->Q()Z

    move-result v11

    if-eqz v11, :cond_1c

    new-instance v11, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/ResetViewKeyActionNode;
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_10
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_f
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    move-object/from16 v13, v19

    :try_start_18
    invoke-direct {v11, v13}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/ResetViewKeyActionNode;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveEventHandling;)V

    iget v12, v7, Lr/X;->i:I

    iput v12, v11, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/ResetViewKeyActionNode;->latency:I

    invoke-virtual {v7}, Lr/X;->a()Ljava/util/LinkedList;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v12

    new-instance v14, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/r;

    invoke-direct {v14}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/r;-><init>()V

    invoke-interface {v12, v14}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v12

    invoke-direct {v1, v11, v12}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V

    goto :goto_10

    :catch_d
    move-exception v0

    :goto_e
    move-object v7, v0

    move-object/from16 v20, v2

    move v2, v10

    goto/16 :goto_22

    :catch_e
    move-exception v0

    :goto_f
    move-object v7, v0

    move-object/from16 v20, v2

    move v2, v10

    goto/16 :goto_23

    :catch_f
    move-exception v0

    move-object/from16 v13, v19

    goto :goto_e

    :catch_10
    move-exception v0

    move-object/from16 v13, v19

    goto :goto_f

    :cond_1c
    move-object/from16 v13, v19

    :goto_10
    invoke-virtual {v7}, Lr/X;->P()Z

    move-result v11

    if-eqz v11, :cond_1d

    iget-object v11, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->joystickTouchPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;

    if-eqz v11, :cond_1d

    new-instance v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/ReactivateJoystickKeyActionNode;

    invoke-virtual {v7}, Lr/X;->E()I

    move-result v14

    invoke-direct {v12, v11, v14}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/ReactivateJoystickKeyActionNode;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;I)V

    invoke-virtual {v7}, Lr/X;->a()Ljava/util/LinkedList;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v11

    new-instance v14, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/l;

    invoke-direct {v14}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/l;-><init>()V

    invoke-interface {v11, v14}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v11

    invoke-direct {v1, v12, v11}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V

    :cond_1d
    invoke-virtual {v7}, Lr/X;->R()Z

    move-result v11

    if-eqz v11, :cond_1e

    if-eqz v13, :cond_1e

    invoke-virtual {v7}, Lr/X;->B()Lr/H$a;

    move-result-object v11

    new-instance v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;

    invoke-virtual {v7}, Lr/X;->D()Lr/H$b;

    move-result-object v14

    invoke-direct {v12, v13, v11, v14}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveEventHandling;Lr/H$a;Lr/H$b;)V

    invoke-virtual {v7}, Lr/X;->C()Landroid/graphics/Point;

    move-result-object v11

    iput-object v11, v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->mouseDisplayPosition:Landroid/graphics/Point;

    invoke-interface {v8}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v11

    new-instance v14, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/s;

    invoke-direct {v14}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/s;-><init>()V

    invoke-interface {v11, v14}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v11

    invoke-direct {v1, v12, v11}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V

    :cond_1e
    invoke-virtual {v7}, Lr/X;->O()Z

    move-result v7

    if-eqz v7, :cond_1f

    new-instance v7, Lh/c;

    invoke-direct {v7}, Lh/c;-><init>()V

    invoke-interface {v8}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v11, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/t;

    invoke-direct {v11}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/t;-><init>()V

    invoke-interface {v8, v11}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v8

    invoke-direct {v1, v7, v8}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V

    iput-boolean v9, v7, Lh/c;->b:Z

    :cond_1f
    :goto_11
    move-object/from16 v20, v2

    goto :goto_14

    :goto_12
    new-instance v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    invoke-direct {v8}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;-><init>()V

    new-instance v14, Landroid/graphics/Point;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v15

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    invoke-direct {v14, v15, v11}, Landroid/graphics/Point;-><init>(II)V

    iput-object v14, v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->center:Landroid/graphics/Point;

    iput-boolean v9, v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->noReleaseFinger:Z

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v11

    new-instance v14, Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v15

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v11

    const/4 v9, 0x0

    invoke-direct {v14, v9, v9, v15, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v14, v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->fingerMoveRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Lr/X;->y()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->setHorizontalSensitivity(I)V

    invoke-virtual {v7}, Lr/X;->y()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->setVerticalSensitivity(I)V

    iget-boolean v9, v7, Lr/X;->o:Z

    if-nez v9, :cond_20

    if-eqz v12, :cond_21

    :cond_20
    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->noReleaseFinger:Z

    iput v10, v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->releaseFingerFlag:I

    if-eqz v12, :cond_21

    const/16 v9, 0x1e

    iput v9, v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->touchDownDelay:I

    :cond_21
    new-instance v9, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/ManageCurrentControllingViewKeyActionNode;

    invoke-direct {v9, v8}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/ManageCurrentControllingViewKeyActionNode;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveEventHandling;)V

    invoke-virtual {v7}, Lr/X;->a()Ljava/util/LinkedList;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/j;

    invoke-direct {v8}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/j;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v7

    invoke-direct {v1, v9, v7}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_18} :catch_e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_d
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :cond_22
    :goto_13
    move-object/from16 v20, v2

    :goto_14
    move v2, v10

    goto/16 :goto_21

    :cond_23
    move-object/from16 v13, v19

    :try_start_19
    sget-object v8, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->SWIPE_TOUCH_POINT:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_19} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    if-ne v7, v8, :cond_25

    :try_start_1a
    new-instance v7, Lr/L0;

    invoke-direct {v7}, Lr/L0;-><init>()V

    invoke-virtual {v7, v6}, Lr/L0;->e(Ljava/util/Map;)V

    invoke-virtual {v7}, Lr/L0;->a()Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-eqz v9, :cond_22

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-le v8, v10, :cond_24

    goto :goto_13

    :cond_24
    invoke-virtual {v7}, Lr/L0;->b()Landroid/graphics/Rect;

    move-result-object v8

    new-instance v9, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;

    invoke-virtual {v7}, Lr/L0;->o()Lr/L0$a;

    move-result-object v11

    invoke-direct {v9, v11}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;-><init>(Lr/L0$a;)V

    invoke-virtual {v7}, Lr/L0;->m()I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->setSwipeDuration(I)V

    invoke-virtual {v7}, Lr/L0;->l()Landroid/graphics/Point;

    move-result-object v11

    iput-object v11, v9, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->endCoordinate:Landroid/graphics/Point;

    new-instance v11, Landroid/graphics/Point;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    invoke-direct {v11, v12, v8}, Landroid/graphics/Point;-><init>(II)V

    iput-object v11, v9, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->startCoordinate:Landroid/graphics/Point;

    invoke-virtual {v7}, Lr/L0;->n()I

    move-result v8

    iput v8, v9, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwipeKeyActionNode;->triggerLatency:I

    invoke-virtual {v7}, Lr/L0;->a()Ljava/util/LinkedList;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/u;

    invoke-direct {v8}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/u;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v7

    invoke-direct {v1, v9, v7}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V
    :try_end_1a
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1a} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_d
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto/16 :goto_11

    :cond_25
    :try_start_1b
    sget-object v8, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->MACRO:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_1b} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_19
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    if-ne v7, v8, :cond_29

    :try_start_1c
    new-instance v7, Lr/x;

    invoke-direct {v7}, Lr/x;-><init>()V

    invoke-virtual {v7, v6}, Lr/x;->e(Ljava/util/Map;)V

    iget-object v8, v7, Lr/x;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_22

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v10, :cond_26

    goto/16 :goto_13

    :cond_26
    new-instance v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroKeyActionNode;

    invoke-direct {v8}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroKeyActionNode;-><init>()V

    iget-object v9, v7, Lr/x;->e:Lr/x$b;

    iput-object v9, v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroKeyActionNode;->triggerMode:Lr/x$b;

    const-string v9, "data"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    const-string v11, "operationList"

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-virtual {v8, v9}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroKeyActionNode;->parseOperations(Ljava/util/List;)V

    iget-object v9, v7, Lr/x;->d:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-gtz v11, :cond_27

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-gt v11, v10, :cond_28

    :cond_27
    new-instance v11, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$1;

    invoke-direct {v11, v1, v8}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$1;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroKeyActionNode;)V

    invoke-interface {v9}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v12, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/v;

    invoke-direct {v12}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/v;-><init>()V

    invoke-interface {v9, v12}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v9

    invoke-direct {v1, v11, v9}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V

    :cond_28
    iget-object v7, v7, Lr/x;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v9, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/w;

    invoke-direct {v9}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/w;-><init>()V

    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v7

    invoke-direct {v1, v8, v7}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_1c} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_d
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    goto/16 :goto_11

    :cond_29
    :try_start_1d
    sget-object v8, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->SWITCH_FLOATING_BALL_DISPLAY:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8
    :try_end_1d
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_1d} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_19
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    if-ne v7, v8, :cond_2b

    :try_start_1e
    new-instance v7, Lr/M0;

    invoke-direct {v7}, Lr/M0;-><init>()V

    invoke-virtual {v7, v6}, Lr/M0;->e(Ljava/util/Map;)V

    invoke-virtual {v7}, Lr/M0;->a()Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-eqz v8, :cond_22

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-le v8, v10, :cond_2a

    goto/16 :goto_13

    :cond_2a
    new-instance v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$2;

    invoke-direct {v8, v1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$2;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;)V

    invoke-interface {v7}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v9, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/x;

    invoke-direct {v9}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/x;-><init>()V

    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v7

    invoke-direct {v1, v8, v7}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V
    :try_end_1e
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_1e} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_d
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    goto/16 :goto_11

    :cond_2b
    :try_start_1f
    sget-object v8, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->SWITCH_CONTROL_PANEL_DISPLAY:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_1f} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_19
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    if-ne v7, v8, :cond_2d

    :try_start_20
    new-instance v7, Lf/n;

    invoke-direct {v7}, Lf/n;-><init>()V

    invoke-virtual {v7, v6}, Lf/n;->e(Ljava/util/Map;)V

    invoke-virtual {v7}, Lf/n;->a()Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-eqz v8, :cond_22

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-le v8, v10, :cond_2c

    goto/16 :goto_13

    :cond_2c
    new-instance v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$3;

    invoke-direct {v8, v1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$3;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;)V

    invoke-interface {v7}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v9, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/y;

    invoke-direct {v9}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/y;-><init>()V

    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v7

    invoke-direct {v1, v8, v7}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V
    :try_end_20
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_20} :catch_e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_d
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    goto/16 :goto_11

    :cond_2d
    :try_start_21
    sget-object v8, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->ADJUST_RECOIL_VALUE:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8
    :try_end_21
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_21} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_19
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    if-ne v7, v8, :cond_2f

    :try_start_22
    new-instance v7, Lf/b;

    invoke-direct {v7}, Lf/b;-><init>()V

    invoke-virtual {v7, v6}, Lf/b;->e(Ljava/util/Map;)V

    invoke-virtual {v7}, Lf/b;->a()Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-eqz v9, :cond_22

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-le v9, v10, :cond_2e

    goto/16 :goto_13

    :cond_2e
    new-instance v9, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$4;

    invoke-direct {v9, v1, v7}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$4;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;Lf/b;)V

    invoke-interface {v8}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/z;

    invoke-direct {v8}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/z;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v7

    invoke-direct {v1, v9, v7}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V
    :try_end_22
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_22} :catch_e
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_d
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    move-object/from16 v20, v2

    move v2, v10

    const/4 v5, 0x0

    goto/16 :goto_21

    :cond_2f
    :try_start_23
    sget-object v8, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->NORMAL_TOUCH_POINT_SC:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8
    :try_end_23
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_23} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_19
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    if-ne v7, v8, :cond_38

    :try_start_24
    new-instance v7, Lr/e0;

    invoke-direct {v7}, Lr/e0;-><init>()V

    new-instance v8, Lr/e;

    invoke-direct {v8}, Lr/e;-><init>()V

    new-instance v9, Lr/z0;

    invoke-direct {v9}, Lr/z0;-><init>()V

    new-instance v11, Lf/m;

    invoke-direct {v11}, Lf/m;-><init>()V

    new-instance v12, Lr/v;

    invoke-direct {v12}, Lr/v;-><init>()V

    invoke-virtual {v7, v6}, Lr/e0;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {v9, v6}, Lr/z0;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {v8, v6}, Lr/e;->e(Ljava/util/Map;)V

    invoke-virtual {v11, v6}, Lf/m;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {v12, v6}, Lr/v;->loadFromMap(Ljava/util/Map;)V

    iget-object v9, v9, Lr/z0;->a:Lr/z0$a;

    sget-object v14, Lr/z0$a;->a:Lr/z0$a;

    if-ne v9, v14, :cond_30

    goto/16 :goto_13

    :cond_30
    invoke-virtual {v7}, Lr/e0;->l()Lr/e0$a;

    move-result-object v9

    invoke-virtual {v8}, Lr/e;->b()Landroid/graphics/Rect;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget-object v14, Lr/e0$a;->a:Lr/e0$a;
    :try_end_24
    .catch Ljava/lang/NullPointerException; {:try_start_24 .. :try_end_24} :catch_14
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_13
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    if-ne v9, v14, :cond_32

    :try_start_25
    iget-object v7, v7, Lr/e0;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_31

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    new-instance v14, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/NormalPressKeyActionNode;

    invoke-direct {v14}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/NormalPressKeyActionNode;-><init>()V

    iput-object v9, v14, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->coordinate:Landroid/graphics/Point;

    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_25} :catch_e
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_d
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    goto :goto_15

    :cond_31
    move-object/from16 v20, v2

    goto/16 :goto_1d

    :cond_32
    :try_start_26
    sget-object v14, Lr/e0$a;->b:Lr/e0$a;
    :try_end_26
    .catch Ljava/lang/NullPointerException; {:try_start_26 .. :try_end_26} :catch_14
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_13
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    if-ne v9, v14, :cond_33

    :try_start_27
    iget-object v9, v7, Lr/e0;->a:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_16
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_31

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Point;

    new-instance v15, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SingleClickKeyActionNode;

    invoke-direct {v15}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SingleClickKeyActionNode;-><init>()V

    iput-object v14, v15, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->coordinate:Landroid/graphics/Point;

    invoke-virtual {v7}, Lr/e0;->h()I

    move-result v14

    iput v14, v15, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SingleClickKeyActionNode;->clickDuration:I

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/lang/NullPointerException; {:try_start_27 .. :try_end_27} :catch_e
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_d
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    goto :goto_16

    :cond_33
    :try_start_28
    sget-object v14, Lr/e0$a;->c:Lr/e0$a;

    if-ne v9, v14, :cond_36

    invoke-virtual {v7}, Lr/e0;->m()Z

    move-result v9
    :try_end_28
    .catch Ljava/lang/NullPointerException; {:try_start_28 .. :try_end_28} :catch_14
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_13
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    if-nez v9, :cond_34

    :try_start_29
    iget-object v9, v7, Lr/e0;->a:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_17
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_31

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Point;

    new-instance v15, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/CrazyTapKeyActionNode;

    invoke-direct {v15}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/CrazyTapKeyActionNode;-><init>()V

    iput-object v14, v15, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->coordinate:Landroid/graphics/Point;

    invoke-virtual {v7}, Lr/e0;->h()I

    move-result v14

    iput v14, v15, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/CrazyTapKeyActionNode;->clickDuration:I

    invoke-virtual {v7}, Lr/e0;->i()I

    move-result v14

    iput v14, v15, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/CrazyTapKeyActionNode;->clickInterval:I

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/lang/NullPointerException; {:try_start_29 .. :try_end_29} :catch_e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_d
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    goto :goto_17

    :cond_34
    :try_start_2a
    iget-object v9, v7, Lr/e0;->a:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_18
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_31

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Point;

    new-instance v15, Lh/a;

    invoke-direct {v15}, Lh/a;-><init>()V

    iput-object v14, v15, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->coordinate:Landroid/graphics/Point;

    invoke-virtual {v7}, Lr/e0;->h()I

    move-result v14

    iput v14, v15, Lh/a;->b:I

    invoke-virtual {v7}, Lr/e0;->i()I

    move-result v14

    iput v14, v15, Lh/a;->c:I

    invoke-virtual {v7}, Lr/e0;->j()Ljava/util/List;

    move-result-object v14

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_19
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_35

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Number;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->values()[Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->intValue()I

    move-result v17
    :try_end_2a
    .catch Ljava/lang/NullPointerException; {:try_start_2a .. :try_end_2a} :catch_14
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_13
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    move-object/from16 v20, v2

    :try_start_2b
    aget-object v2, v19, v17

    invoke-interface {v10, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v20

    goto :goto_19

    :catch_11
    move-exception v0

    :goto_1a
    move-object v7, v0

    const/4 v2, 0x2

    goto/16 :goto_22

    :catch_12
    move-exception v0

    :goto_1b
    move-object v7, v0

    const/4 v2, 0x2

    goto/16 :goto_23

    :catch_13
    move-exception v0

    move-object/from16 v20, v2

    goto :goto_1a

    :catch_14
    move-exception v0

    move-object/from16 v20, v2

    goto :goto_1b

    :cond_35
    move-object/from16 v20, v2

    invoke-virtual {v15, v10}, Lh/a;->g(Ljava/util/Set;)V

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v20

    const/4 v10, 0x2

    goto :goto_18

    :cond_36
    move-object/from16 v20, v2

    sget-object v2, Lr/e0$a;->d:Lr/e0$a;

    if-ne v9, v2, :cond_37

    iget-object v2, v7, Lr/e0;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    new-instance v10, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/DownUpClickKeyActionNode;

    invoke-direct {v10}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/DownUpClickKeyActionNode;-><init>()V

    iput-object v9, v10, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->coordinate:Landroid/graphics/Point;

    invoke-virtual {v7}, Lr/e0;->h()I

    move-result v9

    int-to-long v14, v9

    iput-wide v14, v10, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/DownUpClickKeyActionNode;->clickDuration:J

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_37
    :goto_1d
    new-instance v2, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$5;

    invoke-direct {v2, v1, v8, v11}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$5;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;Ljava/util/List;Lf/m;)V

    iget-object v7, v12, Lr/v;->a:Ljava/util/LinkedList;

    invoke-interface {v7}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/b;

    invoke-direct {v8}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/b;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v7

    invoke-direct {v1, v2, v7}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V
    :try_end_2b
    .catch Ljava/lang/NullPointerException; {:try_start_2b .. :try_end_2b} :catch_12
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_11
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    goto :goto_1e

    :cond_38
    move-object/from16 v20, v2

    :try_start_2c
    sget-object v2, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->MACRO_SC:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2
    :try_end_2c
    .catch Ljava/lang/NullPointerException; {:try_start_2c .. :try_end_2c} :catch_18
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_17
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    if-ne v7, v2, :cond_3c

    :try_start_2d
    new-instance v2, Lr/y;

    invoke-direct {v2}, Lr/y;-><init>()V

    invoke-virtual {v2, v6}, Lr/y;->e(Ljava/util/Map;)V

    new-instance v7, Lr/z0;

    invoke-direct {v7}, Lr/z0;-><init>()V

    invoke-virtual {v7, v6}, Lr/z0;->loadFromMap(Ljava/util/Map;)V

    iget-object v7, v7, Lr/z0;->a:Lr/z0$a;

    sget-object v8, Lr/z0$a;->a:Lr/z0$a;

    if-ne v7, v8, :cond_3a

    :cond_39
    :goto_1e
    const/4 v2, 0x2

    goto/16 :goto_21

    :cond_3a
    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroKeyActionNode;

    invoke-direct {v7}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroKeyActionNode;-><init>()V

    iget-object v8, v2, Lr/y;->e:Lr/x$b;

    iput-object v8, v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroKeyActionNode;->triggerMode:Lr/x$b;

    const-string v8, "data"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v9, "operationList"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v7, v8}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroKeyActionNode;->parseOperations(Ljava/util/List;)V

    iget-object v8, v2, Lr/y;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/d;

    invoke-direct {v9}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/d;-><init>()V

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v8

    invoke-direct {v1, v7, v8}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V

    iget-object v2, v2, Lr/y;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_3b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    if-gt v8, v9, :cond_39

    :cond_3b
    new-instance v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$6;

    invoke-direct {v8, v1, v7}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$6;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroKeyActionNode;)V

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/e;

    invoke-direct {v7}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/e;-><init>()V

    invoke-interface {v2, v7}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    invoke-direct {v1, v8, v2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V
    :try_end_2d
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_2d} :catch_12
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_11
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    goto :goto_1e

    :cond_3c
    :try_start_2e
    sget-object v2, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->BIND_HORIZONTAL_RECOIL_CONTROL:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2
    :try_end_2e
    .catch Ljava/lang/NullPointerException; {:try_start_2e .. :try_end_2e} :catch_18
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_17
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    if-ne v7, v2, :cond_3d

    :try_start_2f
    new-instance v2, Lf/g;

    invoke-direct {v2}, Lf/g;-><init>()V

    new-instance v7, Lr/v;

    invoke-direct {v7}, Lr/v;-><init>()V

    invoke-virtual {v2, v6}, Lf/g;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {v7, v6}, Lr/v;->loadFromMap(Ljava/util/Map;)V

    new-instance v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchHorizontalRecoilControlStartKeyActionNode;

    invoke-direct {v8}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchHorizontalRecoilControlStartKeyActionNode;-><init>()V

    iget-object v2, v2, Lf/g;->a:Lf/c$a;

    iput-object v2, v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchHorizontalRecoilControlStartKeyActionNode;->enableType:Lf/c$a;

    invoke-virtual {v7}, Lr/v;->a()Ljava/util/LinkedList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/f;

    invoke-direct {v7}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/f;-><init>()V

    invoke-interface {v2, v7}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    invoke-direct {v1, v8, v2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V
    :try_end_2f
    .catch Ljava/lang/NullPointerException; {:try_start_2f .. :try_end_2f} :catch_12
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_11
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    goto/16 :goto_1e

    :cond_3d
    :try_start_30
    sget-object v2, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->PUBG_LONG_PRESS_CROUCH:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2
    :try_end_30
    .catch Ljava/lang/NullPointerException; {:try_start_30 .. :try_end_30} :catch_18
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_17
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    if-ne v7, v2, :cond_3e

    :try_start_31
    new-instance v2, Lf/j;

    invoke-direct {v2}, Lf/j;-><init>()V

    new-instance v7, Lr/v;

    invoke-direct {v7}, Lr/v;-><init>()V

    new-instance v8, Lr/e;

    invoke-direct {v8}, Lr/e;-><init>()V

    invoke-virtual {v2, v6}, Lf/j;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {v8, v6}, Lr/e;->e(Ljava/util/Map;)V

    invoke-virtual {v7, v6}, Lr/v;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {v8}, Lr/e;->b()Landroid/graphics/Rect;

    move-result-object v2

    new-instance v8, Lh/b;

    invoke-direct {v8}, Lh/b;-><init>()V

    new-instance v9, Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    iput-object v9, v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->coordinate:Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    iput v9, v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->width:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->height:I

    invoke-virtual {v7}, Lr/v;->a()Ljava/util/LinkedList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/g;

    invoke-direct {v7}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/g;-><init>()V

    invoke-interface {v2, v7}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    invoke-direct {v1, v8, v2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V
    :try_end_31
    .catch Ljava/lang/NullPointerException; {:try_start_31 .. :try_end_31} :catch_12
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_11
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    goto/16 :goto_1e

    :cond_3e
    :try_start_32
    sget-object v2, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->CANCEL_HOUYAO:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2
    :try_end_32
    .catch Ljava/lang/NullPointerException; {:try_start_32 .. :try_end_32} :catch_18
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_17
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    if-ne v7, v2, :cond_3f

    :try_start_33
    new-instance v2, Lf/i;

    invoke-direct {v2}, Lf/i;-><init>()V

    new-instance v7, Lr/v;

    invoke-direct {v7}, Lr/v;-><init>()V

    invoke-virtual {v2, v6}, Lf/i;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {v7, v6}, Lr/v;->loadFromMap(Ljava/util/Map;)V

    new-instance v8, Lh/d;

    invoke-direct {v8}, Lh/d;-><init>()V

    iget-object v2, v2, Lf/i;->a:Lf/c$a;

    iput-object v2, v8, Lh/d;->d:Lf/c$a;

    invoke-virtual {v7}, Lr/v;->a()Ljava/util/LinkedList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/h;

    invoke-direct {v7}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/h;-><init>()V

    invoke-interface {v2, v7}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    invoke-direct {v1, v8, v2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V
    :try_end_33
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_33} :catch_12
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_11
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    goto/16 :goto_1e

    :cond_3f
    :try_start_34
    sget-object v2, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->DNF_CAST_SKILL:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v7, v2, :cond_39

    new-instance v2, Lr/a;

    invoke-direct {v2}, Lr/a;-><init>()V

    new-instance v7, Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;

    invoke-direct {v7}, Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;-><init>()V

    new-instance v8, Lr/v;

    invoke-direct {v8}, Lr/v;-><init>()V

    invoke-virtual {v7, v6}, Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {v8, v6}, Lr/v;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {v2, v6}, Lr/a;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {v8}, Lr/v;->a()Ljava/util/LinkedList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-eqz v10, :cond_39

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_40

    goto/16 :goto_14

    :cond_40
    new-instance v9, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    invoke-direct {v9}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;-><init>()V

    invoke-virtual {v2}, Lr/a;->b()Landroid/graphics/Rect;

    move-result-object v10

    iput-object v10, v9, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->fingerMoveRect:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Point;

    invoke-virtual {v2}, Lr/a;->b()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    invoke-virtual {v2}, Lr/a;->b()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-direct {v10, v11, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v10, v9, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->center:Landroid/graphics/Point;

    const/4 v2, 0x5

    iput v2, v9, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->touchDownRandomRangeLimit:I

    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->noReleaseFinger:Z
    :try_end_34
    .catch Ljava/lang/NullPointerException; {:try_start_34 .. :try_end_34} :catch_18
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_17
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    const/4 v2, 0x2

    :try_start_35
    iput v2, v9, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->releaseFingerFlag:I

    const/4 v10, 0x0

    iput v10, v9, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->touchUpDelay:I

    iput v10, v9, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->touchDownDelay:I

    invoke-virtual {v7}, Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;->getSensitivity()F

    move-result v10

    const/high16 v11, 0x43960000    # 300.0f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->setHorizontalSensitivity(I)V

    invoke-virtual {v7}, Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;->getSensitivity()F

    move-result v7

    mul-float/2addr v7, v11

    float-to-int v7, v7

    invoke-virtual {v9, v7}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;->setVerticalSensitivity(I)V

    new-instance v7, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfSwitchMoveFocusKeyActionNode;

    invoke-direct {v7}, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfSwitchMoveFocusKeyActionNode;-><init>()V

    iget-object v10, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->joystickTouchPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;

    iput-object v10, v7, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfSwitchMoveFocusKeyActionNode;->joystickTouchPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;

    iput-object v9, v7, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfSwitchMoveFocusKeyActionNode;->bindWorker:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MoveFingerWorker;

    invoke-virtual {v8}, Lr/v;->a()Ljava/util/LinkedList;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/i;

    invoke-direct {v9}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/i;-><init>()V

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v8

    invoke-direct {v1, v7, v8}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V
    :try_end_35
    .catch Ljava/lang/NullPointerException; {:try_start_35 .. :try_end_35} :catch_16
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_15
    .catchall {:try_start_35 .. :try_end_35} :catchall_0

    goto :goto_21

    :catch_15
    move-exception v0

    :goto_1f
    move-object v7, v0

    goto :goto_22

    :catch_16
    move-exception v0

    :goto_20
    move-object v7, v0

    goto :goto_23

    :catch_17
    move-exception v0

    const/4 v2, 0x2

    goto :goto_1f

    :catch_18
    move-exception v0

    const/4 v2, 0x2

    goto :goto_20

    :goto_21
    move v10, v2

    move-object/from16 v19, v13

    move-object/from16 v2, v20

    const/4 v9, 0x1

    goto/16 :goto_a

    :catch_19
    move-exception v0

    move-object/from16 v20, v2

    move v2, v10

    goto :goto_1f

    :catch_1a
    move-exception v0

    move-object/from16 v20, v2

    move v2, v10

    goto :goto_20

    :catch_1b
    move-exception v0

    move-object/from16 v20, v2

    move v2, v10

    move-object/from16 v13, v19

    goto :goto_1f

    :catch_1c
    move-exception v0

    move-object/from16 v20, v2

    move v2, v10

    move-object/from16 v13, v19

    goto :goto_20

    :goto_22
    :try_start_36
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KeyInputManager: \u9519\u8bef\u3002componentInfo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ". Error: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ly/c;->b(Ljava/lang/String;)V

    goto :goto_21

    :goto_23
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KeyInputManager: \u6620\u5c04\u56fe\u9519\u8bef\u3002componentInfo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ". Error: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ly/c;->b(Ljava/lang/String;)V

    goto :goto_21

    :cond_41
    invoke-virtual/range {p0 .. p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->addDefaultKeyActionNodes()V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v2

    const-class v4, Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {v2, v4}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/Extensions/pubg/d;

    if-eqz v2, :cond_42

    invoke-virtual {v2, v5}, Lcom/zjx/jyandroid/Extensions/pubg/d;->a0(Z)V

    :cond_42
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.tencent.tmgp.dnf"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    new-instance v2, Lr/q;

    invoke-direct {v2}, Lr/q;-><init>()V

    invoke-virtual/range {v18 .. v18}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :catch_1d
    :cond_43
    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "componentInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ly/c;->b(Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_0

    :try_start_37
    const-string v6, "x"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    const-string v6, "y"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    const-string v6, "width"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    const-string v6, "height"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    const-string v6, "data"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v6, "type"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    sget-object v7, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->JOYSTICK:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_43

    invoke-virtual {v2, v5}, Lr/q;->e(Ljava/util/Map;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_1d
    .catchall {:try_start_37 .. :try_end_37} :catchall_0

    goto :goto_24

    :cond_44
    :try_start_38
    iget-object v2, v2, Lr/q;->f:Lr/q$b;

    sget-object v4, Lr/q$b;->a:Lr/q$b;

    if-ne v2, v4, :cond_45

    const/16 v2, 0x1a

    const/4 v4, 0x4

    const/4 v5, 0x7

    const/16 v6, 0x16

    goto :goto_25

    :cond_45
    const/16 v2, 0x52

    const/16 v4, 0x50

    const/16 v5, 0x4f

    const/16 v6, 0x51

    :goto_25
    new-instance v7, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;

    invoke-direct {v7}, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;-><init>()V

    const/4 v8, 0x0

    iput v8, v7, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;->x:I

    const/4 v8, -0x1

    iput v8, v7, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;->y:I

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v7, v2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V

    new-instance v2, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;

    invoke-direct {v2}, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;-><init>()V

    iput v8, v2, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;->x:I

    const/4 v7, 0x0

    iput v7, v2, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;->y:I

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V

    new-instance v2, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;

    invoke-direct {v2}, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;-><init>()V

    const/4 v4, 0x1

    iput v4, v2, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;->x:I

    const/4 v4, 0x0

    iput v4, v2, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;->y:I

    filled-new-array {v5}, [I

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V

    new-instance v2, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;

    invoke-direct {v2}, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;-><init>()V

    iput v4, v2, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;->x:I

    const/4 v4, 0x1

    iput v4, v2, Lcom/zjx/jyandroid/Extensions/dnf/keyactionnode/DnfControlFingerMoveKeyActionNode;->y:I

    filled-new-array {v6}, [I

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->appendKeyActionNodeByKeyCodeArray(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;[I)V

    :cond_46
    monitor-exit v3

    const/4 v2, 0x0

    return v2

    :goto_26
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_0

    throw v2
.end method

.method public addDefaultKeyActionNodes()V
    .locals 0

    return-void
.end method

.method public eventOccurred(Ljava/util/LinkedList;)Z
    .locals 9
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

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;

    sget-object v2, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$9;->$SwitchMap$com$zjx$jyandroid$base$InputEvents$InputEventType:[I

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_c

    const/4 v4, 0x2

    if-eq v2, v4, :cond_8

    const/4 v4, 0x3

    if-eq v2, v4, :cond_6

    const/4 v5, 0x4

    if-eq v2, v5, :cond_2

    const/4 v1, 0x5

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->enabled:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/GameControllerMoveEvent;

    iget v1, v0, Lcom/zjx/jyandroid/base/InputEvents/GameControllerMoveEvent;->x:F

    iget v0, v0, Lcom/zjx/jyandroid/base/InputEvents/GameControllerMoveEvent;->y:F

    invoke-direct {p0, v1, v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->joystickMovedEventReceived(FF)V

    goto :goto_0

    :cond_2
    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/GameControllerButtonEvent;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/GameControllerButtonEvent;->getButtonMask()I

    move-result v0

    iget v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lastButtonMask:I

    xor-int/2addr v2, v0

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_5

    shl-int v6, v3, v5

    and-int v7, v2, v6

    if-eqz v7, :cond_4

    sget-object v7, Lcom/zjx/jyandroid/base/Definitions/GameControllerButtons;->buttonIndexToKeyCode:[I

    aget v7, v7, v5

    and-int/2addr v6, v0

    if-eqz v6, :cond_3

    new-instance v6, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;

    sget-object v8, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;->GAME_CONTROLLER:Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;

    invoke-direct {v6, v8, v7, v3}, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;-><init>(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;IZ)V

    invoke-virtual {p0, v6}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->keyEventReceived(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V

    goto :goto_2

    :cond_3
    new-instance v6, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;

    sget-object v8, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;->GAME_CONTROLLER:Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;

    invoke-direct {v6, v8, v7, v1}, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;-><init>(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;IZ)V

    invoke-virtual {p0, v6}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->keyEventReceived(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lastButtonMask:I

    goto :goto_0

    :cond_6
    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/ScrollEvent;

    iget v0, v0, Lcom/zjx/jyandroid/base/InputEvents/ScrollEvent;->y:I

    const-wide/16 v4, 0x32

    if-gez v0, :cond_7

    new-instance v0, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;

    sget-object v2, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;->MOUSE:Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;

    const v6, 0xfff8

    invoke-direct {v0, v2, v6, v3}, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;-><init>(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;IZ)V

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->keyEventReceived(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;

    sget-object v2, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;->MOUSE:Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;

    invoke-direct {v0, v2, v6, v1}, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;-><init>(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;IZ)V

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->keyEventReceived(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;

    sget-object v2, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;->MOUSE:Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;

    const v6, 0xfff7

    invoke-direct {v0, v2, v6, v3}, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;-><init>(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;IZ)V

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->keyEventReceived(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    new-instance v0, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;

    sget-object v2, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;->MOUSE:Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;

    invoke-direct {v0, v2, v6, v1}, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;-><init>(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;IZ)V

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->keyEventReceived(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V

    goto/16 :goto_0

    :cond_8
    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEvent;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEvent;->getButtonMask()I

    move-result v0

    iget v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lastButtonMask:I

    xor-int/2addr v2, v0

    move v4, v1

    :goto_3
    const/4 v5, 0x7

    if-ge v4, v5, :cond_b

    shl-int v5, v3, v4

    and-int v6, v2, v5

    if-eqz v6, :cond_a

    sget-object v6, Lcom/zjx/jyandroid/base/Definitions/MouseButtons;->buttonIndexToKeyCode:[I

    aget v6, v6, v4

    and-int/2addr v5, v0

    if-eqz v5, :cond_9

    new-instance v5, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;

    sget-object v7, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;->MOUSE:Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;

    invoke-direct {v5, v7, v6, v3}, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;-><init>(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;IZ)V

    invoke-virtual {p0, v5}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->keyEventReceived(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V

    goto :goto_4

    :cond_9
    new-instance v5, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;

    sget-object v7, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;->MOUSE:Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;

    invoke-direct {v5, v7, v6, v1}, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;-><init>(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;IZ)V

    invoke-virtual {p0, v5}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->keyEventReceived(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V

    :cond_a
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_b
    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->lastButtonMask:I

    goto/16 :goto_0

    :cond_c
    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;

    new-instance v1, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;

    sget-object v2, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;->KEYBOARD:Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;

    iget v3, v0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;->usage:I

    iget-boolean v0, v0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;->down:Z

    invoke-direct {v1, v2, v3, v0}, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;-><init>(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;IZ)V

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->keyEventReceived(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V

    goto/16 :goto_0

    :cond_d
    return v1
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->enabled:Z

    return v0
.end method

.method public keyEventReceived(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V
    .locals 1

    iget-boolean v0, p1, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;->down:Z

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;->usage:I

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->keyPressed(I)V

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;->usage:I

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->keyReleased(I)V

    :goto_0
    return-void
.end method

.method public keyPressed(I)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->enabled:Z

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->candidateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->candidateMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->nonNotifiedFinishedNodes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iget-object v5, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->nonNotifiedFinishedNodes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase$KeyCodeWrapper;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5, p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase$KeyCodeWrapper;-><init>(II)V

    iput-object v4, v3, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;->triggeredKeyCodes:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase$KeyCodeWrapper;

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->keyActionNodeExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$7;

    invoke-direct {v5, p0, v3, v1, p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$7;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;Ljava/lang/Integer;I)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->keyCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->candidateMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public keyReleased(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->enabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->nonNotifiedFinishedNodes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->nonNotifiedFinishedNodes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->keyActionNodeExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$8;

    invoke-direct {v3, p0, v1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$8;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->candidateMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public reset()V
    .locals 4

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->keyCodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->candidateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->keyCodeMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->candidateMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->keyCodeMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->joystickExecutorService:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iput-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->joystickExecutorService:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iput-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->joystickTouchPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/Joystick/JoystickTouchPerformer;

    iput-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->joystickAdded:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->enabled:Z

    return-void
.end method
