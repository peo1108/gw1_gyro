.class Lcom/jieli/jl_bt_ota/impl/BluetoothBreProfiles$BluetoothHandFreeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/jl_bt_ota/impl/BluetoothBreProfiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BluetoothHandFreeReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/jieli/jl_bt_ota/impl/BluetoothBreProfiles;


# direct methods
.method private constructor <init>(Lcom/jieli/jl_bt_ota/impl/BluetoothBreProfiles;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jieli/jl_bt_ota/impl/BluetoothBreProfiles$BluetoothHandFreeReceiver;->a:Lcom/jieli/jl_bt_ota/impl/BluetoothBreProfiles;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jieli/jl_bt_ota/impl/BluetoothBreProfiles;Lcom/jieli/jl_bt_ota/impl/BluetoothBreProfiles$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/jieli/jl_bt_ota/impl/BluetoothBreProfiles$BluetoothHandFreeReceiver;-><init>(Lcom/jieli/jl_bt_ota/impl/BluetoothBreProfiles;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v3, :cond_4

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, ", state : "

    const-string v5, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_0
    move v2, v1

    goto :goto_1

    :sswitch_0
    const-string v6, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v6, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, p1

    goto :goto_1

    :sswitch_2
    const-string v6, "android.bluetooth.device.action.UUID"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    :try_start_0
    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/jieli/jl_bt_ota/impl/BluetoothBreProfiles$BluetoothHandFreeReceiver;->a:Lcom/jieli/jl_bt_ota/impl/BluetoothBreProfiles;

    iget-object p2, p2, Lcom/jieli/jl_bt_ota/impl/BluetoothBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: a2dp ACTION_CONNECTION_STATE_CHANGED device : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jieli/jl_bt_ota/impl/BluetoothBreProfiles$BluetoothHandFreeReceiver;->a:Lcom/jieli/jl_bt_ota/impl/BluetoothBreProfiles;

    invoke-virtual {v1, v3}, Lcom/jieli/jl_bt_ota/impl/BluetoothBase;->printBtDeviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/jieli/jl_bt_ota/impl/BluetoothBreProfiles$BluetoothHandFreeReceiver;->a:Lcom/jieli/jl_bt_ota/impl/BluetoothBreProfiles;

    invoke-virtual {p2, v3, p1}, Lcom/jieli/jl_bt_ota/impl/BluetoothBase;->onA2dpStatus(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    :pswitch_1
    :try_start_1
    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/jieli/jl_bt_ota/impl/BluetoothBreProfiles$BluetoothHandFreeReceiver;->a:Lcom/jieli/jl_bt_ota/impl/BluetoothBreProfiles;

    iget-object p2, p2, Lcom/jieli/jl_bt_ota/impl/BluetoothBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: hfp ACTION_CONNECTION_STATE_CHANGED device : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jieli/jl_bt_ota/impl/BluetoothBreProfiles$BluetoothHandFreeReceiver;->a:Lcom/jieli/jl_bt_ota/impl/BluetoothBreProfiles;

    invoke-virtual {v1, v3}, Lcom/jieli/jl_bt_ota/impl/BluetoothBase;->printBtDeviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/jieli/jl_bt_ota/impl/BluetoothBreProfiles$BluetoothHandFreeReceiver;->a:Lcom/jieli/jl_bt_ota/impl/BluetoothBreProfiles;

    invoke-virtual {p2, v3, p1}, Lcom/jieli/jl_bt_ota/impl/BluetoothBase;->onHfpStatus(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :pswitch_2
    const-string v1, "android.bluetooth.device.extra.UUID"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p2

    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/jieli/jl_bt_ota/impl/BluetoothBreProfiles$BluetoothHandFreeReceiver;->a:Lcom/jieli/jl_bt_ota/impl/BluetoothBreProfiles;

    iget-object p1, p1, Lcom/jieli/jl_bt_ota/impl/BluetoothBase;->TAG:Ljava/lang/String;

    const-string p2, "onReceive: ACTION_UUID no uuids"

    invoke-static {p1, p2}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    array-length v1, p2

    new-array v1, v1, [Landroid/os/ParcelUuid;

    :goto_2
    array-length v2, p2

    if-ge v0, v2, :cond_4

    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v2, p0, Lcom/jieli/jl_bt_ota/impl/BluetoothBreProfiles$BluetoothHandFreeReceiver;->a:Lcom/jieli/jl_bt_ota/impl/BluetoothBreProfiles;

    iget-object v2, v2, Lcom/jieli/jl_bt_ota/impl/BluetoothBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: ACTION_UUID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr v0, p1

    goto :goto_2

    :cond_4
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x16809cc6 -> :sswitch_2
        0x2083ec2d -> :sswitch_1
        0x4a286686 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
