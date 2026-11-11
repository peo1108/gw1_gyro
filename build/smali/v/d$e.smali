.class public Lv/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final a:Landroid/bluetooth/BluetoothGatt;

.field public final b:Ljava/util/UUID;

.field public final c:Ljava/util/UUID;

.field public final d:Ljava/util/UUID;

.field public e:I

.field public final synthetic f:Lv/d;


# direct methods
.method public constructor <init>(Lv/d;Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lv/d$e;->f:Lv/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object p1, Lv/d;->x:Ljava/util/UUID;

    iput-object p1, p0, Lv/d$e;->d:Ljava/util/UUID;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lv/d$e;->e:I

    .line 5
    iput-object p2, p0, Lv/d$e;->a:Landroid/bluetooth/BluetoothGatt;

    .line 6
    iput-object p3, p0, Lv/d$e;->b:Ljava/util/UUID;

    .line 7
    iput-object p4, p0, Lv/d$e;->c:Ljava/util/UUID;

    return-void
.end method

.method public synthetic constructor <init>(Lv/d;Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;Ljava/util/UUID;Lv/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lv/d$e;-><init>(Lv/d;Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;Ljava/util/UUID;)V

    return-void
.end method

.method public static synthetic a(Lv/d$e;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    invoke-virtual {p0}, Lv/d$e;->f()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lv/d$e;)Ljava/util/UUID;
    .locals 0

    invoke-virtual {p0}, Lv/d$e;->i()Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lv/d$e;)Ljava/util/UUID;
    .locals 0

    invoke-virtual {p0}, Lv/d$e;->g()Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lv/d$e;)I
    .locals 0

    invoke-virtual {p0}, Lv/d$e;->h()I

    move-result p0

    return p0
.end method

.method public static synthetic e(Lv/d$e;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lv/d$e;->j(I)V

    return-void
.end method


# virtual methods
.method public final f()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lv/d$e;->a:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lv/d$e;->c:Ljava/util/UUID;

    return-object v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lv/d$e;->e:I

    return v0
.end method

.method public final i()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lv/d$e;->b:Ljava/util/UUID;

    return-object v0
.end method

.method public final j(I)V
    .locals 0

    iput p1, p0, Lv/d$e;->e:I

    return-void
.end method

.method public run()V
    .locals 5

    iget-object v0, p0, Lv/d$e;->f:Lv/d;

    iget-object v1, p0, Lv/d$e;->a:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lv/d$e;->b:Ljava/util/UUID;

    iget-object v3, p0, Lv/d$e;->c:Ljava/util/UUID;

    invoke-static {v0, v1, v2, v3}, Lv/d;->w(Lv/d;Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lv/d$e;->b:Ljava/util/UUID;

    iget-object v4, p0, Lv/d$e;->c:Ljava/util/UUID;

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "enableBLEDeviceNotification ===> %s, service uuid = %s, characteristic uuid = %s"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "jyandroidlog"

    invoke-static {v2, v1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    iget-object v0, p0, Lv/d$e;->a:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lv/d$e;->f:Lv/d;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v1, v0}, Lv/d;->H(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lv/d$e;->f:Lv/d;

    invoke-static {v0}, Lv/d;->z(Lv/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1013

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lv/d$e;->f:Lv/d;

    invoke-static {v0}, Lv/d;->z(Lv/d;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lv/d$e;->f:Lv/d;

    invoke-static {v2}, Lv/d;->z(Lv/d;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lv/d$e;->a:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method
