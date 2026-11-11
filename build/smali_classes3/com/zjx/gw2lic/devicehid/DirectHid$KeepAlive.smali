.class Lcom/zjx/gw2lic/devicehid/DirectHid$KeepAlive;
.super Ljava/lang/Object;
.source "DirectHid.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :cond_0
    :goto_0
    const-wide/32 v0, 0x7530

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->isActive()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/zjx/gw2lic/devicehid/DirectHid;->isNoDevice(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->applyUsbOn()V

    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->pinUsb()V

    goto :goto_0

    :catchall_0
    move-exception v2

    return-void
.end method
