.class public Lv/e;
.super Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;
.source "SourceFile"


# instance fields
.field public final U:Lv/d;

.field public V:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lv/d;->R()Lv/d;

    move-result-object v0

    iput-object v0, p0, Lv/e;->U:Lv/d;

    const-string v1, ""

    iput-object v1, p0, Lv/e;->V:Ljava/lang/String;

    new-instance v1, Lv/e$a;

    invoke-direct {v1, p0}, Lv/e$a;-><init>(Lv/e;)V

    invoke-virtual {v0, v1}, Lv/d;->l0(Lw/a;)V

    return-void
.end method

.method public static synthetic w(Lv/e;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lv/e;->x(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public connectBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    iget-object v0, p0, Lv/e;->U:Lv/d;

    invoke-virtual {v0, p1}, Lv/d;->F(Landroid/bluetooth/BluetoothDevice;)Z

    return-void
.end method

.method public disconnectBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    iget-object v0, p0, Lv/e;->U:Lv/d;

    invoke-virtual {v0, p1}, Lv/d;->H(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public getConnectedBluetoothGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 2

    iget-object v0, p0, Lv/e;->U:Lv/d;

    invoke-virtual {p0}, Lv/e;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv/d;->P(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    return-object v0
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lv/e;->U:Lv/d;

    invoke-virtual {v0}, Lv/d;->O()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 1

    invoke-super {p0}, Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;->release()V

    iget-object v0, p0, Lv/e;->U:Lv/d;

    invoke-virtual {v0}, Lv/d;->G()V

    return-void
.end method

.method public sendDataToDevice(Landroid/bluetooth/BluetoothDevice;[B)Z
    .locals 6

    iget-object v0, p0, Lv/e;->U:Lv/d;

    sget-object v2, Lv/d;->u:Ljava/util/UUID;

    sget-object v3, Lv/d;->v:Ljava/util/UUID;

    new-instance v5, Lv/e$b;

    invoke-direct {v5, p0}, Lv/e$b;-><init>(Lv/e;)V

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lv/d;->C0(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;[BLw/e;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final x(I)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lv/e;->V:Ljava/lang/String;

    return-void
.end method
