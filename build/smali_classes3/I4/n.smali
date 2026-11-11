.class public final LI4/n;
.super LF4/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LF4/z<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:LF4/e;

.field public final b:LF4/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LF4/z<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(LF4/e;LF4/z;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LF4/e;",
            "LF4/z<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI4/n;->a:LF4/e;

    iput-object p2, p0, LI4/n;->b:LF4/z;

    iput-object p3, p0, LI4/n;->c:Ljava/lang/reflect/Type;

    return-void
.end method

.method public static j(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p0, Ljava/lang/Class;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static k(LF4/z;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LF4/z<",
            "*>;)Z"
        }
    .end annotation

    :goto_0
    instance-of v0, p0, LI4/l;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, LI4/l;

    invoke-virtual {v0}, LI4/l;->j()LF4/z;

    move-result-object v0

    if-ne v0, p0, :cond_0

    goto :goto_1

    :cond_0
    move-object p0, v0

    goto :goto_0

    :cond_1
    :goto_1
    instance-of p0, p0, LI4/k$b;

    return p0
.end method


# virtual methods
.method public e(LN4/a;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, LI4/n;->b:LF4/z;

    invoke-virtual {v0, p1}, LF4/z;->e(LN4/a;)Ljava/lang/Object;

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

    iget-object v0, p0, LI4/n;->b:LF4/z;

    iget-object v1, p0, LI4/n;->c:Ljava/lang/reflect/Type;

    invoke-static {v1, p2}, LI4/n;->j(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, LI4/n;->c:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_1

    iget-object v0, p0, LI4/n;->a:LF4/e;

    new-instance v2, LM4/a;

    invoke-direct {v2, v1}, LM4/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v0, v2}, LF4/e;->t(LM4/a;)LF4/z;

    move-result-object v0

    instance-of v1, v0, LI4/k$b;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, LI4/n;->b:LF4/z;

    invoke-static {v1}, LI4/n;->k(LF4/z;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, LI4/n;->b:LF4/z;

    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2}, LF4/z;->i(LN4/d;Ljava/lang/Object;)V

    return-void
.end method
