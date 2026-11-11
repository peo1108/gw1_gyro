.class public Lg/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public a:Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;

.field public b:Lcom/zjx/jyandroid/ScreenCaptureManager;

.field public c:Lorg/opencv/core/Mat;

.field public d:Lorg/opencv/core/Mat;

.field public e:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/a;->a:Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;

    invoke-static {}, Lcom/zjx/jyandroid/ScreenCaptureManager;->sharedInstance()Lcom/zjx/jyandroid/ScreenCaptureManager;

    move-result-object v1

    iput-object v1, p0, Lg/a;->b:Lcom/zjx/jyandroid/ScreenCaptureManager;

    iput-object v0, p0, Lg/a;->c:Lorg/opencv/core/Mat;

    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    iput-object v1, p0, Lg/a;->d:Lorg/opencv/core/Mat;

    iput-object v0, p0, Lg/a;->e:Landroid/graphics/Rect;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3eb851ec    # 0.36f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v3, 0x3ee66666    # 0.45f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    const/16 v3, 0x3f

    const/4 v4, 0x5

    invoke-direct {v1, v2, v4, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lg/a;->e:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lg/a;->b:Lcom/zjx/jyandroid/ScreenCaptureManager;

    iget-object v1, p0, Lg/a;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ScreenCaptureManager;->getScreenshot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    invoke-static {v0, v1}, Lorg/opencv/android/Utils;->bitmapToMat(Landroid/graphics/Bitmap;Lorg/opencv/core/Mat;)V

    const/4 v2, 0x6

    invoke-static {v1, v1, v2}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    invoke-virtual {v1, v1, v2}, Lorg/opencv/core/Mat;->convertTo(Lorg/opencv/core/Mat;I)V

    iput-object v1, p0, Lg/a;->c:Lorg/opencv/core/Mat;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lg/a;->b:Lcom/zjx/jyandroid/ScreenCaptureManager;

    iget-object v1, p0, Lg/a;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ScreenCaptureManager;->getScreenshot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    invoke-static {v0, v1}, Lorg/opencv/android/Utils;->bitmapToMat(Landroid/graphics/Bitmap;Lorg/opencv/core/Mat;)V

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->size()Lorg/opencv/core/Size;

    move-result-object v3

    iget-wide v3, v3, Lorg/opencv/core/Size;->width:D

    iget-object v5, p0, Lg/a;->c:Lorg/opencv/core/Mat;

    invoke-virtual {v5}, Lorg/opencv/core/Mat;->size()Lorg/opencv/core/Size;

    move-result-object v5

    iget-wide v5, v5, Lorg/opencv/core/Size;->width:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->size()Lorg/opencv/core/Size;

    move-result-object v3

    iget-wide v3, v3, Lorg/opencv/core/Size;->height:D

    iget-object v5, p0, Lg/a;->c:Lorg/opencv/core/Mat;

    invoke-virtual {v5}, Lorg/opencv/core/Mat;->size()Lorg/opencv/core/Size;

    move-result-object v5

    iget-wide v5, v5, Lorg/opencv/core/Size;->height:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1, v1, v2}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    invoke-virtual {v1, v1, v2}, Lorg/opencv/core/Mat;->convertTo(Lorg/opencv/core/Mat;I)V

    const/4 v3, 0x1

    new-array v3, v3, [D

    iget-object v4, p0, Lg/a;->c:Lorg/opencv/core/Mat;

    iget-object v5, p0, Lg/a;->d:Lorg/opencv/core/Mat;

    invoke-static {v1, v4, v5, v3}, Lorg/opencv/imgproc/Imgproc;->phaseCorrelate(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;[D)Lorg/opencv/core/Point;

    move-result-object v4

    const/4 v5, 0x0

    aget-wide v6, v3, v5

    const-wide v8, 0x3fe99999a0000000L    # 0.800000011920929

    cmpl-double v3, v6, v8

    if-lez v3, :cond_1

    iget-wide v6, v4, Lorg/opencv/core/Point;->x:D

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    cmpg-double v3, v6, v8

    if-gez v3, :cond_1

    iget-object v3, p0, Lg/a;->a:Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;

    iget-wide v6, v4, Lorg/opencv/core/Point;->x:D

    neg-double v6, v6

    double-to-int v4, v6

    invoke-interface {v3, v4, v5}, Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;->movedRelativeRaw(II)V

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lg/a;->d:Lorg/opencv/core/Mat;

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    iget-object v0, p0, Lg/a;->c:Lorg/opencv/core/Mat;

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    return-void
.end method
