.class Lorg/opencv/android/AsyncServiceHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/opencv/android/InstallCallbackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/opencv/android/AsyncServiceHelper;->InstallService(Landroid/content/Context;Lorg/opencv/android/LoaderCallbackInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

.field final synthetic val$AppContext:Landroid/content/Context;

.field final synthetic val$Callback:Lorg/opencv/android/LoaderCallbackInterface;


# direct methods
.method public constructor <init>(Lorg/opencv/android/LoaderCallbackInterface;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/opencv/android/AsyncServiceHelper$1;->val$Callback:Lorg/opencv/android/LoaderCallbackInterface;

    iput-object p2, p0, Lorg/opencv/android/AsyncServiceHelper$1;->val$AppContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/opencv/android/AsyncServiceHelper$1;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const-string v0, "OpenCV library installation was canceled"

    const-string v1, "OpenCVManager/Helper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init finished with status "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Calling using callback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/opencv/android/AsyncServiceHelper$1;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    invoke-interface {v0, v2}, Lorg/opencv/android/LoaderCallbackInterface;->onManagerConnected(I)V

    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "OpenCV Manager"

    return-object v0
.end method

.method public install()V
    .locals 3

    const-string v0, "Trying to install OpenCV Manager via Google Play"

    const-string v1, "OpenCVManager/Helper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/opencv/android/AsyncServiceHelper$1;->val$AppContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/opencv/android/AsyncServiceHelper;->InstallServiceQuiet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lorg/opencv/android/AsyncServiceHelper;->mServiceInstallationProgress:Z

    const-string v0, "Package installation started"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "OpenCV package was not installed!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init finished with status "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Unbind from service"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Calling using callback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/opencv/android/AsyncServiceHelper$1;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    invoke-interface {v0, v2}, Lorg/opencv/android/LoaderCallbackInterface;->onManagerConnected(I)V

    :goto_0
    return-void
.end method

.method public wait_install()V
    .locals 2

    const-string v0, "OpenCVManager/Helper"

    const-string v1, "Installation was not started! Nothing to wait!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
