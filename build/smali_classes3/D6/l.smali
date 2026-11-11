.class public LD6/l;
.super LW5/b;
.source "SourceFile"


# instance fields
.field public c:LF6/a;

.field public d:Lcom/zjx/jyandroid/ForegroundService/UI/a;

.field public final e:LH6/a;

.field public final f:LN6/e$a;

.field public g:Landroid/graphics/Point;

.field public final h:LN6/e$b;


# direct methods
.method public constructor <init>(LH6/a;LN6/e$a;)V
    .locals 1

    .line 8
    sget-object v0, LN6/e$b;->X:LN6/e$b;

    invoke-direct {p0, p1, p2, v0}, LD6/l;-><init>(LH6/a;LN6/e$a;LN6/e$b;)V

    return-void
.end method

.method public constructor <init>(LH6/a;LN6/e$a;LN6/e$b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x64

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, LD6/l;->g:Landroid/graphics/Point;

    .line 3
    iput-object p1, p0, LD6/l;->e:LH6/a;

    .line 4
    iput-object p2, p0, LD6/l;->f:LN6/e$a;

    .line 5
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->F()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object p1

    iput-object p1, p0, LD6/l;->d:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    .line 6
    invoke-static {}, LF6/a;->r()LF6/a;

    move-result-object p1

    iput-object p1, p0, LD6/l;->c:LF6/a;

    .line 7
    iput-object p3, p0, LD6/l;->h:LN6/e$b;

    return-void
.end method

.method private j()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LD6/l;->d:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LD6/l;->f:LN6/e$a;

    sget-object v1, LN6/e$a;->Y:LN6/e$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LD6/l;->d:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    iget-object v1, p0, LD6/l;->g:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->H(Landroid/graphics/Point;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    sget-object v1, LN6/e$a;->Z:LN6/e$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LD6/l;->d:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->p()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->H(Landroid/graphics/Point;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LD6/l;->d:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->G()V

    :goto_0
    iget-object v0, p0, LD6/l;->c:LF6/a;

    iget-object v1, p0, LD6/l;->e:LH6/a;

    invoke-virtual {v0, v1}, LF6/a;->n(Lm7/d;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, LD6/l;->d:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->r()V

    iget-object v0, p0, LD6/l;->c:LF6/a;

    iget-object v1, p0, LD6/l;->e:LH6/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, LF6/a;->g(ILm7/a;)V

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public d(II)V
    .locals 0

    iget-object p1, p0, LD6/l;->h:LN6/e$b;

    sget-object p2, LN6/e$b;->Y:LN6/e$b;

    if-eq p1, p2, :cond_0

    sget-object p2, LN6/e$b;->Z:LN6/e$b;

    if-ne p1, p2, :cond_1

    :cond_0
    invoke-direct {p0}, LD6/l;->j()V

    :cond_1
    return-void
.end method

.method public e(II)V
    .locals 0

    iget-object p1, p0, LD6/l;->h:LN6/e$b;

    sget-object p2, LN6/e$b;->X:LN6/e$b;

    if-eq p1, p2, :cond_0

    sget-object p2, LN6/e$b;->Z:LN6/e$b;

    if-ne p1, p2, :cond_1

    :cond_0
    invoke-direct {p0}, LD6/l;->j()V

    :cond_1
    return-void
.end method

.method public i()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, LD6/l;->g:Landroid/graphics/Point;

    return-object v0
.end method

.method public k(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, LD6/l;->g:Landroid/graphics/Point;

    return-void
.end method
