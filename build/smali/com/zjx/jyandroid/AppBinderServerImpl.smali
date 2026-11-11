.class public Lcom/zjx/jyandroid/AppBinderServerImpl;
.super Lcom/zjx/jyandroid/AppBinderServer$Stub;
.source "SourceFile"


# static fields
.field static tmp:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/AppBinderServer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public exchangeFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sput-object p1, Lcom/zjx/jyandroid/AppBinderServerImpl;->tmp:Landroid/os/ParcelFileDescriptor;

    invoke-static {}, Lcom/zjx/jyandroid/TouchManager;->f()Lcom/zjx/jyandroid/TouchManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/TouchManager;->b(Landroid/os/ParcelFileDescriptor;)V

    :try_start_0
    invoke-static {}, Lcom/zjx/jyandroid/TouchManager;->f()Lcom/zjx/jyandroid/TouchManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/TouchManager;->a()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;->onForegroundActivitiesChanged(IIZ)V

    return-void
.end method

.method public onProcessDied(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;->onProcessDied(II)V

    return-void
.end method

.method public showToast(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/zjx/jyandroid/AppBinderServerImpl$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/zjx/jyandroid/AppBinderServerImpl$1;-><init>(Lcom/zjx/jyandroid/AppBinderServerImpl;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
