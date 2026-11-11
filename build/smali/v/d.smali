.class public Lv/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv/d$e;,
        Lv/d$d;
    }
.end annotation


# static fields
.field public static final A:I = 0x9c40

.field public static final B:I = 0x1770

.field public static final C:I = 0x7d0

.field public static final D:I = 0x1010

.field public static final E:I = 0x1011

.field public static final F:I = 0x1012

.field public static final G:I = 0x1013

.field public static final H:I = 0x1014

.field public static final I:I = 0x1015

.field public static final r:Ljava/lang/String; = "jyandroidlog"

.field public static volatile s:Lv/d; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static final t:I = 0x1

.field public static final u:Ljava/util/UUID;

.field public static final v:Ljava/util/UUID;

.field public static final w:Ljava/util/UUID;

.field public static final x:Ljava/util/UUID;

.field public static final y:I = 0x1f40

.field public static final z:I = 0x2ee0


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lv/d$d;

.field public final c:Landroid/bluetooth/BluetoothAdapter;

.field public d:Landroid/bluetooth/le/BluetoothLeScanner;

.field public final e:Lv/g;

.field public volatile f:Landroid/bluetooth/BluetoothDevice;

.field public volatile g:Landroid/bluetooth/BluetoothDevice;

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lx/a;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lv/a;

.field public volatile k:Z

.field public l:Lv/d$e;

.field public m:I

.field public final n:Landroid/os/Handler;

.field public final o:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field public final p:Landroid/bluetooth/le/ScanCallback;

