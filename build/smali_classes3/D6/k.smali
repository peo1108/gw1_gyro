.class public LD6/k;
.super LW5/b;
.source "SourceFile"


# instance fields
.field public final c:Ln7/a;

.field public final d:LN6/b$b;

.field public final e:F

.field public f:I

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Ln7/a;LN6/b$b;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LD6/k;->h:Z

    iput-object p1, p0, LD6/k;->c:Ln7/a;

    iput-object p2, p0, LD6/k;->d:LN6/b$b;

    int-to-float p1, p3

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    iput p1, p0, LD6/k;->e:F

    return-void
.end method


# virtual methods
.method public d(II)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, LD6/k;->c:Ln7/a;

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, LD6/k;->d:LN6/b$b;

    sget-object p2, LN6/b$b;->X:LN6/b$b;

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, LD6/k;->j()V

    :cond_1
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(II)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, LD6/k;->c:Ln7/a;

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, LD6/k;->d:LN6/b$b;

    sget-object p2, LN6/b$b;->X:LN6/b$b;

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, LD6/k;->l()V

    goto :goto_0

    :cond_1
    sget-object p2, LN6/b$b;->Y:LN6/b$b;

    if-ne p1, p2, :cond_3

    iget-boolean p1, p0, LD6/k;->g:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, LD6/k;->l()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, LD6/k;->j()V

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, LD6/k;->h:Z

    return v0
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, LD6/k;->c:Ln7/a;

    iget v1, p0, LD6/k;->f:I

    invoke-interface {v0, v1}, Ln7/a;->h(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LD6/k;->g:Z

    return-void
.end method

.method public k(Z)V
    .locals 0

    iput-boolean p1, p0, LD6/k;->h:Z

    return-void
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, LD6/k;->c:Ln7/a;

    invoke-interface {v0}, Ln7/a;->c()I

    move-result v0

    iput v0, p0, LD6/k;->f:I

    iget-object v1, p0, LD6/k;->c:Ln7/a;

    int-to-float v0, v0

    iget v2, p0, LD6/k;->e:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-interface {v1, v0}, Ln7/a;->h(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LD6/k;->g:Z

    return-void
.end method
