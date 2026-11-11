.class public Lcom/zjx/jyandroid/Extensions/pubg/b$g;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/pubg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public a:Lk/j;

.field public b:Lk/j;

.field public c:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

.field public final synthetic d:Lcom/zjx/jyandroid/Extensions/pubg/b;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$g;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lk/f;

    invoke-direct {p1}, Lk/f;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$g;->a:Lk/j;

    new-instance p1, Lk/f;

    invoke-direct {p1}, Lk/f;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$g;->b:Lk/j;

    goto :goto_0

    :cond_0
    new-instance p1, Lk/g;

    invoke-direct {p1}, Lk/g;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$g;->a:Lk/j;

    new-instance p1, Lmdm/PostureColor;

    invoke-direct {p1}, Lmdm/PostureColor;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$g;->b:Lk/j;

    :goto_0
    sget-object p1, Lcom/zjx/jyandroid/Extensions/pubg/c$b;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$g;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :catch_0
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_7

    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$g;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->g:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->h:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->a(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$g;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->a:Lcom/zjx/jyandroid/ScreenCaptureManager;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->g:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/ScreenCaptureManager;->getScreenshot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$g;->b:Lk/j;

    invoke-virtual {v1, v0}, Lk/j;->c(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$g;->b:Lk/j;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lk/j;->b(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$g;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$g;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->b(Lcom/zjx/jyandroid/Extensions/pubg/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$g;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->a(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/b$i;->d(Lcom/zjx/jyandroid/Extensions/pubg/c$b;)V

    :cond_2
    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$g;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    goto :goto_0

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$g;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v3, v1, Lcom/zjx/jyandroid/Extensions/pubg/b;->a:Lcom/zjx/jyandroid/ScreenCaptureManager;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/b;->h:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Lcom/zjx/jyandroid/ScreenCaptureManager;->getScreenshot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$g;->a:Lk/j;

    invoke-virtual {v3, v1}, Lk/j;->c(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$g;->a:Lk/j;

    invoke-virtual {v3, v2}, Lk/j;->b(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    if-ne v2, v0, :cond_5

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$g;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$b;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$g;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->b(Lcom/zjx/jyandroid/Extensions/pubg/b;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$g;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->a(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/b$i;->d(Lcom/zjx/jyandroid/Extensions/pubg/c$b;)V

    :cond_4
    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$g;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$g;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$b;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$g;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->b(Lcom/zjx/jyandroid/Extensions/pubg/b;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$g;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->a(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/b$i;->d(Lcom/zjx/jyandroid/Extensions/pubg/c$b;)V

    :cond_6
    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$g;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    goto/16 :goto_0

    :catch_1
    :cond_7
    const-string v0, "Gesture tracker exit"

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    return-void
.end method