.field public final q:Landroid/bluetooth/BluetoothGattCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/jieli/jl_bt_ota/constant/BluetoothConstant;->UUID_SERVICE:Ljava/util/UUID;

    sput-object v0, Lv/d;->u:Ljava/util/UUID;

    sget-object v0, Lcom/jieli/jl_bt_ota/constant/BluetoothConstant;->UUID_WRITE:Ljava/util/UUID;

    sput-object v0, Lv/d;->v:Ljava/util/UUID;

    sget-object v0, Lcom/jieli/jl_bt_ota/constant/BluetoothConstant;->UUID_NOTIFICATION:Ljava/util/UUID;

    sput-object v0, Lv/d;->w:Ljava/util/UUID;

    const-string v0, "00002902-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lv/d;->x:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lv/d;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lv/d;->i:Ljava/util/List;

    new-instance v0, Lv/a;

    invoke-direct {v0}, Lv/a;-><init>()V

    iput-object v0, p0, Lv/d;->j:Lv/a;

    const/4 v0, 0x0

    iput v0, p0, Lv/d;->m:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lv/d$a;

    invoke-direct {v2, p0}, Lv/d$a;-><init>(Lv/d;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lv/d;->n:Landroid/os/Handler;

    new-instance v0, Lv/b;

    invoke-direct {v0, p0}, Lv/b;-><init>(Lv/d;)V

    iput-object v0, p0, Lv/d;->o:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    new-instance v0, Lv/d$b;

    invoke-direct {v0, p0}, Lv/d$b;-><init>(Lv/d;)V

    iput-object v0, p0, Lv/d;->p:Landroid/bluetooth/le/ScanCallback;

    new-instance v0, Lv/d$c;

    invoke-direct {v0, p0}, Lv/d$c;-><init>(Lv/d;)V

    iput-object v0, p0, Lv/d;->q:Landroid/bluetooth/BluetoothGattCallback;

    invoke-static {p1}, Lcom/jieli/jl_bt_ota/util/CommonUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lv/d;->a:Landroid/content/Context;

    invoke-static {}, Lcom/jieli/jl_bt_ota/util/CommonUtil;->getMainContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/jieli/jl_bt_ota/util/CommonUtil;->setMainContext(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lv/d;->c:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lv/d;->d:Landroid/bluetooth/le/BluetoothLeScanner;

    :cond_1
    new-instance v0, Lv/g;

    invoke-direct {v0, p1, p0}, Lv/g;-><init>(Landroid/content/Context;Lv/d;)V

    iput-object v0, p0, Lv/d;->e:Lv/g;

    invoke-virtual {p0}, Lv/d;->m0()V

    return-void
.end method

.method public static synthetic A(Lv/d;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lv/d;->h0(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(Lv/d;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iget-object p0, p0, Lv/d;->g:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public static synthetic C(Lv/d;)Landroid/bluetooth/BluetoothGattCallback;
    .locals 0

    iget-object p0, p0, Lv/d;->q:Landroid/bluetooth/BluetoothGattCallback;

    return-object p0
.end method

.method public static N(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/zjx/jyandroid/base/util/b$f;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "bluetooth"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothManager;

    if-eqz p0, :cond_1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static R()Lv/d;
    .locals 4

    sget-object v0, Lv/d;->s:Lv/d;

    if-nez v0, :cond_1

    const-class v0, Lv/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lv/d;->s:Lv/d;

    if-nez v1, :cond_0

    new-instance v1, Lv/d;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lv/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lv/d;->s:Lv/d;

    const-string v1, "jyandroidlog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init BleManager.. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lv/d;->s:Lv/d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/jl_bt_ota/util/JL_Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lv/d;->s:Lv/d;

    return-object v0
.end method

.method public static synthetic a(Lx/a;Lx/a;)I
    .locals 0

    invoke-static {p0, p1}, Lv/d;->e0(Lx/a;Lx/a;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lv/d;Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lv/d;->f0(Landroid/bluetooth/BluetoothDevice;I[B)V

    return-void
.end method

.method public static synthetic c(Lv/d;)Z
    .locals 0

    iget-boolean p0, p0, Lv/d;->k:Z

    return p0
.end method

.method public static synthetic d(Lv/d;Landroid/bluetooth/BluetoothDevice;)Lx/a;
    .locals 0

    invoke-virtual {p0, p1}, Lv/d;->M(Landroid/bluetooth/BluetoothDevice;)Lx/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lv/d;Landroid/bluetooth/BluetoothDevice;I[BZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lv/d;->J(Landroid/bluetooth/BluetoothDevice;I[BZ)V

    return-void
.end method

.method public static synthetic e0(Lx/a;Lx/a;)I
    .locals 2

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    invoke-virtual {p1}, Lx/a;->e()J

    move-result-wide v0

    invoke-virtual {p0}, Lx/a;->e()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static synthetic f(Lv/d;)Lv/a;
    .locals 0

    iget-object p0, p0, Lv/d;->j:Lv/a;

    return-object p0
.end method

.method public static synthetic g(Lv/d;)V
    .locals 0

    invoke-virtual {p0}, Lv/d;->v0()V

    return-void
.end method

.method public static g0(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    invoke-static {p0}, Lcom/zjx/jyandroid/base/util/b$f;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/jieli/jl_bt_ota/util/JL_Log;->isIsLog()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/jieli/jl_bt_ota/util/BluetoothUtil;->printBtDeviceInfo(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {v1, p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v1, "[[============================Bluetooth[%s], Discovery Services status[%d]=================================]]\n"

    invoke-static {v0, v1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "ble"

    invoke-static {v0, p3}, Lcom/jieli/jl_bt_ota/util/JL_Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[======Service Size:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "======================\n"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/jieli/jl_bt_ota/util/JL_Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/bluetooth/BluetoothGattService;

    if-eqz p3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[[======Service:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jieli/jl_bt_ota/util/JL_Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[[[[=============characteristics Size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jieli/jl_bt_ota/util/JL_Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[[[[=============characteristic:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",write type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/jieli/jl_bt_ota/util/JL_Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[[[[[[=============descriptors Size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/jieli/jl_bt_ota/util/JL_Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattDescriptor;

    if-eqz v3, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[[[[[[=============descriptor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",permission:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattDescriptor;->getPermissions()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\nvalue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v3

    invoke-static {v3}, Lcom/jieli/jl_bt_ota/util/CHexConver;->byte2HexStr([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/jieli/jl_bt_ota/util/JL_Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[[============================Bluetooth["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/jieli/jl_bt_ota/util/BluetoothUtil;->printBtDeviceInfo(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] Services show End=================================]]\n"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/jieli/jl_bt_ota/util/JL_Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static synthetic h(Lv/d;)I
    .locals 0

    iget p0, p0, Lv/d;->m:I

    return p0
.end method

.method public static synthetic i(Lv/d;I)I
    .locals 0

    iput p1, p0, Lv/d;->m:I

    return p1
.end method

.method public static synthetic j(Lv/d;)I
    .locals 2

    iget v0, p0, Lv/d;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lv/d;->m:I

    return v0
.end method

.method public static synthetic k(Lv/d;Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lv/d;->i0(Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method public static k0(Landroid/content/Context;Landroid/bluetooth/BluetoothGatt;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/zjx/jyandroid/base/util/b$f;->b(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "refresh"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return v0
.end method

.method public static synthetic l(Lv/d;Landroid/bluetooth/BluetoothDevice;)Lx/a;
    .locals 0

    invoke-virtual {p0, p1}, Lv/d;->n0(Landroid/bluetooth/BluetoothDevice;)Lx/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lv/d;)Lv/d$e;
    .locals 0

    iget-object p0, p0, Lv/d;->l:Lv/d$e;

    return-object p0
.end method

.method public static synthetic n(Lv/d;Lv/d$e;)Lv/d$e;
    .locals 0

    iput-object p1, p0, Lv/d;->l:Lv/d$e;

    return-object p1
.end method

.method public static synthetic o(Lv/d;Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;Ljava/util/UUID;I[B)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lv/d;->B0(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;Ljava/util/UUID;I[B)V

    return-void
.end method

.method public static synthetic p(Lv/d;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lv/d;->U(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public static synthetic q(Lv/d;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lv/d;->r0(Landroid/bluetooth/BluetoothGatt;I)V

    return-void
.end method

.method public static synthetic r(Lv/d;)V
    .locals 0

    invoke-virtual {p0}, Lv/d;->u0()V

    return-void
.end method

.method public static synthetic s(Lv/d;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    iget-object p0, p0, Lv/d;->c:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method public static synthetic t(Lv/d;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lv/d;->W(Z)V

    return-void
.end method

.method public static synthetic u(Lv/d;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lv/d;->i:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic v(Lv/d;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-virtual {p0, p1}, Lv/d;->q0(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static synthetic w(Lv/d;Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;Ljava/util/UUID;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lv/d;->I(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result p0

    return p0
.end method

.method public static synthetic x(Lv/d;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lv/d;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic y(Lv/d;Landroid/bluetooth/BluetoothDevice;Lx/b;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lv/d;->V(Landroid/bluetooth/BluetoothDevice;Lx/b;)V

    return-void
.end method

.method public static synthetic z(Lv/d;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lv/d;->n:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final A0()V
    .locals 2

    iget-object v0, p0, Lv/d;->b:Lv/d$d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lv/d;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lv/d;->b:Lv/d$d;

    :cond_0
    return-void
.end method

.method public final B0(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;Ljava/util/UUID;I[B)V
    .locals 8

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p0, v0}, Lv/d;->M(Landroid/bluetooth/BluetoothDevice;)Lx/a;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v7, Lv/h$a;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Lv/h$a;-><init>(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;Ljava/util/UUID;[BLw/e;)V

    invoke-virtual {v7, p4}, Lv/h$a;->m(I)V

    invoke-virtual {v0, v7}, Lx/a;->l(Lv/h$a;)V

    :cond_0
    return-void
.end method

.method public C0(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;[BLw/e;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lv/d;->D(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;[BLw/e;)V

    return-void
.end method

.method public final D(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;[BLw/e;)V
    .locals 7

    invoke-virtual {p0, p1}, Lv/d;->M(Landroid/bluetooth/BluetoothDevice;)Lx/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3, p4, p5}, Lx/a;->d(Ljava/util/UUID;Ljava/util/UUID;[BLw/e;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-eqz p5, :cond_1

    const/4 v5, 0x0

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lw/e;->a(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;Z[B)V

    :cond_1
    return-void
.end method

.method public final E()V
    .locals 4

    iget-object v0, p0, Lv/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$f;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lv/d;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lv/d;->h:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx/a;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lx/a;->f()Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    invoke-virtual {v2}, Lx/a;->f()Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->close()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lv/d;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_3
    return-void
.end method

.method public F(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object v1, p0, Lv/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$f;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lv/d;->f:Landroid/bluetooth/BluetoothDevice;

    const-string v2, "jyandroidlog"

    if-eqz v1, :cond_1

    const-string v0, "BleDevice is connecting, please wait."

    invoke-static {v2, v0}, Lcom/jieli/jl_bt_ota/util/JL_Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lv/d;->c0(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0}, Lv/d;->X()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lv/d;->w0()V

    :cond_2
    :try_start_0
    iget-object v1, p0, Lv/d;->a:Landroid/content/Context;

    iget-object v3, p0, Lv/d;->q:Landroid/bluetooth/BluetoothGattCallback;

    const/4 v4, 0x2

    invoke-virtual {p1, v1, v0, v3, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x1

    if-eqz v1, :cond_3

    move v0, v3

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lv/d;->q0(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0, p1, v3}, Lv/d;->U(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {p0, p1}, Lv/d;->s0(Landroid/bluetooth/BluetoothDevice;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect start...."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lv/d;->h0(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return v0
.end method

.method public G()V
    .locals 2

    const-string v0, "jyandroidlog"

    const-string v1, ">>>>>>>>>>>>>>destroy >>>>>>>>>>>>>>> "

    invoke-static {v0, v1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lv/d;->A0()V

    invoke-virtual {p0}, Lv/d;->v0()V

    invoke-virtual {p0}, Lv/d;->E()V

    invoke-virtual {p0}, Lv/d;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lv/d;->w0()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lv/d;->W(Z)V

    iget-object v0, p0, Lv/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lv/d;->j:Lv/a;

    invoke-virtual {v0}, Lv/a;->m()V

    iget-object v0, p0, Lv/d;->n:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sput-object v1, Lv/d;->s:Lv/d;

    return-void
.end method

.method public H(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lv/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$f;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lv/d;->n0(Landroid/bluetooth/BluetoothDevice;)Lx/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectBleDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lv/d;->h0(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "jyandroidlog"

    invoke-static {v1, p1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/jieli/jl_bt_ota/util/BluetoothUtil;->isBluetoothEnable()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lx/a;->f()Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    goto :goto_0

    :cond_1
    const-string p1, "disconnectBleDevice : It is not a connected device."

    invoke-static {v1, p1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final I(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;Ljava/util/UUID;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable: serviceUUID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " characteristicUUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "jyandroidlog"

    if-eqz p1, :cond_6

    iget-object v2, p0, Lv/d;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b$f;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "BluetoothGattService is null. uuid = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {v2, p3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "BluetoothGattCharacteristic is null. uuid = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothGattDescriptor;

    sget-object v5, Lv/d;->x:Ljava/util/UUID;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, v4, v0, v0}, Lv/d;->y0(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;IZ)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v4, "tryToWriteDescriptor failed...."

    invoke-static {v1, v4}, Lcom/jieli/jl_bt_ota/util/JL_Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "setCharacteristicNotification is failed...."

    invoke-static {v1, p1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableBLEDeviceNotification ret : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", serviceUUID : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", characteristicUUID : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_6
    :goto_1
    const-string p1, "Bluetooth gatt is null."

    invoke-static {v1, p1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final J(Landroid/bluetooth/BluetoothDevice;I[BZ)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    iget-object v0, p0, Lv/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$f;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lv/d;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lv/d;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify device : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lv/d;->h0(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jyandroidlog"

    invoke-static {v1, v0}, Lcom/jieli/jl_bt_ota/util/JL_Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lv/d;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lx/b;

    invoke-direct {v0}, Lx/b;-><init>()V

    invoke-virtual {v0, p3}, Lx/b;->f([B)Lx/b;

    move-result-object p3

    invoke-virtual {p3, p2}, Lx/b;->g(I)Lx/b;

    move-result-object p2

    invoke-virtual {p2, p4}, Lx/b;->e(Z)Lx/b;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lv/d;->V(Landroid/bluetooth/BluetoothDevice;Lx/b;)V

    :cond_0
    return-void
.end method

.method public K(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    invoke-virtual {p0, p1}, Lv/d;->M(Landroid/bluetooth/BluetoothDevice;)Lx/a;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lx/a;->g()I

    move-result p1

    return p1
.end method

.method public L(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 4

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lv/d;->Q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

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

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_3
    return-object v1
.end method

.method public final M(Landroid/bluetooth/BluetoothDevice;)Lx/a;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lv/d;->h:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx/a;

    return-object p1
.end method

.method public O()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lv/d;->g:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public P(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    invoke-virtual {p0, p1}, Lv/d;->M(Landroid/bluetooth/BluetoothDevice;)Lx/a;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lx/a;->f()Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1
.end method

.method public Q()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lv/d;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lv/d;->S()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx/a;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lx/a;->f()Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lx/a;->f()Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final S()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lx/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lv/d;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lv/d;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lv/c;

    invoke-direct {v1}, Lv/c;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public T(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "jyandroidlog"

    const-string v0, "-handleBleConnectedEvent- device is null."

    invoke-static {p1, v0}, Lcom/jieli/jl_bt_ota/util/JL_Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lv/d;->u0()V

    invoke-virtual {p0, p1}, Lv/d;->M(Landroid/bluetooth/BluetoothDevice;)Lx/a;

    move-result-object v0

    invoke-virtual {v0}, Lx/a;->j()V

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lv/d;->U(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public final U(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lv/d;->n:Landroid/os/Handler;

    const/16 v1, 0x1013

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBleConnection >> device : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lv/d;->h0(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jyandroidlog"

    invoke-static {v1, v0}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lv/d;->j:Lv/a;

    invoke-virtual {v0, p1, p2}, Lv/a;->b(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public final V(Landroid/bluetooth/BluetoothDevice;Lx/b;)V
    .locals 1

    iget-object v0, p0, Lv/d;->j:Lv/a;

    invoke-virtual {v0, p1, p2}, Lv/a;->c(Landroid/bluetooth/BluetoothDevice;Lx/b;)V

    return-void
.end method

.method public final W(Z)V
    .locals 1

    iput-boolean p1, p0, Lv/d;->k:Z

    iget-object v0, p0, Lv/d;->j:Lv/a;

    invoke-virtual {v0, p1}, Lv/a;->d(Z)V

    return-void
.end method

.method public X()Z
    .locals 1

    iget-boolean v0, p0, Lv/d;->k:Z

    return v0
.end method

.method public Y()Z
    .locals 1

    iget-object v0, p0, Lv/d;->c:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Z(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv/d;->a0(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public a0(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lv/d;->Q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

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

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public b0()Z
    .locals 1

    iget-object v0, p0, Lv/d;->f:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c0(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    iget-object v0, p0, Lv/d;->f:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, p1}, Lcom/jieli/jl_bt_ota/util/BluetoothUtil;->deviceEquals(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public d0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lv/d;->e:Lv/g;

    invoke-virtual {v0, p1, p2}, Lv/g;->l(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final synthetic f0(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lv/d;->J(Landroid/bluetooth/BluetoothDevice;I[BZ)V

    return-void
.end method

.method public final h0(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lv/d;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/jieli/jl_bt_ota/util/BluetoothUtil;->printBtDeviceInfo(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final i0(Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;)V
    .locals 3

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lx/a;

    iget-object v1, p0, Lv/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lx/a;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothGatt;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lx/a;->h(J)V

    iget-object v1, p0, Lv/d;->h:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lv/d;->g:Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lv/d;->g:Landroid/bluetooth/BluetoothDevice;

    :cond_1
    const-string p1, "putConnectedGattInMap >>>>>>>>>>>>> start"

    const-string p2, "jyandroidlog"

    invoke-static {p2, p1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lv/d;->h:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putConnectedGattInMap >>>>>>>>>>>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/jieli/jl_bt_ota/util/JL_Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "putConnectedGattInMap >>>>>>>>>>>>> end"

    invoke-static {p2, p1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public j0(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reconnectDevice : address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isUseAdv = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jyandroidlog"

    invoke-static {v1, v0}, Lcom/jieli/jl_bt_ota/util/JL_Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lv/d;->e:Lv/g;

    new-instance v2, Lv/g$b;

    invoke-direct {v2, p1, p2}, Lv/g$b;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Lv/g;->q(Lv/g$b;)Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reconnectDevice : ret = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public l0(Lw/a;)V
    .locals 1

    iget-object v0, p0, Lv/d;->j:Lv/a;

    invoke-virtual {v0, p1}, Lv/a;->l(Lw/a;)V

    return-void
.end method

.method public final m0()V
    .locals 3

    iget-object v0, p0, Lv/d;->b:Lv/d$d;

    if-nez v0, :cond_0

    new-instance v0, Lv/d$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lv/d$d;-><init>(Lv/d;Lv/d$a;)V

    iput-object v0, p0, Lv/d;->b:Lv/d$d;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lv/d;->a:Landroid/content/Context;

    iget-object v2, p0, Lv/d;->b:Lv/d$d;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public final n0(Landroid/bluetooth/BluetoothDevice;)Lx/a;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv/d;->o0(Ljava/lang/String;)Lx/a;

    move-result-object p1

    return-object p1
.end method

.method public final o0(Ljava/lang/String;)Lx/a;
    .locals 2

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lv/d;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx/a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lx/a;->k()V

    iget-object v0, p0, Lv/d;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lv/d;->p0(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lx/a;->f()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lx/a;->f()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p0}, Lv/d;->O()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/jl_bt_ota/util/BluetoothUtil;->deviceEquals(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lv/d;->S()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/a;

    invoke-virtual {v0}, Lx/a;->f()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p0, v0}, Lv/d;->p0(Landroid/bluetooth/BluetoothDevice;)V

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final p0(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iput-object p1, p0, Lv/d;->g:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public final q0(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iput-object p1, p0, Lv/d;->f:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public final r0(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "jyandroidlog"

    if-eqz p1, :cond_5

    iget-object v1, p0, Lv/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$f;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "-startChangeMtu- device is null."

    invoke-static {v0, p1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v2, p0, Lv/d;->n:Landroid/os/Handler;

    const/16 v3, 0x1014

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "-startChangeMtu- Adjusting the MTU for BLE"

    invoke-static {v0, p1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/16 v2, 0x14

    if-le p2, v2, :cond_3

    add-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-startChangeMtu- ret = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/jieli/jl_bt_ota/util/JL_Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    iget-object p1, p0, Lv/d;->n:Landroid/os/Handler;

    invoke-virtual {p1, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x1770

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Lv/d;->T(Landroid/bluetooth/BluetoothDevice;)V

    :goto_1
    return-void

    :cond_5
    :goto_2
    const-string p1, "-startChangeMtu- param is error."

    invoke-static {v0, p1}, Lcom/jieli/jl_bt_ota/util/JL_Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final s0(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    iget-object v0, p0, Lv/d;->n:Landroid/os/Handler;

    const/16 v1, 0x1011

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lv/d;->n:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v1, 0x9c40

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public t0(J)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    iget-object v0, p0, Lv/d;->c:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lv/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$f;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lv/d;->Y()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lv/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    const-wide/16 p1, 0x2ee0

    :cond_2
    iget-boolean v0, p0, Lv/d;->k:Z

    const-string v1, "jyandroidlog"

    const/4 v2, 0x1

    const/16 v3, 0x1010

    if-eqz v0, :cond_4

    const-string v0, "scanning ble ....."

    invoke-static {v1, v0}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lv/d;->d:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lv/d;->p:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->flushPendingScanResults(Landroid/bluetooth/le/ScanCallback;)V

    :cond_3
    iget-object v0, p0, Lv/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lv/d;->n:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lv/d;->n:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0}, Lv/d;->x0()V

    return v2

    :cond_4
    iget-object v0, p0, Lv/d;->d:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_5

    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {v0, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setMatchMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    iget-object v4, p0, Lv/d;->d:Landroid/bluetooth/le/BluetoothLeScanner;

    const/4 v5, 0x0

    iget-object v6, p0, Lv/d;->p:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v4, v5, v0, v6}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lv/d;->c:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lv/d;->o:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v2

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startLeScan : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", timeout = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lv/d;->W(Z)V

    if-eqz v2, :cond_6

    iget-object v0, p0, Lv/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lv/d;->n:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lv/d;->n:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0}, Lv/d;->x0()V

    :cond_6
    return v2

    :cond_7
    :goto_1
    return v1
.end method

.method public final u0()V
    .locals 2

    iget-object v0, p0, Lv/d;->n:Landroid/os/Handler;

    const/16 v1, 0x1014

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final v0()V
    .locals 2

    iget-object v0, p0, Lv/d;->n:Landroid/os/Handler;

    const/16 v1, 0x1011

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv/d;->n:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public w0()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    iget-object v0, p0, Lv/d;->c:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lv/d;->Y()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lv/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$f;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lv/d;->X()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lv/d;->d:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lv/d;->p:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lv/d;->c:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lv/d;->o:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iget-object v0, p0, Lv/d;->n:Landroid/os/Handler;

    const/16 v1, 0x1010

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lv/d;->n:Landroid/os/Handler;

    const/16 v1, 0x1012

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lv/d;->W(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final x0()V
    .locals 4

    iget-object v0, p0, Lv/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lv/d;->N(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lv/d;->g:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1, v2}, Lcom/jieli/jl_bt_ota/util/BluetoothUtil;->deviceEquals(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lv/d;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lv/d;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lx/b;

    invoke-direct {v2}, Lx/b;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lx/b;->e(Z)Lx/b;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lv/d;->V(Landroid/bluetooth/BluetoothDevice;Lx/b;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final y0(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;IZ)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    iget-object v0, p0, Lv/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$f;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x32

    const/4 v0, 0x3

    const-string v4, "jyandroidlog"

    if-nez p4, :cond_3

    sget-object p4, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {p2, p4}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    move-result p4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "..descriptor : .setValue  ret : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_2

    add-int/lit8 p3, p3, 0x1

    if-lt p3, v0, :cond_1

    return v1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-tryToWriteDescriptor- : retryCount : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", isSkipSetValue :  false"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    invoke-virtual {p0, p1, p2, p3, v1}, Lv/d;->y0(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;IZ)Z

    goto :goto_0

    :cond_2
    move p3, v1

    :cond_3
    :goto_0
    if-eqz p4, :cond_5

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "..bluetoothGatt : .writeDescriptor  ret : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_5

    const/4 v5, 0x1

    add-int/2addr p3, v5

    if-lt p3, v0, :cond_4

    return v1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-tryToWriteDescriptor- 2222 : retryCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSkipSetValue :  true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/jieli/jl_bt_ota/util/JL_Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    invoke-virtual {p0, p1, p2, p3, v5}, Lv/d;->y0(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;IZ)Z

    :cond_5
    return p4
.end method

.method public z0(Lw/a;)V
    .locals 1

    iget-object v0, p0, Lv/d;->j:Lv/a;

    invoke-virtual {v0, p1}, Lv/a;->n(Lw/a;)V

    return-void
.end method
