.class Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->stopProjection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$2;->this$0:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$2;->this$0:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;

    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->access$600(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$2;->this$0:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;

    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->access$600(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    :cond_0
    return-void
.end method
