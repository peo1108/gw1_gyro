.class public Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;,
        Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$GetUpdateInfoCompleteHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUpdateFromServer(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$GetUpdateInfoCompleteHandler;)V
    .locals 5

    # mdm-offline: no server firmware update check
    return-void

    if-eqz p2, :cond_5

    sget-object v0, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$4;->$SwitchMap$com$zjx$jyandroid$Hardware$Hardware$DeviceType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    const-string v0, "20003"

    goto :goto_0

    :cond_1
    const-string v0, "20002"

    goto :goto_0

    :cond_2
    const-string v0, "20001"

    goto :goto_0

    :cond_3
    const-string v0, "20000"

    :goto_0
    if-nez v0, :cond_4

    new-instance v1, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;

    invoke-direct {v1}, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;-><init>()V

    invoke-interface {p2, v2, v1}, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$GetUpdateInfoCompleteHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;)V

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;->mcuVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;->btVersion:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://121.41.85.22:8888/v3/app/update_info?version_code="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&platform="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$3;

    new-instance v3, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$1;

    invoke-direct {v3, p0, p2}, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$1;-><init>(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$GetUpdateInfoCompleteHandler;)V

    new-instance p0, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$2;

    invoke-direct {p0, p2}, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$2;-><init>(Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$GetUpdateInfoCompleteHandler;)V

    invoke-direct {v1, v0, p1, v3, p0}, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$3;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;

    move-result-object p0

    const-string p1, "CHECK_FIRM_WARE_UPDATE"

    const/16 v3, 0xfa0

    invoke-virtual {p0, v1, v3, p1}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->addTaskToQueue(Lcom/android/volley/Request;ILjava/lang/Object;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Lcom/zjx/jyandroid/base/MError;

    new-instance v1, Lcom/zjx/jyandroid/base/SingleElementMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u539f\u56e0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "reason"

    invoke-direct {v1, v3, p0}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p0, "RuntimeError"

    invoke-direct {p1, p0, v0, v1}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p2, p1, v2}, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$GetUpdateInfoCompleteHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;)V

    :goto_1
    return-void

    :cond_5
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "The handler cannot be null"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFirmwareSavePath(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$4;->$SwitchMap$com$zjx$jyandroid$Hardware$Hardware$DeviceType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "lz3pro"

    goto :goto_0

    :cond_1
    const-string p0, "mx200sx"

    goto :goto_0

    :cond_2
    const-string p0, "lieyingpro"

    goto :goto_0

    :cond_3
    const-string p0, "lieying"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getInternalDocumentFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/firmwares/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOTABluetoothName(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$4;->$SwitchMap$com$zjx$jyandroid$Hardware$Hardware$DeviceType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v1, 0x2

    if-eq p0, v1, :cond_8

    const/4 v1, 0x3

    if-eq p0, v1, :cond_4

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;->MCU:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    if-ne p1, p0, :cond_2

    if-nez p2, :cond_1

    const-string p0, "LZ 3Pro-SN"

    return-object p0

    :cond_1
    if-ne p2, v0, :cond_10

    const-string p0, "Glingza3Pro-OTA"

    return-object p0

    :cond_2
    sget-object p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;->BT:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    if-ne p1, p0, :cond_10

    if-nez p2, :cond_3

    const-string p0, "Glingza3Pro*"

    return-object p0

    :cond_3
    if-ne p2, v0, :cond_10

    const-string p0, "Glingza3Pro*-OTA"

    return-object p0

    :cond_4
    sget-object p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;->MCU:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    if-ne p1, p0, :cond_6

    if-nez p2, :cond_5

    const-string p0, "MX200sx_"

    return-object p0

    :cond_5
    if-ne p2, v0, :cond_10

    const-string p0, "MX200sx_OTA"

    return-object p0

    :cond_6
    sget-object p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;->BT:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    if-ne p1, p0, :cond_10

    if-nez p2, :cond_7

    const-string p0, "MX200sxS_"

    return-object p0

    :cond_7
    if-ne p2, v0, :cond_10

    const-string p0, "MX200sxS_OTA"

    return-object p0

    :cond_8
    sget-object p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;->MCU:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    if-ne p1, p0, :cond_a

    if-nez p2, :cond_9

    const-string p0, "Lie Ying Pro_"

    return-object p0

    :cond_9
    if-ne p2, v0, :cond_10

    const-string p0, "Lie Ying Pro_OTA"

    return-object p0

    :cond_a
    sget-object p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;->BT:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    if-ne p1, p0, :cond_10

    if-nez p2, :cond_b

    const-string p0, "Lie Ying ProS_"

    return-object p0

    :cond_b
    if-ne p2, v0, :cond_10

    const-string p0, "ProS_OTA"

    return-object p0

    :cond_c
    sget-object p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;->MCU:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    if-ne p1, p0, :cond_e

    if-nez p2, :cond_d

    const-string p0, "Lie Ying _"

    return-object p0

    :cond_d
    if-ne p2, v0, :cond_10

    const-string p0, "Lie Ying_OTA"

    return-object p0

    :cond_e
    sget-object p0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;->BT:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    if-ne p1, p0, :cond_10

    if-nez p2, :cond_f

    const-string p0, "Lie YingS _"

    return-object p0

    :cond_f
    if-ne p2, v0, :cond_10

    const-string p0, "Lie YingS_OTA"

    return-object p0

    :cond_10
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isFirmwareFileDownloaded(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;I)Z
    .locals 5

    invoke-static {p0, p1}, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager;->getFirmwareSavePath(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/mcu.ufw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/bt.ufw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/mcu.checksum"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/bt.checksum"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zjx/jyandroid/base/util/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    :catch_0
    :cond_1
    :goto_0
    return p1
.end method
