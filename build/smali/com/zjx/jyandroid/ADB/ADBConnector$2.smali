.class Lcom/zjx/jyandroid/ADB/ADBConnector$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ADB/ADBConnector;->test()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/ADB/ADBConnector;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ADB/ADBConnector;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ADBConnector$2;->this$0:Lcom/zjx/jyandroid/ADB/ADBConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :catch_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector$2;->this$0:Lcom/zjx/jyandroid/ADB/ADBConnector;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->getConnectedDeviceNames()Ljava/util/List;

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
