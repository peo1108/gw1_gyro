.class Lcom/zjx/gw2lic/UsbGrant$2;
.super Ljava/lang/Object;
.source "UsbGrant.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/gw2lic/UsbGrant;->onUsbEvent(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$mainService:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 288
    iput-object p1, p0, Lcom/zjx/gw2lic/UsbGrant$2;->val$mainService:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/zjx/gw2lic/UsbGrant$2;->val$mainService:Ljava/lang/Object;

    invoke-static {v1}, Lcom/zjx/gw2lic/UsbGrant;->access$000(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 292
    invoke-static {}, Lcom/zjx/gw2lic/UsbGrant;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    invoke-static {v0}, Lcom/zjx/gw2lic/UsbGrant;->access$302(Z)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 291
    :try_start_2
    invoke-static {}, Lcom/zjx/gw2lic/UsbGrant;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Gw2Usb"

    const-string v3, "watch"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 292
    :cond_0
    invoke-static {}, Lcom/zjx/gw2lic/UsbGrant;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    invoke-static {v0}, Lcom/zjx/gw2lic/UsbGrant;->access$302(Z)Z

    monitor-exit v1

    :goto_0
    return-void

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    invoke-static {}, Lcom/zjx/gw2lic/UsbGrant;->access$200()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_4
    invoke-static {v0}, Lcom/zjx/gw2lic/UsbGrant;->access$302(Z)Z

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v1

    :catchall_4
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0
.end method
