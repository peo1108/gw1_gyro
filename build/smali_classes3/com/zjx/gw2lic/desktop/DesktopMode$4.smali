.class Lcom/zjx/gw2lic/desktop/DesktopMode$4;
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

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 71
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ForegroundService/MainService;->l()Lj6/h$a;

    move-result-object v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 72
    :goto_0
    invoke-static {v2}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$702(Z)Z

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 74
    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->outside()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$800()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$400()V

    goto/16 :goto_2

    .line 75
    :cond_1
    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$800()Z

    move-result v2

    const-wide/16 v7, 0x7d0

    const/4 v9, 0x0

    if-nez v2, :cond_4

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$500()J

    move-result-wide v10

    cmp-long v2, v5, v10

    if-ltz v2, :cond_4

    .line 77
    const/4 v2, 0x0

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$900()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 78
    :cond_2
    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->outside()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 80
    invoke-static {v4, v9}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$1000(ILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v4}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$802(Z)Z

    invoke-static {v5, v6}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$1102(J)J

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$1202(J)J

    invoke-static {}, Lcom/zjx/gw2lic/desktop/Gw2Status;->show()V

    goto :goto_2

    .line 81
    :cond_3
    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$1300()V

    goto :goto_2

    .line 83
    :cond_4
    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$800()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 84
    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$1400()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$1500()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v4}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$1402(Z)Z

    invoke-static {v3}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$202(Z)Z

    invoke-static {}, Lcom/zjx/gw2lic/desktop/Gw2Status;->hide()V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$1100()J

    move-result-wide v2

    sub-long v2, v5, v2

    const-wide/16 v10, 0xfa0

    cmp-long v2, v2, v10

    if-lez v2, :cond_6

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$1300()V

    .line 85
    :cond_6
    :goto_1
    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$800()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$1200()J

    move-result-wide v2

    cmp-long v2, v5, v2

    if-ltz v2, :cond_8

    const/4 v2, 0x3

    invoke-static {v2, v9}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$1000(ILjava/util/List;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$1300()V

    :cond_7
    add-long/2addr v5, v7

    invoke-static {v5, v6}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$1202(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_8
    :goto_2
    goto :goto_3

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$1300()V

    .line 88
    :goto_3
    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$900()Landroid/os/Handler;

    move-result-object v2

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$800()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$1400()Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_4

    :cond_9
    const-wide/16 v0, 0xfa

    :goto_4
    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    return-void
.end method
