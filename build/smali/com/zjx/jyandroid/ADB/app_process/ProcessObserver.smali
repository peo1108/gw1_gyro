.class public Lcom/zjx/jyandroid/ADB/app_process/ProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/zjx/jyandroid/ADB/BinderClientNative;->sharedInstance()Lcom/zjx/jyandroid/ADB/BinderClientNative;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/zjx/jyandroid/ADB/BinderClientNative;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "service changed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onProcessDied(II)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/zjx/jyandroid/ADB/BinderClientNative;->sharedInstance()Lcom/zjx/jyandroid/ADB/BinderClientNative;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/zjx/jyandroid/ADB/BinderClientNative;->onProcessDied(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
