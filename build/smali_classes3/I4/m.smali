.class public final LI4/m;
.super LI4/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LI4/m$b;,
        LI4/m$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LI4/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:LF4/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LF4/s<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:LF4/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LF4/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:LF4/e;

.field public final d:LM4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LM4/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:LF4/A;

.field public final f:LI4/m$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LI4/m<",
            "TT;>.b;"
        }
    .end annotation
.end field

.field public final g:Z

.field public volatile h:LF4/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LF4/z<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LF4/s;LF4/j;LF4/e;LM4/a;LF4/A;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LF4/s<",
            "TT;>;",
            "LF4/j<",
            "TT;>;",
            "LF4/e;",
            "LM4/a<",
            "TT;>;",
            "LF4/A;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, LI4/m;-><init>(LF4/s;LF4/j;LF4/e;LM4/a;LF4/A;Z)V

    return-void
.end method

.method public constructor <init>(LF4/s;LF4/j;LF4/e;LM4/a;LF4/A;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LF4/s<",
            "TT;>;",
            "LF4/j<",
            "TT;>;",
            "LF4/e;",
            "LM4/a<",
            "TT;>;",
            "LF4/A;",
            "Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, LI4/m$b;

    .line 4
    invoke-direct {v0, p0}, LI4/m$b;-><init>(LI4/m;)V

    .line 5
    iput-object v0, p0, LI4/m;->f:LI4/m$b;

    .line 6
    iput-object p1, p0, LI4/m;->a:LF4/s;

    .line 7
    iput-object p2, p0, LI4/m;->b:LF4/j;

    .line 8
    iput-object p3, p0, LI4/m;->c:LF4/e;

    .line 9
    iput-object p4, p0, LI4/m;->d:LM4/a;

    .line 10
    iput-object p5, p0, LI4/m;->e:LF4/A;

    .line 11
    iput-boolean p6, p0, LI4/m;->g:Z

    return-void
.end method

.method private k()LF4/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LF4/z<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LI4/m;->h:LF4/z;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LI4/m;->c:LF4/e;

    iget-object v1, p0, LI4/m;->e:LF4/A;

    iget-object v2, p0, LI4/m;->d:LM4/a;

    invoke-virtual {v0, v1, v2}, LF4/e;->v(LF4/A;LM4/a;)LF4/z;

    move-result-object v0

    iput-object v0, p0, LI4/m;->h:LF4/z;

    :goto_0
    return-object v0
.end method

.method public static l(LM4/a;Ljava/lang/Object;)LF4/A;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LM4/a<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "LF4/A;"
        }
    .end annotation

    new-instance v0, LI4/m$c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v1, v2}, LI4/m$c;-><init>(Ljava/lang/Object;LM4/a;ZLjava/lang/Class;)V

    return-object v0
.end method

.method public static m(LM4/a;Ljava/lang/Object;)LF4/A;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LM4/a<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "LF4/A;"
        }
    .end annotation

    iget-object v0, p0, LM4/a;->b:Ljava/lang/reflect/Type;

    iget-object v1, p0, LM4/a;->a:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, LI4/m$c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v0, v2}, LI4/m$c;-><init>(Ljava/lang/Object;LM4/a;ZLjava/lang/Class;)V

    return-object v1
.end method

.method public static n(Ljava/lang/Class;Ljava/lang/Object;)LF4/A;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "LF4/A;"
        }
    .end annotation

    new-instance v0, LI4/m$c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p0}, LI4/m$c;-><init>(Ljava/lang/Object;LM4/a;ZLjava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public e(LN4/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN4/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LI4/m;->b:LF4/j;

    if-nez v0, :cond_0

    invoke-direct {p0}, LI4/m;->k()LF4/z;

    move-result-object v0

    invoke-virtual {v0, p1}, LF4/z;->e(LN4/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, LH4/o;->a(LN4/a;)LF4/k;

    move-result-object p1

    iget-boolean v0, p0, LI4/m;->g:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LF4/k;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v0, p0, LI4/m;->b:LF4/j;

    iget-object v1, p0, LI4/m;->d:LM4/a;

    iget-object v1, v1, LM4/a;->b:Ljava/lang/reflect/Type;

    iget-object v2, p0, LI4/m;->f:LI4/m$b;

    invoke-interface {v0, p1, v1, v2}, LF4/j;->a(LF4/k;Ljava/lang/reflect/Type;LF4/i;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(LN4/d;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN4/d;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LI4/m;->a:LF4/s;

    if-nez v0, :cond_0

    invoke-direct {p0}, LI4/m;->k()LF4/z;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LF4/z;->i(LN4/d;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v1, p0, LI4/m;->g:Z

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    invoke-virtual {p1}, LN4/d;->C()LN4/d;

    return-void

    :cond_1
    iget-object v1, p0, LI4/m;->d:LM4/a;

    iget-object v1, v1, LM4/a;->b:Ljava/lang/reflect/Type;

    iget-object v2, p0, LI4/m;->f:LI4/m$b;

    invoke-interface {v0, p2, v1, v2}, LF4/s;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;LF4/r;)LF4/k;

    move-result-object p2

    invoke-static {p2, p1}, LH4/o;->b(LF4/k;LN4/d;)V

    return-void
.end method

.method public j()LF4/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LF4/z<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LI4/m;->a:LF4/s;

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, LI4/m;->k()LF4/z;

    move-result-object v0

    :goto_0
    return-object v0
.end method
