.class public Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FirmwareUpdateInfo"
.end annotation


# instance fields
.field public btFileChecksum:Ljava/lang/String;

.field public btFilePathUrl:Ljava/lang/String;

.field public deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

.field public forceUpdate:Z

.field public hasUpdate:Z

.field public mcuFileChecksum:Ljava/lang/String;

.field public mcuFilePathUrl:Ljava/lang/String;

.field public updateContent:Ljava/lang/String;

.field public updateVersionCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
