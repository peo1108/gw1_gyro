.class public final LI4/j;
.super LF4/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF4/z<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:LF4/A;


# instance fields
.field public final a:LF4/e;

.field public final b:LF4/y;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, LF4/x;->X:LF4/x;

    new-instance v1, LI4/j$a;

    invoke-direct {v1, v0}, LI4/j$a;-><init>(LF4/y;)V

    sput-object v1, LI4/j;->c:LF4/A;

    return-void
.end method

.method public constructor <init>(LF4/e;LF4/y;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LI4/j;->a:LF4/e;

    .line 4
    iput-object p2, p0, LI4/j;->b:LF4/y;

    return-void
.end method

.method public synthetic constructor <init>(LF4/e;LF4/y;LI4/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LI4/j;-><init>(LF4/e;LF4/y;)V

    return-void
.end method

.method public static j(LF4/y;)LF4/A;
    .locals 1

    sget-object v0, LF4/x;->X:LF4/x;

    if-ne p0, v0, :cond_0

    sget-object p0, LI4/j;->c:LF4/A;

    return-object p0

    :cond_0
    new-instance v0, LI4/j$a;

    invoke-direct {v0, p0}, LI4/j$a;-><init>(LF4/y;)V

    return-object v0
.end method

.method private static k(LF4/y;)LF4/A;
    .locals 1

    new-instance v0, LI4/j$a;

    invoke-direct {v0, p0}, LI4/j$a;-><init>(LF4/y;)V

    return-object v0
.end method


# virtual methods
.method public e(LN4/a;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, LN4/a;->j0()LN4/c;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LI4/j;->m(LN4/a;LN4/c;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, v0}, LI4/j;->l(LN4/a;LN4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    :cond_1
    :goto_0
    invoke-virtual {p1}, LN4/a;->o()Z

    move-result v2

    if-eqz v2, :cond_6

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, LN4/a;->I()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1}, LN4/a;->j0()LN4/c;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, LI4/j;->m(LN4/a;LN4/c;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-nez v4, :cond_4

    invoke-virtual {p0, p1, v3}, LI4/j;->l(LN4/a;LN4/c;)Ljava/lang/Object;

    move-result-object v4

    :cond_4
    instance-of v3, v1, Ljava/util/List;

    if-eqz v3, :cond_5

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move-object v3, v1

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    if-eqz v5, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    move-object v1, v4

    goto :goto_0

    :cond_6
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_7

    invoke-virtual {p1}, LN4/a;->i()V

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, LN4/a;->j()V

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public i(LN4/d;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, LN4/d;->C()LN4/d;

    return-void

    :cond_0
    iget-object v0, p0, LI4/j;->a:LF4/e;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, LF4/e;->u(Ljava/lang/Class;)LF4/z;

    move-result-object v0

    instance-of v1, v0, LI4/j;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, LN4/d;->f()LN4/d;

    invoke-virtual {p1}, LN4/d;->j()LN4/d;

    return-void

    :cond_1
    invoke-virtual {v0, p1, p2}, LF4/z;->i(LN4/d;Ljava/lang/Object;)V

    return-void
.end method

.method public final l(LN4/a;LN4/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, LI4/j$b;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, LN4/a;->Z()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected token: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, LN4/a;->C()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p2, p0, LI4/j;->b:LF4/y;

    invoke-interface {p2, p1}, LF4/y;->e(LN4/a;)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p1}, LN4/a;->h0()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final m(LN4/a;LN4/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, LI4/j$b;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, LN4/a;->c()V

    new-instance p1, LH4/i;

    invoke-direct {p1}, LH4/i;-><init>()V

    return-object p1

    :cond_1
    invoke-virtual {p1}, LN4/a;->b()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method
