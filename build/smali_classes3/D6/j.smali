.class public LD6/j;
.super LW5/b;
.source "SourceFile"


# instance fields
.field public c:Ln7/a$a;

.field public d:LN6/b$a;

.field public e:Ln7/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, LW5/b;->d(II)V

    iget-object p1, p0, LD6/j;->d:LN6/b$a;

    sget-object v0, LN6/b$a;->X:LN6/b$a;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, LD6/j;->e:Ln7/a;

    sget-object v0, Ln7/a$a;->X:Ln7/a$a;

    invoke-interface {p1, v0}, Ln7/a;->g(Ln7/a$a;)V

    :cond_0
    return-void
.end method

.method public e(II)V
    .locals 0

    invoke-super {p0, p1, p2}, LW5/b;->e(II)V

    iget-object p1, p0, LD6/j;->d:LN6/b$a;

    sget-object p2, LN6/b$a;->X:LN6/b$a;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, LD6/j;->e:Ln7/a;

    iget-object p2, p0, LD6/j;->c:Ln7/a$a;

    invoke-interface {p1, p2}, Ln7/a;->g(Ln7/a$a;)V

    goto :goto_0

    :cond_0
    sget-object p2, LN6/b$a;->Y:LN6/b$a;

    if-ne p1, p2, :cond_2

    iget-object p1, p0, LD6/j;->e:Ln7/a;

    invoke-interface {p1}, Ln7/a;->f()Ln7/a$a;

    move-result-object p1

    iget-object p2, p0, LD6/j;->c:Ln7/a$a;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, LD6/j;->e:Ln7/a;

    sget-object p2, Ln7/a$a;->X:Ln7/a$a;

    invoke-interface {p1, p2}, Ln7/a;->g(Ln7/a$a;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, LD6/j;->e:Ln7/a;

    invoke-interface {p1, p2}, Ln7/a;->g(Ln7/a$a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public i()Ln7/a$a;
    .locals 1

    iget-object v0, p0, LD6/j;->c:Ln7/a$a;

    return-object v0
.end method

.method public j()Ln7/a;
    .locals 1

    iget-object v0, p0, LD6/j;->e:Ln7/a;

    return-object v0
.end method

.method public k()LN6/b$a;
    .locals 1

    iget-object v0, p0, LD6/j;->d:LN6/b$a;

    return-object v0
.end method

.method public l(Ln7/a$a;)V
    .locals 0

    iput-object p1, p0, LD6/j;->c:Ln7/a$a;

    return-void
.end method

.method public m(Ln7/a;)V
    .locals 0

    iput-object p1, p0, LD6/j;->e:Ln7/a;

    return-void
.end method

.method public n(LN6/b$a;)V
    .locals 0

    iput-object p1, p0, LD6/j;->d:LN6/b$a;

    return-void
.end method
