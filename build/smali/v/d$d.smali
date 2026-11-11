.class public Lv/d$d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lv/d;


# direct methods
.method public constructor <init>(Lv/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lv/d$d;->a:Lv/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lv/d;Lv/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lv/d$d;-><init>(Lv/d;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v3, "jyandroidlog"

    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move v2, v1

    goto :goto_1

    :sswitch_0
    const-string v5, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v5, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, p1

    goto :goto_1

    :sswitch_2
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v0

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BaseBtAdapterReceiver: ACTION_ACL_DISCONNECTED, device : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lv/d$d;->a:Lv/d;

    invoke-static {v0, p1}, Lv/d;->A(Lv/d;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BaseBtAdapterReceiver: ACTION_ACL_CONNECTED, device : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lv/d$d;->a:Lv/d;

    invoke-static {v0, p1}, Lv/d;->A(Lv/d;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    const-string v2, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v2, p0, Lv/d$d;->a:Lv/d;

    invoke-static {v2}, Lv/d;->s(Lv/d;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_4

    if-ne p2, v1, :cond_4

    iget-object p2, p0, Lv/d$d;->a:Lv/d;

    invoke-static {p2}, Lv/d;->s(Lv/d;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p2

    :cond_4
    const/16 v1, 0xa

    if-ne p2, v1, :cond_5

    iget-object p1, p0, Lv/d$d;->a:Lv/d;

    invoke-static {p1, v0}, Lv/d;->t(Lv/d;Z)V

    iget-object p1, p0, Lv/d$d;->a:Lv/d;

    invoke-static {p1}, Lv/d;->u(Lv/d;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lv/d$d;->a:Lv/d;

    invoke-static {p1}, Lv/d;->f(Lv/d;)Lv/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lv/a;->d(Z)V

    iget-object p1, p0, Lv/d$d;->a:Lv/d;

    invoke-virtual {p1}, Lv/d;->O()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p1, p2}, Lv/d;->H(Landroid/bluetooth/BluetoothDevice;)V

    iget-object p1, p0, Lv/d$d;->a:Lv/d;

    invoke-static {p1}, Lv/d;->f(Lv/d;)Lv/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lv/a;->e(Z)V

    goto :goto_2

    :cond_5
    const/16 v0, 0xc

    if-ne p2, v0, :cond_6

    iget-object p2, p0, Lv/d$d;->a:Lv/d;

    invoke-static {p2}, Lv/d;->f(Lv/d;)Lv/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lv/a;->e(Z)V

    :cond_6
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5b36f014 -> :sswitch_2
        -0x11f77b4b -> :sswitch_1
        0x6c9330ef -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
