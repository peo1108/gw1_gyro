.class public Lcom/zjx/jyandroid/Extensions/pubg/b$e;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/pubg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public a:Lk/c;

.field public b:Lk/b;

.field public c:Z

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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance p1, Lk/b;

    invoke-direct {p1}, Lk/b;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->b:Lk/b;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->c:Z

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lk/d;

    invoke-direct {p1}, Lk/d;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->a:Lk/c;

    goto :goto_0

    :cond_0
    new-instance p1, Lk/e;

    invoke-direct {p1}, Lk/e;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->a:Lk/c;

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_e

    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->i:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->j:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->a(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->a:Lcom/zjx/jyandroid/ScreenCaptureManager;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->i:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/ScreenCaptureManager;->getScreenshot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->a:Lk/c;

    invoke-virtual {v1, v0}, Lk/j;->c(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->a:Lk/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lk/j;->b(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_6

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v5, v1, Lcom/zjx/jyandroid/Extensions/pubg/b;->J:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    iget-object v6, v1, Lcom/zjx/jyandroid/Extensions/pubg/b;->H:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    if-eq v5, v6, :cond_3

    invoke-virtual {v1, v6}, Lcom/zjx/jyandroid/Extensions/pubg/b;->r(Lcom/zjx/jyandroid/Extensions/pubg/b$k;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v5, v1, Lcom/zjx/jyandroid/Extensions/pubg/b;->C:Lcom/zjx/jyandroid/Extensions/pubg/b$d;

    if-eqz v5, :cond_2

    sget-object v6, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/b;->H:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    invoke-virtual {v5, v6, v1}, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->a(Lcom/zjx/jyandroid/Extensions/pubg/c$k;Lcom/zjx/jyandroid/Extensions/pubg/b$k;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v5, v1, Lcom/zjx/jyandroid/Extensions/pubg/b;->y:Lcom/zjx/jyandroid/Extensions/pubg/b$l;

    if-eqz v5, :cond_3

    sget-object v6, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/b;->H:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    invoke-virtual {v5, v6, v1}, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->a(Lcom/zjx/jyandroid/Extensions/pubg/c$k;Lcom/zjx/jyandroid/Extensions/pubg/b$k;)V

    :cond_3
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->b:Lk/b;

    invoke-virtual {v1, v0}, Lk/b;->c(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->b:Lk/b;

    invoke-virtual {v1, v2}, Lk/b;->b(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->c:Z

    if-eqz v1, :cond_5

    iput-boolean v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->c:Z

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->b(Lcom/zjx/jyandroid/Extensions/pubg/b;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->a(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    move-result-object v1

    iget-boolean v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->c:Z

    invoke-interface {v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/b$i;->b(Z)V

    goto :goto_2

    :cond_4
    iget-boolean v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->c:Z

    if-nez v1, :cond_5

    iput-boolean v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->c:Z

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->b(Lcom/zjx/jyandroid/Extensions/pubg/b;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->a(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    move-result-object v1

    iget-boolean v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->c:Z

    invoke-interface {v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/b$i;->b(Z)V

    :cond_5
    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->a:Lcom/zjx/jyandroid/ScreenCaptureManager;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->j:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/ScreenCaptureManager;->getScreenshot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->a:Lk/c;

    invoke-virtual {v1, v0}, Lk/j;->c(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->a:Lk/c;

    invoke-virtual {v1, v2}, Lk/j;->b(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v4, :cond_b

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v5, v1, Lcom/zjx/jyandroid/Extensions/pubg/b;->J:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    iget-object v6, v1, Lcom/zjx/jyandroid/Extensions/pubg/b;->I:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    if-eq v5, v6, :cond_8

    invoke-virtual {v1, v6}, Lcom/zjx/jyandroid/Extensions/pubg/b;->r(Lcom/zjx/jyandroid/Extensions/pubg/b$k;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v5, v1, Lcom/zjx/jyandroid/Extensions/pubg/b;->C:Lcom/zjx/jyandroid/Extensions/pubg/b$d;

    if-eqz v5, :cond_7

    sget-object v6, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/b;->I:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    invoke-virtual {v5, v6, v1}, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->a(Lcom/zjx/jyandroid/Extensions/pubg/c$k;Lcom/zjx/jyandroid/Extensions/pubg/b$k;)V

    :cond_7
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v5, v1, Lcom/zjx/jyandroid/Extensions/pubg/b;->y:Lcom/zjx/jyandroid/Extensions/pubg/b$l;

    if-eqz v5, :cond_8

    sget-object v6, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/b;->I:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    invoke-virtual {v5, v6, v1}, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->a(Lcom/zjx/jyandroid/Extensions/pubg/c$k;Lcom/zjx/jyandroid/Extensions/pubg/b$k;)V

    :cond_8
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->b:Lk/b;

    invoke-virtual {v1, v0}, Lk/b;->c(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->b:Lk/b;

    invoke-virtual {v1, v2}, Lk/b;->b(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->c:Z

    if-eqz v1, :cond_a

    iput-boolean v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->c:Z

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->b(Lcom/zjx/jyandroid/Extensions/pubg/b;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->a(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/zjx/jyandroid/Extensions/pubg/b$i;->b(Z)V

    goto :goto_3

    :cond_9
    iget-boolean v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->c:Z

    if-nez v1, :cond_a

    iput-boolean v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->c:Z

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->b(Lcom/zjx/jyandroid/Extensions/pubg/b;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->a(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    move-result-object v1

    iget-boolean v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->c:Z

    invoke-interface {v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/b$i;->b(Z)V

    :cond_a
    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->J:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    if-eqz v1, :cond_d

    invoke-virtual {v0, v2}, Lcom/zjx/jyandroid/Extensions/pubg/b;->r(Lcom/zjx/jyandroid/Extensions/pubg/b$k;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->C:Lcom/zjx/jyandroid/Extensions/pubg/b$d;

    if-eqz v0, :cond_c

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    invoke-virtual {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->a(Lcom/zjx/jyandroid/Extensions/pubg/c$k;Lcom/zjx/jyandroid/Extensions/pubg/b$k;)V

    :cond_c
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->y:Lcom/zjx/jyandroid/Extensions/pubg/b$l;

    if-eqz v0, :cond_d

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    invoke-virtual {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->a(Lcom/zjx/jyandroid/Extensions/pubg/c$k;Lcom/zjx/jyandroid/Extensions/pubg/b$k;)V

    :cond_d
    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->c:Z

    if-nez v0, :cond_0

    iput-boolean v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->c:Z

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->b(Lcom/zjx/jyandroid/Extensions/pubg/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->d:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->a(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$e;->c:Z

    invoke-interface {v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/b$i;->b(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    :cond_e
    const-string v0, "CurrentWeaponSlotTracker exit"

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    return-void
.end method
