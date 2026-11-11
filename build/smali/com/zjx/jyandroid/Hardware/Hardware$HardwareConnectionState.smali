.class public Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Hardware/Hardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HardwareConnectionState"
.end annotation


# instance fields
.field connected:Z

.field connectedDeviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;


# direct methods
.method public constructor <init>(ZLcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;->connectedDeviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;->connected:Z

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;->connectedDeviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    :cond_0
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;->connected:Z

    return-void
.end method


# virtual methods
.method public getConnectedDeviceType()Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;->connectedDeviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;->connected:Z

    return v0
.end method
