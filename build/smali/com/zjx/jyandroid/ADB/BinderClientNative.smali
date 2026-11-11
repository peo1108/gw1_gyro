.class public Lcom/zjx/jyandroid/ADB/BinderClientNative;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/AppBinderServer;


# static fields
.field private static instance:Lcom/zjx/jyandroid/ADB/BinderClientNative;


# instance fields
.field private appBinderServer:Lcom/zjx/jyandroid/AppBinderServer;

.field private nativeBinderServerImpl:Lcom/zjx/jyandroid/ADB/app_process/NativeBinderServerImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/BinderClientNative;->appBinderServer:Lcom/zjx/jyandroid/AppBinderServer;

    new-instance v0, Lcom/zjx/jyandroid/ADB/app_process/NativeBinderServerImpl;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ADB/app_process/NativeBinderServerImpl;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/BinderClientNative;->nativeBinderServerImpl:Lcom/zjx/jyandroid/ADB/app_process/NativeBinderServerImpl;

    return-void
.end method

.method public static sharedInstance()Lcom/zjx/jyandroid/ADB/BinderClientNative;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/ADB/BinderClientNative;->instance:Lcom/zjx/jyandroid/ADB/BinderClientNative;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/ADB/BinderClientNative;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ADB/BinderClientNative;-><init>()V

    sput-object v0, Lcom/zjx/jyandroid/ADB/BinderClientNative;->instance:Lcom/zjx/jyandroid/ADB/BinderClientNative;

    :cond_0
    sget-object v0, Lcom/zjx/jyandroid/ADB/BinderClientNative;->instance:Lcom/zjx/jyandroid/ADB/BinderClientNative;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/BinderClientNative;->nativeBinderServerImpl:Lcom/zjx/jyandroid/ADB/app_process/NativeBinderServerImpl;

    return-object v0
.end method

.method public exchangeFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/BinderClientNative;->appBinderServer:Lcom/zjx/jyandroid/AppBinderServer;

    invoke-interface {v0, p1}, Lcom/zjx/jyandroid/AppBinderServer;->exchangeFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/BinderClientNative;->appBinderServer:Lcom/zjx/jyandroid/AppBinderServer;

    invoke-interface {v0, p1, p2, p3}, Lcom/zjx/jyandroid/AppBinderServer;->onForegroundActivitiesChanged(IIZ)V

    return-void
.end method

.method public onProcessDied(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/BinderClientNative;->appBinderServer:Lcom/zjx/jyandroid/AppBinderServer;

    invoke-interface {v0, p1, p2}, Lcom/zjx/jyandroid/AppBinderServer;->onProcessDied(II)V

    return-void
.end method

.method public onReceiveAppBinderServer(Lcom/zjx/jyandroid/AppBinderServer;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/BinderClientNative;->appBinderServer:Lcom/zjx/jyandroid/AppBinderServer;

    return-void
.end method

.method public showToast(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/BinderClientNative;->appBinderServer:Lcom/zjx/jyandroid/AppBinderServer;

    invoke-interface {v0, p1, p2, p3}, Lcom/zjx/jyandroid/AppBinderServer;->showToast(Ljava/lang/String;II)V

    return-void
.end method
