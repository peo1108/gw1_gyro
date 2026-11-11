.class public Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;
.super Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;
.source "SourceFile"


# instance fields
.field final displayMode:Lr/H$a;

.field final mainView:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveEventHandling;

.field public mouseDisplayPosition:Landroid/graphics/Point;

.field mouseMoveInputManager:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

.field final triggerType:Lr/H$b;

.field virtualMouse:Lcom/zjx/jyandroid/ForegroundService/UI/a;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveEventHandling;Lr/H$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x64

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->mouseDisplayPosition:Landroid/graphics/Point;

    .line 3
    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->mainView:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveEventHandling;

    .line 4
    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->displayMode:Lr/H$a;

    .line 5
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->y()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object p2

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->virtualMouse:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    .line 6
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    move-result-object p2

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->mouseMoveInputManager:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    .line 7
    invoke-virtual {p2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->getMouseMoveEventParsers()Ljava/util/LinkedList;

    move-result-object p2

    .line 8
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.tencent.tmgp.dnf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 10
    iget-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->mouseMoveInputManager:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->addMouseMoveFingerManagerAndSetCurrentManager(ILcom/zjx/jyandroid/base/Interfaces/FocusableMoveEventHandling;)V

    .line 11
    :cond_0
    sget-object p1, Lr/H$b;->a:Lr/H$b;

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->triggerType:Lr/H$b;

    return-void
.end method

.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveEventHandling;Lr/H$a;Lr/H$b;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;-><init>()V

    .line 13
    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x64

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->mouseDisplayPosition:Landroid/graphics/Point;

    .line 14
    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->mainView:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveEventHandling;

    .line 15
    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->displayMode:Lr/H$a;

    .line 16
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->y()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object p2

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->virtualMouse:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    .line 17
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    move-result-object p2

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->mouseMoveInputManager:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    .line 18
    invoke-virtual {p2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->getMouseMoveEventParsers()Ljava/util/LinkedList;

    move-result-object p2

    .line 19
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.tencent.tmgp.dnf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 21
    iget-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->mouseMoveInputManager:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->addMouseMoveFingerManagerAndSetCurrentManager(ILcom/zjx/jyandroid/base/Interfaces/FocusableMoveEventHandling;)V

    .line 22
    :cond_0
    iput-object p3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->triggerType:Lr/H$b;

    return-void
.end method

.method private performSwitchDisplay()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->virtualMouse:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->virtualMouse:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->displayMode:Lr/H$a;

    sget-object v1, Lr/H$a;->b:Lr/H$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->virtualMouse:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->mouseDisplayPosition:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->A(Landroid/graphics/Point;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->virtualMouse:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->z()V

    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->mouseMoveInputManager:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->onFocusLose()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->virtualMouse:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->j()V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->mouseMoveInputManager:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->onFocusGain()V

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public startActionWithKeyCodes(II)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->triggerType:Lr/H$b;

    sget-object p2, Lr/H$b;->a:Lr/H$b;

    if-eq p1, p2, :cond_0

    sget-object p2, Lr/H$b;->c:Lr/H$b;

    if-ne p1, p2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->performSwitchDisplay()V

    :cond_1
    return-void
.end method

.method public stopActionWithKeyCodes(II)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->triggerType:Lr/H$b;

    sget-object p2, Lr/H$b;->b:Lr/H$b;

    if-eq p1, p2, :cond_0

    sget-object p2, Lr/H$b;->c:Lr/H$b;

    if-ne p1, p2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchMainViewMouseLockKeyActionNode;->performSwitchDisplay()V

    :cond_1
    return-void
.end method
