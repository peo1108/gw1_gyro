.class public Lcom/liulishuo/filedownloader/util/FileDownloadProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/util/FileDownloadProperties$HolderClass;
    }
.end annotation


# static fields
.field private static final FALSE_STRING:Ljava/lang/String; = "false"

.field private static final KEY_BROADCAST_COMPLETED:Ljava/lang/String; = "broadcast.completed"

.field private static final KEY_DOWNLOAD_MAX_NETWORK_THREAD_COUNT:Ljava/lang/String; = "download.max-network-thread-count"

.field private static final KEY_DOWNLOAD_MIN_PROGRESS_STEP:Ljava/lang/String; = "download.min-progress-step"

.field private static final KEY_DOWNLOAD_MIN_PROGRESS_TIME:Ljava/lang/String; = "download.min-progress-time"

.field private static final KEY_FILE_NON_PRE_ALLOCATION:Ljava/lang/String; = "file.non-pre-allocation"

.field private static final KEY_HTTP_LENIENT:Ljava/lang/String; = "http.lenient"

.field private static final KEY_PROCESS_NON_SEPARATE:Ljava/lang/String; = "process.non-separate"

.field private static final KEY_TRIAL_CONNECTION_HEAD_METHOD:Ljava/lang/String; = "download.trial-connection-head-method"

.field private static final TRUE_STRING:Ljava/lang/String; = "true"


# instance fields
.field public final broadcastCompleted:Z

.field public final downloadMaxNetworkThreadCount:I

.field public final downloadMinProgressStep:I

.field public final downloadMinProgressTime:J

.field public final fileNonPreAllocation:Z

.field public final httpLenient:Z

.field public final processNonSeparate:Z

.field public final trialConnectionHeadMethod:Z


