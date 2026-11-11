.class Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$OrientationChangeCallback;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OrientationChangeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$OrientationChangeCallback;->this$0:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$OrientationChangeCallback;->this$0:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;

    invoke-static {p1}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->access$000(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$OrientationChangeCallback;->this$0:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;

    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->access$100(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$OrientationChangeCallback;->this$0:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;

    invoke-static {v0, p1}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->access$102(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;I)I

    :try_start_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$OrientationChangeCallback;->this$0:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;

    invoke-static {p1}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->access$200(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$OrientationChangeCallback;->this$0:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;

    invoke-static {p1}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->access$200(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->release()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$OrientationChangeCallback;->this$0:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;

    invoke-static {p1}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->access$300(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)Landroid/media/ImageReader;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$OrientationChangeCallback;->this$0:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;

    invoke-static {p1}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->access$300(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)Landroid/media/ImageReader;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_1
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$OrientationChangeCallback;->this$0:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;

    invoke-static {p1}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->access$400(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method
