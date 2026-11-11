.class public Lcom/zjx/jyandroid/ADB/BinderClientApplication;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/NativeBinderServer;


# static fields
.field private static instance:Lcom/zjx/jyandroid/ADB/BinderClientApplication;


# instance fields
.field private appBinderServer:Lcom/zjx/jyandroid/AppBinderServerImpl;

.field executorService:Ljava/util/concurrent/ExecutorService;

.field private nativeBinderServerImpl:Lcom/zjx/jyandroid/NativeBinderServer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/BinderClientApplication;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/zjx/jyandroid/AppBinderServerImpl;

    invoke-direct {v0}, Lcom/zjx/jyandroid/AppBinderServerImpl;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/BinderClientApplication;->appBinderServer:Lcom/zjx/jyandroid/AppBinderServerImpl;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/BinderClientApplication;->nativeBinderServerImpl:Lcom/zjx/jyandroid/NativeBinderServer;

    return-void
.end method

.method private checkConnection()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/BinderClientApplication;->nativeBinderServerImpl:Lcom/zjx/jyandroid/NativeBinderServer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not connected to native service"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sharedInstance()Lcom/zjx/jyandroid/ADB/BinderClientApplication;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/ADB/BinderClientApplication;->instance:Lcom/zjx/jyandroid/ADB/BinderClientApplication;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/ADB/BinderClientApplication;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ADB/BinderClientApplication;-><init>()V

    sput-object v0, Lcom/zjx/jyandroid/ADB/BinderClientApplication;->instance:Lcom/zjx/jyandroid/ADB/BinderClientApplication;

    :cond_0
    sget-object v0, Lcom/zjx/jyandroid/ADB/BinderClientApplication;->instance:Lcom/zjx/jyandroid/ADB/BinderClientApplication;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/BinderClientApplication;->appBinderServer:Lcom/zjx/jyandroid/AppBinderServerImpl;

    return-object v0
.end method

.method public executeShellCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/BinderClientApplication;->nativeBinderServerImpl:Lcom/zjx/jyandroid/NativeBinderServer;

    invoke-interface {v0, p1}, Lcom/zjx/jyandroid/NativeBinderServer;->executeShellCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScreenshot(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/BinderClientApplication;->nativeBinderServerImpl:Lcom/zjx/jyandroid/NativeBinderServer;

    invoke-interface {v0, p1, p2}, Lcom/zjx/jyandroid/NativeBinderServer;->getScreenshot(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public onReceiveNativeBinderServer(Lcom/zjx/jyandroid/NativeBinderServer;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/BinderClientApplication;->nativeBinderServerImpl:Lcom/zjx/jyandroid/NativeBinderServer;

    return-void
.end method

.method public setGrabbingTouchEvent(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/zjx/jyandroid/ADB/BinderClientApplication;->checkConnection()V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/BinderClientApplication;->nativeBinderServerImpl:Lcom/zjx/jyandroid/NativeBinderServer;

    invoke-interface {v0, p1}, Lcom/zjx/jyandroid/NativeBinderServer;->setGrabbingTouchEvent(Z)V

    return-void
.end method
