.class public Lv/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


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

    iput-object p1, p0, Lv/d$a;->a:Lv/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "jyandroidlog"

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_5

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lv/d$a;->a:Lv/d;

    invoke-static {v0}, Lv/d;->B(Lv/d;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jieli/jl_bt_ota/util/BluetoothUtil;->deviceEquals(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lv/d$a;->a:Lv/d;

    invoke-static {v0, p1}, Lv/d;->d(Lv/d;Landroid/bluetooth/BluetoothDevice;)Lx/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lx/a;->f()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object p1, p0, Lv/d$a;->a:Lv/d;

    invoke-static {p1}, Lv/d;->C(Lv/d;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object p1

    invoke-virtual {v0}, Lx/a;->f()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    goto/16 :goto_1

    :cond_0
    const-string v0, "discover services timeout."

    invoke-static {v2, v0}, Lcom/jieli/jl_bt_ota/util/JL_Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lv/d$a;->a:Lv/d;

    invoke-virtual {v0, p1}, Lv/d;->H(Landroid/bluetooth/BluetoothDevice;)V

    iget-object v0, p0, Lv/d$a;->a:Lv/d;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Lv/d;->j0(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lv/d$a;->a:Lv/d;

    invoke-static {v0, p1}, Lv/d;->d(Lv/d;Landroid/bluetooth/BluetoothDevice;)Lx/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-MSG_CHANGE_BLE_MTU_TIMEOUT- request mtu timeout, device : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lv/d$a;->a:Lv/d;

    invoke-static {v4, p1}, Lv/d;->A(Lv/d;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lv/d$a;->a:Lv/d;

    invoke-virtual {v0, p1}, Lv/d;->T(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lv/d$a;->a:Lv/d;

    invoke-static {v0, p1, v3}, Lv/d;->p(Lv/d;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_1

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_5

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lv/d$a;->a:Lv/d;

    invoke-virtual {v0, p1}, Lv/d;->H(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object p1, p0, Lv/d$a;->a:Lv/d;

    invoke-static {p1}, Lv/d;->x(Lv/d;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/jl_bt_ota/util/BluetoothUtil;->getSystemConnectedBtDeviceList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lv/d$a;->a:Lv/d;

    invoke-static {v0}, Lv/d;->x(Lv/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$f;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v4, 0xc

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lv/d$a;->a:Lv/d;

    invoke-static {v2, v0, v1}, Lv/d;->y(Lv/d;Landroid/bluetooth/BluetoothDevice;Lx/b;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lv/d$a;->a:Lv/d;

    invoke-static {p1}, Lv/d;->z(Lv/d;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x1012

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_5

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lv/d$a;->a:Lv/d;

    invoke-static {v0, p1}, Lv/d;->d(Lv/d;Landroid/bluetooth/BluetoothDevice;)Lx/a;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lv/d$a;->a:Lv/d;

    invoke-static {v0, p1, v3}, Lv/d;->p(Lv/d;Landroid/bluetooth/BluetoothDevice;I)V

    :cond_4
    iget-object p1, p0, Lv/d$a;->a:Lv/d;

    invoke-static {p1, v1}, Lv/d;->v(Lv/d;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    :pswitch_5
    iget-object p1, p0, Lv/d$a;->a:Lv/d;

    invoke-static {p1}, Lv/d;->c(Lv/d;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lv/d$a;->a:Lv/d;

    invoke-virtual {p1}, Lv/d;->w0()V

    :cond_5
    :goto_1
    return v3

    :pswitch_data_0
    .packed-switch 0x1010
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
