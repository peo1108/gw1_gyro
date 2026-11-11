.class public Lv/e$a;
.super Lw/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv/e;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv/e;


# direct methods
.method public constructor <init>(Lv/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lv/e$a;->a:Lv/e;

    invoke-direct {p0}, Lw/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lw/a;->b(Landroid/bluetooth/BluetoothDevice;I)V

    iget-object v0, p0, Lv/e$a;->a:Lv/e;

    invoke-static {v0, p2}, Lv/e;->w(Lv/e;I)I

    move-result p2

    iget-object v0, p0, Lv/e$a;->a:Lv/e;

    invoke-virtual {v0, p1, p2}, Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;->onBtDeviceConnection(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public g(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;[B)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lw/a;->g(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;[B)V

    iget-object p2, p0, Lv/e$a;->a:Lv/e;

    invoke-virtual {p2, p1, p4}, Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;->onReceiveDeviceData(Landroid/bluetooth/BluetoothDevice;[B)V

    return-void
.end method

.method public onBleDataBlockChanged(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lw/a;->onBleDataBlockChanged(Landroid/bluetooth/BluetoothDevice;II)V

    iget-object p1, p0, Lv/e$a;->a:Lv/e;

    invoke-virtual {p1}, Lv/e;->getConnectedBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    return-void
.end method
