.class public final LI4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF4/A;


# instance fields
.field public final X:LH4/c;


# direct methods
.method public constructor <init>(LH4/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI4/e;->X:LH4/c;

    return-void
.end method


# virtual methods
.method public a(LH4/c;LF4/e;LM4/a;LG4/b;)LF4/z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LH4/c;",
            "LF4/e;",
            "LM4/a<",
            "*>;",
            "LG4/b;",
            ")",
            "LF4/z<",
            "*>;"
        }
    .end annotation

    invoke-interface {p4}, LG4/b;->value()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, LM4/a;

    invoke-direct {v1, v0}, LM4/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, v1}, LH4/c;->b(LM4/a;)LH4/k;

    move-result-object p1

    invoke-interface {p1}, LH4/k;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p4}, LG4/b;->nullSafe()Z

    move-result v6

    instance-of p4, p1, LF4/z;

    if-eqz p4, :cond_0

    check-cast p1, LF4/z;

    goto :goto_3

    :cond_0
    instance-of p4, p1, LF4/A;

    if-eqz p4, :cond_1

    check-cast p1, LF4/A;

    invoke-interface {p1, p2, p3}, LF4/A;->b(LF4/e;LM4/a;)LF4/z;

    move-result-object p1

    goto :goto_3

    :cond_1
    instance-of p4, p1, LF4/s;

    if-nez p4, :cond_3

    instance-of v0, p1, LF4/j;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Invalid attempt to bind an instance of "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as a @JsonAdapter for "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, LM4/a;->b:Ljava/lang/reflect/Type;

    invoke-static {p1}, LH4/b;->t(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_0
    const/4 v0, 0x0

    if-eqz p4, :cond_4

    move-object p4, p1

    check-cast p4, LF4/s;

    move-object v1, p4

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    instance-of p4, p1, LF4/j;

    if-eqz p4, :cond_5

    check-cast p1, LF4/j;

    move-object v2, p1

    goto :goto_2

    :cond_5
    move-object v2, v0

    :goto_2
    new-instance p1, LI4/m;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, LI4/m;-><init>(LF4/s;LF4/j;LF4/e;LM4/a;LF4/A;Z)V

    const/4 v6, 0x0

    :goto_3
    if-eqz p1, :cond_6

    if-eqz v6, :cond_6

    new-instance p2, LF4/z$a;

    invoke-direct {p2, p1}, LF4/z$a;-><init>(LF4/z;)V

    move-object p1, p2

    :cond_6
    return-object p1
.end method

.method public b(LF4/e;LM4/a;)LF4/z;
    .locals 2
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

    iget-object v0, p2, LM4/a;->a:Ljava/lang/Class;

    const-class v1, LG4/b;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, LG4/b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, LI4/e;->X:LH4/c;

    invoke-virtual {p0, v1, p1, p2, v0}, LI4/e;->a(LH4/c;LF4/e;LM4/a;LG4/b;)LF4/z;

    move-result-object p1

    return-object p1
.end method
