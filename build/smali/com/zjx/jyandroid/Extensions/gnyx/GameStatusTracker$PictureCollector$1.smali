.class Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector$1;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector$1;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->screenCaptureManager:Lcom/zjx/jyandroid/ScreenCaptureManager;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->firstWeaponRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/ScreenCaptureManager;->getScreenshot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/WeaponRecognizer;->createProcessedMatFromBitmap(Landroid/graphics/Bitmap;)Lorg/opencv/core/Mat;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector$1;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;->dirname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector$1;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;

    invoke-static {v3}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;->access$508(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$PictureCollector;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/opencv/imgcodecs/Imgcodecs;->imwrite(Ljava/lang/String;Lorg/opencv/core/Mat;)Z

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to save picture in picture collector: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
