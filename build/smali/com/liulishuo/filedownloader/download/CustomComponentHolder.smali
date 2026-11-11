.class public Lcom/liulishuo/filedownloader/download/CustomComponentHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/download/CustomComponentHolder$LazyLoader;
    }
.end annotation


# instance fields
.field private connectionCountAdapter:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;

.field private connectionCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;

.field private database:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

.field private foregroundServiceConfig:Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;

.field private idGenerator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;

.field private initialParams:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

.field private outputStreamCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getConnectionCountAdapter()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->connectionCountAdapter:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->connectionCountAdapter:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getDownloadMgrInitialParams()Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->createConnectionCountAdapter()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->connectionCountAdapter:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->connectionCountAdapter:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getConnectionCreator()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->connectionCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->connectionCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getDownloadMgrInitialParams()Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->createConnectionCreator()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->connectionCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->connectionCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getDownloadMgrInitialParams()Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->initialParams:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->initialParams:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

    if-nez v0, :cond_1

    new-instance v0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->initialParams:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->initialParams:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getImpl()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;
    .locals 1

    invoke-static {}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder$LazyLoader;->access$000()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    move-result-object v0

    return-object v0
.end method

.method private getOutputStreamCreator()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->outputStreamCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->outputStreamCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getDownloadMgrInitialParams()Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->createOutputStreamCreator()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->outputStreamCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->outputStreamCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static maintainDatabase(Lcom/liulishuo/filedownloader/database/FileDownloadDatabase$Maintainer;)V
    .locals 23

    move-object/from16 v1, p0

    const-string v2, "refreshed data count: %d , delete data count: %d, reset id count: %d. consume %d"

    const-class v3, Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getImpl()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getIdGeneratorInstance()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v15, :cond_b

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v8, 0x3

    move-object/from16 v18, v2

    const/4 v2, 0x1

    if-eq v7, v8, :cond_0

    :try_start_2
    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v7

    if-ne v7, v2, :cond_1

    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v7

    const-wide/16 v16, 0x0

    cmp-long v7, v7, v16

    if-lez v7, :cond_1

    :cond_0
    const/4 v7, -0x2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-wide/from16 v21, v5

    :goto_1
    move-object/from16 v2, v18

    goto/16 :goto_7

    :goto_2
    invoke-virtual {v15, v7}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setStatus(B)V

    :cond_1
    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTargetFilePath()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v19, 0x1

    if-nez v7, :cond_2

    move-wide/from16 v21, v5

    const-wide/16 v16, 0x0

    goto/16 :goto_4

    :cond_2
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v7

    const/4 v2, -0x2

    if-ne v7, v2, :cond_3

    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v2

    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getPath()Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide/from16 v21, v5

    const/4 v5, 0x0

    :try_start_3
    invoke-static {v2, v15, v7, v5}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->isBreakpointAvailable(ILcom/liulishuo/filedownloader/model/FileDownloadModel;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/io/File;

    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getTempFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v8, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    sget-boolean v6, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v6, :cond_4

    const-string v6, "resume from the old no-temp-file architecture [%B], [%s]->[%s]"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v5, v7, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v6, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_3
    move-wide/from16 v21, v5

    :cond_4
    :goto_3
    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getStatus()B

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_5

    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getSoFar()J

    move-result-wide v5

    const-wide/16 v16, 0x0

    cmp-long v2, v5, v16

    if-gtz v2, :cond_6

    goto :goto_4

    :cond_5
    const-wide/16 v16, 0x0

    :cond_6
    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v2

    invoke-static {v2, v15}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->isBreakpointAvailable(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-interface {v1, v15}, Lcom/liulishuo/filedownloader/database/FileDownloadDatabase$Maintainer;->onRemovedInvalidData(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    add-long v11, v11, v19

    goto :goto_5

    :cond_8
    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v2

    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->isPathAsDirectory()Z

    move-result v7

    invoke-interface {v4, v2, v5, v6, v7}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;->transOldId(ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v5

    if-eq v5, v2, :cond_a

    sget-boolean v6, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v6, :cond_9

    const-string v6, "the id is changed on restoring from db: old[%d] -> new[%d]"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    invoke-virtual {v15, v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->setId(I)V

    invoke-interface {v1, v2, v15}, Lcom/liulishuo/filedownloader/database/FileDownloadDatabase$Maintainer;->changeFileDownloadModelId(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    add-long v13, v13, v19

    :cond_a
    invoke-interface {v1, v15}, Lcom/liulishuo/filedownloader/database/FileDownloadDatabase$Maintainer;->onRefreshedValidData(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-long v9, v9, v19

    :goto_5
    move-object/from16 v2, v18

    move-wide/from16 v5, v21

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v18, v2

    :goto_6
    move-wide/from16 v21, v5

    goto :goto_7

    :cond_b
    move-object/from16 v18, v2

    move-wide/from16 v21, v5

    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->markConverted(Landroid/content/Context;)V

    invoke-interface/range {p0 .. p0}, Lcom/liulishuo/filedownloader/database/FileDownloadDatabase$Maintainer;->onFinishMaintain()V

    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_c

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v21

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v0, v1, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v2, v18

    invoke-static {v3, v2, v0}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    return-void

    :catchall_3
    move-exception v0

    goto :goto_6

    :goto_7
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->markConverted(Landroid/content/Context;)V

    invoke-interface/range {p0 .. p0}, Lcom/liulishuo/filedownloader/database/FileDownloadDatabase$Maintainer;->onFinishMaintain()V

    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v1, :cond_d

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v21

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v1, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    throw v0
.end method


# virtual methods
.method public createConnection(Ljava/lang/String;)Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getConnectionCreator()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;->create(Ljava/lang/String;)Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

    move-result-object p1

    return-object p1
.end method

.method public createOutputStream(Ljava/io/File;)Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getOutputStreamCreator()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;->create(Ljava/io/File;)Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public determineConnectionCount(ILjava/lang/String;Ljava/lang/String;J)I
    .locals 6

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getConnectionCountAdapter()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;->determineConnectionCount(ILjava/lang/String;Ljava/lang/String;J)I

    move-result p1

    return p1
.end method

.method public getDatabaseInstance()Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->database:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->database:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getDownloadMgrInitialParams()Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->createDatabase()Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->database:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;->maintainer()Lcom/liulishuo/filedownloader/database/FileDownloadDatabase$Maintainer;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->maintainDatabase(Lcom/liulishuo/filedownloader/database/FileDownloadDatabase$Maintainer;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->database:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getForegroundConfigInstance()Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->foregroundServiceConfig:Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->foregroundServiceConfig:Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getDownloadMgrInitialParams()Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->createForegroundServiceConfig()Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->foregroundServiceConfig:Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->foregroundServiceConfig:Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getIdGeneratorInstance()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->idGenerator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->idGenerator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getDownloadMgrInitialParams()Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->createIdGenerator()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->idGenerator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->idGenerator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getMaxNetworkThreadCount()I
    .locals 1

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getDownloadMgrInitialParams()Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;->getMaxNetworkThreadCount()I

    move-result v0

    return v0
.end method

.method public isSupportSeek()Z
    .locals 1

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getOutputStreamCreator()Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;->supportSeek()Z

    move-result v0

    return v0
.end method

.method public setInitCustomMaker(Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

    invoke-direct {v0, p1}, Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;-><init>(Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams$InitCustomMaker;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->initialParams:Lcom/liulishuo/filedownloader/services/DownloadMgrInitialParams;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->connectionCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCreator;

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->outputStreamCreator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->database:Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->idGenerator:Lcom/liulishuo/filedownloader/util/FileDownloadHelper$IdGenerator;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
