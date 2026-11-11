.class public Lcom/zjx/jyandroid/Hardware/OTAManager;
.super Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public connectBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    const-string p1, "11"

    invoke-static {p1}, Ly/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public disconnectBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    const-string p1, "2"

    invoke-static {p1}, Ly/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public getConnectedBluetoothGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    const-string v0, "3"

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    const-string v0, "4"

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public sendDataToDevice(Landroid/bluetooth/BluetoothDevice;[B)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
