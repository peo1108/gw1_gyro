.class public final LI4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF4/A;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LI4/b$a;
    }
.end annotation


# instance fields
.field public final X:LH4/c;


# direct methods
.method public constructor <init>(LH4/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI4/b;->X:LH4/c;

    return-void
.end method


# virtual methods
.method public b(LF4/e;LM4/a;)LF4/z;
    .locals 3
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

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {v0, v1}, LH4/b;->h(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    new-instance v1, LM4/a;

    invoke-direct {v1, v0}, LM4/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, v1}, LF4/e;->t(LM4/a;)LF4/z;

    move-result-object v1

    iget-object v2, p0, LI4/b;->X:LH4/c;

    invoke-virtual {v2, p2}, LH4/c;->b(LM4/a;)LH4/k;

    move-result-object p2

    new-instance v2, LI4/b$a;

    invoke-direct {v2, p1, v0, v1, p2}, LI4/b$a;-><init>(LF4/e;Ljava/lang/reflect/Type;LF4/z;LH4/k;)V

    return-object v2
.end method
