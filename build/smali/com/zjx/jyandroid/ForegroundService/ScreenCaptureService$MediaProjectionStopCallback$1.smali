.class Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback$1;->this$1:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback$1;->this$1:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback;->this$0:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;

    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->access$200(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback$1;->this$1:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback;->this$0:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;

    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->access$200(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback$1;->this$1:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback;->this$0:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;

    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->access$300(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)Landroid/media/ImageReader;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback$1;->this$1:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback;->this$0:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;

    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->access$300(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)Landroid/media/ImageReader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback$1;->this$1:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback;->this$0:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;

    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->access$500(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$OrientationChangeCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback$1;->this$1:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback;->this$0:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;

    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->access$500(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$OrientationChangeCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_2
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback$1;->this$1:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback;->this$0:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;

    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->access$600(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback$1;->this$1:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$MediaProjectionStopCallback;

    invoke-virtual {v0, v1}, Landroid/media/projection/MediaProjection;->unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V

    return-void
.end method
