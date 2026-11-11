.class public abstract Lcom/liulishuo/filedownloader/FileDownloadListener;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "not handle priority any more"

    invoke-static {p0, v0, p1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blockComplete(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method public abstract completed(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
.end method

.method public connected(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/String;ZII)V
    .locals 0

    return-void
.end method

.method public abstract error(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/Throwable;)V
.end method

.method public isInvalid()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract paused(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V
.end method

.method public abstract pending(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V
.end method

.method public abstract progress(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V
.end method

.method public retry(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/Throwable;II)V
    .locals 0

    return-void
.end method

.method public started(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 0

    return-void
.end method

.method public abstract warn(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
.end method
