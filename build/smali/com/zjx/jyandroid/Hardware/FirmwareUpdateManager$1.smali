.class Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager;->checkUpdateFromServer(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$GetUpdateInfoCompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

.field final synthetic val$taskCompleteHandler:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$GetUpdateInfoCompleteHandler;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$GetUpdateInfoCompleteHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$1;->val$deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    iput-object p2, p0, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$1;->val$taskCompleteHandler:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$GetUpdateInfoCompleteHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 8

    .line 2
    const-string v0, ";"

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->r(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;

    invoke-direct {v2}, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;-><init>()V

    .line 4
    const-string v3, "has_update"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 5
    iput-boolean v3, v2, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->hasUpdate:Z

    if-eqz v3, :cond_0

    .line 6
    const-string v3, "new_version_code"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 7
    const-string v4, "update_content"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    const-string v5, "file_url"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9
    const-string v6, "checksum"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 10
    const-string v7, "force_update"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 11
    iput v3, v2, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->updateVersionCode:I

    .line 12
    iget-object v3, p0, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$1;->val$deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    iput-object v3, v2, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    .line 13
    iput-object v4, v2, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->updateContent:Ljava/lang/String;

    .line 14
    iput-boolean p1, v2, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->forceUpdate:Z

    .line 15
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aget-object p1, p1, v3

    iput-object p1, v2, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->mcuFilePathUrl:Ljava/lang/String;

    .line 16
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    aget-object p1, p1, v4

    iput-object p1, v2, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->btFilePathUrl:Ljava/lang/String;

    .line 17
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v3

    iput-object p1, v2, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->mcuFileChecksum:Ljava/lang/String;

    .line 18
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v4

    iput-object p1, v2, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->btFileChecksum:Ljava/lang/String;

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$1;->val$taskCompleteHandler:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$GetUpdateInfoCompleteHandler;

    if-eqz p1, :cond_1

    .line 20
    invoke-interface {p1, v1, v2}, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$GetUpdateInfoCompleteHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    .line 21
    :catch_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$1;->val$taskCompleteHandler:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$GetUpdateInfoCompleteHandler;

    if-eqz p1, :cond_2

    .line 22
    new-instance v0, Lcom/zjx/jyandroid/base/MError;

    new-instance v2, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-string v3, "reason"

    const-string v4, "\u8fd4\u56de\u6570\u636e\u6709\u8bef"

    invoke-direct {v2, v3, v4}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "HttpError"

    const/4 v4, -0x1

    invoke-direct {v0, v3, v4, v2}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {p1, v0, v1}, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$GetUpdateInfoCompleteHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;)V

    :cond_2
    return-void
.end method
