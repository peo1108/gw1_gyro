.class public LV5/b;
.super LV5/a;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Z

.field public c:LD6/e;

.field public d:Landroid/graphics/Point;

.field public e:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, LV5/b;->a:I

    const/4 v1, 0x0

    iput-boolean v1, p0, LV5/b;->b:Z

    new-instance v1, LD6/e;

    invoke-direct {v1}, LD6/e;-><init>()V

    iput-object v1, p0, LV5/b;->c:LD6/e;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, LV5/b;->d:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, LV5/b;->e:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public d(II)V
    .locals 2

    iget-boolean p2, p0, LV5/b;->b:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, LV5/b;->c:LD6/e;

    invoke-virtual {p2, p1, p1}, LD6/e;->e(II)V

    const/4 p2, 0x1

    iput-boolean p2, p0, LV5/b;->b:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    iput-object p2, p0, LV5/b;->e:Ljava/lang/Thread;

    :try_start_0
    iget p2, p0, LV5/b;->a:I

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p2, p0, LV5/b;->c:LD6/e;

    invoke-virtual {p2, p1}, LW5/b;->b(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, LV5/b;->b:Z

    const/4 p1, 0x0

    iput-object p1, p0, LV5/b;->e:Ljava/lang/Thread;

    return-void
.end method

.method public e()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, LV5/b;->d:Landroid/graphics/Point;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, LV5/b;->a:I

    return v0
.end method

.method public g(Landroid/graphics/Point;)V
    .locals 1

    iput-object p1, p0, LV5/b;->d:Landroid/graphics/Point;

    iget-object v0, p0, LV5/b;->c:LD6/e;

    iput-object p1, v0, LW5/c;->c:Landroid/graphics/Point;

    return-void
.end method

.method public h(I)V
    .locals 2

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_1
    iput p1, p0, LV5/b;->a:I

    return-void
.end method
