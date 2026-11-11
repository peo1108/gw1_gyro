.class public Lcom/zjx/jyandroid/ForegroundService/MainService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/Hardware/IHardwareConnectionStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/ForegroundService/MainService$MappingServiceStatusChangedListener;
    }
.end annotation


# static fields
.field private static instance:Lcom/zjx/jyandroid/ForegroundService/MainService;


# instance fields
.field private final NON_EXISTING_IDENTIFIER:Ljava/lang/String;

.field private activateBundleIdentifier:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private checkVerticalHandler:Landroid/os/Handler;

.field connectedDeviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

.field private eventDispatchCenter:Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

.field private floatingObjectManager:Ll/b;

.field private hardwareConnectionStateChangedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/zjx/jyandroid/Hardware/IHardwareConnectionStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field hardwareManagerBridge:Lcom/zjx/jyandroid/Hardware/IHardwareManageable;

.field private final mUsbReceiver:Landroid/content/BroadcastReceiver;

.field private mappingServiceStatusChangedListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/ForegroundService/MainService$MappingServiceStatusChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field messageReceiver:Landroid/content/BroadcastReceiver;

.field private startServiceStateUpdaterTime:J

.field private started:Z

.field private usbReceiver:Landroid/content/BroadcastReceiver;

.field private wangZuoManager:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "_non_existing_IDENTIFIER"

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->NON_EXISTING_IDENTIFIER:Ljava/lang/String;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->activateBundleIdentifier:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->checkVerticalHandler:Landroid/os/Handler;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->mappingServiceStatusChangedListeners:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->hardwareConnectionStateChangedListeners:Ljava/util/Set;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->hardwareManagerBridge:Lcom/zjx/jyandroid/Hardware/IHardwareManageable;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/MainService$1;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/MainService$1;-><init>(Lcom/zjx/jyandroid/ForegroundService/MainService;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->messageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/MainService$2;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/MainService$2;-><init>(Lcom/zjx/jyandroid/ForegroundService/MainService;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->connectedDeviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/MainService$6;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/MainService$6;-><init>(Lcom/zjx/jyandroid/ForegroundService/MainService;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->usbReceiver:Landroid/content/BroadcastReceiver;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->startServiceStateUpdaterTime:J

    sput-object p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->instance:Lcom/zjx/jyandroid/ForegroundService/MainService;

    return-void
.end method

.method public static synthetic access$000(Lcom/zjx/jyandroid/ForegroundService/MainService;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->onForegroundActivitiesChanged(Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/zjx/jyandroid/ForegroundService/MainService;)Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->wangZuoManager:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/zjx/jyandroid/ForegroundService/MainService;)I
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->connectUSBHardware()I

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/zjx/jyandroid/ForegroundService/MainService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->activateBundleIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/zjx/jyandroid/ForegroundService/MainService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->activateBundleIdentifier:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/zjx/jyandroid/ForegroundService/MainService;)V
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->stopFunctioning()V

    return-void
.end method

.method public static synthetic access$502(Lcom/zjx/jyandroid/ForegroundService/MainService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->started:Z

    return p1
.end method

.method public static synthetic access$600(Lcom/zjx/jyandroid/ForegroundService/MainService;)Ll/b;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->floatingObjectManager:Ll/b;

    return-object p0
.end method

.method private connectUSBHardware()I
    .locals 2

    invoke-static {p0}, Lcom/gamwing/security/GamwingSoftwareModeStore;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->wangZuoManager:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->wangZuoManager:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->setDevice(Landroid/hardware/usb/UsbDevice;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->wangZuoManager:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->connect()V

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/zjx/jyandroid/Hardware/DeviceNotFoundException;

    const-string v1, "Device not physically connected"

    invoke-direct {v0, v1}, Lcom/zjx/jyandroid/Hardware/DeviceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/zjx/jyandroid/Hardware/DeviceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/zjx/jyandroid/base/Exceptions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/zjx/jyandroid/Hardware/USBRelatedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->b(Ljava/lang/String;)V

    const/4 v0, -0x3

    return v0

    :catch_2
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->wangZuoManager:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->requestPermission(Landroid/content/BroadcastReceiver;)V

    const/4 v0, -0x2

    return v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->b(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method private createNotificationChannel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const p2, -0xffff01

    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const-string p2, "notification"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    invoke-virtual {p2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-object p1
.end method

.method private initFloatingObjectManager()V
    .locals 1

    new-instance v0, Ll/b;

    invoke-direct {v0, p0}, Ll/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->floatingObjectManager:Ll/b;

    return-void
.end method

.method private initMouseManager()V
    .locals 0

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    return-void
.end method

.method private initTouchManager()V
    .locals 0

    invoke-static {}, Lcom/zjx/jyandroid/TouchManager;->f()Lcom/zjx/jyandroid/TouchManager;

    return-void
.end method

.method private initVirtualMouse()V
    .locals 0

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->y()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    return-void
.end method

.method private onForegroundActivitiesChanged(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/LowPriorityHandlerThread;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/LowPriorityHandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/LowPriorityHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/MainService$5;

    invoke-direct {v1, p0, p1}, Lcom/zjx/jyandroid/ForegroundService/MainService$5;-><init>(Lcom/zjx/jyandroid/ForegroundService/MainService;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private registerMessageBroadcastReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.zjx.jyandroid.loginStatusChanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zjx.jyandroid.foregroundActivitiesChanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->messageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerUSBReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->usbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/MainService;->instance:Lcom/zjx/jyandroid/ForegroundService/MainService;

    return-object v0
.end method

.method public static G()Lcom/zjx/jyandroid/ForegroundService/MainService;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/MainService;->instance:Lcom/zjx/jyandroid/ForegroundService/MainService;

    return-object v0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->started:Z

    return v0
.end method

.method public static gyroBootstrap()V
    .locals 2

    :try_start_0
    invoke-static {}, LK6/m;->getInstance()LK6/m;

    move-result-object v0

    invoke-static {}, LK6/m;->applyConnMode()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LK6/m;->setCameraGyroMode(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LK6/m;->setRcByGyro(Z)V

    invoke-static {}, LK6/m;->applyGyroInvert()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method private startForeground()V
    .locals 3

    const-string v0, "kim.hsl"

    const-string v1, "ForegroundService"

    invoke-direct {p0, v0, v1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->createNotificationChannel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v1, p0, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/R$mipmap;->ic_launcher:I

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const-string v2, "service"

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method private declared-synchronized stopFunctioning()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "stop functioning..."

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object v0

    invoke-virtual {v0}, Ly/d;->j()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->WangzuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->y()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->z()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->clearIndicatorView()V

    :goto_0
    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v0

    invoke-virtual {v0}, Ll/b;->w()V

    invoke-virtual {v0}, Ll/b;->y()V

    invoke-virtual {v0}, Ll/b;->x()V

    invoke-virtual {v0}, Ll/b;->z()V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->setDefaultEventReceiverEnabled(Z)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->onFocusLose()V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->reset()V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->floatingObjectManager:Ll/b;

    invoke-virtual {v0}, Ll/b;->k()V

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->notifyMappingServiceStatusChanged(Z)V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->stop()V

    iput-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->started:Z
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

.method private test()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getActivateBundleIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->activateBundleIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectedDeviceType()Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->connectedDeviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getHardwareManager()Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->wangZuoManager:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    return-object v0
.end method

.method public getStartPrerequisiteErrorCode()I
    .locals 2

    invoke-static {p0}, Lcom/gamwing/security/GamwingSoftwareModeStore;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/gamwing/security/GamwingSoftwareModeEnforcer;->ensureVirtualConnection(Lcom/zjx/jyandroid/ForegroundService/MainService;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getConnectedDeviceType()Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    invoke-static {p0}, Lcom/zjx/jyandroid/base/util/b$f;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x2

    return v0

    :cond_2
    invoke-static {}, Lcom/zjx/jyandroid/ADB/ADBConnector;->sharedInstance()Lcom/zjx/jyandroid/ADB/ADBConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->getConnectionStatus()Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;->CONNECTED:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    if-eq v0, v1, :cond_3

    const/4 v0, -0x3

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public hardwareConnected(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)V
    .locals 2

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->connectedDeviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->hardwareConnectionStateChangedListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Hardware/IHardwareConnectionStateChangedListener;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->connectedDeviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    invoke-interface {v0, v1}, Lcom/zjx/jyandroid/Hardware/IHardwareConnectionStateChangedListener;->hardwareConnected(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hardwareDisconnected()V
    .locals 2

    invoke-static {p0}, Lcom/gamwing/security/GamwingSoftwareModeStore;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/gamwing/security/GamwingSoftwareModeEnforcer;->applySoftwareGlobal(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->connectedDeviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->hardwareConnectionStateChangedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/Hardware/IHardwareConnectionStateChangedListener;

    invoke-interface {v1}, Lcom/zjx/jyandroid/Hardware/IHardwareConnectionStateChangedListener;->hardwareDisconnected()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/MainService$3;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/MainService$3;-><init>(Lcom/zjx/jyandroid/ForegroundService/MainService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->stopFunctioning()V

    return-void
.end method

.method public notifyMappingServiceStatusChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->mappingServiceStatusChangedListeners:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/MainService$MappingServiceStatusChangedListener;

    invoke-interface {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService$MappingServiceStatusChangedListener;->shouldStartMapping()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->mappingServiceStatusChangedListeners:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/MainService$MappingServiceStatusChangedListener;

    invoke-interface {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService$MappingServiceStatusChangedListener;->shouldStopMapping()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->performInit()V

    invoke-static {p0}, Lcom/gamwing/security/GamwingSoftwareModeEnforcer;->onMainServiceCreate(Ljava/lang/Object;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->y()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->B()V

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object v0

    invoke-virtual {v0}, Ly/d;->j()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->ShoucuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->n()Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/zjx/jyandroid/ForegroundService/MainService$4;

    invoke-direct {v2, p0}, Lcom/zjx/jyandroid/ForegroundService/MainService$4;-><init>(Lcom/zjx/jyandroid/ForegroundService/MainService;)V

    invoke-virtual {v0, v1, v2}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->k(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$LoginCompleteHandler;)V

    :cond_0
    return-void
.end method

.method public onCurrentForegroundActivitiesChanged(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->startForeground()V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public performInit()V
    .locals 2

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->test()V

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->initFloatingObjectManager()V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->eventDispatchCenter:Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->startRegisterEventReceiver()V

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->initTouchManager()V

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->registerMessageBroadcastReceiver()V

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object v0

    invoke-virtual {v0}, Ly/d;->j()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->WangzuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/gamwing/security/GamwingSoftwareModeStore;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->wangZuoManager:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->initMouseManager()V

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->registerUSBReceiver()V

    :goto_1
    return-void
.end method

.method public registerHardwareConnectionStateChangedListener(Lcom/zjx/jyandroid/Hardware/IHardwareConnectionStateChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->hardwareConnectionStateChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerServiceStatusChangedListener(Lcom/zjx/jyandroid/ForegroundService/MainService$MappingServiceStatusChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->mappingServiceStatusChangedListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setActivateBundleIdentifier(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->activateBundleIdentifier:Ljava/lang/String;

    return-void
.end method

.method public startBluetoothGameController()V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->hardwareManagerBridge:Lcom/zjx/jyandroid/Hardware/IHardwareManageable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->hardwareManagerBridge:Lcom/zjx/jyandroid/Hardware/IHardwareManageable;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->startService()V

    return-void
.end method

.method public declared-synchronized startFunctioning(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->started:Z

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->gyroBootstrap()V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->setDefaultEventReceiverEnabled(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xfa0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->startServiceStateUpdaterTime:J

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->initVirtualMouse()V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->activateBundleIdentifier:Ljava/lang/String;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->a()V

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b;->y()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->WangzuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_jya"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_jyasc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;

    move-result-object v1

    const-string v2, "123123123"

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/MainService$7;

    invoke-direct {v3, p0, p1}, Lcom/zjx/jyandroid/ForegroundService/MainService$7;-><init>(Lcom/zjx/jyandroid/ForegroundService/MainService;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->loginOrRegister(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$LoginCompletionHandleable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public stopBluetoothGameController()V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->hardwareManagerBridge:Lcom/zjx/jyandroid/Hardware/IHardwareManageable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->stopService()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->hardwareManagerBridge:Lcom/zjx/jyandroid/Hardware/IHardwareManageable;

    return-void
.end method

.method public unregisterHardwareConnectionStateChangedListener(Lcom/zjx/jyandroid/Hardware/IHardwareConnectionStateChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->hardwareConnectionStateChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterServiceStatusChangedListener(Lcom/zjx/jyandroid/ForegroundService/MainService$MappingServiceStatusChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->mappingServiceStatusChangedListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
