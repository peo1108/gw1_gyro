.class public abstract Lcom/liulishuo/filedownloader/FileDownloadLargeFileListener;
.super Lcom/liulishuo/filedownloader/FileDownloadListener;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/FileDownloadListener;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/FileDownloadListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public connected(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/String;ZII)V
    .locals 0

    .line 1
    return-void
.end method

.method public connected(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/String;ZJJ)V
    .locals 0

    .line 2
    return-void
.end method

.method public paused(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract paused(Lcom/liulishuo/filedownloader/BaseDownloadTask;JJ)V
.end method

.method public pending(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract pending(Lcom/liulishuo/filedownloader/BaseDownloadTask;JJ)V
.end method

.method public progress(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract progress(Lcom/liulishuo/filedownloader/BaseDownloadTask;JJ)V
.end method

.method public retry(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/Throwable;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public retry(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/Throwable;IJ)V
    .locals 0

    .line 2
    return-void
.end method
