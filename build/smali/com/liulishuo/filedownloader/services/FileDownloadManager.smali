.class Lcom/liulishuo/filedownloader/services/FileDownloadManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/liulishuo/filedownloader/IThreadPoolMonitor;


# instance fields
.field private final mDatabase:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

.field private final mThreadPool:Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getImpl()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getDatabaseInstance()Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    new-instance v1, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getMaxNetworkThreadCount()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;-><init>(I)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mThreadPool:Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;

    return-void
.end method


# virtual methods
.method public clearAllTaskData()V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;->clear()V

    return-void
.end method

.method public clearTaskData(I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "The task[%d] id is invalid, can\'t clear it."

    invoke-static {p0, v1, p1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->isDownloading(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "The task[%d] is downloading, can\'t clear it."

    invoke-static {p0, v1, p1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;->remove(I)Z

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;->removeConnections(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public findRunningTaskIdBySameTempPath(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mThreadPool:Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->findRunningTaskIdBySameTempPath(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getSoFar(I)J
    .locals 5

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;->find(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getConnectionCount()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;->findConnectionModel(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->getTotalOffset(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0

    :cond_3
    :goto_0
    return-wide v1
.end method

.method public getStatus(I)B
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;->find(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result p1

    return p1
.end method

.method public getTotal(I)J
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;->find(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTotal()J

    move-result-wide v0

    return-wide v0
.end method

.method public isDownloading(I)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;->find(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->isDownloading(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)Z

    move-result p1

    return p1
.end method

.method public isDownloading(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mThreadPool:Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->isInThreadPool(I)Z

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v2

    invoke-static {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadStatus;->isOver(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_3

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 6
    const-string v1, "%d status is[%s](not finish) & but not in the pool"

    invoke-static {p0, v1, p1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return v0
.end method

.method public isDownloading(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->generateId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->isDownloading(I)Z

    move-result p1

    return p1
.end method

.method public isIdle()Z
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mThreadPool:Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->exactSize()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pause(I)Z
    .locals 2

    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "request pause the task %d"

    invoke-static {p0, v1, v0}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;->find(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setStatus(B)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mThreadPool:Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->cancel(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public pauseAll()V
    .locals 3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mThreadPool:Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->getAllExactRunningDownloadIds()Ljava/util/List;

    move-result-object v0

    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "pause all tasks %d"

    invoke-static {p0, v2, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->pause(I)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized setMaxNetworkThreadCount(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mThreadPool:Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->setMaxNetworkThreadCount(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized start(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "request start the task with url(%s) path(%s) isDirectory(%B)"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v8, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_0
    :goto_0
    invoke-static {}, Lcom/liulishuo/filedownloader/PauseAllMarker;->clearMarker()V

    invoke-static/range {p1 .. p3}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->generateId(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v10

    iget-object v1, v7, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    invoke-interface {v1, v10}, Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;->find(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v11, 0x1

    if-nez v9, :cond_3

    if-nez v1, :cond_3

    invoke-static/range {p2 .. p2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->generateId(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    iget-object v3, v7, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    invoke-interface {v3, v1}, Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;->find(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTargetFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v4, :cond_1

    const-string v4, "task[%d] find model by dirCaseId[%d]"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v4, v7, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    invoke-interface {v4, v1}, Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;->findConnectionModel(I)Ljava/util/List;

    move-result-object v1

    move-object v13, v1

    :goto_1
    move-object v12, v3

    goto :goto_2

    :cond_2
    move-object v13, v2

    goto :goto_1

    :cond_3
    move-object v12, v1

    move-object v13, v2

    :goto_2
    invoke-static {v10, v12, v7, v11}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->inspectAndInflowDownloading(ILcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/IThreadPoolMonitor;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_4

    const-string v0, "has already started download %d"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    if-eqz v12, :cond_6

    :try_start_1
    invoke-virtual {v12}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTargetFilePath()Ljava/lang/String;

    move-result-object v1

    :goto_3
    move/from16 v15, p7

    move-object v14, v1

    goto :goto_4

    :cond_6
    invoke-static {v8, v9, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->getTargetFilePath(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :goto_4
    invoke-static {v10, v14, v15, v11}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->inspectAndInflowDownloaded(ILjava/lang/String;ZZ)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_7

    const-string v0, "has already completed downloading %d"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :cond_8
    const-wide/16 v5, 0x0

    if-eqz v12, :cond_9

    :try_start_2
    invoke-virtual {v12}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v1

    move-wide v2, v1

    goto :goto_5

    :cond_9
    move-wide v2, v5

    :goto_5
    if-eqz v12, :cond_a

    invoke-virtual {v12}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTempFilePath()Ljava/lang/String;

    move-result-object v1

    :goto_6
    move-object v4, v1

    goto :goto_7

    :cond_a
    invoke-static {v14}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->getTempPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :goto_7
    move v1, v10

    move-object v5, v14

    move-object/from16 v6, p0

    invoke-static/range {v1 .. v6}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->inspectAndInflowConflictPath(IJLjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/IThreadPoolMonitor;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_b

    const-string v0, "there is an another task with the same target-file-path %d %s"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, v14}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    if-eqz v12, :cond_c

    iget-object v0, v7, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    invoke-interface {v0, v10}, Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;->remove(I)Z

    iget-object v0, v7, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    invoke-interface {v0, v10}, Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;->removeConnections(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_c
    monitor-exit p0

    return-void

    :cond_d
    if-eqz v12, :cond_11

    :try_start_3
    invoke-virtual {v12}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_e

    invoke-virtual {v12}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    invoke-virtual {v12}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v1

    if-eq v1, v11, :cond_e

    invoke-virtual {v12}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_e

    invoke-virtual {v12}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    :cond_e
    invoke-virtual {v12}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v1

    if-eq v1, v10, :cond_f

    iget-object v0, v7, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    invoke-virtual {v12}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;->remove(I)Z

    iget-object v0, v7, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    invoke-virtual {v12}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;->removeConnections(I)V

    invoke-virtual {v12, v10}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setId(I)V

    invoke-virtual {v12, v8, v9}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setPath(Ljava/lang/String;Z)V

    if-eqz v13, :cond_13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/filedownloader/model/ConnectionModel;

    invoke-virtual {v1, v10}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->setId(I)V

    iget-object v2, v7, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    invoke-interface {v2, v1}, Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;->insertConnectionModel(Lcom/liulishuo/filedownloader/model/ConnectionModel;)V

    goto :goto_8

    :cond_f
    invoke-virtual {v12}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v12, v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setUrl(Ljava/lang/String;)V

    goto :goto_9

    :cond_10
    const/4 v11, 0x0

    goto :goto_9

    :cond_11
    if-nez v12, :cond_12

    new-instance v12, Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-direct {v12}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;-><init>()V

    :cond_12
    invoke-virtual {v12, v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v12, v8, v9}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setPath(Ljava/lang/String;Z)V

    invoke-virtual {v12, v10}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setId(I)V

    const-wide/16 v0, 0x0

    invoke-virtual {v12, v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setSoFar(J)V

    invoke-virtual {v12, v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setTotal(J)V

    invoke-virtual {v12, v11}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setStatus(B)V

    invoke-virtual {v12, v11}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setConnectionCount(I)V

    :cond_13
    :goto_9
    if-eqz v11, :cond_14

    iget-object v0, v7, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mDatabase:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    invoke-interface {v0, v12}, Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;->update(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    :cond_14
    new-instance v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;-><init>()V

    invoke-virtual {v0, v12}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->setModel(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;

    move-result-object v0

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->setHeader(Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->setThreadPoolMonitor(Lcom/liulishuo/filedownloader/IThreadPoolMonitor;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;

    move-result-object v0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->setMinIntervalMillis(Ljava/lang/Integer;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;

    move-result-object v0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->setCallbackProgressMaxCount(Ljava/lang/Integer;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;

    move-result-object v0

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->setForceReDownload(Ljava/lang/Boolean;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;

    move-result-object v0

    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->setWifiRequired(Ljava/lang/Boolean;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;

    move-result-object v0

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->setMaxRetryTimes(Ljava/lang/Integer;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$Builder;->build()Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;

    move-result-object v0

    iget-object v1, v7, Lcom/liulishuo/filedownloader/services/FileDownloadManager;->mThreadPool:Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;

    invoke-virtual {v1, v0}, Lcom/liulishuo/filedownloader/services/FileDownloadThreadPool;->execute(Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :goto_a
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
