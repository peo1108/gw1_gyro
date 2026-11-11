.class public LT5/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LW5/a;

.field public b:Landroid/graphics/Rect;

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LT5/d;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, LT5/d;->d:Z

    iput-boolean v0, p0, LT5/d;->e:Z

    iput-boolean v0, p0, LT5/d;->f:Z

    iput-boolean v0, p0, LT5/d;->g:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, LT5/d;->f:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, LT5/d;->g:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, LT5/d;->e:Z

    return v0
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, LT5/d;->f:Z

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, LT5/d;->g:Z

    return-void
.end method

.method public f(Ljava/util/concurrent/ExecutorService;Li7/l$a;IFF)Z
    .locals 7

    sget-object v0, Li7/l$a;->X:Li7/l$a;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    iget-boolean v0, p0, LT5/d;->d:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, LT5/d;->g:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, LT5/d;->d:Z

    iput p3, p0, LT5/d;->c:I

    new-instance v0, LT5/d$a;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, LT5/d$a;-><init>(LT5/d;Li7/l$a;IFF)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-boolean p1, p0, LT5/d;->f:Z

    return p1

    :cond_2
    sget-object v0, Li7/l$a;->Z:Li7/l$a;

    if-ne p2, v0, :cond_3

    iget v0, p0, LT5/d;->c:I

    if-ne p3, v0, :cond_3

    iget-boolean v0, p0, LT5/d;->d:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, LT5/d;->d:Z

    const/4 v0, -0x1

    iput v0, p0, LT5/d;->c:I

    new-instance v0, LT5/d$b;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, LT5/d$b;-><init>(LT5/d;Li7/l$a;IFF)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-boolean p1, p0, LT5/d;->f:Z

    return p1

    :cond_3
    return v1
.end method
