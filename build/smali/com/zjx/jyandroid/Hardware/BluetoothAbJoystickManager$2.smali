.class Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$2;
.super Landroid/bluetooth/le/ScanCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$2;->this$0:Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanFailed(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errocode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ab P"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->AB_PRO:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Lie Ying Pro_s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->LIE_YING_PRO:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LZ 3Pro-SN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->LING_ZHA_3_PRO:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZY Lite-SN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->ZHAN_YING_LITE:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_4

    return-void

    :cond_4
    monitor-enter p0

    :try_start_0
    const-string v0, "start connection"

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$2;->this$0:Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;

    iget-boolean v1, v0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->scanning:Z

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->access$600(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$2;->this$0:Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;

    iget-boolean v1, v0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->connected:Z

    if-eqz v1, :cond_6

    monitor-exit p0

    return-void

    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->connected:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$2$1;

    invoke-direct {v1, p0, p1}, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$2$1;-><init>(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$2;Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$2;->this$0:Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$2;->this$0:Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;

    invoke-static {v1}, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->access$700(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3, v1, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    iput-object p2, p1, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->connectedGatt:Landroid/bluetooth/BluetoothGatt;

    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_7
    :goto_3
    return-void
.end method
