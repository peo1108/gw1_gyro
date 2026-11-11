.class public final LI4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF4/A;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LI4/h$a;
    }
.end annotation


# instance fields
.field public final X:LH4/c;

.field public final Y:Z


# direct methods
.method public constructor <init>(LH4/c;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI4/h;->X:LH4/c;

    iput-boolean p2, p0, LI4/h;->Y:Z

    return-void
.end method


# virtual methods
.method public final a(LF4/e;Ljava/lang/reflect/Type;)LF4/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LF4/e;",
            "Ljava/lang/reflect/Type;",
            ")",
            "LF4/z<",
            "*>;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_1

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM4/a;

    invoke-direct {v0, p2}, LM4/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, v0}, LF4/e;->t(LM4/a;)LF4/z;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, LI4/o;->f:LF4/z;

    :goto_1
    return-object p1
.end method

.method public b(LF4/e;LM4/a;)LF4/z;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LF4/e;",
            "LM4/a<",
            "TT;>;)",
            "LF4/z<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p2, LM4/a;->b:Ljava/lang/reflect/Type;

    iget-object v1, p2, LM4/a;->a:Ljava/lang/Class;

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {v0, v1}, LH4/b;->j(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {p0, p1, v2}, LI4/h;->a(LF4/e;Ljava/lang/reflect/Type;)LF4/z;

    move-result-object v7

    const/4 v2, 0x1

    aget-object v3, v0, v2

    new-instance v4, LM4/a;

    invoke-direct {v4, v3}, LM4/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, v4}, LF4/e;->t(LM4/a;)LF4/z;

    move-result-object v9

    iget-object v3, p0, LI4/h;->X:LH4/c;

    invoke-virtual {v3, p2}, LH4/c;->b(LM4/a;)LH4/k;

    move-result-object v10

    new-instance p2, LI4/h$a;

    aget-object v6, v0, v1

    aget-object v8, v0, v2

    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, LI4/h$a;-><init>(LI4/h;LF4/e;Ljava/lang/reflect/Type;LF4/z;Ljava/lang/reflect/Type;LF4/z;LH4/k;)V

    return-object p2
.end method
