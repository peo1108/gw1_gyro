.class public LD6/m;
.super LW5/b;
.source "SourceFile"


# instance fields
.field public final c:LH6/a;

.field public d:LN6/d$a;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z


# direct methods
.method public constructor <init>(LH6/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LN6/d$a;->Y:LN6/d$a;

    iput-object v0, p0, LD6/m;->d:LN6/d$a;

    const/16 v0, 0x12c

    iput v0, p0, LD6/m;->e:I

    iput v0, p0, LD6/m;->f:I

    iput v0, p0, LD6/m;->g:I

    iput v0, p0, LD6/m;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, LD6/m;->i:Z

    iput-object p1, p0, LD6/m;->c:LH6/a;

    return-void
.end method


# virtual methods
.method public d(II)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, LD6/m;->d:LN6/d$a;

    sget-object p2, LN6/d$a;->X:LN6/d$a;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LD6/m;->r(Z)V

    iput-boolean p1, p0, LD6/m;->i:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, LD6/m;->d:LN6/d$a;

    sget-object p2, LN6/d$a;->X:LN6/d$a;

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p0, v0}, LD6/m;->r(Z)V

    iput-boolean v0, p0, LD6/m;->i:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    sget-object p2, LN6/d$a;->Y:LN6/d$a;

    if-ne p1, p2, :cond_2

    iget-boolean p1, p0, LD6/m;->i:Z

    const/4 p2, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, LD6/m;->r(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, LD6/m;->r(Z)V

    :goto_0
    iget-boolean p1, p0, LD6/m;->i:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, LD6/m;->i:Z

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i()I
    .locals 1

    iget v0, p0, LD6/m;->e:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, LD6/m;->g:I

    return v0
.end method

.method public k()LN6/d$a;
    .locals 1

    iget-object v0, p0, LD6/m;->d:LN6/d$a;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, LD6/m;->f:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, LD6/m;->h:I

    return v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, LD6/m;->i:Z

    return v0
.end method

.method public o(I)V
    .locals 0

    iput p1, p0, LD6/m;->e:I

    return-void
.end method

.method public p(LN6/d$a;)V
    .locals 0

    iput-object p1, p0, LD6/m;->d:LN6/d$a;

    return-void
.end method

.method public q(I)V
    .locals 0

    iput p1, p0, LD6/m;->f:I

    return-void
.end method

.method public final r(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, LD6/m;->c:LH6/a;

    invoke-virtual {p1}, LH6/a;->n()I

    move-result p1

    iput p1, p0, LD6/m;->g:I

    iget-object p1, p0, LD6/m;->c:LH6/a;

    invoke-virtual {p1}, LH6/a;->w()I

    move-result p1

    iput p1, p0, LD6/m;->h:I

    iget-object p1, p0, LD6/m;->c:LH6/a;

    iget v0, p0, LD6/m;->e:I

    invoke-virtual {p1, v0}, LH6/a;->H(I)V

    iget-object p1, p0, LD6/m;->c:LH6/a;

    iget v0, p0, LD6/m;->f:I

    invoke-virtual {p1, v0}, LH6/a;->S(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LD6/m;->c:LH6/a;

    iget v0, p0, LD6/m;->g:I

    invoke-virtual {p1, v0}, LH6/a;->H(I)V

    iget-object p1, p0, LD6/m;->c:LH6/a;

    iget v0, p0, LD6/m;->h:I

    invoke-virtual {p1, v0}, LH6/a;->S(I)V

    :goto_0
    return-void
.end method
