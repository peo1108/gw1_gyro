.class public Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;
.implements Lcom/zjx/jyandroid/TouchEventListenerApplication;


# static fields
.field private static instance:Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;


# instance fields
.field private keyInputManager:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;

.field private mainService:Lcom/zjx/jyandroid/ForegroundService/MainService;

.field private physicalVirtualTouchIndexMapping:[I

.field private registeredInputEventReceivers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;",
            ">;"
        }
    .end annotation
.end field

.field private touchInputEventManager:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;

.field private touchManager:Lcom/zjx/jyandroid/TouchManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->physicalVirtualTouchIndexMapping:[I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->registeredInputEventReceivers:Ljava/util/LinkedList;

    sput-object p0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->instance:Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->mainService:Lcom/zjx/jyandroid/ForegroundService/MainService;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->keyInputManager:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->touchInputEventManager:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;

    invoke-static {}, Lcom/zjx/jyandroid/TouchManager;->f()Lcom/zjx/jyandroid/TouchManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    return-void
.end method

.method private dispatchTouchEvent(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zjx/jyandroid/base/InputEvents/InputEvent;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->TouchEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;

    iget-object v1, v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->touchType:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    iget v2, v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->index:I

    iget v3, v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->x:F

    iget v0, v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->y:F

    sget-object v4, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter$1;->$SwitchMap$com$zjx$jyandroid$base$InputEvents$TouchEvent$Type:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v4, v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->physicalVirtualTouchIndexMapping:[I

    aget v4, v4, v2

    invoke-virtual {v1, v4, v3, v0}, Lcom/zjx/jyandroid/TouchManager;->o(IFF)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->physicalVirtualTouchIndexMapping:[I

    const/4 v1, -0x1

    aput v1, v0, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    invoke-virtual {v1, v3, v0}, Lcom/zjx/jyandroid/TouchManager;->i(FF)I

    move-result v0

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->physicalVirtualTouchIndexMapping:[I

    aput v0, v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->physicalVirtualTouchIndexMapping:[I

    aget v2, v4, v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/zjx/jyandroid/TouchManager;->m(IFF)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private isEventReceiverExist(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)Z
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->registeredInputEventReceivers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->instance:Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;-><init>()V

    sput-object v0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->instance:Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    :cond_0
    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->instance:Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    return-object v0
.end method


# virtual methods
.method public eventOccurred(Ljava/util/LinkedList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/base/InputEvents/InputEvent;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->touchInputEventManager:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->eventOccurred(Ljava/util/LinkedList;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->registeredInputEventReceivers:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->registeredInputEventReceivers:Ljava/util/LinkedList;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;

    invoke-interface {v2, p1}, Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;->eventOccurred(Ljava/util/LinkedList;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->keyInputManager:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->eventOccurred(Ljava/util/LinkedList;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onPhysicalTouchEventReceived(Ljava/util/LinkedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/base/InputEvents/InputEvent;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->eventOccurred(Ljava/util/LinkedList;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->dispatchTouchEvent(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onTouch([F)Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget v2, p1, v1

    float-to-int v2, v2

    add-int/lit8 v3, v1, 0x1

    aget v3, p1, v3

    float-to-int v3, v3

    add-int/lit8 v4, v1, 0x2

    aget v4, p1, v4

    add-int/lit8 v5, v1, 0x3

    aget v5, p1, v5

    new-instance v6, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;

    invoke-static {}, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->values()[Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    move-result-object v7

    aget-object v2, v7, v2

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;-><init>(Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->eventOccurred(Ljava/util/LinkedList;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->dispatchTouchEvent(Ljava/util/List;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public registerEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->registeredInputEventReceivers:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->isEventReceiverExist(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->registeredInputEventReceivers:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerEventReceiverAtFront(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->registeredInputEventReceivers:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->isEventReceiverExist(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->registeredInputEventReceivers:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setDefaultEventReceiverEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->keyInputManager:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->setEnabled(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->touchInputEventManager:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->setEnabled(Z)V

    return-void
.end method

.method public startRegisterEventReceiver()V
    .locals 0

    return-void
.end method

.method public unregisterEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->registeredInputEventReceivers:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->registeredInputEventReceivers:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
