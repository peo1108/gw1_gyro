.class public Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/Hardware/IHardwareManageable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$ConnectionStateChangedListener;,
        Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$ConnectionResultCallback;,
        Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$EventParser;
    }
.end annotation


# instance fields
.field private final DATA_CHARACTERISTIC_UUID:Ljava/util/UUID;

.field private final DATA_DESCRIPTOR_UUID:Ljava/util/UUID;

.field private final DATA_SERVICE_UUID:Ljava/util/UUID;

.field private final WRITE_CHARACTERISTIC_UUID:Ljava/util/UUID;

.field bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field bluetoothManager:Landroid/bluetooth/BluetoothManager;

.field connected:Z

.field connectedGatt:Landroid/bluetooth/BluetoothGatt;

.field public connectionStateChangedListener:Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$ConnectionStateChangedListener;

.field leScanCallback:Landroid/bluetooth/le/ScanCallback;

.field private final mBluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field scanning:Z

.field started:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->scanning:Z

    const-string v1, "00000000-0000-1000-8000-00805f9b34fb"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->DATA_SERVICE_UUID:Ljava/util/UUID;

    const-string v1, "0000ffe2-0000-1000-8000-00805f9b34fb"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->DATA_CHARACTERISTIC_UUID:Ljava/util/UUID;

    const-string v1, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->DATA_DESCRIPTOR_UUID:Ljava/util/UUID;

    const-string v1, "0000ffe1-0000-1000-8000-00805f9b34fb"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->WRITE_CHARACTERISTIC_UUID:Ljava/util/UUID;

    new-instance v1, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$1;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$1;-><init>(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->mBluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->connected:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->connectedGatt:Landroid/bluetooth/BluetoothGatt;

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->started:Z

    new-instance v0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$2;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$2;-><init>(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->leScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    return-void
.end method

.method public static synthetic access$100(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->startScanning()V

    return-void
.end method

.method public static synthetic access$200(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;)Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->DATA_SERVICE_UUID:Ljava/util/UUID;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;)Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->DATA_CHARACTERISTIC_UUID:Ljava/util/UUID;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;)Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->WRITE_CHARACTERISTIC_UUID:Ljava/util/UUID;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;)Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->DATA_DESCRIPTOR_UUID:Ljava/util/UUID;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->stopScanning()V

    return-void
.end method

.method public static synthetic access$700(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;)Landroid/bluetooth/BluetoothGattCallback;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->mBluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    return-object p0
.end method

.method private declared-synchronized startScanning()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->scanning:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->stopScanning()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "start scan"

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$3;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$3;-><init>(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private stopScanning()V
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->scanning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$4;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$4;-><init>(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getConnectionState()Lcom/zjx/jyandroid/Hardware/ConnectionState;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectionStateChangedListener()Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$ConnectionStateChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->connectionStateChangedListener:Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$ConnectionStateChangedListener;

    return-object v0
.end method

.method public getDeviceVersionMode()Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->started:Z

    return v0
.end method

.method public setConnectionStateChangedListener(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$ConnectionStateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->connectionStateChangedListener:Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$ConnectionStateChangedListener;

    return-void
.end method

.method public setStarted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->started:Z

    return-void
.end method

.method public declared-synchronized startService()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->started:Z

    invoke-direct {p0}, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->startScanning()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized stopService()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->started:Z

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->scanning:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->stopScanning()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->connected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->connectedGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public test(Landroid/app/Activity;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    return-void
.end method