# direct methods
.method private constructor <init>()V
    .locals 35

    move-object/from16 v1, p0

    .line 2
    const-class v2, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;

    const-string v3, "download.trial-connection-head-method"

    const-string v4, "broadcast.completed"

    const-string v5, "file.non-pre-allocation"

    const-string v6, "process.non-separate"

    const-string v7, "http.lenient"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 5
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 6
    :try_start_0
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadHelper;->getAppContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    const-string v13, "filedownloader.properties"

    .line 7
    invoke-virtual {v12, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v12, :cond_0

    .line 8
    :try_start_1
    invoke-virtual {v0, v12}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 9
    invoke-virtual {v0, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual {v0, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :try_start_3
    const-string v15, "download.min-progress-step"

    invoke-virtual {v0, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    :try_start_4
    const-string v11, "download.min-progress-time"

    invoke-virtual {v0, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 13
    :try_start_5
    const-string v10, "download.max-network-thread-count"

    .line 14
    invoke-virtual {v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 15
    :try_start_6
    invoke-virtual {v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 16
    :try_start_7
    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 17
    :try_start_8
    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v16, v14

    move-object v14, v0

    move-object/from16 v34, v13

    move-object v13, v10

    move-object v10, v11

    move-object/from16 v11, v34

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v11, v12

    goto/16 :goto_19

    :catch_0
    move-exception v0

    move-object/from16 v20, v10

    goto :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v20, v10

    :goto_0
    const/16 v19, 0x0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v20, v10

    const/16 v18, 0x0

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_1
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    goto :goto_8

    :catch_4
    move-exception v0

    const/4 v11, 0x0

    goto :goto_1

    :catch_5
    move-exception v0

    const/4 v11, 0x0

    :goto_2
    const/4 v15, 0x0

    goto :goto_1

    :catch_6
    move-exception v0

    const/4 v11, 0x0

    :goto_3
    const/4 v14, 0x0

    goto :goto_2

    :catch_7
    move-exception v0

    const/4 v11, 0x0

    :goto_4
    const/4 v13, 0x0

    goto :goto_3

    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_5
    if-eqz v12, :cond_1

    .line 18
    :try_start_9
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_6

    :catch_8
    move-exception v0

    move-object v12, v0

    .line 19
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_6
    move-object/from16 v0, v16

    move-object/from16 v12, v18

    move-object/from16 v16, v2

    move-object/from16 v2, v19

    :goto_7
    move-wide/from16 v18, v8

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v2, v0

    const/4 v11, 0x0

    goto/16 :goto_19

    :catch_9
    move-exception v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto :goto_4

    .line 20
    :goto_8
    :try_start_a
    instance-of v10, v0, Ljava/io/FileNotFoundException;

    if-eqz v10, :cond_3

    .line 21
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_2

    .line 22
    const-string v0, "not found filedownloader.properties"

    move-object/from16 v21, v11

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v2, v0, v11}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_2
    move-object/from16 v21, v11

    goto :goto_9

    :cond_3
    move-object/from16 v21, v11

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_9
    if-eqz v12, :cond_4

    .line 24
    :try_start_b
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_a

    :catch_a
    move-exception v0

    move-object v10, v0

    .line 25
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_a
    move-object/from16 v16, v2

    move-object v11, v13

    move-object v0, v14

    move-object/from16 v12, v18

    move-object/from16 v2, v19

    move-object/from16 v13, v20

    move-object/from16 v10, v21

    const/4 v14, 0x0

    goto :goto_7

    .line 26
    :goto_b
    const-string v8, "the value of \'%s\' must be \'%s\' or \'%s\'"

    const-string v9, "false"

    move-object/from16 v20, v3

    const-string v3, "true"

    if-eqz v11, :cond_7

    .line 27
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_6

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    goto :goto_c

    .line 28
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    filled-new-array {v7, v3, v9}, [Ljava/lang/Object;

    move-result-object v2

    .line 29
    invoke-static {v8, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_6
    :goto_c
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->httpLenient:Z

    goto :goto_d

    :cond_7
    const/4 v7, 0x0

    .line 31
    iput-boolean v7, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->httpLenient:Z

    :goto_d
    if-eqz v0, :cond_a

    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 33
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_e

    .line 34
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    filled-new-array {v6, v3, v9}, [Ljava/lang/Object;

    move-result-object v2

    .line 35
    invoke-static {v8, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_9
    :goto_e
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->processNonSeparate:Z

    const/4 v6, 0x0

    goto :goto_f

    :cond_a
    const/4 v6, 0x0

    .line 37
    iput-boolean v6, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->processNonSeparate:Z

    :goto_f
    if-eqz v15, :cond_b

    .line 38
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 39
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 40
    iput v0, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->downloadMinProgressStep:I

    goto :goto_10

    :cond_b
    const/high16 v0, 0x10000

    .line 41
    iput v0, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->downloadMinProgressStep:I

    :goto_10
    if-eqz v10, :cond_c

    .line 42
    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v10, 0x0

    .line 43
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 44
    iput-wide v6, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->downloadMinProgressTime:J

    goto :goto_11

    :cond_c
    const-wide/16 v6, 0x7d0

    .line 45
    iput-wide v6, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->downloadMinProgressTime:J

    :goto_11
    if-eqz v13, :cond_d

    .line 46
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 47
    invoke-static {v0}, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->getValidNetworkThreadCount(I)I

    move-result v0

    iput v0, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->downloadMaxNetworkThreadCount:I

    goto :goto_12

    :cond_d
    const/4 v0, 0x3

    .line 48
    iput v0, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->downloadMaxNetworkThreadCount:I

    :goto_12
    if-eqz v12, :cond_10

    .line 49
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 50
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_13

    .line 51
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    filled-new-array {v5, v3, v9}, [Ljava/lang/Object;

    move-result-object v2

    .line 52
    invoke-static {v8, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_f
    :goto_13
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->fileNonPreAllocation:Z

    goto :goto_14

    :cond_10
    const/4 v5, 0x0

    .line 54
    iput-boolean v5, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->fileNonPreAllocation:Z

    :goto_14
    if-eqz v2, :cond_13

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 56
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_15

    .line 57
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    filled-new-array {v4, v3, v9}, [Ljava/lang/Object;

    move-result-object v2

    .line 58
    invoke-static {v8, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_12
    :goto_15
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->broadcastCompleted:Z

    goto :goto_16

    :cond_13
    const/4 v2, 0x0

    .line 60
    iput-boolean v2, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->broadcastCompleted:Z

    :goto_16
    if-eqz v14, :cond_16

    .line 61
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 62
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_17

    .line 63
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    move-object/from16 v2, v20

    filled-new-array {v2, v3, v9}, [Ljava/lang/Object;

    move-result-object v2

    .line 64
    invoke-static {v8, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_15
    :goto_17
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->trialConnectionHeadMethod:Z

    goto :goto_18

    :cond_16
    const/4 v2, 0x0

    .line 66
    iput-boolean v2, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->trialConnectionHeadMethod:Z

    .line 67
    :goto_18
    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_17

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    iget-boolean v0, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->httpLenient:Z

    .line 69
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    iget-boolean v0, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->processNonSeparate:Z

    .line 70
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    iget v0, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->downloadMinProgressStep:I

    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    iget-wide v2, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->downloadMinProgressTime:J

    .line 72
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    iget v0, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->downloadMaxNetworkThreadCount:I

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    iget-boolean v0, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->fileNonPreAllocation:Z

    .line 74
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    iget-boolean v0, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->broadcastCompleted:Z

    .line 75
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    iget-boolean v0, v1, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;->trialConnectionHeadMethod:Z

    .line 76
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    const-string v18, "http.lenient"

    const-string v20, "process.non-separate"

    const-string v22, "download.min-progress-step"

    const-string v24, "download.min-progress-time"

    const-string v26, "download.max-network-thread-count"

    const-string v28, "file.non-pre-allocation"

    const-string v30, "broadcast.completed"

    const-string v32, "download.trial-connection-head-method"

    filled-new-array/range {v17 .. v33}, [Ljava/lang/Object;

    move-result-object v0

    .line 77
    const-string v2, "init properties %d\n load properties: %s=%B; %s=%B; %s=%d; %s=%d; %s=%d; %s=%B; %s=%B; %s=%B"

    move-object/from16 v3, v16

    invoke-static {v3, v2, v0}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_17
    return-void

    :goto_19
    if-eqz v11, :cond_18

    .line 78
    :try_start_c
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_1a

    :catch_b
    move-exception v0

    move-object v3, v0

    .line 79
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    :cond_18
    :goto_1a
    throw v2

    .line 81
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Please invoke the \'FileDownloader#setup\' before using FileDownloader. If you want to register some components on FileDownloader please invoke the \'FileDownloader#setupOnApplicationOnCreate\' on the \'Application#onCreate\' first."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Lcom/liulishuo/filedownloader/util/FileDownloadProperties$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;-><init>()V

    return-void
.end method

.method public static getImpl()Lcom/liulishuo/filedownloader/util/FileDownloadProperties;
    .locals 1

    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadProperties$HolderClass;->access$100()Lcom/liulishuo/filedownloader/util/FileDownloadProperties;

    move-result-object v0

    return-object v0
.end method

.method public static getValidNetworkThreadCount(I)I
    .locals 4

    const-class v0, Lcom/liulishuo/filedownloader/util/FileDownloadProperties;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-le p0, v1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0, v2, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "require the count of network thread  is %d, what is more than the max valid count(%d), so adjust to %d auto"

    invoke-static {v0, v2, p0}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    const/4 v1, 0x1

    if-ge p0, v1, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p0, v2, v3}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "require the count of network thread  is %d, what is less than the min valid count(%d), so adjust to %d auto"

    invoke-static {v0, v2, p0}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    return p0
.end method
