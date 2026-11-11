.class Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->stopScanning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$4;->this$0:Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager$4;->this$0:Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->scanning:Z

    iget-object v1, v0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v0, v0, Lcom/zjx/jyandroid/Hardware/BluetoothAbJoystickManager;->leScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v1, v0}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    return-void
.end method
