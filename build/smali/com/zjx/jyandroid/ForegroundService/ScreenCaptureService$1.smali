.class Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->onCreate()V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$1;->this$0:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService$1;->this$0:Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;->access$702(Lcom/zjx/jyandroid/ForegroundService/ScreenCaptureService;Landroid/os/Handler;)Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
