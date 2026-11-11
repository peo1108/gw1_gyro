.class public Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static RECONNECT_TIMEOUT:J = 0xfde8L

.field private static final i:Ljava/lang/String; = "DeviceReConnectManager"

.field private static final j:I = 0xbb8

.field private static final k:I = 0x4e20

.field private static final l:I = 0x2

.field private static final m:I = 0x7530

.field private static final n:I = 0x7d0

.field private static final o:I = 0x9455

.field private static final p:I = 0x9456

.field private static final q:I = 0x9457


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;

.field private volatile c:Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;

.field private d:J

.field private e:J

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jieli/jl_bt_ota/model/BleScanMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/os/Handler;

.field private final h:Lcom/jieli/jl_bt_ota/interfaces/BtEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->d:J

    iput-wide v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->e:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->f:Ljava/util/Map;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager$1;

    invoke-direct {v2, p0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager$1;-><init>(Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->g:Landroid/os/Handler;

    new-instance v0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager$2;

    invoke-direct {v0, p0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager$2;-><init>(Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;)V

    iput-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->h:Lcom/jieli/jl_bt_ota/interfaces/BtEventCallback;

    iput-object p1, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->b:Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;

    invoke-virtual {p2, v0}, Lcom/jieli/jl_bt_ota/impl/BluetoothBase;->registerBluetoothCallback(Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)Z

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->i:Ljava/lang/String;

    return-object v0
.end method

.method private a(J)V
    .locals 0

    .line 6
    iput-wide p1, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->d:J

    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    .line 7
    sget-object v0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectBtDevice :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->c:Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->c:Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->c:Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;

    invoke-virtual {v1}, Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 9
    iget-object v1, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->c:Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;

    invoke-virtual {v1, v2}, Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;->setState(I)Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;

    .line 10
    invoke-direct {p0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->d()V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectBtDevice :: left time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-wide v1, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->e:J

    const-wide/16 v3, 0x7d0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 13
    iget-object v1, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->g:Landroid/os/Handler;

    const v2, 0x9456

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    iget-object v1, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->g:Landroid/os/Handler;

    const-wide/16 v3, 0x7918

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-wide/16 v1, 0x0

    .line 15
    iput-wide v1, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->e:J

    const-string v1, "connectBtDevice :: reset time >>> "

    .line 16
    invoke-static {v0, v1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->g:Landroid/os/Handler;

    const v1, 0x9457

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->g:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 19
    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->b:Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;

    invoke-interface {v0, p1}, Lcom/jieli/jl_bt_ota/interfaces/IBluetoothManager;->connectBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/jieli/jl_bt_ota/model/base/BaseError;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->b:Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;

    invoke-virtual {v0}, Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;->isOTA()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->b:Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;

    invoke-virtual {v0, p1}, Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;->errorEventCallback(Lcom/jieli/jl_bt_ota/model/base/BaseError;)V

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->stopReconnectTask()V

    return-void
.end method

.method public static synthetic a(Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->a(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static synthetic a(Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;Lcom/jieli/jl_bt_ota/model/base/BaseError;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->a(Lcom/jieli/jl_bt_ota/model/base/BaseError;)V

    return-void
.end method

.method public static synthetic a(Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .line 23
    iget-wide v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->e:J

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 24
    sget-object v0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->i:Ljava/lang/String;

    const-string v1, "-onConnection- time not enough."

    invoke-static {v0, v1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4012

    .line 25
    invoke-static {v0, p1}, Lcom/jieli/jl_bt_ota/model/OTAError;->buildError(ILjava/lang/String;)Lcom/jieli/jl_bt_ota/model/base/BaseError;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->a(Lcom/jieli/jl_bt_ota/model/base/BaseError;)V

    goto :goto_0

    .line 26
    :cond_0
    sget-object p1, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->i:Ljava/lang/String;

    const-string v0, "-onConnection- resume reconnect task."

    invoke-static {p1, v0}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->g:Landroid/os/Handler;

    const v0, 0x9455

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 4

    .line 44
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/jieli/jl_bt_ota/util/BluetoothUtil;->getSystemConnectedBtDeviceList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 46
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 47
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 48
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_3
    :goto_0
    return-object v1
.end method

.method private b(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/jieli/jl_bt_ota/util/BluetoothUtil;->printBtDeviceInfo(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic b(Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->b(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 15

    .line 5
    invoke-direct {p0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->e()Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    sget-object v0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->i:Ljava/lang/String;

    const-string v1, "doReconnectTask >>> reConnectDevMsg is null."

    invoke-static {v0, v1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->stopReconnectTask()V

    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    sget-object v1, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doReconnectTask >>> device is connected. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1
    invoke-static {}, Lcom/jieli/jl_bt_ota/util/BluetoothUtil;->isBluetoothEnable()Z

    move-result v1

    const v2, 0x9455

    const-wide/16 v3, 0xbb8

    if-nez v1, :cond_2

    .line 11
    sget-object v0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->i:Ljava/lang/String;

    const-string v1, "doReconnectTask >>> Bluetooth is close."

    invoke-static {v0, v1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->g:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 13
    :cond_2
    invoke-virtual {v0}, Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;->getState()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_4

    .line 14
    sget-object v1, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doReconnectTask >>> Task is connecting. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jieli/jl_bt_ota/util/JL_Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->g:Landroid/os/Handler;

    const v1, 0x9457

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->g:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void

    .line 17
    :cond_4
    sget-object v1, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->i:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doReconnectTask >>> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", isDevConnected : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->g()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->b(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    .line 19
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doReconnectTask >>> connectedDevice : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->b(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/jieli/jl_bt_ota/util/JL_Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_5

    .line 20
    invoke-direct {p0, v6}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->a(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_5

    .line 21
    :cond_5
    invoke-virtual {v0}, Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;->isUseADV()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;->getWay()I

    move-result v6

    if-eqz v6, :cond_6

    .line 22
    invoke-virtual {v0, v7}, Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;->setWay(I)Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;

    .line 23
    :cond_6
    iget-object v6, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->b:Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;

    invoke-virtual {v6}, Lcom/jieli/jl_bt_ota/impl/BluetoothDiscovery;->isScanning()Z

    move-result v6

    const/4 v8, 0x1

    if-eqz v6, :cond_d

    .line 24
    iget-object v6, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->b:Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;

    invoke-virtual {v6}, Lcom/jieli/jl_bt_ota/impl/BluetoothDiscovery;->getScanType()I

    move-result v6

    if-ne v6, v5, :cond_7

    move v9, v8

    goto :goto_0

    :cond_7
    move v9, v7

    :goto_0
    if-nez v9, :cond_b

    .line 25
    invoke-virtual {v0}, Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;->getWay()I

    move-result v9

    if-ne v9, v8, :cond_8

    if-eq v6, v8, :cond_9

    .line 26
    :cond_8
    invoke-virtual {v0}, Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;->getWay()I

    move-result v9

    if-nez v9, :cond_a

    if-nez v6, :cond_a

    :cond_9
    move v9, v8

    goto :goto_1

    :cond_a
    move v9, v7

    .line 27
    :cond_b
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doReconnectTask >>> isScanOk : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", scanType = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_c

    return-void

    .line 28
    :cond_c
    invoke-direct {p0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->h()V

    const-wide/16 v9, 0x64

    .line 29
    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 30
    :cond_d
    invoke-direct {p0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->d()V

    .line 31
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doReconnectTask >>> leftTimeoutTime \uff1a "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->e:J

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", beginTaskTime : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->d:J

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/jieli/jl_bt_ota/util/JL_Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-wide v9, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->e:J

    sget-wide v11, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->RECONNECT_TIMEOUT:J

    const-wide/32 v13, 0x9c40

    sub-long/2addr v11, v13

    cmp-long v6, v9, v11

    const-string v9, "doReconnectTask >>> startDeviceScan : "

    if-gez v6, :cond_11

    invoke-virtual {v0}, Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;->isUseADV()Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_3

    .line 33
    :cond_e
    invoke-virtual {v0}, Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;->getWay()I

    move-result v0

    if-ne v0, v8, :cond_f

    move v5, v7

    .line 34
    :cond_f
    iget-wide v6, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->e:J

    sub-long v10, v6, v3

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-gtz v0, :cond_10

    goto :goto_2

    :cond_10
    move-wide v6, v10

    .line 35
    :goto_2
    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->b:Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;

    invoke-virtual {v0, v6, v7, v5}, Lcom/jieli/jl_bt_ota/impl/BluetoothDiscovery;->startDeviceScan(JI)I

    move-result v0

    .line 36
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", way = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", timeout = "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 37
    :cond_11
    :goto_3
    iget-wide v5, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->e:J

    const-wide/16 v10, 0x4e20

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 38
    invoke-virtual {v0}, Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;->getWay()I

    move-result v0

    const-string v7, ", scanTime = "

    if-ne v0, v8, :cond_12

    .line 39
    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->b:Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;

    invoke-virtual {v0, v5, v6, v8}, Lcom/jieli/jl_bt_ota/impl/BluetoothDiscovery;->startDeviceScan(JI)I

    move-result v0

    .line 40
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 41
    :cond_12
    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->b:Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;

    invoke-virtual {v0, v5, v6}, Lcom/jieli/jl_bt_ota/impl/BluetoothDiscovery;->startBLEScan(J)I

    move-result v0

    .line 42
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doReconnectTask >>> startBLEScan : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    if-eqz v0, :cond_13

    .line 43
    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->g:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_13
    :goto_5
    return-void
.end method

.method private b(J)V
    .locals 3

    .line 3
    sget-object v0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-setLeftTimeoutTime- >>>>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput-wide p1, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->e:J

    return-void
.end method

.method public static synthetic b(Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->h()V

    return-void
.end method

.method private c()J
    .locals 2

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic c(Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->d()V

    return-void
.end method

.method public static synthetic d(Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;)Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->c:Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 2
    invoke-direct {p0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->d:J

    sub-long/2addr v0, v2

    .line 3
    sget-wide v2, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->RECONNECT_TIMEOUT:J

    sub-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->b(J)V

    return-void
.end method

.method private e()Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->c:Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->c:Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;

    invoke-virtual {v0}, Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;->cloneObject()Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e(Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->g()Z

    move-result p0

    return p0
.end method

.method private f()Z
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->e()Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->e()Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic f(Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->f()Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->g:Landroid/os/Handler;

    return-object p0
.end method

.method private g()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->b:Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/jieli/jl_bt_ota/interfaces/IBluetoothManager;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic h(Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->f:Ljava/util/Map;

    return-object p0
.end method

.method private h()V
    .locals 2

    .line 2
    sget-object v0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->i:Ljava/lang/String;

    const-string v1, "-stopScan- >>>>>>stopBLEScan "

    invoke-static {v0, v1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->b:Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;

    invoke-virtual {v0}, Lcom/jieli/jl_bt_ota/impl/BluetoothDiscovery;->stopBLEScan()I

    .line 4
    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->b:Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;

    invoke-virtual {v0}, Lcom/jieli/jl_bt_ota/impl/BluetoothDiscovery;->stopDeviceScan()I

    return-void
.end method


# virtual methods
.method public checkIsReconnectDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->checkIsReconnectDevice(Landroid/bluetooth/BluetoothDevice;[B)Z

    move-result p1

    return p1
.end method

.method public checkIsReconnectDevice(Landroid/bluetooth/BluetoothDevice;[B)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->e()Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-virtual {v1}, Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    return v0

    .line 5
    :cond_2
    sget-object v3, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->i:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-checkIsReconnectDevice- device : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->b(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;->isUseADV()Z

    move-result v1

    if-nez v1, :cond_3

    .line 7
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-checkIsReconnectDevice- advertiseRawData : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/jieli/jl_bt_ota/util/CHexConver;->byte2HexStr([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object p1, Lcom/jieli/jl_bt_ota/constant/JL_Constant;->OTA_IDENTIFY:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/jieli/jl_bt_ota/util/ParseDataUtil;->parseOTAFlagFilterWithBroad([BLjava/lang/String;)Lcom/jieli/jl_bt_ota/model/BleScanMessage;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-checkIsReconnectDevice- "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/jieli/jl_bt_ota/model/BleScanMessage;->getOldBleAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :cond_4
    :goto_0
    return v0
.end method

.method public getReconnectAddress()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->e()Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDeviceReconnecting()Z
    .locals 2

    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->g:Landroid/os/Handler;

    const v1, 0x9456

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public isWaitingForUpdate()Z
    .locals 1

    invoke-direct {p0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->e()Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->setReConnectDevMsg(Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;)V

    invoke-virtual {p0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->stopReconnectTask()V

    iget-object v1, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->b:Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;

    iget-object v2, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->h:Lcom/jieli/jl_bt_ota/interfaces/BtEventCallback;

    invoke-virtual {v1, v2}, Lcom/jieli/jl_bt_ota/impl/BluetoothBase;->unregisterBluetoothCallback(Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)Z

    iget-object v1, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public setReConnectDevMsg(Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;)V
    .locals 3

    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->c:Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->c:Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;

    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReConnectDevMsg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setReconnectAddress(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->setReConnectDevMsg(Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->c:Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;

    if-nez v0, :cond_1

    new-instance v0, Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;

    iget-object v1, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->b:Lcom/jieli/jl_bt_ota/impl/BluetoothOTAManager;

    invoke-virtual {v1}, Lcom/jieli/jl_bt_ota/impl/BluetoothBase;->getBluetoothOption()Lcom/jieli/jl_bt_ota/model/BluetoothOTAConfigure;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/jl_bt_ota/model/BluetoothOTAConfigure;->getPriority()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->setReConnectDevMsg(Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->c:Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;

    invoke-virtual {v0, p1}, Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;->setAddress(Ljava/lang/String;)Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;

    sget-object p1, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setReconnectAddress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->c:Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jieli/jl_bt_ota/util/JL_Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setReconnectUseADV(Z)V
    .locals 1

    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->c:Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->c:Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;

    invoke-virtual {v0, p1}, Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;->setUseADV(Z)Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;

    :cond_0
    return-void
.end method

.method public startReconnectTask()V
    .locals 4

    invoke-virtual {p0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->isDeviceReconnecting()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->i:Ljava/lang/String;

    const-string v1, "-startReconnectTask- start...."

    invoke-static {v0, v1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->c()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->a(J)V

    invoke-direct {p0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->d()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-startReconnectTask- timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->RECONNECT_TIMEOUT:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->g:Landroid/os/Handler;

    sget-wide v1, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->RECONNECT_TIMEOUT:J

    const v3, 0x9456

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->g:Landroid/os/Handler;

    const v1, 0x9455

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public stopReconnectTask()V
    .locals 5

    invoke-virtual {p0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->isDeviceReconnecting()Z

    move-result v0

    invoke-virtual {p0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->isWaitingForUpdate()Z

    move-result v1

    sget-object v2, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--> stopReconnectTask ---------> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isWaitingForUpdate = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->a(J)V

    invoke-direct {p0, v0, v1}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->b(J)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->setReConnectDevMsg(Lcom/jieli/jl_bt_ota/model/ReConnectDevMsg;)V

    invoke-direct {p0}, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->h()V

    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->g:Landroid/os/Handler;

    const v1, 0x9457

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/jieli/jl_bt_ota/tool/DeviceReConnectManager;->g:Landroid/os/Handler;

    const v1, 0x9456

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
