.class Lcom/zjx/jyandroid/ADB/ADBConnector$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ADB/ADBConnector;->startOpenTcpipPortProcess(ILcom/zjx/jyandroid/ADB/ADBConnector$StartOpenTcpipPortProcessResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/ADB/ADBConnector;

.field tryTime:I

.field final synthetic val$listener:Lcom/zjx/jyandroid/ADB/ADBConnector$StartOpenTcpipPortProcessResultListener;

.field final synthetic val$maxTryTime:I


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ADB/ADBConnector;ILcom/zjx/jyandroid/ADB/ADBConnector$StartOpenTcpipPortProcessResultListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ADBConnector$3;->this$0:Lcom/zjx/jyandroid/ADB/ADBConnector;

    iput p2, p0, Lcom/zjx/jyandroid/ADB/ADBConnector$3;->val$maxTryTime:I

    iput-object p3, p0, Lcom/zjx/jyandroid/ADB/ADBConnector$3;->val$listener:Lcom/zjx/jyandroid/ADB/ADBConnector$StartOpenTcpipPortProcessResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/zjx/jyandroid/ADB/ADBConnector$3;->tryTime:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector$3;->tryTime:I

    iget v1, p0, Lcom/zjx/jyandroid/ADB/ADBConnector$3;->val$maxTryTime:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector$3;->val$listener:Lcom/zjx/jyandroid/ADB/ADBConnector$StartOpenTcpipPortProcessResultListener;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "timeout"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/zjx/jyandroid/ADB/ADBConnector$StartOpenTcpipPortProcessResultListener;->processFailed(Ljava/lang/Exception;)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector$3;->tryTime:I

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector$3;->this$0:Lcom/zjx/jyandroid/ADB/ADBConnector;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->getConnectedDeviceNames()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    :try_start_1
    iget-object v1, p0, Lcom/zjx/jyandroid/ADB/ADBConnector$3;->this$0:Lcom/zjx/jyandroid/ADB/ADBConnector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " tcpip 3035"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->access$000(Lcom/zjx/jyandroid/ADB/ADBConnector;Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/zjx/jyandroid/ADB/ADBConnector$3;->val$listener:Lcom/zjx/jyandroid/ADB/ADBConnector$StartOpenTcpipPortProcessResultListener;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lcom/zjx/jyandroid/ADB/ADBConnector$StartOpenTcpipPortProcessResultListener;->processFailed(Ljava/lang/Exception;)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector$3;->val$listener:Lcom/zjx/jyandroid/ADB/ADBConnector$StartOpenTcpipPortProcessResultListener;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/zjx/jyandroid/ADB/ADBConnector$StartOpenTcpipPortProcessResultListener;->processFinished()V

    :cond_3
    return-void

    :cond_4
    const-wide/16 v0, 0x1f4

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    :cond_5
    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector$3;->val$listener:Lcom/zjx/jyandroid/ADB/ADBConnector$StartOpenTcpipPortProcessResultListener;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/zjx/jyandroid/ADB/ADBConnector$StartOpenTcpipPortProcessResultListener;->processCancelled()V

    :cond_6
    return-void
.end method
