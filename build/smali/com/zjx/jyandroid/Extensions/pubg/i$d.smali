.class public Lcom/zjx/jyandroid/Extensions/pubg/i$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/pubg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/zjx/jyandroid/Extensions/pubg/h;

.field public b:Lcom/zjx/jyandroid/Extensions/pubg/g$g;

.field public c:Lcom/zjx/jyandroid/Extensions/pubg/g$g;

.field public d:J

.field public e:D

.field public final f:I

.field public g:Z

.field public final synthetic h:Lcom/zjx/jyandroid/Extensions/pubg/i;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/i;Lcom/zjx/jyandroid/Extensions/pubg/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->h:Lcom/zjx/jyandroid/Extensions/pubg/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->d:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->e:D

    const/16 p1, 0xa

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->f:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->g:Z

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->a:Lcom/zjx/jyandroid/Extensions/pubg/h;

    invoke-interface {p2}, Lcom/zjx/jyandroid/Extensions/pubg/h;->getRecoilControlValueNodeRoot()Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->b:Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->c:Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->g:Z

    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->a:Lcom/zjx/jyandroid/Extensions/pubg/h;

    invoke-interface {v0}, Lcom/zjx/jyandroid/Extensions/pubg/h;->getRecoilControlValueNodeRoot()Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->b:Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    if-eq v0, v1, :cond_0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->b:Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->c:Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->c:Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/g$g;->c:Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    if-eqz v0, :cond_1

    iget-wide v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/g$g;->a:J

    iget-wide v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->d:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->c:Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->c:Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/g$g;->c:Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    if-eqz v0, :cond_1

    iget-wide v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/g$g;->a:J

    iget-wide v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->d:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->c:Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public run()V
    .locals 12

    const-wide/16 v0, 0x0

    :cond_0
    move-wide v2, v0

    :goto_0
    :try_start_0
    iget-boolean v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->g:Z

    if-nez v4, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->b()V

    iget-wide v6, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->e:D

    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->c:Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    iget-wide v8, v8, Lcom/zjx/jyandroid/Extensions/pubg/g$g;->b:D

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->e:D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v6, v8

    if-ltz v8, :cond_1

    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->h:Lcom/zjx/jyandroid/Extensions/pubg/i;

    iget-object v8, v8, Lcom/zjx/jyandroid/Extensions/pubg/i;->c:Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;

    double-to-int v6, v6

    const/4 v7, 0x0

    invoke-static {v8, v7, v6}, LK6/m;->rcOut(Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;II)V

    iget-wide v6, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->e:D

    double-to-int v8, v6

    int-to-double v8, v8

    sub-double/2addr v6, v8

    iput-wide v6, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->e:D

    :cond_1
    iget-wide v6, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->d:J

    const-wide/16 v8, 0xa

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$d;->d:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    sub-long/2addr v8, v6

    sub-long/2addr v8, v2

    long-to-int v2, v8

    if-lez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    int-to-long v5, v2

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v7, v3

    sub-long/2addr v7, v5

    move-wide v2, v7

    goto :goto_0

    :catch_0
    :cond_2
    return-void
.end method
