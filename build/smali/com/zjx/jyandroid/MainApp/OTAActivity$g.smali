.class public Lcom/zjx/jyandroid/MainApp/OTAActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/MainApp/OTAActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/MainApp/OTAActivity;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/OTAActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity;->f:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity;->d:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    sget-object v1, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;->MCU:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->setBluetoothOnState(Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;Z)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity;->d:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    sget-object v1, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;->BT:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;

    invoke-virtual {p1, v1, v2}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->setBluetoothOnState(Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$ChipType;Z)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity;->e:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;

    iget-object v1, p1, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    iget p1, p1, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->updateVersionCode:I

    invoke-static {v1, p1}, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager;->isFirmwareFileDownloaded(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;I)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    const-string v0, "\u9700\u8981\u4e0b\u8f7d\u56fa\u4ef6"

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->c(Lcom/zjx/jyandroid/MainApp/OTAActivity;Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    iget-object v0, v0, Lcom/zjx/jyandroid/MainApp/OTAActivity;->e:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;

    iget-object v1, v0, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    iget v0, v0, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->updateVersionCode:I

    invoke-static {v1, v0}, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager;->getFirmwareSavePath(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->j(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    const-string v0, "\u65e0\u6cd5\u5220\u9664\u5df2\u5b58\u5728\u7684\u56fa\u4ef6\u6587\u4ef6\u5939"

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->c(Lcom/zjx/jyandroid/MainApp/OTAActivity;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    const-string v0, "\u65e0\u6cd5\u521b\u5efa\u56fa\u4ef6\u6587\u4ef6\u5939"

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->c(Lcom/zjx/jyandroid/MainApp/OTAActivity;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/mcu.checksum"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    iget-object v1, v1, Lcom/zjx/jyandroid/MainApp/OTAActivity;->e:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;

    iget-object v1, v1, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->mcuFileChecksum:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/util/b;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    const-string v0, "\u65e0\u6cd5\u5199\u5165mcu checksum"

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->c(Lcom/zjx/jyandroid/MainApp/OTAActivity;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/bt.checksum"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    iget-object v1, v1, Lcom/zjx/jyandroid/MainApp/OTAActivity;->e:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;

    iget-object v1, v1, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->btFileChecksum:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/util/b;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    const-string v0, "\u65e0\u6cd5\u5199\u5165bt checksum"

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->c(Lcom/zjx/jyandroid/MainApp/OTAActivity;Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance v0, Lcom/zjx/jyandroid/base/Components/Alert;

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    invoke-static {v1}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->d(Lcom/zjx/jyandroid/MainApp/OTAActivity;)Lcom/zjx/jyandroid/databinding/ActivityOtaBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zjx/jyandroid/databinding/ActivityOtaBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6b63\u5728\u4e0b\u8f7d\u56fa\u4ef6\uff0c\u4e0b\u8f7d\u5b8c\u6210\u540e\u4f1a\u81ea\u52a8\u5f00\u59cb\u5347\u7ea7\u3002\u8fdb\u5ea6\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "0%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "\u4e0b\u8f7d\u56fa\u4ef6"

    invoke-direct {v0, v1, v5, v3}, Lcom/zjx/jyandroid/base/Components/Alert;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/liulishuo/filedownloader/FileDownloader;->setup(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v3

    iget-object v5, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    iget-object v5, v5, Lcom/zjx/jyandroid/MainApp/OTAActivity;->e:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;

    iget-object v5, v5, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->mcuFilePathUrl:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/liulishuo/filedownloader/FileDownloader;->create(Ljava/lang/String;)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/mcu.ufw"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->setPath(Ljava/lang/String;)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v3

    new-instance v5, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;

    invoke-direct {v5, p0, v0, v4, p1}, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;-><init>(Lcom/zjx/jyandroid/MainApp/OTAActivity$g;Lcom/zjx/jyandroid/base/Components/Alert;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v3, v5}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->setListener(Lcom/liulishuo/filedownloader/FileDownloadListener;)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object p1

    iput-object p1, v1, Lcom/zjx/jyandroid/MainApp/OTAActivity;->k:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity;->k:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->start()I

    new-instance p1, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v1, Lcom/zjx/jyandroid/R$string;->cancel:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v4, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$b;

    invoke-direct {v4, p0}, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$b;-><init>(Lcom/zjx/jyandroid/MainApp/OTAActivity$g;)V

    invoke-direct {p1, v1, v3, v4}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    invoke-virtual {v0, v2}, Lcom/zjx/jyandroid/base/Components/Alert;->show(Z)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    const-string v1, "\u5347\u7ea7\u5f00\u59cb"

    invoke-static {p1, v1}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->c(Lcom/zjx/jyandroid/MainApp/OTAActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->e(Lcom/zjx/jyandroid/MainApp/OTAActivity;I)V

    return-void
.end method
