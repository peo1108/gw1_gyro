.class public Lcom/gamwing/security/GamwingSoftwareModeEnforcer;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applySoftwareGlobal(Ljava/lang/Object;)V
    .locals 2

    check-cast p0, Lcom/zjx/jyandroid/ForegroundService/MainService;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/gamwing/security/GamwingSoftwareModeEnforcer;->bootstrapSoftwareGlobal(Lcom/zjx/jyandroid/ForegroundService/MainService;Z)V

    return-void
.end method

.method private static bootstrapSoftwareGlobal(Lcom/zjx/jyandroid/ForegroundService/MainService;Z)V
    .locals 5

    :try_start_0
    invoke-static {p0}, Lcom/gamwing/security/GamwingSoftwareModeEnforcer;->ensureWangZuoManager(Lcom/zjx/jyandroid/ForegroundService/MainService;)Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "GamwingSoftwareMode"

    const-string v2, "bootstrap skipped: wangZuoManager null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v1, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->SOFTWARE_SC:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->hardwareConnected(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)V

    iget-object v2, v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->connectionState:Lcom/zjx/jyandroid/Hardware/ConnectionState;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/zjx/jyandroid/Hardware/ConnectionState;->connected:Z

    iput-object v1, v2, Lcom/zjx/jyandroid/Hardware/ConnectionState;->deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    invoke-static {v0}, Lcom/gamwing/security/GamwingSoftwareModeEnforcer;->patchVirtualFirmware(Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;)V

    const-string v4, "GamwingSoftwareMode"

    const-string v1, "bootstrapSoftwareGlobal applied SOFTWARE_SC"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/gamwing/security/GamwingSoftwareModeEnforcer;->restartRootTouchServiceIfNeeded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "GamwingSoftwareMode"

    const-string v2, "bootstrapSoftwareGlobal failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static clearSoftwareGlobal(Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lcom/zjx/jyandroid/ForegroundService/MainService;

    invoke-static {p0}, Lcom/gamwing/security/GamwingSoftwareModeEnforcer;->resetVirtualFirmware(Lcom/zjx/jyandroid/ForegroundService/MainService;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->hardwareDisconnected()V

    return-void
.end method

.method public static ensureVirtualConnection(Lcom/zjx/jyandroid/ForegroundService/MainService;)Z
    .locals 1

    invoke-static {p0}, Lcom/gamwing/security/GamwingSoftwareModeStore;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/gamwing/security/GamwingSoftwareModeEnforcer;->bootstrapSoftwareGlobal(Lcom/zjx/jyandroid/ForegroundService/MainService;Z)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getConnectedDeviceType()Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static ensureWangZuoManager(Lcom/zjx/jyandroid/ForegroundService/MainService;)Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;
    .locals 1

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getHardwareManager()Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    move-result-object v0

    return-object v0
.end method

.method public static onMainServiceCreate(Ljava/lang/Object;)V
    .locals 2

    check-cast p0, Lcom/zjx/jyandroid/ForegroundService/MainService;

    invoke-static {p0}, Lcom/gamwing/security/GamwingSoftwareModeStore;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/gamwing/security/GamwingSoftwareModeEnforcer;->bootstrapSoftwareGlobal(Lcom/zjx/jyandroid/ForegroundService/MainService;Z)V

    return-void
.end method

.method private static patchVirtualFirmware(Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->getDeviceVersionMode()Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->deviceVersionMode:Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;

    :cond_0
    invoke-static {v0}, Lcom/gamwing/security/GamwingSoftwareModeLaunch;->patchFields(Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;)V

    return-void
.end method

.method private static resetVirtualFirmware(Lcom/zjx/jyandroid/ForegroundService/MainService;)V
    .locals 2

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getHardwareManager()Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->getDeviceVersionMode()Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;->btVersion:I

    iput v0, p0, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;->mcuVersion:I

    return-void
.end method

.method private static restartRootTouchServiceIfNeeded()V
    .locals 1

    invoke-static {}, Lcom/zjx/jyandroid/ADB/ADBConnector;->sharedInstance()Lcom/zjx/jyandroid/ADB/ADBConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->restartADBServerSync()V

    return-void
.end method

.method public static syncConnectionForUi(Lcom/zjx/jyandroid/ForegroundService/MainService;)V
    .locals 1

    invoke-static {p0}, Lcom/gamwing/security/GamwingSoftwareModeStore;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/gamwing/security/GamwingSoftwareModeEnforcer;->bootstrapSoftwareGlobal(Lcom/zjx/jyandroid/ForegroundService/MainService;Z)V

    return-void
.end method
