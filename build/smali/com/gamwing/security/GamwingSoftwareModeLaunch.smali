.class public Lcom/gamwing/security/GamwingSoftwareModeLaunch;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureFirmwareForLaunch(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/gamwing/security/GamwingSoftwareModeStore;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    new-instance p0, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;

    invoke-direct {p0}, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;-><init>()V

    :cond_2
    move-object v0, p0

    check-cast v0, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;

    invoke-static {v0}, Lcom/gamwing/security/GamwingSoftwareModeLaunch;->patchFields(Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;)V

    invoke-static {v0}, Lcom/gamwing/security/GamwingSoftwareModeLaunch;->persistFirmwareOnMainServiceDock(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static patchFields(Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;->btVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;->btVersion:I

    :cond_1
    iget v0, p0, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;->mcuVersion:I

    if-ne v0, v1, :cond_2

    const/16 v0, 0xa

    iput v0, p0, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;->mcuVersion:I

    :cond_2
    return-void
.end method

.method public static persistFirmwareOnMainServiceDock(Ljava/lang/Object;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getHardwareManager()Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    check-cast p0, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;

    iput-object p0, v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->deviceVersionMode:Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;

    return-void
.end method
