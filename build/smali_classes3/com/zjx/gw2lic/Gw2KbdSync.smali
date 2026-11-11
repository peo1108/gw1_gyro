.class public Lcom/zjx/gw2lic/Gw2KbdSync;
.super Ljava/lang/Object;
.source "Gw2KbdSync.java"


# static fields
.field private static sBusy:Z

.field private static sInGame:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static E0Call(Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Lt5/f;->u2()Lt5/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lt5/f;->E0(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private static e6Call(Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Lt5/f;->u2()Lt5/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lt5/f;->e6(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public static gw2Claim()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2KbdSync;->e6Call(Z)V

    return-void
.end method

.method public static gw2InGame()Z
    .locals 1

    sget-boolean v0, Lcom/zjx/gw2lic/Gw2KbdSync;->sInGame:Z

    return v0
.end method

.method public static gw2Release()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2KbdSync;->e6Call(Z)V

    return-void
.end method

.method private static healAttempt()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2KbdSync;->e6Call(Z)V

    return-void
.end method

.method public static healWorker()V
    .locals 2

    const-wide/16 v0, 0x384

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    goto :goto_2

    :goto_0
    invoke-static {}, Lcom/zjx/gw2lic/Gw2KbdSync;->healAttempt()V

    const-wide/16 v0, 0x5dc

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/zjx/gw2lic/Gw2KbdSync;->healAttempt()V

    :goto_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zjx/gw2lic/Gw2KbdSync;->sBusy:Z

    return-void
.end method

.method public static onGameEnd()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zjx/gw2lic/Gw2KbdSync;->sInGame:Z

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->gw2DesktopOn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2KbdSync;->e6Call(Z)V

    :cond_0
    return-void
.end method

.method public static onGameStart()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/zjx/gw2lic/Gw2KbdSync;->sInGame:Z

    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2KbdSync;->e6Call(Z)V

    return-void
.end method

.method public static onUsbChange()V
    .locals 2

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->gw2SetupActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->gw2RetryNow()V

    :cond_0
    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->gw2DesktopOn()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/zjx/gw2lic/Gw2KbdSync;->sInGame:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-boolean v0, Lcom/zjx/gw2lic/Gw2KbdSync;->sBusy:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/zjx/gw2lic/Gw2KbdSync;->sBusy:Z

    new-instance v0, Lcom/zjx/gw2lic/Gw2KbdSync$1;

    invoke-direct {v0}, Lcom/zjx/gw2lic/Gw2KbdSync$1;-><init>()V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method
