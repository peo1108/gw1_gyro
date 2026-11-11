.class public Lcom/zjx/jyandroid/Extensions/pubg/b$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/pubg/b$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/b$c;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/b$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->j:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->a:Lcom/zjx/jyandroid/ScreenCaptureManager;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->f:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/ScreenCaptureManager;->getScreenshot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->a(Lcom/zjx/jyandroid/Extensions/pubg/b$c;)Lk/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lk/j;->c(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->a(Lcom/zjx/jyandroid/Extensions/pubg/b$c;)Lk/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lk/a;->b(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->c(Lcom/zjx/jyandroid/Extensions/pubg/b$c;Z)Z

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->b(Lcom/zjx/jyandroid/Extensions/pubg/b$c;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->h(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->i:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aiming finish check failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
