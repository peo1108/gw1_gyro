.class public Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a$a;
.super Lcom/liulishuo/filedownloader/FileDownloadListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->completed(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a$a;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/FileDownloadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public blockComplete(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 0

    return-void
.end method

.method public completed(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a$a;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->a:Lcom/zjx/jyandroid/base/Components/Alert;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a$a;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;

    iget-object v1, v1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "100%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/base/Components/Alert;->setContentText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a$a;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->a:Lcom/zjx/jyandroid/base/Components/Alert;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/Components/Alert;->destroy()V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a$a;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->d:Lcom/zjx/jyandroid/MainApp/OTAActivity$g;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    const-string v0, "\u4e0b\u8f7d\u5b8c\u6210\uff01\u5f00\u59cb\u6821\u9a8c\u6587\u4ef6"

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->c(Lcom/zjx/jyandroid/MainApp/OTAActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a$a;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->d:Lcom/zjx/jyandroid/MainApp/OTAActivity$g;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity;->e:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;

    iget-object v0, p1, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    iget p1, p1, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->updateVersionCode:I

    invoke-static {v0, p1}, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager;->isFirmwareFileDownloaded(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a$a;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->d:Lcom/zjx/jyandroid/MainApp/OTAActivity$g;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    const-string v0, "\u56fa\u4ef6\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u53cd\u9988\u81f3\u5ba2\u670d\u6216\u8fc7\u51e0\u5206\u949f\u91cd\u542fapp\u540e\u91cd\u8bd5\u3002\u53ef\u80fd\u7531\u4e8e\u5b8c\u6574\u6027\u6821\u9a8c\u5931\u8d25\u6216\u6587\u4ef6\u88ab\u5220\u9664"

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->c(Lcom/zjx/jyandroid/MainApp/OTAActivity;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a$a;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->d:Lcom/zjx/jyandroid/MainApp/OTAActivity$g;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    const-string v0, "\u5347\u7ea7\u5f00\u59cb"

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->c(Lcom/zjx/jyandroid/MainApp/OTAActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a$a;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->d:Lcom/zjx/jyandroid/MainApp/OTAActivity$g;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->e(Lcom/zjx/jyandroid/MainApp/OTAActivity;I)V

    return-void
.end method

.method public connected(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/String;ZII)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a$a;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->d:Lcom/zjx/jyandroid/MainApp/OTAActivity$g;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    const-string p2, "\u5df2\u8fde\u63a5\u5230\u670d\u52a1\u5668"

    invoke-static {p1, p2}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->c(Lcom/zjx/jyandroid/MainApp/OTAActivity;Ljava/lang/String;)V

    return-void
.end method

.method public error(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a$a;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->d:Lcom/zjx/jyandroid/MainApp/OTAActivity$g;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u56fa\u4ef6\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u53cd\u9988\u81f3\u5ba2\u670d\u6216\u8fc7\u51e0\u5206\u949f\u91cd\u542fapp\u540e\u91cd\u8bd5\u3002\u9519\u8bef\u4fe1\u606f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->c(Lcom/zjx/jyandroid/MainApp/OTAActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a$a;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->a:Lcom/zjx/jyandroid/base/Components/Alert;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/Components/Alert;->destroy()V

    return-void
.end method

.method public paused(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V
    .locals 0

    return-void
.end method

.method public pending(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V
    .locals 0

    return-void
.end method

.method public progress(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V
    .locals 1

    int-to-float p1, p2

    int-to-float p2, p3

    div-float/2addr p1, p2

    const/high16 p2, 0x42480000    # 50.0f

    mul-float/2addr p1, p2

    add-float/2addr p1, p2

    iget-object p2, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a$a;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;

    iget-object p2, p2, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->a:Lcom/zjx/jyandroid/base/Components/Alert;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a$a;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;

    iget-object v0, v0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->b:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/zjx/jyandroid/base/Components/Alert;->setContentText(Ljava/lang/String;)V

    return-void
.end method

.method public retry(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/Throwable;II)V
    .locals 0

    return-void
.end method

.method public started(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a$a;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->d:Lcom/zjx/jyandroid/MainApp/OTAActivity$g;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    const-string v0, "\u5f00\u59cb\u4e0b\u8f7dBT\u56fa\u4ef6"

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->c(Lcom/zjx/jyandroid/MainApp/OTAActivity;Ljava/lang/String;)V

    return-void
.end method

.method public warn(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 0

    return-void
.end method
