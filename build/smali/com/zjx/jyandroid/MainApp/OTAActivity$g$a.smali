.class public Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;
.super Lcom/liulishuo/filedownloader/FileDownloadListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/base/Components/Alert;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:Lcom/zjx/jyandroid/MainApp/OTAActivity$g;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/OTAActivity$g;Lcom/zjx/jyandroid/base/Components/Alert;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->d:Lcom/zjx/jyandroid/MainApp/OTAActivity$g;

    iput-object p2, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->a:Lcom/zjx/jyandroid/base/Components/Alert;

    iput-object p3, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->c:Ljava/io/File;

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/FileDownloadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public blockComplete(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 0

    return-void
.end method

.method public completed(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 3

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->a:Lcom/zjx/jyandroid/base/Components/Alert;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "50%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/base/Components/Alert;->setContentText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->d:Lcom/zjx/jyandroid/MainApp/OTAActivity$g;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->d:Lcom/zjx/jyandroid/MainApp/OTAActivity$g;

    iget-object v1, v1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    iget-object v1, v1, Lcom/zjx/jyandroid/MainApp/OTAActivity;->e:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;

    iget-object v1, v1, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;->btFilePathUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/FileDownloader;->create(Ljava/lang/String;)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/bt.ufw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->setPath(Ljava/lang/String;)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a$a;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a$a;-><init>(Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;)V

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->setListener(Lcom/liulishuo/filedownloader/FileDownloadListener;)Lcom/liulishuo/filedownloader/BaseDownloadTask;

    move-result-object v0

    iput-object v0, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity;->k:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->d:Lcom/zjx/jyandroid/MainApp/OTAActivity$g;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity;->k:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->start()I

    return-void
.end method

.method public connected(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/String;ZII)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->d:Lcom/zjx/jyandroid/MainApp/OTAActivity$g;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    const-string p2, "\u5df2\u8fde\u63a5\u5230\u670d\u52a1\u5668"

    invoke-static {p1, p2}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->c(Lcom/zjx/jyandroid/MainApp/OTAActivity;Ljava/lang/String;)V

    return-void
.end method

.method public error(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->d:Lcom/zjx/jyandroid/MainApp/OTAActivity$g;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u56fa\u4ef6\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u53cd\u9988\u81f3\u5ba2\u670d\u6216\u8fc7\u51e0\u5206\u949f\u91cd\u542fapp\u540e\u91cd\u8bd5\u3002\u9519\u8bef\u4fe1\u606f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->c(Lcom/zjx/jyandroid/MainApp/OTAActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->a:Lcom/zjx/jyandroid/base/Components/Alert;

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

    iget-object p2, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->a:Lcom/zjx/jyandroid/base/Components/Alert;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->b:Ljava/lang/String;

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

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/OTAActivity$g$a;->d:Lcom/zjx/jyandroid/MainApp/OTAActivity$g;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/OTAActivity$g;->a:Lcom/zjx/jyandroid/MainApp/OTAActivity;

    const-string v0, "\u5f00\u59cb\u4e0b\u8f7dMCU\u56fa\u4ef6"

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/MainApp/OTAActivity;->c(Lcom/zjx/jyandroid/MainApp/OTAActivity;Ljava/lang/String;)V

    return-void
.end method

.method public warn(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 0

    return-void
.end method
