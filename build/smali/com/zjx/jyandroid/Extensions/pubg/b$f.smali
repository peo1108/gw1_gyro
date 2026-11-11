.class public Lcom/zjx/jyandroid/Extensions/pubg/b$f;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/pubg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public a:Lk/n;

.field public b:I

.field public final synthetic c:Lcom/zjx/jyandroid/Extensions/pubg/b;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$f;->c:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lk/n;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/b;->c()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/zjx/jyandroid/Extensions/pubg/b;->p:I

    invoke-direct {v0, v1, v2}, Lk/n;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$f;->a:Lk/n;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$f;->b:I

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/b;->E:Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/f;->q()Lcom/zjx/jyandroid/Extensions/pubg/f$a;

    move-result-object p1

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/b$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xfa

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$f;->b:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x1f4

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$f;->b:I

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$f;->b:I

    goto :goto_0

    :cond_3
    const/16 p1, 0x7d0

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$f;->b:I

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_8

    :try_start_0
    iget v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$f;->b:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$f;->c:Lcom/zjx/jyandroid/Extensions/pubg/b;

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
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$f;->c:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->d(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    const/4 v2, -0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$f;->c:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->a:Lcom/zjx/jyandroid/ScreenCaptureManager;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->i:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Lcom/zjx/jyandroid/ScreenCaptureManager;->getScreenshot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$f;->a:Lk/n;

    invoke-virtual {v3, v0}, Lk/j;->c(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$f;->c:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/pubg/b;->H:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$f;->a:Lk/n;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Lk/n;->b(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v2, :cond_4

    if-eq v4, v3, :cond_4

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$f;->c:Lcom/zjx/jyandroid/Extensions/pubg/b;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    invoke-static {v4}, Lk/n;->f(I)Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/zjx/jyandroid/Extensions/pubg/b$k;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/b;Lcom/zjx/jyandroid/Extensions/pubg/c$l;)V

    iput-object v3, v2, Lcom/zjx/jyandroid/Extensions/pubg/b;->H:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$f;->c:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v3, v2, Lcom/zjx/jyandroid/Extensions/pubg/b;->H:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/Extensions/pubg/b;->r(Lcom/zjx/jyandroid/Extensions/pubg/b$k;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$f;->c:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v3, v2, Lcom/zjx/jyandroid/Extensions/pubg/b;->C:Lcom/zjx/jyandroid/Extensions/pubg/b$d;

    if-eqz v3, :cond_3

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/pubg/b;->H:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    invoke-virtual {v3, v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->a(Lcom/zjx/jyandroid/Extensions/pubg/c$k;Lcom/zjx/jyandroid/Extensions/pubg/b$k;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$f;->c:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v3, v2, Lcom/zjx/jyandroid/Extensions/pubg/b;->y:Lcom/zjx/jyandroid/Extensions/pubg/b$l;

    if-eqz v3, :cond_4

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/pubg/b;->H:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    invoke-virtual {v3, v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->a(Lcom/zjx/jyandroid/Extensions/pubg/c$k;Lcom/zjx/jyandroid/Extensions/pubg/b$k;)V

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :cond_5
    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$f;->c:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->a:Lcom/zjx/jyandroid/ScreenCaptureManager;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->j:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Lcom/zjx/jyandroid/ScreenCaptureManager;->getScreenshot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$f;->a:Lk/n;

    invoke-virtual {v3, v0}, Lk/j;->c(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$f;->c:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/pubg/b;->I:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$f;->a:Lk/n;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Lk/n;->b(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v2, :cond_7

    if-eq v4, v3, :cond_7

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$f;->c:Lcom/zjx/jyandroid/Extensions/pubg/b;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    invoke-static {v4}, Lk/n;->f(I)Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/zjx/jyandroid/Extensions/pubg/b$k;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/b;Lcom/zjx/jyandroid/Extensions/pubg/c$l;)V

    iput-object v3, v2, Lcom/zjx/jyandroid/Extensions/pubg/b;->I:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$f;->c:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v3, v2, Lcom/zjx/jyandroid/Extensions/pubg/b;->I:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/Extensions/pubg/b;->r(Lcom/zjx/jyandroid/Extensions/pubg/b$k;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$f;->c:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v3, v2, Lcom/zjx/jyandroid/Extensions/pubg/b;->C:Lcom/zjx/jyandroid/Extensions/pubg/b$d;

    if-eqz v3, :cond_6

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/pubg/b;->I:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    invoke-virtual {v3, v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->a(Lcom/zjx/jyandroid/Extensions/pubg/c$k;Lcom/zjx/jyandroid/Extensions/pubg/b$k;)V

    :cond_6
    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$f;->c:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v3, v2, Lcom/zjx/jyandroid/Extensions/pubg/b;->y:Lcom/zjx/jyandroid/Extensions/pubg/b$l;

    if-eqz v3, :cond_7

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/pubg/b;->I:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    invoke-virtual {v3, v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->a(Lcom/zjx/jyandroid/Extensions/pubg/c$k;Lcom/zjx/jyandroid/Extensions/pubg/b$k;)V

    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    :cond_8
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$f;->a:Lk/n;

    invoke-virtual {v0}, Lk/n;->e()V

    const-string v0, "weapon tracker exit"

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    return-void
.end method
