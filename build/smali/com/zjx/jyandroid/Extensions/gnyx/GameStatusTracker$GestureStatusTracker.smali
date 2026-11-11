.class public Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GestureStatusTracker;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GestureStatusTracker"
.end annotation


# instance fields
.field crouchRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GestureRecognizer;

.field private currentGesture:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GestureStatusTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance p1, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GestureRecognizer;

    invoke-direct {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GestureRecognizer;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GestureStatusTracker;->crouchRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GestureRecognizer;

    sget-object p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;->STAND:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GestureStatusTracker;->currentGesture:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :catch_0
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GestureStatusTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->crouchRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GestureStatusTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->screenCaptureManager:Lcom/zjx/jyandroid/ScreenCaptureManager;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->crouchRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/ScreenCaptureManager;->getScreenshot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GestureStatusTracker;->crouchRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GestureRecognizer;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GnyxRecognizer;->setImage(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GestureStatusTracker;->crouchRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GestureRecognizer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GestureRecognizer;->getResult(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GestureStatusTracker;->currentGesture:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;->CROUCH:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GestureStatusTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$100(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GestureStatusTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;->onPlayerGestureChanged(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;)V

    :cond_2
    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GestureStatusTracker;->currentGesture:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GestureStatusTracker;->currentGesture:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;->STAND:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GestureStatusTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$100(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GestureStatusTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;->onPlayerGestureChanged(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;)V

    :cond_4
    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GestureStatusTracker;->currentGesture:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    goto :goto_0

    :catch_1
    :cond_5
    const-string v0, "Gesture tracker exit"

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    return-void
.end method
