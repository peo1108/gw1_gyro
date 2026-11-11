.class Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback;
.super Landroid/media/projection/MediaProjection$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaProjectionStopCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;


# direct methods
.method private constructor <init>(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback;->this$0:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;

    invoke-direct {p0}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback;-><init>(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    const-string v0, "jyandroidlog"

    const-string v1, "stopping projection."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback;->this$0:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;

    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->access$700(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback$1;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback$1;-><init>(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
