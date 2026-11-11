.class public Lcom/zjx/jyandroid/Hardware/ConnectionState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public connected:Z

.field public deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Hardware/ConnectionState;->connected:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/Hardware/ConnectionState;->deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    return-void
.end method
