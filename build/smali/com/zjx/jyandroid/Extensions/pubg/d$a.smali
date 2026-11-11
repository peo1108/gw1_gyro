.class public Lcom/zjx/jyandroid/Extensions/pubg/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/d;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/d;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->j(Lcom/zjx/jyandroid/Extensions/pubg/d;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->g(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/b;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->g(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/b;

    move-result-object v0

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->g(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/b;

    move-result-object v1

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/b;->f:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v7, v1

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->k(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/TouchManager;

    move-result-object v1

    const/16 v8, 0xa

    invoke-virtual {v1, v0, v7, v8, v8}, Lcom/zjx/jyandroid/TouchManager;->k(FFII)I

    move-result v2

    const-wide/16 v9, 0xf

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->k(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/TouchManager;

    move-result-object v1

    const/16 v5, 0xa

    const/16 v6, 0xa

    move v3, v0

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/zjx/jyandroid/TouchManager;->q(IFFII)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->l(Lcom/zjx/jyandroid/Extensions/pubg/d;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->j(Lcom/zjx/jyandroid/Extensions/pubg/d;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1
    const-wide/16 v1, 0x5

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->k(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/TouchManager;

    move-result-object v1

    invoke-virtual {v1, v0, v7, v8, v8}, Lcom/zjx/jyandroid/TouchManager;->k(FFII)I

    move-result v2

    :try_start_2
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->k(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/TouchManager;

    move-result-object v1

    const/16 v5, 0xa

    const/16 v6, 0xa

    move v3, v0

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/zjx/jyandroid/TouchManager;->q(IFFII)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->j(Lcom/zjx/jyandroid/Extensions/pubg/d;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    return-void
.end method
