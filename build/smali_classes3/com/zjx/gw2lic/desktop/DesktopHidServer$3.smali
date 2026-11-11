.class Lcom/zjx/gw2lic/desktop/DesktopHidServer$3;
.super Ljava/lang/Object;
.source "DesktopHidServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/gw2lic/desktop/DesktopHidServer;->start(Landroid/os/IBinder;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$p:Ljava/lang/Process;


# direct methods
.method constructor <init>(Ljava/lang/Process;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/zjx/gw2lic/desktop/DesktopHidServer$3;->val$p:Ljava/lang/Process;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 34
    nop

    :cond_0
    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->access$100()Ljava/lang/Process;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/gw2lic/desktop/DesktopHidServer$3;->val$p:Ljava/lang/Process;

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->access$200()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1b58

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zjx/gw2lic/desktop/DesktopHidServer$3;->val$p:Ljava/lang/Process;

    invoke-static {v0}, Lcom/zjx/gw2lic/desktop/DesktopHidServer;->access$300(Ljava/lang/Process;)V

    return-void

    :catch_0
    move-exception v0

    :cond_1
    return-void
.end method
