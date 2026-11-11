.class public Lcom/zjx/jyandroid/Extensions/pubg/b$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/pubg/b$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/b$j;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/b$j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/b$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    const-string v0, "screenshot weapon!!"

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/b$j;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->j:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->a:Lcom/zjx/jyandroid/ScreenCaptureManager;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->i:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/ScreenCaptureManager;->getScreenshot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lk/n;->g(Landroid/graphics/Bitmap;)Lorg/opencv/core/Mat;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/b$j;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$j$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/b$j;

    invoke-static {v3}, Lcom/zjx/jyandroid/Extensions/pubg/b$j;->a(Lcom/zjx/jyandroid/Extensions/pubg/b$j;)I

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
