.class Lcom/zjx/gw2lic/desktop/DesktopMode$5;
.super Ljava/lang/Object;
.source "DesktopMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/gw2lic/desktop/DesktopMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 127
    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$1600()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$1702(Z)Z

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$1800()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$1900()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$1900()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 128
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->outside()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$1400()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$1600()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$1800()I

    move-result v3

    if-eq v1, v3, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    const/4 v0, 0x2

    invoke-static {v0, v2}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$1000(ILjava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$1300()V

    .line 131
    :cond_2
    return-void

    .line 129
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 128
    :cond_3
    :goto_0
    return-void

    .line 127
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
