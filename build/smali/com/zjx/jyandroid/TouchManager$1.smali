.class Lcom/zjx/jyandroid/TouchManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/TouchManager;->g(Ljava/io/DataInputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/TouchManager;

.field final synthetic val$stream:Ljava/io/DataInputStream;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/TouchManager;Ljava/io/DataInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/TouchManager$1;->this$0:Lcom/zjx/jyandroid/TouchManager;

    iput-object p2, p0, Lcom/zjx/jyandroid/TouchManager$1;->val$stream:Ljava/io/DataInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/TouchManager$1;->val$stream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iget-object v1, p0, Lcom/zjx/jyandroid/TouchManager$1;->val$stream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iget-object v2, p0, Lcom/zjx/jyandroid/TouchManager$1;->this$0:Lcom/zjx/jyandroid/TouchManager;

    iget-object v2, v2, Lcom/zjx/jyandroid/TouchManager;->k:Lcom/zjx/jyandroid/ReceivingTouchHandler;

    invoke-virtual {v2, v0, v1}, Lcom/zjx/jyandroid/ReceivingTouchHandler;->onTouchDeviceMaxValue(II)V

    const/16 v0, -0x14

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x10

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/zjx/jyandroid/TouchManager$1;->val$stream:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/zjx/jyandroid/TouchManager$1;->this$0:Lcom/zjx/jyandroid/TouchManager;

    iget-object v1, v1, Lcom/zjx/jyandroid/TouchManager;->k:Lcom/zjx/jyandroid/ReceivingTouchHandler;

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->d([B)[I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/ReceivingTouchHandler;->onTouchEvent([I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Sending end in native is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "touch listening thread interrupted"

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "touch listening error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->b(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
