.class Lcom/zjx/jyandroid/ADB/ADBConnector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ADB/ADBConnector;->startConnectAndActivationProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field lastConnectTime:J

.field final synthetic this$0:Lcom/zjx/jyandroid/ADB/ADBConnector;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ADB/ADBConnector;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ADBConnector$1;->this$0:Lcom/zjx/jyandroid/ADB/ADBConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector$1;->lastConnectTime:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "-s localhost:"

    iget-object v1, p0, Lcom/zjx/jyandroid/ADB/ADBConnector$1;->this$0:Lcom/zjx/jyandroid/ADB/ADBConnector;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/ADB/ADBConnector;->getAdbRunningPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/zjx/jyandroid/ADB/ADBConnector$1;->lastConnectTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :try_start_0
    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/zjx/jyandroid/ADB/ADBConnector$1;->this$0:Lcom/zjx/jyandroid/ADB/ADBConnector;

    invoke-virtual {v2, v1}, Lcom/zjx/jyandroid/ADB/ADBConnector;->connect(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zjx/jyandroid/ADB/ADBConnector$1;->lastConnectTime:J

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/zjx/jyandroid/ADB/ADBConnector$1;->this$0:Lcom/zjx/jyandroid/ADB/ADBConnector;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ADB/ADBConnector;->getConnectedDeviceNames()Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "localhost:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_6

    :try_start_2
    iget-object v2, p0, Lcom/zjx/jyandroid/ADB/ADBConnector$1;->this$0:Lcom/zjx/jyandroid/ADB/ADBConnector;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " shell settings put global block_untrusted_touches 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zjx/jyandroid/ADB/ADBConnector;->access$000(Lcom/zjx/jyandroid/ADB/ADBConnector;Ljava/lang/String;)Ljava/lang/Process;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$f;->m()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "`pm path com.zx.yxt`"

    goto :goto_2

    :cond_4
    const-string v2, "`pm path com.zx.yxt | head -n 1`"

    :goto_2
    iget-object v3, p0, Lcom/zjx/jyandroid/ADB/ADBConnector$1;->this$0:Lcom/zjx/jyandroid/ADB/ADBConnector;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " shell export CLASSPATH="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " && app_process /data/local/tmp com.zjx.jyandroid.TouchService "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->access$000(Lcom/zjx/jyandroid/ADB/ADBConnector;Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/ADB/ADBConnector$1;->this$0:Lcom/zjx/jyandroid/ADB/ADBConnector;

    sget-object v2, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;->CONNECTED:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    invoke-static {v1, v2}, Lcom/zjx/jyandroid/ADB/ADBConnector;->access$100(Lcom/zjx/jyandroid/ADB/ADBConnector;Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "output: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v0, "touch service exited"

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector$1;->this$0:Lcom/zjx/jyandroid/ADB/ADBConnector;

    sget-object v1, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;->NOT_CONNECTED:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/ADB/ADBConnector;->access$100(Lcom/zjx/jyandroid/ADB/ADBConnector;Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector$1;->this$0:Lcom/zjx/jyandroid/ADB/ADBConnector;

    sget-object v1, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;->NOT_CONNECTED:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/ADB/ADBConnector;->access$100(Lcom/zjx/jyandroid/ADB/ADBConnector;Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;)V

    goto :goto_4

    :cond_6
    :try_start_5
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catch_1
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector$1;->this$0:Lcom/zjx/jyandroid/ADB/ADBConnector;

    sget-object v1, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;->NOT_CONNECTED:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/ADB/ADBConnector;->access$100(Lcom/zjx/jyandroid/ADB/ADBConnector;Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;)V

    const-string v0, "connection thread interrupted"

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    return-void
.end method
