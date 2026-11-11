.class public Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/liulishuo/filedownloader/IDownloadSpeed$Monitor;
.implements Lcom/liulishuo/filedownloader/IDownloadSpeed$Lookup;


# instance fields
.field private mLastRefreshSofarBytes:J

.field private mLastRefreshTime:J

.field private mMinIntervalUpdateSpeed:I

.field private mSpeed:I

.field private mStartSofarBytes:J

.field private mStartTime:J

.field private mTotalBytes:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mMinIntervalUpdateSpeed:I

    return-void
.end method


# virtual methods
.method public end(J)V
    .locals 6

    iget-wide v0, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mStartSofarBytes:J

    sub-long/2addr p1, v0

    iput-wide v2, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mLastRefreshTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mStartTime:J

    sub-long/2addr v0, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    long-to-int p1, p1

    iput p1, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mSpeed:I

    goto :goto_0

    :cond_1
    div-long/2addr p1, v0

    long-to-int p1, p1

    iput p1, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mSpeed:I

    :goto_0
    return-void
.end method

.method public getSpeed()I
    .locals 1

    iget v0, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mSpeed:I

    return v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mSpeed:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mLastRefreshTime:J

    return-void
.end method

.method public setMinIntervalUpdateSpeed(I)V
    .locals 0

    iput p1, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mMinIntervalUpdateSpeed:I

    return-void
.end method

.method public start(J)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mStartTime:J

    iput-wide p1, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mStartSofarBytes:J

    return-void
.end method

.method public update(J)V
    .locals 6

    iget v0, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mMinIntervalUpdateSpeed:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mLastRefreshTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mLastRefreshTime:J

    sub-long/2addr v0, v4

    iget v4, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mMinIntervalUpdateSpeed:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    iget v4, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mSpeed:I

    if-nez v4, :cond_3

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    :cond_2
    iget-wide v2, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mLastRefreshSofarBytes:J

    sub-long v2, p1, v2

    div-long/2addr v2, v0

    long-to-int v0, v2

    iput v0, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mSpeed:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mSpeed:I

    :goto_0
    iput-wide p1, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mLastRefreshSofarBytes:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/liulishuo/filedownloader/DownloadSpeedMonitor;->mLastRefreshTime:J

    :cond_3
    return-void
.end method
