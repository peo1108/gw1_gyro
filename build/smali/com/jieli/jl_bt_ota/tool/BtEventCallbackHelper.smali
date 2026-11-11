.class public Lcom/jieli/jl_bt_ota/tool/BtEventCallbackHelper;
.super Lcom/jieli/jl_bt_ota/tool/BaseCallbackHelper;
.source "SourceFile"

# interfaces
.implements Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jieli/jl_bt_ota/tool/BaseCallbackHelper<",
        "Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;",
        ">;",
        "Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jieli/jl_bt_ota/tool/BaseCallbackHelper;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/bluetooth/BluetoothDevice;IILcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V
    .locals 0

    .line 3
    invoke-interface {p3, p0, p1, p2}, Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;->onBleDataBlockChanged(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method private static synthetic a(Landroid/bluetooth/BluetoothDevice;ILcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V
    .locals 0

    .line 5
    invoke-interface {p2, p0, p1}, Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;->onA2dpStatus(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method private static synthetic a(Landroid/bluetooth/BluetoothDevice;Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V
    .locals 0

    .line 6
    invoke-interface {p1, p0}, Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;->onMandatoryUpgrade(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private static synthetic a(Landroid/bluetooth/BluetoothDevice;Lcom/jieli/jl_bt_ota/model/BleScanMessage;Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V
    .locals 0

    .line 2
    invoke-interface {p2, p0, p1}, Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;->onDiscovery(Landroid/bluetooth/BluetoothDevice;Lcom/jieli/jl_bt_ota/model/BleScanMessage;)V

    return-void
.end method

.method private static synthetic a(Landroid/bluetooth/BluetoothDevice;Lcom/jieli/jl_bt_ota/model/base/CommandBase;Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V
    .locals 0

    .line 4
    invoke-interface {p2, p0, p1}, Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;->onReceiveCommand(Landroid/bluetooth/BluetoothDevice;Lcom/jieli/jl_bt_ota/model/base/CommandBase;)V

    return-void
.end method

.method private static synthetic a(Lcom/jieli/jl_bt_ota/model/base/BaseError;Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V
    .locals 0

    .line 7
    invoke-interface {p1, p0}, Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;->onError(Lcom/jieli/jl_bt_ota/model/base/BaseError;)V

    return-void
.end method

.method private static synthetic a(ZZLcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;->onAdapterStatus(ZZ)V

    return-void
.end method

.method private static synthetic b(Landroid/bluetooth/BluetoothDevice;ILcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V
    .locals 0

    .line 3
    invoke-interface {p2, p0, p1}, Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;->onBtDeviceConnection(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public static synthetic b(Lcom/jieli/jl_bt_ota/model/base/BaseError;Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jieli/jl_bt_ota/tool/BtEventCallbackHelper;->a(Lcom/jieli/jl_bt_ota/model/base/BaseError;Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V

    return-void
.end method

.method private static synthetic b(ZZLcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V
    .locals 0

    .line 2
    invoke-interface {p2, p0, p1}, Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;->onDiscoveryStatus(ZZ)V

    return-void
.end method

.method private static synthetic c(Landroid/bluetooth/BluetoothDevice;ILcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;->onConnection(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method private static synthetic d(Landroid/bluetooth/BluetoothDevice;ILcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;->onHfpStatus(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public static synthetic e(Landroid/bluetooth/BluetoothDevice;ILcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jieli/jl_bt_ota/tool/BtEventCallbackHelper;->c(Landroid/bluetooth/BluetoothDevice;ILcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V

    return-void
.end method

.method public static synthetic f(Landroid/bluetooth/BluetoothDevice;ILcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jieli/jl_bt_ota/tool/BtEventCallbackHelper;->b(Landroid/bluetooth/BluetoothDevice;ILcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V

    return-void
.end method

.method public static synthetic g(ZZLcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jieli/jl_bt_ota/tool/BtEventCallbackHelper;->a(ZZLcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V

    return-void
.end method

.method public static synthetic h(Landroid/bluetooth/BluetoothDevice;IILcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/jieli/jl_bt_ota/tool/BtEventCallbackHelper;->a(Landroid/bluetooth/BluetoothDevice;IILcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V

    return-void
.end method

.method public static synthetic i(Landroid/bluetooth/BluetoothDevice;ILcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jieli/jl_bt_ota/tool/BtEventCallbackHelper;->a(Landroid/bluetooth/BluetoothDevice;ILcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V

    return-void
.end method

.method public static synthetic j(ZZLcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jieli/jl_bt_ota/tool/BtEventCallbackHelper;->b(ZZLcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V

    return-void
.end method

.method public static synthetic k(Landroid/bluetooth/BluetoothDevice;Lcom/jieli/jl_bt_ota/model/BleScanMessage;Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jieli/jl_bt_ota/tool/BtEventCallbackHelper;->a(Landroid/bluetooth/BluetoothDevice;Lcom/jieli/jl_bt_ota/model/BleScanMessage;Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V

    return-void
.end method

.method public static synthetic l(Landroid/bluetooth/BluetoothDevice;ILcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jieli/jl_bt_ota/tool/BtEventCallbackHelper;->d(Landroid/bluetooth/BluetoothDevice;ILcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V

    return-void
.end method

.method public static synthetic m(Landroid/bluetooth/BluetoothDevice;Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jieli/jl_bt_ota/tool/BtEventCallbackHelper;->a(Landroid/bluetooth/BluetoothDevice;Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V

    return-void
.end method

.method public static synthetic n(Landroid/bluetooth/BluetoothDevice;Lcom/jieli/jl_bt_ota/model/base/CommandBase;Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jieli/jl_bt_ota/tool/BtEventCallbackHelper;->a(Landroid/bluetooth/BluetoothDevice;Lcom/jieli/jl_bt_ota/model/base/CommandBase;Lcom/jieli/jl_bt_ota/interfaces/IBluetoothCallback;)V

    return-void
.end method


# virtual methods
.method public onA2dpStatus(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    new-instance v0, Lcom/jieli/jl_bt_ota/tool/b;

    invoke-direct {v0, p1, p2}, Lcom/jieli/jl_bt_ota/tool/b;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {p0, v0}, Lcom/jieli/jl_bt_ota/tool/BaseCallbackHelper;->callbackEvent(Lcom/jieli/jl_bt_ota/tool/ICallbackHandler;)V

    return-void
.end method

.method public onAdapterStatus(ZZ)V
    .locals 1

    new-instance v0, Lcom/jieli/jl_bt_ota/tool/e;

    invoke-direct {v0, p1, p2}, Lcom/jieli/jl_bt_ota/tool/e;-><init>(ZZ)V

    invoke-virtual {p0, v0}, Lcom/jieli/jl_bt_ota/tool/BaseCallbackHelper;->callbackEvent(Lcom/jieli/jl_bt_ota/tool/ICallbackHandler;)V

    return-void
.end method

.method public onBleDataBlockChanged(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 1

    new-instance v0, Lcom/jieli/jl_bt_ota/tool/c;

    invoke-direct {v0, p1, p2, p3}, Lcom/jieli/jl_bt_ota/tool/c;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    invoke-virtual {p0, v0}, Lcom/jieli/jl_bt_ota/tool/BaseCallbackHelper;->callbackEvent(Lcom/jieli/jl_bt_ota/tool/ICallbackHandler;)V

    return-void
.end method

.method public onBtDeviceConnection(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    new-instance v0, Lcom/jieli/jl_bt_ota/tool/i;

    invoke-direct {v0, p1, p2}, Lcom/jieli/jl_bt_ota/tool/i;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {p0, v0}, Lcom/jieli/jl_bt_ota/tool/BaseCallbackHelper;->callbackEvent(Lcom/jieli/jl_bt_ota/tool/ICallbackHandler;)V

    return-void
.end method

.method public onConnection(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    new-instance v0, Lcom/jieli/jl_bt_ota/tool/d;

    invoke-direct {v0, p1, p2}, Lcom/jieli/jl_bt_ota/tool/d;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {p0, v0}, Lcom/jieli/jl_bt_ota/tool/BaseCallbackHelper;->callbackEvent(Lcom/jieli/jl_bt_ota/tool/ICallbackHandler;)V

    return-void
.end method

.method public onDiscovery(Landroid/bluetooth/BluetoothDevice;Lcom/jieli/jl_bt_ota/model/BleScanMessage;)V
    .locals 1

    new-instance v0, Lcom/jieli/jl_bt_ota/tool/a;

    invoke-direct {v0, p1, p2}, Lcom/jieli/jl_bt_ota/tool/a;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/jieli/jl_bt_ota/model/BleScanMessage;)V

    invoke-virtual {p0, v0}, Lcom/jieli/jl_bt_ota/tool/BaseCallbackHelper;->callbackEvent(Lcom/jieli/jl_bt_ota/tool/ICallbackHandler;)V

    return-void
.end method

.method public onDiscoveryStatus(ZZ)V
    .locals 1

    new-instance v0, Lcom/jieli/jl_bt_ota/tool/h;

    invoke-direct {v0, p1, p2}, Lcom/jieli/jl_bt_ota/tool/h;-><init>(ZZ)V

    invoke-virtual {p0, v0}, Lcom/jieli/jl_bt_ota/tool/BaseCallbackHelper;->callbackEvent(Lcom/jieli/jl_bt_ota/tool/ICallbackHandler;)V

    return-void
.end method

.method public onError(Lcom/jieli/jl_bt_ota/model/base/BaseError;)V
    .locals 1

    new-instance v0, Lcom/jieli/jl_bt_ota/tool/j;

    invoke-direct {v0, p1}, Lcom/jieli/jl_bt_ota/tool/j;-><init>(Lcom/jieli/jl_bt_ota/model/base/BaseError;)V

    invoke-virtual {p0, v0}, Lcom/jieli/jl_bt_ota/tool/BaseCallbackHelper;->callbackEvent(Lcom/jieli/jl_bt_ota/tool/ICallbackHandler;)V

    return-void
.end method

.method public onHfpStatus(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    new-instance v0, Lcom/jieli/jl_bt_ota/tool/k;

    invoke-direct {v0, p1, p2}, Lcom/jieli/jl_bt_ota/tool/k;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {p0, v0}, Lcom/jieli/jl_bt_ota/tool/BaseCallbackHelper;->callbackEvent(Lcom/jieli/jl_bt_ota/tool/ICallbackHandler;)V

    return-void
.end method

.method public onMandatoryUpgrade(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    new-instance v0, Lcom/jieli/jl_bt_ota/tool/f;

    invoke-direct {v0, p1}, Lcom/jieli/jl_bt_ota/tool/f;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0, v0}, Lcom/jieli/jl_bt_ota/tool/BaseCallbackHelper;->callbackEvent(Lcom/jieli/jl_bt_ota/tool/ICallbackHandler;)V

    return-void
.end method

.method public onReceiveCommand(Landroid/bluetooth/BluetoothDevice;Lcom/jieli/jl_bt_ota/model/base/CommandBase;)V
    .locals 1

    new-instance v0, Lcom/jieli/jl_bt_ota/tool/g;

    invoke-direct {v0, p1, p2}, Lcom/jieli/jl_bt_ota/tool/g;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/jieli/jl_bt_ota/model/base/CommandBase;)V

    invoke-virtual {p0, v0}, Lcom/jieli/jl_bt_ota/tool/BaseCallbackHelper;->callbackEvent(Lcom/jieli/jl_bt_ota/tool/ICallbackHandler;)V

    return-void
.end method
