.class public Lv/d$c;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv/d;


# direct methods
.method public constructor <init>(Lv/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lv/d$c;->a:Lv/d;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothGatt;IIII)V
    .locals 7

    if-eqz p1, :cond_2

    iget-object v0, p0, Lv/d$c;->a:Lv/d;

    invoke-static {v0}, Lv/d;->x(Lv/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$f;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onConnectionUpdated >> device : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lv/d$c;->a:Lv/d;

    invoke-static {v0, v2}, Lv/d;->A(Lv/d;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", interval : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", latency : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", timeout : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", status : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "jyandroidlog"

    invoke-static {v0, p1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lv/d$c;->a:Lv/d;

    invoke-static {p1}, Lv/d;->f(Lv/d;)Lv/a;

    move-result-object v1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lv/a;->i(Landroid/bluetooth/BluetoothDevice;IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-eqz p1, :cond_3

    iget-object v0, p0, Lv/d$c;->a:Lv/d;

    invoke-static {v0}, Lv/d;->x(Lv/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$f;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iget-object v3, p0, Lv/d$c;->a:Lv/d;

    invoke-static {v3, p1}, Lv/d;->A(Lv/d;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/jieli/jl_bt_ota/util/CHexConver;->byte2HexStr([B)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, p2, v0, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "onCharacteristicChanged : deice : %s, serviceUuid = %s, characteristicUuid = %s, \ndata : [%s]"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "jyandroidlog"

    invoke-static {v3, v2}, Lcom/jieli/jl_bt_ota/util/JL_Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lv/d$c;->a:Lv/d;

    invoke-static {v2}, Lv/d;->f(Lv/d;)Lv/a;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0, v1}, Lv/a;->g(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;[B)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lv/d$c;->a:Lv/d;

    invoke-static {v0}, Lv/d;->x(Lv/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$f;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    :goto_0
    move-object v9, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v3, p0, Lv/d$c;->a:Lv/d;

    invoke-static {v3, v2}, Lv/d;->A(Lv/d;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Lcom/jieli/jl_bt_ota/util/CHexConver;->byte2HexStr([B)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v9, v0, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "onCharacteristicWrite : device : %s, serviceUuid = %s, characteristicUuid = %s, status = %d, \ndata : [%s]"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "jyandroidlog"

    invoke-static {v3, v1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lv/d$c;->a:Lv/d;

    move-object v4, p1

    move-object v5, v9

    move-object v6, v0

    move v7, p3

    move-object v8, p2

    invoke-static/range {v3 .. v8}, Lv/d;->o(Lv/d;Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;Ljava/util/UUID;I[B)V

    iget-object p1, p0, Lv/d$c;->a:Lv/d;

    invoke-static {p1}, Lv/d;->f(Lv/d;)Lv/a;

    move-result-object v1

    move-object v3, v9

    move-object v4, v0

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lv/a;->f(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;[BI)V

    :cond_2
    :goto_2
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-eqz p1, :cond_7

    iget-object v0, p0, Lv/d$c;->a:Lv/d;

    invoke-static {v0}, Lv/d;->x(Lv/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$f;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lv/d$c;->a:Lv/d;

    invoke-static {v2, v0}, Lv/d;->A(Lv/d;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "onConnectionStateChange : device : %s, status = %d, newState = %d."

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "jyandroidlog"

    invoke-static {v2, v1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    if-eqz p3, :cond_2

    const/4 v3, 0x3

    if-eq p3, v3, :cond_2

    if-ne p3, v1, :cond_6

    :cond_2
    iget-object v3, p0, Lv/d$c;->a:Lv/d;

    invoke-static {v3}, Lv/d;->g(Lv/d;)V

    iget-object v3, p0, Lv/d$c;->a:Lv/d;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lv/d;->v(Lv/d;Landroid/bluetooth/BluetoothDevice;)V

    const/4 v3, 0x0

    if-ne p3, v1, :cond_4

    iget-object p2, p0, Lv/d$c;->a:Lv/d;

    invoke-static {p2, v3}, Lv/d;->i(Lv/d;I)I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionStateChange >> discoverServices : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/jieli/jl_bt_ota/util/JL_Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lv/d$c;->a:Lv/d;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1, p1}, Lv/d;->k(Lv/d;Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;)V

    if-eqz p2, :cond_3

    iget-object p1, p0, Lv/d$c;->a:Lv/d;

    invoke-static {p1}, Lv/d;->z(Lv/d;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x1015

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lv/d$c;->a:Lv/d;

    invoke-static {p1}, Lv/d;->z(Lv/d;)Landroid/os/Handler;

    move-result-object p1

    iget-object p3, p0, Lv/d$c;->a:Lv/d;

    invoke-static {p3}, Lv/d;->z(Lv/d;)Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p3, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x1770

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lv/d$c;->a:Lv/d;

    invoke-virtual {p1, v0}, Lv/d;->H(Landroid/bluetooth/BluetoothDevice;)V

    :goto_0
    return-void

    :cond_4
    iget-object v1, p0, Lv/d$c;->a:Lv/d;

    invoke-static {v1, v0}, Lv/d;->l(Lv/d;Landroid/bluetooth/BluetoothDevice;)Lx/a;

    iget-object v1, p0, Lv/d$c;->a:Lv/d;

    invoke-static {v1}, Lv/d;->x(Lv/d;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lv/d;->k0(Landroid/content/Context;Landroid/bluetooth/BluetoothGatt;)Z

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    const/16 p1, 0x85

    if-ne p2, p1, :cond_6

    iget-object p1, p0, Lv/d$c;->a:Lv/d;

    invoke-static {p1}, Lv/d;->h(Lv/d;)I

    move-result p1

    const/4 p2, 0x1

    if-ge p1, p2, :cond_5

    iget-object p1, p0, Lv/d$c;->a:Lv/d;

    invoke-static {p1}, Lv/d;->j(Lv/d;)I

    iget-object p1, p0, Lv/d$c;->a:Lv/d;

    invoke-virtual {p1, v0}, Lv/d;->F(Landroid/bluetooth/BluetoothDevice;)Z

    return-void

    :cond_5
    iget-object p1, p0, Lv/d$c;->a:Lv/d;

    invoke-static {p1, v3}, Lv/d;->i(Lv/d;I)I

    :cond_6
    iget-object p1, p0, Lv/d$c;->a:Lv/d;

    invoke-static {p1, v0, p3}, Lv/d;->p(Lv/d;Landroid/bluetooth/BluetoothDevice;I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-eqz p1, :cond_6

    iget-object v0, p0, Lv/d$c;->a:Lv/d;

    invoke-static {v0}, Lv/d;->x(Lv/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$f;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_6

    if-nez p2, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_0

    :cond_3
    move-object v1, v2

    move-object v3, v1

    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    iget-object v5, p0, Lv/d$c;->a:Lv/d;

    invoke-static {v5, v0}, Lv/d;->A(Lv/d;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v5, v1, v3, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "onDescriptorWrite : device : %s, serviceUuid = %s, characteristicUuid = %s, descriptor = %s, status = %d"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "jyandroidlog"

    invoke-static {v5, v4}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lv/d$c;->a:Lv/d;

    invoke-static {v4}, Lv/d;->f(Lv/d;)Lv/a;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v3, p3}, Lv/a;->h(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;I)V

    iget-object v4, p0, Lv/d$c;->a:Lv/d;

    invoke-static {v4}, Lv/d;->m(Lv/d;)Lv/d$e;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lv/d$c;->a:Lv/d;

    invoke-static {v4}, Lv/d;->m(Lv/d;)Lv/d$e;

    move-result-object v4

    invoke-static {v4}, Lv/d$e;->a(Lv/d$e;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/jieli/jl_bt_ota/util/BluetoothUtil;->deviceEquals(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    iget-object v4, p0, Lv/d$c;->a:Lv/d;

    invoke-static {v4}, Lv/d;->m(Lv/d;)Lv/d$e;

    move-result-object v4

    invoke-static {v4}, Lv/d$e;->b(Lv/d$e;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v3, :cond_6

    iget-object v1, p0, Lv/d$c;->a:Lv/d;

    invoke-static {v1}, Lv/d;->m(Lv/d;)Lv/d$e;

    move-result-object v1

    invoke-static {v1}, Lv/d$e;->c(Lv/d$e;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object p2

    iget-object v1, p0, Lv/d$c;->a:Lv/d;

    invoke-static {v1}, Lv/d;->m(Lv/d;)Lv/d$e;

    move-result-object v1

    iget-object v1, v1, Lv/d$e;->d:Ljava/util/UUID;

    invoke-virtual {p2, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    if-nez p3, :cond_4

    iget-object p2, p0, Lv/d$c;->a:Lv/d;

    invoke-static {p2, v2}, Lv/d;->n(Lv/d;Lv/d$e;)Lv/d$e;

    const/16 p2, 0x1fd

    iget-object p3, p0, Lv/d$c;->a:Lv/d;

    invoke-static {p3, p1, p2}, Lv/d;->q(Lv/d;Landroid/bluetooth/BluetoothGatt;I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lv/d$c;->a:Lv/d;

    invoke-static {p1}, Lv/d;->m(Lv/d;)Lv/d$e;

    move-result-object p1

    invoke-static {p1}, Lv/d$e;->d(Lv/d$e;)I

    move-result p1

    const/4 p2, 0x3

    if-ge p1, p2, :cond_5

    iget-object p2, p0, Lv/d$c;->a:Lv/d;

    invoke-static {p2}, Lv/d;->m(Lv/d;)Lv/d$e;

    move-result-object p2

    add-int/lit8 p1, p1, 0x1

    invoke-static {p2, p1}, Lv/d$e;->e(Lv/d$e;I)V

    iget-object p1, p0, Lv/d$c;->a:Lv/d;

    invoke-static {p1}, Lv/d;->z(Lv/d;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lv/d$c;->a:Lv/d;

    invoke-static {p2}, Lv/d;->m(Lv/d;)Lv/d$e;

    move-result-object p2

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lv/d$c;->a:Lv/d;

    invoke-virtual {p1, v0}, Lv/d;->H(Landroid/bluetooth/BluetoothDevice;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lv/d$c;->a:Lv/d;

    invoke-static {v0}, Lv/d;->x(Lv/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$f;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lv/d$c;->a:Lv/d;

    invoke-static {v1, p1}, Lv/d;->A(Lv/d;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onMtuChanged : device : %s, mtu = %d, status = %d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jyandroidlog"

    invoke-static {v1, v0}, Lcom/jieli/jl_bt_ota/util/JL_Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lv/d$c;->a:Lv/d;

    invoke-static {v0}, Lv/d;->f(Lv/d;)Lv/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lv/a;->onBleDataBlockChanged(Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v0, p0, Lv/d$c;->a:Lv/d;

    invoke-static {v0, p1}, Lv/d;->d(Lv/d;Landroid/bluetooth/BluetoothDevice;)Lx/a;

    move-result-object v0

    if-nez p3, :cond_2

    add-int/lit8 p2, p2, -0x3

    if-eqz v0, :cond_2

    iget-object p3, p0, Lv/d$c;->a:Lv/d;

    invoke-static {p3}, Lv/d;->z(Lv/d;)Landroid/os/Handler;

    move-result-object p3

    const/16 v2, 0x1014

    invoke-virtual {p3, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lv/d$c;->a:Lv/d;

    invoke-static {p3}, Lv/d;->r(Lv/d;)V

    invoke-virtual {v0, p2}, Lx/a;->i(I)V

    const-string p2, "-onMtuChanged- handleBleConnectedEvent"

    invoke-static {v1, p2}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lv/d$c;->a:Lv/d;

    invoke-virtual {p2, p1}, Lv/d;->T(Landroid/bluetooth/BluetoothDevice;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-eqz p1, :cond_4

    iget-object v0, p0, Lv/d$c;->a:Lv/d;

    invoke-static {v0}, Lv/d;->x(Lv/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$f;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lv/d$c;->a:Lv/d;

    invoke-static {v1}, Lv/d;->z(Lv/d;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1015

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lv/d$c;->a:Lv/d;

    invoke-static {v1}, Lv/d;->f(Lv/d;)Lv/a;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, p2, v2}, Lv/a;->a(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V

    const-string v1, "jyandroidlog"

    if-nez p2, :cond_3

    iget-object v2, p0, Lv/d$c;->a:Lv/d;

    invoke-static {v2}, Lv/d;->x(Lv/d;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, p1, p2}, Lv/d;->g0(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGatt;I)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    sget-object v6, Lv/d;->u:Ljava/util/UUID;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lv/d;->v:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v7, Lv/d;->w:Ljava/util/UUID;

    invoke-virtual {v2, v7}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string p2, "start NotifyCharacteristicRunnable..."

    invoke-static {v1, p2}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lv/d$c;->a:Lv/d;

    new-instance v2, Lv/d$e;

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lv/d$e;-><init>(Lv/d;Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;Ljava/util/UUID;Lv/d$a;)V

    invoke-static {p2, v2}, Lv/d;->n(Lv/d;Lv/d$e;)Lv/d$e;

    iget-object p1, p0, Lv/d$c;->a:Lv/d;

    invoke-static {p1}, Lv/d;->z(Lv/d;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lv/d$c;->a:Lv/d;

    invoke-static {p2}, Lv/d;->m(Lv/d;)Lv/d$e;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServicesDiscovered : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_4

    iget-object p1, p0, Lv/d$c;->a:Lv/d;

    invoke-virtual {p1, v0}, Lv/d;->H(Landroid/bluetooth/BluetoothDevice;)V

    :cond_4
    :goto_1
    return-void
.end method
