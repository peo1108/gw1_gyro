.class public Lcom/liulishuo/filedownloader/download/FetchDataTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;
    }
.end annotation


# static fields
.field static final BUFFER_SIZE:I = 0x1000


# instance fields
.field private final callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

.field private final connection:Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

.field private final connectionIndex:I

.field private final contentLength:J

.field currentOffset:J

.field private final database:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

.field private final downloadId:I

.field private final endOffset:J

.field private final hostRunnable:Lcom/liulishuo/filedownloader/download/DownloadRunnable;

.field private final isWifiRequired:Z

.field private volatile lastSyncBytes:J

.field private volatile lastSyncTimestamp:J

.field private outputStream:Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;

.field private final path:Ljava/lang/String;

.field private volatile paused:Z

.field private final startOffset:J


# direct methods
.method private constructor <init>(Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;Lcom/liulishuo/filedownloader/download/ConnectionProfile;Lcom/liulishuo/filedownloader/download/DownloadRunnable;IIZLcom/liulishuo/filedownloader/download/ProcessCallback;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->lastSyncBytes:J

    .line 4
    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->lastSyncTimestamp:J

    .line 5
    iput-object p7, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    .line 6
    iput-object p8, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->path:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->connection:Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

    .line 8
    iput-boolean p6, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->isWifiRequired:Z

    .line 9
    iput-object p3, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->hostRunnable:Lcom/liulishuo/filedownloader/download/DownloadRunnable;

    .line 10
    iput p5, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->connectionIndex:I

    .line 11
    iput p4, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->downloadId:I

    .line 12
    invoke-static {}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getImpl()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getDatabaseInstance()Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->database:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    .line 13
    iget-wide p3, p2, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->startOffset:J

    iput-wide p3, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->startOffset:J

    .line 14
    iget-wide p3, p2, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->endOffset:J

    iput-wide p3, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->endOffset:J

    .line 15
    iget-wide p3, p2, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->currentOffset:J

    iput-wide p3, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J

    .line 16
    iget-wide p1, p2, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->contentLength:J

    iput-wide p1, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->contentLength:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;Lcom/liulishuo/filedownloader/download/ConnectionProfile;Lcom/liulishuo/filedownloader/download/DownloadRunnable;IIZLcom/liulishuo/filedownloader/download/ProcessCallback;Ljava/lang/String;Lcom/liulishuo/filedownloader/download/FetchDataTask$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/liulishuo/filedownloader/download/FetchDataTask;-><init>(Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;Lcom/liulishuo/filedownloader/download/ConnectionProfile;Lcom/liulishuo/filedownloader/download/DownloadRunnable;IIZLcom/liulishuo/filedownloader/download/ProcessCallback;Ljava/lang/String;)V

    return-void
.end method

.method private checkAndSync()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J

    iget-wide v4, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->lastSyncBytes:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->lastSyncTimestamp:J

    sub-long v4, v0, v4

    invoke-static {v2, v3, v4, v5}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->isNeedSync(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/FetchDataTask;->sync()V

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J

    iput-wide v2, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->lastSyncBytes:J

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->lastSyncTimestamp:J

    :cond_0
    return-void
.end method

.method private sync()V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->outputStream:Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;

    invoke-interface {v2}, Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;->flushAndSync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget v2, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->connectionIndex:I

    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->database:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    iget v4, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->downloadId:I

    iget-wide v5, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J

    invoke-interface {v3, v4, v2, v5, v6}, Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;->updateConnectionModel(IIJ)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    invoke-interface {v2}, Lcom/liulishuo/filedownloader/download/ProcessCallback;->syncProgressFromCache()V

    :goto_0
    sget-boolean v2, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->downloadId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->connectionIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v2, v3, v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "require flushAndSync id[%d] index[%d] offset[%d], consume[%d]"

    invoke-static {p0, v1, v0}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v1, :cond_1

    const-string v1, "Because of the system cannot guarantee that all the buffers have been synchronized with physical media, or write to filefailed, we just not flushAndSync process to database too %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->paused:Z

    return-void
.end method

.method public run()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->paused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->connectionIndex:I

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->connection:Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->findContentLength(ILcom/liulishuo/filedownloader/connection/FileDownloadConnection;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->connection:Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

    invoke-static {v0}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->findContentLengthFromContentRange(Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;)J

    move-result-wide v0

    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_16

    iget-wide v6, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->contentLength:J

    cmp-long v4, v6, v4

    if-lez v4, :cond_3

    cmp-long v4, v0, v6

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->endOffset:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "range[%d-)"

    invoke-static {v3, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->endOffset:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "range[%d-%d)"

    invoke-static {v3, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;

    iget-wide v4, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->contentLength:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->downloadId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v5, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->connectionIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v2, v4, v0, v1, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "require %s with contentLength(%d), but the backend response contentLength is %d on downloadId[%d]-connectionIndex[%d], please ask your backend dev to fix such problem."

    invoke-static {v1, v0}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    iget-wide v4, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getImpl()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->isSupportSeek()Z

    move-result v7

    iget-object v8, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->hostRunnable:Lcom/liulishuo/filedownloader/download/DownloadRunnable;

    if-eqz v8, :cond_5

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "can\'t using multi-download when the output stream can\'t support seek"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object v8, v6

    goto/16 :goto_10

    :cond_5
    :goto_1
    iget-object v8, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->path:Ljava/lang/String;

    invoke-static {v8}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->createOutputStream(Ljava/lang/String;)Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object v8, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->outputStream:Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;

    if-eqz v7, :cond_6

    iget-wide v9, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J

    invoke-interface {v8, v9, v10}, Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;->seek(J)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_10

    :cond_6
    :goto_2
    sget-boolean v7, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v7, :cond_7

    const-string v7, "start fetch(%d): range [%d, %d), seek to[%d]"

    iget v9, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->connectionIndex:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-wide v10, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->startOffset:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v11, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->endOffset:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-wide v12, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    filled-new-array {v9, v10, v11, v12}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {p0, v7, v9}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    iget-object v7, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->connection:Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

    invoke-interface {v7}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const/16 v7, 0x1000

    new-array v7, v7, [B

    iget-boolean v9, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->paused:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v9, :cond_b

    if-eqz v6, :cond_8

    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_3
    if-eqz v8, :cond_9

    :try_start_3
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/FetchDataTask;->sync()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-interface {v8}, Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    throw v0

    :cond_9
    :goto_5
    if-eqz v8, :cond_a

    :try_start_5
    invoke-interface {v8}, Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_6
    return-void

    :cond_b
    :goto_7
    :try_start_6
    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    move-result v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v10, -0x1

    if-ne v9, v10, :cond_10

    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_8

    :catch_3
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8
    if-eqz v8, :cond_c

    :try_start_8
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/FetchDataTask;->sync()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_a

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-interface {v8}, Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_9

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_9
    throw v0

    :cond_c
    :goto_a
    if-eqz v8, :cond_d

    :try_start_a
    invoke-interface {v8}, Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_b

    :catch_5
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    :goto_b
    iget-wide v6, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J

    sub-long/2addr v6, v4

    cmp-long v2, v0, v2

    if-eqz v2, :cond_f

    cmp-long v2, v0, v6

    if-nez v2, :cond_e

    goto :goto_c

    :cond_e
    new-instance v2, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->startOffset:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->endOffset:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-wide v0, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    filled-new-array/range {v8 .. v13}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "fetched length[%d] != content length[%d], range[%d, %d) offset[%d] fetch begin offset[%d]"

    invoke-static {v1, v0}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    :goto_c
    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->hostRunnable:Lcom/liulishuo/filedownloader/download/DownloadRunnable;

    iget-wide v5, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->startOffset:J

    iget-wide v7, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->endOffset:J

    invoke-interface/range {v3 .. v8}, Lcom/liulishuo/filedownloader/download/ProcessCallback;->onCompleted(Lcom/liulishuo/filedownloader/download/DownloadRunnable;JJ)V

    return-void

    :cond_10
    const/4 v10, 0x0

    :try_start_b
    invoke-interface {v8, v7, v10, v9}, Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;->write([BII)V

    iget-wide v10, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J

    int-to-long v12, v9

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->currentOffset:J

    iget-object v9, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    invoke-interface {v9, v12, v13}, Lcom/liulishuo/filedownloader/download/ProcessCallback;->onProgress(J)V

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/FetchDataTask;->checkAndSync()V

    iget-boolean v9, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->paused:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v9, :cond_11

    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_d

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_d
    :try_start_d
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/FetchDataTask;->sync()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    invoke-interface {v8}, Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_e

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_e
    return-void

    :catchall_4
    move-exception v0

    :try_start_f
    invoke-interface {v8}, Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_f

    :catch_8
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_f
    throw v0

    :cond_11
    :try_start_10
    iget-boolean v9, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->isWifiRequired:Z

    if-eqz v9, :cond_b

    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->isNetworkNotOnWifiType()Z

    move-result v9

    if-nez v9, :cond_12

    goto/16 :goto_7

    :cond_12
    new-instance v0, Lcom/liulishuo/filedownloader/exception/FileDownloadNetworkPolicyException;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/exception/FileDownloadNetworkPolicyException;-><init>()V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :goto_10
    if-eqz v6, :cond_13

    :try_start_11
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    goto :goto_11

    :catch_9
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    :goto_11
    if-eqz v8, :cond_14

    :try_start_12
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/FetchDataTask;->sync()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    goto :goto_13

    :catchall_5
    move-exception v0

    :try_start_13
    invoke-interface {v8}, Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a

    goto :goto_12

    :catch_a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_12
    throw v0

    :cond_14
    :goto_13
    if-eqz v8, :cond_15

    :try_start_14
    invoke-interface {v8}, Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    goto :goto_14

    :catch_b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_15
    :goto_14
    throw v0

    :cond_16
    new-instance v0, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;

    iget v1, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->downloadId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/liulishuo/filedownloader/download/FetchDataTask;->connectionIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "there isn\'t any content need to download on %d-%d with the content-length is 0"

    invoke-static {v2, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
