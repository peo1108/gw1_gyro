.class public Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/Hardware/USBInputDataProcessable;
.implements Lcom/zjx/jyandroid/Hardware/IHardwareManageable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;,
        Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$HardwareWorkingMode;,
        Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;,
        Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$MTUInfo;
    }
.end annotation


# static fields
.field public static final ACTION_DEVICE_PERMISSION:Ljava/lang/String; = "com.linc.USB_PERMISSION"

.field private static final INTERFACE_NUMBER:I = 0x1

.field private static final PRODUCT_ID:I = 0xb7ca

.field private static final VENDOR_ID:I = 0x1390


# instance fields
.field communicationRate:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

.field private conn:Landroid/hardware/usb/UsbDeviceConnection;

.field public connectionState:Lcom/zjx/jyandroid/Hardware/ConnectionState;

.field private device:Landroid/hardware/usb/UsbDevice;

.field public deviceVersionMode:Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;

.field eventDispatchCenter:Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

.field private inEndPoint:Landroid/hardware/usb/UsbEndpoint;

.field inputEventDispatchThreadPool:Ljava/util/concurrent/ExecutorService;

.field private inputEventParser:Lcom/zjx/jyandroid/Hardware/InputEventParser;

.field private inputEventReceivers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;",
            ">;"
        }
    .end annotation
.end field

.field private outEndPoint:Landroid/hardware/usb/UsbEndpoint;

.field private usbDataReader:Lcom/zjx/jyandroid/Hardware/USBDataReader;

