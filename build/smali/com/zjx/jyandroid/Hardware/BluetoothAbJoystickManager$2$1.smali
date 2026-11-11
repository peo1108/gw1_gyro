.class Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$2;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$2;

.field final synthetic val$finalConnectedDeviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$2;Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$2$1;->this$1:Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$2;

    iput-object p2, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$2$1;->val$finalConnectedDeviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$2$1;->val$finalConnectedDeviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->hardwareConnected(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)V

    return-void
.end method
