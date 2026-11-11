.class public Lcom/liulishuo/filedownloader/download/DownloadRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/download/DownloadRunnable$Builder;
    }
.end annotation


# instance fields
.field private final callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

.field private final connectTask:Lcom/liulishuo/filedownloader/download/ConnectTask;

.field final connectionIndex:I

.field private final downloadId:I

.field private fetchDataTask:Lcom/liulishuo/filedownloader/download/FetchDataTask;

.field private final isWifiRequired:Z

.field private final path:Ljava/lang/String;

.field private volatile paused:Z


# direct methods
.method private constructor <init>(IILcom/liulishuo/filedownloader/download/ConnectTask;Lcom/liulishuo/filedownloader/download/ProcessCallback;ZLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->downloadId:I

    .line 4
    iput p2, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->connectionIndex:I

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->paused:Z

    .line 6
    iput-object p4, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    .line 7
    iput-object p6, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->path:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->connectTask:Lcom/liulishuo/filedownloader/download/ConnectTask;

    .line 9
    iput-boolean p5, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->isWifiRequired:Z

    return-void
.end method

.method public synthetic constructor <init>(IILcom/liulishuo/filedownloader/download/ConnectTask;Lcom/liulishuo/filedownloader/download/ProcessCallback;ZLjava/lang/String;Lcom/liulishuo/filedownloader/download/DownloadRunnable$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/liulishuo/filedownloader/download/DownloadRunnable;-><init>(IILcom/liulishuo/filedownloader/download/ConnectTask;Lcom/liulishuo/filedownloader/download/ProcessCallback;ZLjava/lang/String;)V

    return-void
.end method

.method private getDownloadedOffset()J
    .locals 4

    invoke-static {}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getImpl()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getDatabaseInstance()Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    move-result-object v0

    iget v1, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->connectionIndex:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->downloadId:I

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;->findConnectionModel(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/filedownloader/model/ConnectionModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->getIndex()I

    move-result v2

    iget v3, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->connectionIndex:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->getCurrentOffset()J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget v1, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->downloadId:I

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;->find(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public discard()V
    .locals 0

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->pause()V

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->paused:Z

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->fetchDataTask:Lcom/liulishuo/filedownloader/download/FetchDataTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/FetchDataTask;->pause()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 10

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->connectTask:Lcom/liulishuo/filedownloader/download/ConnectTask;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/ConnectTask;->getProfile()Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    move-result-object v0

    iget-wide v0, v0, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->currentOffset:J

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->paused:Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->ending()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->connectTask:Lcom/liulishuo/filedownloader/download/ConnectTask;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/download/ConnectTask;->connect()Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->getResponseCode()I

    move-result v2

    sget-boolean v3, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v3, :cond_2

    const-string v3, "the connection[%d] for %d, is connected %s with code[%d]"

    iget v4, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->connectionIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->downloadId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->connectTask:Lcom/liulishuo/filedownloader/download/ConnectTask;

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/download/ConnectTask;->getProfile()Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto/16 :goto_8

    :catch_0
    move-exception v2

    :goto_1
    move v3, v1

    goto/16 :goto_6

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_1

    :cond_2
    :goto_2
    const/16 v3, 0xce

    if-eq v2, v3, :cond_4

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_3

    goto :goto_3

    :cond_3
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "Connection failed with request[%s] response[%s] http-state[%d] on task[%d-%d], which is changed after verify connection, so please try again."

    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->connectTask:Lcom/liulishuo/filedownloader/download/ConnectTask;

    invoke-virtual {v5}, Lcom/liulishuo/filedownloader/download/ConnectTask;->getRequestHeader()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->getResponseHeaderFields()Ljava/util/Map;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v7, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->downloadId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->connectionIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v5, v6, v2, v7, v8}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_3
    const/4 v2, 0x1

    :try_start_2
    new-instance v3, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;

    invoke-direct {v3}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;-><init>()V

    iget-boolean v4, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->paused:Z
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_5

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->ending()V

    return-void

    :cond_5
    :try_start_3
    iget v4, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->downloadId:I

    invoke-virtual {v3, v4}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->setDownloadId(I)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;

    move-result-object v3

    iget v4, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->connectionIndex:I

    invoke-virtual {v3, v4}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->setConnectionIndex(I)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    invoke-virtual {v3, v4}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->setCallback(Lcom/liulishuo/filedownloader/download/ProcessCallback;)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->setHost(Lcom/liulishuo/filedownloader/download/DownloadRunnable;)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->isWifiRequired:Z

    invoke-virtual {v3, v4}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->setWifiRequired(Z)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->setConnection(Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->connectTask:Lcom/liulishuo/filedownloader/download/ConnectTask;

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/download/ConnectTask;->getProfile()Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->setConnectionProfile(Lcom/liulishuo/filedownloader/download/ConnectionProfile;)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->setPath(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/download/FetchDataTask$Builder;->build()Lcom/liulishuo/filedownloader/download/FetchDataTask;

    move-result-object v3

    iput-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->fetchDataTask:Lcom/liulishuo/filedownloader/download/FetchDataTask;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/download/FetchDataTask;->run()V

    iget-boolean v3, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->paused:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->fetchDataTask:Lcom/liulishuo/filedownloader/download/FetchDataTask;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/download/FetchDataTask;->pause()V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catch_4
    move-exception v3

    :goto_4
    move-object v9, v3

    move v3, v2

    move-object v2, v9

    goto :goto_6

    :catch_5
    move-exception v3

    goto :goto_4

    :catch_6
    move-exception v3

    goto :goto_4

    :catch_7
    move-exception v3

    goto :goto_4

    :cond_6
    :goto_5
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->ending()V

    goto :goto_7

    :goto_6
    :try_start_4
    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    invoke-interface {v4, v2}, Lcom/liulishuo/filedownloader/download/ProcessCallback;->isRetry(Ljava/lang/Exception;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v3, :cond_7

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->fetchDataTask:Lcom/liulishuo/filedownloader/download/FetchDataTask;

    if-nez v4, :cond_7

    const-string v1, "it is valid to retry and connection is valid but create fetch-data-task failed, so give up directly with %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v1, v3}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    invoke-interface {v1, v2}, Lcom/liulishuo/filedownloader/download/ProcessCallback;->onError(Ljava/lang/Exception;)V

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_7
    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->fetchDataTask:Lcom/liulishuo/filedownloader/download/FetchDataTask;

    if-eqz v4, :cond_8

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->getDownloadedOffset()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_8

    iget-object v6, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->connectTask:Lcom/liulishuo/filedownloader/download/ConnectTask;

    invoke-virtual {v6, v4, v5}, Lcom/liulishuo/filedownloader/download/ConnectTask;->updateConnectionProfile(J)V

    :cond_8
    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    invoke-interface {v4, v2}, Lcom/liulishuo/filedownloader/download/ProcessCallback;->onRetry(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->ending()V

    :cond_9
    move v2, v3

    goto/16 :goto_0

    :cond_a
    :try_start_5
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadRunnable;->callback:Lcom/liulishuo/filedownloader/download/ProcessCallback;

    invoke-interface {v1, v2}, Lcom/liulishuo/filedownloader/download/ProcessCallback;->onError(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    :goto_7
    return-void

    :goto_8
    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->ending()V

    :cond_c
    throw v1
.end method
