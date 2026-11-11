.class Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LaunchTaskPool"
.end annotation


# instance fields
.field private mPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskPool;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskPool;->mWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x3

    const-string v2, "LauncherTask"

    invoke-static {v1, v0, v2}, Lcom/liulishuo/filedownloader/util/FileDownloadExecutors;->newDefaultThreadPool(ILjava/util/concurrent/LinkedBlockingQueue;Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskPool;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public asyncExecute(Lcom/liulishuo/filedownloader/ITaskHunter$IStarter;)V
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskPool;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskRunnable;

    invoke-direct {v1, p1}, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskRunnable;-><init>(Lcom/liulishuo/filedownloader/ITaskHunter$IStarter;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public expire(Lcom/liulishuo/filedownloader/FileDownloadListener;)V
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "want to expire by listener, but the listener provided is null"

    invoke-static {p0, v0, p1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskPool;->mWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 5
    move-object v3, v2

    check-cast v3, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskRunnable;

    .line 6
    invoke-virtual {v3, p1}, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskRunnable;->isSameListener(Lcom/liulishuo/filedownloader/FileDownloadListener;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskRunnable;->expire()V

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 10
    :cond_3
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v1, :cond_4

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "expire %d tasks with listener[%s]"

    invoke-static {p0, v1, p1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 13
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskPool;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_5
    return-void
.end method

.method public expire(Lcom/liulishuo/filedownloader/ITaskHunter$IStarter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskPool;->mWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public expireAll()V
    .locals 2

    sget-boolean v0, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskPool;->mWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "expire %d tasks"

    invoke-static {p0, v1, v0}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskPool;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/FileDownloadTaskLauncher$LaunchTaskPool;->init()V

    return-void
.end method
