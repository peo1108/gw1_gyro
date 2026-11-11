.class Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$1;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field eventDispatchCenter:Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

.field eventParser:Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$EventParser;

.field final synthetic this$0:Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$1;->this$0:Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    new-instance p1, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$EventParser;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$EventParser;-><init>(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$1;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$1;->eventParser:Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$EventParser;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$1;->eventDispatchCenter:Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    const/4 p2, 0x2

    aget-byte p2, p1, p2

    const/4 v0, 0x7

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$1;->eventParser:Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$EventParser;

    invoke-virtual {p2, p1}, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$EventParser;->parse([B)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$1;->eventDispatchCenter:Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    check-cast p1, Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->eventOccurred(Ljava/util/LinkedList;)Z

    :cond_0
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    const-string p1, "read: "

    invoke-static {p1}, Ly/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionStateChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". gatt: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ly/c;->a(Ljava/lang/String;)V

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$1$1;

    invoke-direct {p3, p0, p1}, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$1$1;-><init>(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$1;Landroid/bluetooth/BluetoothGatt;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-nez p3, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$1;->this$0:Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->connected:Z

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->connectedGatt:Landroid/bluetooth/BluetoothGatt;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$1$2;

    invoke-direct {p2, p0}, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$1$2;-><init>(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$1;->this$0:Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;

    iget-boolean p2, p1, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->started:Z

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->access$100(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;)V

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 p2, 0x5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$1;->this$0:Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;

    iget-boolean v0, v0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->connected:Z

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServicesDiscovered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$1;->this$0:Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;

    invoke-static {v0}, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->access$200(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$1;->this$0:Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;

    invoke-static {v1}, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->access$300(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$1;->this$0:Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;

    invoke-static {v2}, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->access$400(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v1, :cond_4

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$1;->this$0:Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;

    invoke-static {v2}, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->access$500(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v2

    if-nez v2, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    new-array p2, p2, [B

    fill-array-data p2, :array_0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    const/4 p2, 0x2

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/LowPriorityHandlerThread;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/LowPriorityHandlerThread;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zjx/jyandroid/ForegroundService/LowPriorityHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$1$3;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$1$3;-><init>(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$1;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattDescriptor;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit p0

    return-void

    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :array_0
    .array-data 1
        -0x5bt
        0x5t
        -0x4et
        0x1t
        0x5dt
    .end array-data
.end method