.field private usbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zjx/jyandroid/Hardware/ConnectionState;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Hardware/ConnectionState;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->connectionState:Lcom/zjx/jyandroid/Hardware/ConnectionState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->conn:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->eventDispatchCenter:Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    new-instance v0, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->deviceVersionMode:Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;

    sget-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->RATE_UNKNOWN:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    iput-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->communicationRate:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->usbManager:Landroid/hardware/usb/UsbManager;

    new-instance v0, Lcom/zjx/jyandroid/Hardware/InputEventParser;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Hardware/InputEventParser;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->inputEventParser:Lcom/zjx/jyandroid/Hardware/InputEventParser;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->inputEventReceivers:Ljava/util/HashSet;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->inputEventDispatchThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private _getDeviceVersionAndMode()Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;
    .locals 5

    const/4 v0, 0x4

    const/16 v1, -0x1e

    new-array v2, v0, [B

    fill-array-data v2, :array_0

    invoke-virtual {p0, v2}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->sendDataAndGetReply([B)[B

    move-result-object v2

    new-instance v3, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;

    invoke-direct {v3}, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;-><init>()V

    if-eqz v2, :cond_0

    const/4 v4, 0x2

    aget-byte v4, v2, v4

    if-ne v4, v1, :cond_0

    :try_start_0
    aget-byte v0, v2, v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;->btVersion:I

    const/4 v0, 0x3

    aget-byte v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;->mcuVersion:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, v3, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;->btVersion:I

    iput v0, v3, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;->mcuVersion:I

    :catch_0
    :goto_0
    return-object v3

    :array_0
    .array-data 1
        -0x5bt
        0x4t
        -0x1et
        -0x75t
    .end array-data
.end method

.method private getHardwareWorkingMode()Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$HardwareWorkingMode;
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->sendDataAndGetReply([B)[B

    move-result-object v1

    aget-byte v0, v1, v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$HardwareWorkingMode;->androidMode:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$HardwareWorkingMode;

    return-object v0

    :cond_0
    sget-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$HardwareWorkingMode;->iOSMode:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$HardwareWorkingMode;

    return-object v0

    :array_0
    .array-data 1
        -0x5bt
        0x4t
        -0x1ft
        -0x76t
    .end array-data
.end method


# virtual methods
.method public USBInputDataReceived([B)V
    .locals 2

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/16 v1, -0x5b

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->inputEventParser:Lcom/zjx/jyandroid/Hardware/InputEventParser;

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Hardware/InputEventParser;->inputEventFromUSBData([B)Ljava/util/LinkedList;

    move-result-object p1

    new-instance v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$1;

    invoke-direct {v0, p0, p1}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$1;-><init>(Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;Ljava/util/LinkedList;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->inputEventDispatchThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public _getCommunicationRate()Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->sendDataAndGetReply([B)[B

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->RATE_UNKNOWN:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->getDeviceVersionMode()Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;

    move-result-object v1

    iget v1, v1, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;->mcuVersion:I

    const/16 v2, 0xa

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-ne v1, v2, :cond_4

    aget-byte v0, v0, v5

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->RATE_125_HZ:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    return-object v0

    :cond_2
    sget-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->RATE_250_HZ:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    return-object v0

    :cond_3
    sget-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->RATE_500_HZ:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    return-object v0

    :cond_4
    aget-byte v0, v0, v5

    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_6

    if-eq v0, v5, :cond_5

    :goto_0
    sget-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->RATE_UNKNOWN:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    return-object v0

    :cond_5
    sget-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->RATE_125_HZ:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    return-object v0

    :cond_6
    sget-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->RATE_250_HZ:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    return-object v0

    :cond_7
    sget-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->RATE_500_HZ:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    return-object v0

    :cond_8
    sget-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->RATE_1000_HZ:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x5bt
        0x4t
        -0x2t
        -0x59t
    .end array-data
.end method

.method public connect()V
    .locals 11

    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->connectionState:Lcom/zjx/jyandroid/Hardware/ConnectionState;

    iget-boolean v0, v0, Lcom/zjx/jyandroid/Hardware/ConnectionState;->connected:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->hasPermission()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->usbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->conn:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->inEndPoint:Landroid/hardware/usb/UsbEndpoint;

    iput-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->outEndPoint:Landroid/hardware/usb/UsbEndpoint;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    move-object v6, v0

    move-object v7, v6

    move v5, v1

    :goto_1
    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v8

    if-ge v5, v8, :cond_2

    invoke-virtual {v3, v5}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v9

    const/16 v10, 0x83

    if-ne v9, v10, :cond_0

    move-object v6, v8

    goto :goto_2

    :cond_0
    invoke-virtual {v8}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    move-object v7, v8

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-eqz v6, :cond_3

    if-eqz v7, :cond_3

    iput-object v6, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->inEndPoint:Landroid/hardware/usb/UsbEndpoint;

    iput-object v7, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->outEndPoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v4

    :goto_3
    if-eq v2, v4, :cond_d

    iget-object v1, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->conn:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->getHardwareWorkingMode()Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$HardwareWorkingMode;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$HardwareWorkingMode;->androidMode:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$HardwareWorkingMode;

    if-eq v1, v2, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->getSNCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->connectionState:Lcom/zjx/jyandroid/Hardware/ConnectionState;

    iput-object v0, v2, Lcom/zjx/jyandroid/Hardware/ConnectionState;->deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    const-string v0, "mxI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->connectionState:Lcom/zjx/jyandroid/Hardware/ConnectionState;

    sget-object v2, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->MO_XIE_MX_200_SX:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    iput-object v2, v0, Lcom/zjx/jyandroid/Hardware/ConnectionState;->deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    goto :goto_4

    :cond_6
    const-string v0, "lyI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->connectionState:Lcom/zjx/jyandroid/Hardware/ConnectionState;

    sget-object v2, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->LIE_YING:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    iput-object v2, v0, Lcom/zjx/jyandroid/Hardware/ConnectionState;->deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    goto :goto_4

    :cond_7
    const-string v0, "lypI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->connectionState:Lcom/zjx/jyandroid/Hardware/ConnectionState;

    sget-object v2, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->LIE_YING_PRO:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    iput-object v2, v0, Lcom/zjx/jyandroid/Hardware/ConnectionState;->deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    goto :goto_4

    :cond_8
    const-string v0, "lzspI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->connectionState:Lcom/zjx/jyandroid/Hardware/ConnectionState;

    sget-object v2, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->LING_ZHA_3_PRO:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    iput-object v2, v0, Lcom/zjx/jyandroid/Hardware/ConnectionState;->deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    goto :goto_4

    :cond_9
    const-string v0, "zyliI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->connectionState:Lcom/zjx/jyandroid/Hardware/ConnectionState;

    sget-object v2, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->ZHAN_YING_LITE:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    iput-object v2, v0, Lcom/zjx/jyandroid/Hardware/ConnectionState;->deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->connectionState:Lcom/zjx/jyandroid/Hardware/ConnectionState;

    iget-object v0, v0, Lcom/zjx/jyandroid/Hardware/ConnectionState;->deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->setActivationCode(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->_getDeviceVersionAndMode()Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->deviceVersionMode:Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->_getCommunicationRate()Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->communicationRate:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    new-instance v0, Lcom/zjx/jyandroid/Hardware/USBDataReader;

    iget-object v1, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->conn:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->inEndPoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-direct {v0, v1, v2, p0}, Lcom/zjx/jyandroid/Hardware/USBDataReader;-><init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;Lcom/zjx/jyandroid/Hardware/USBInputDataProcessable;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->usbDataReader:Lcom/zjx/jyandroid/Hardware/USBDataReader;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->usbDataReader:Lcom/zjx/jyandroid/Hardware/USBDataReader;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->connectionState:Lcom/zjx/jyandroid/Hardware/ConnectionState;

    iput-boolean v3, v0, Lcom/zjx/jyandroid/Hardware/ConnectionState;->connected:Z

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->connectionState:Lcom/zjx/jyandroid/Hardware/ConnectionState;

    iget-object v1, v1, Lcom/zjx/jyandroid/Hardware/ConnectionState;->deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->hardwareConnected(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->conn:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    new-instance v0, Lcom/zjx/jyandroid/Hardware/ClaimInterfaceFailedException;

    const-string v1, "Can\'t claim interface"

    invoke-direct {v0, v1}, Lcom/zjx/jyandroid/Hardware/ClaimInterfaceFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->conn:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    return-void

    :cond_e
    new-instance v0, Lcom/zjx/jyandroid/Hardware/ClaimInterfaceFailedException;

    const-string v1, "Can\'t open device"

    invoke-direct {v0, v1}, Lcom/zjx/jyandroid/Hardware/ClaimInterfaceFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Lcom/zjx/jyandroid/base/Exceptions/PermissionDeniedException;

    const-string v1, "Permission needed"

    invoke-direct {v0, v1}, Lcom/zjx/jyandroid/base/Exceptions/PermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected. Please disconnected first. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disconnect()V
    .locals 2

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gamwing/security/GamwingSoftwareModeStore;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->conn:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->usbDataReader:Lcom/zjx/jyandroid/Hardware/USBDataReader;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zjx/jyandroid/Hardware/USBDataReader;->shouldStop:Z

    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->connectionState:Lcom/zjx/jyandroid/Hardware/ConnectionState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/zjx/jyandroid/Hardware/ConnectionState;->connected:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/zjx/jyandroid/Hardware/ConnectionState;->deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->hardwareDisconnected()V

    return-void
.end method

.method public getCommunicationRate()Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->communicationRate:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    return-object v0
.end method

.method public getConnectionState()Lcom/zjx/jyandroid/Hardware/ConnectionState;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->connectionState:Lcom/zjx/jyandroid/Hardware/ConnectionState;

    return-object v0
.end method

.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 6

    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    invoke-virtual {v1, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v2

    if-eq v2, v4, :cond_2

    :cond_1
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    invoke-virtual {v1, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v2

    if-ne v2, v4, :cond_0

    :cond_2
    iput-object v1, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->device:Landroid/hardware/usb/UsbDevice;

    return-object v1

    :cond_3
    iput-object v1, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->device:Landroid/hardware/usb/UsbDevice;

    return-object v1
.end method

.method public getDeviceVersionMode()Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->deviceVersionMode:Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;

    return-object v0
.end method

.method public getMTUInfo()Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$MTUInfo;
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->sendDataAndGetReply([B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$MTUInfo;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$MTUInfo;-><init>(Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :array_0
    .array-data 1
        -0x5bt
        0x4t
        -0x1ct
        -0x73t
    .end array-data
.end method

.method public getSNCode()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->conn:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->outEndPoint:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v3, :cond_4

    const/16 v4, 0x21

    new-array v5, v1, [B

    fill-array-data v5, :array_0

    const/16 v6, 0x3e8

    invoke-virtual {v2, v3, v5, v1, v6}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v2

    if-ltz v2, :cond_3

    iget-object v2, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->inEndPoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v2

    new-array v3, v2, [B

    :cond_0
    const/4 v5, 0x2

    aget-byte v5, v3, v5

    if-eq v5, v4, :cond_1

    iget-object v5, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->conn:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v7, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->inEndPoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v5, v7, v3, v2, v6}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v5

    if-gez v5, :cond_0

    const-string v0, ""

    return-object v0

    :cond_1
    aget-byte v2, v3, v0

    sub-int/2addr v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    add-int/lit8 v5, v4, 0x3

    aget-byte v5, v3, v5

    int-to-char v5, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v4, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Lcom/zjx/jyandroid/Hardware/USBRelatedException;

    const-string v1, "Data sending failed"

    invoke-direct {v0, v1}, Lcom/zjx/jyandroid/Hardware/USBRelatedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/zjx/jyandroid/Hardware/USBRelatedException;

    const-string v1, "Device connected but out endpoint is null"

    invoke-direct {v0, v1}, Lcom/zjx/jyandroid/Hardware/USBRelatedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v0, 0x0

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x5bt
        0x4t
        0x21t
        -0x36t
    .end array-data
.end method

.method public hasPermission()Z
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->usbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    return v0
.end method

.method public isPhysicalDeviceConnected()Z
    .locals 1

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public registerInputEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->inputEventReceivers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestPermission(Landroid/content/BroadcastReceiver;)V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/high16 v2, 0x2000000

    const/4 v3, 0x0

    const-string v4, "com.linc.USB_PERMISSION"

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->usbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p1, v1, v0}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public sendData([B)V
    .locals 4

    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->conn:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->outEndPoint:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v1, :cond_1

    array-length v2, p1

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/zjx/jyandroid/Hardware/USBRelatedException;

    const-string v0, "Data sending failed"

    invoke-direct {p1, v0}, Lcom/zjx/jyandroid/Hardware/USBRelatedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/zjx/jyandroid/Hardware/USBRelatedException;

    const-string v0, "Device connected but out endpoint is null"

    invoke-direct {p1, v0}, Lcom/zjx/jyandroid/Hardware/USBRelatedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method public sendDataAndGetReply([B)[B
    .locals 4

    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->conn:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->outEndPoint:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v1, :cond_2

    array-length v2, p1

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->inEndPoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result p1

    new-array v0, p1, [B

    iget-object v1, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->conn:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->inEndPoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0

    :cond_1
    new-instance p1, Lcom/zjx/jyandroid/Hardware/USBRelatedException;

    const-string v0, "Data sending failed"

    invoke-direct {p1, v0}, Lcom/zjx/jyandroid/Hardware/USBRelatedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/zjx/jyandroid/Hardware/USBRelatedException;

    const-string v0, "Device connected but out endpoint is null"

    invoke-direct {p1, v0}, Lcom/zjx/jyandroid/Hardware/USBRelatedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public sendModeSwitchData()V
    .locals 5

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->conn:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->outEndPoint:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v2, :cond_1

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    const/16 v4, 0x3e8

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->inEndPoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->conn:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->inEndPoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    return-void

    :cond_0
    new-instance v0, Lcom/zjx/jyandroid/Hardware/USBRelatedException;

    const-string v1, "Data sending failed"

    invoke-direct {v0, v1}, Lcom/zjx/jyandroid/Hardware/USBRelatedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/zjx/jyandroid/Hardware/USBRelatedException;

    const-string v1, "Device connected but out endpoint is null"

    invoke-direct {v0, v1}, Lcom/zjx/jyandroid/Hardware/USBRelatedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void

    nop

    :array_0
    .array-data 1
        -0x5bt
        0x5t
        -0x4et
        0x1t
        0x5dt
    .end array-data
.end method

.method public setBluetoothOnState(Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;Z)V
    .locals 7

    const/4 v0, 0x5

    new-array v1, v0, [B

    const/16 v2, -0x5b

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/4 v2, 0x1

    aput-byte v0, v1, v2

    const/4 v2, 0x2

    aput-byte v0, v1, v2

    const/4 v2, 0x3

    aput-byte v3, v1, v2

    const/16 v4, 0x33

    const/4 v5, 0x4

    aput-byte v4, v1, v5

    sget-object v4, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;->MCU:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    const/16 v6, 0x80

    if-ne p1, v4, :cond_0

    int-to-byte p1, v3

    aput-byte p1, v1, v2

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;->BT:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    if-ne p1, v3, :cond_1

    int-to-byte p1, v6

    aput-byte p1, v1, v2

    :cond_1
    :goto_0
    aget-byte p1, v1, v2

    and-int/2addr p1, v6

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    if-eqz p2, :cond_2

    or-int/2addr p1, v5

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    goto :goto_1

    :cond_2
    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->sendData([B)V

    return-void
.end method

.method public setCommunicationRate(Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;)V
    .locals 9

    const/4 v0, 0x5

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->getDeviceVersionMode()Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;

    move-result-object v2

    iget v2, v2, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;->mcuVersion:I

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v1, :cond_1

    :goto_0
    move v2, v6

    goto :goto_1

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    add-int/lit16 v3, v2, 0xa8

    int-to-byte v3, v3

    new-array v7, v0, [B

    const/16 v8, -0x5b

    aput-byte v8, v7, v6

    aput-byte v0, v7, v5

    const/4 v0, -0x2

    aput-byte v0, v7, v4

    aput-byte v2, v7, v1

    const/4 v0, 0x4

    aput-byte v3, v7, v0

    invoke-virtual {p0, v7}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->sendData([B)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->communicationRate:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    return-void
.end method

.method public setDevice(Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->device:Landroid/hardware/usb/UsbDevice;

    return-void
.end method

.method public setSNCode(Ljava/lang/String;)Z
    .locals 10

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length v0, p1

    add-int/lit8 v1, v0, 0x4

    new-array v2, v1, [B

    const/16 v3, -0x5b

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    int-to-byte v3, v1

    const/4 v5, 0x1

    aput-byte v3, v2, v5

    const/4 v3, 0x2

    const/16 v6, 0x21

    aput-byte v6, v2, v3

    array-length v7, p1

    const/4 v8, 0x3

    invoke-static {p1, v4, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p1, v4

    move v7, p1

    :goto_0
    if-ge p1, v1, :cond_0

    aget-byte v9, v2, p1

    add-int/2addr v7, v9

    int-to-byte v7, v7

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v0, v8

    aput-byte v7, v2, v0

    invoke-virtual {p0, v2}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->sendDataAndGetReply([B)[B

    move-result-object p1

    if-nez p1, :cond_1

    return v4

    :cond_1
    aget-byte p1, p1, v3

    if-eq p1, v6, :cond_2

    return v4

    :cond_2
    return v5
.end method

.method public unregisterInputEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->inputEventReceivers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
