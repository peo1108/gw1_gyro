.class public final LI4/i;
.super LF4/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF4/z<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:LF4/A;


# instance fields
.field public final a:LF4/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LF4/x;->Y:LF4/x;

    invoke-static {v0}, LI4/i;->k(LF4/y;)LF4/A;

    move-result-object v0

    sput-object v0, LI4/i;->b:LF4/A;

    return-void
.end method

.method public constructor <init>(LF4/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI4/i;->a:LF4/y;

    return-void
.end method

.method public static j(LF4/y;)LF4/A;
    .locals 1

    sget-object v0, LF4/x;->Y:LF4/x;

    if-ne p0, v0, :cond_0

    sget-object p0, LI4/i;->b:LF4/A;

    return-object p0

    :cond_0
    invoke-static {p0}, LI4/i;->k(LF4/y;)LF4/A;

    move-result-object p0

    return-object p0
.end method

.method public static k(LF4/y;)LF4/A;
    .locals 1

    new-instance v0, LI4/i;

    invoke-direct {v0, p0}, LI4/i;-><init>(LF4/y;)V

    new-instance p0, LI4/i$a;

    invoke-direct {p0, v0}, LI4/i$a;-><init>(LI4/i;)V

    return-object p0
.end method


# virtual methods
.method public bridge synthetic e(LN4/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LI4/i;->l(LN4/a;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public i(LN4/d;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p1, p2}, LN4/d;->r0(Ljava/lang/Number;)LN4/d;

    return-void
.end method

.method public l(LN4/a;)Ljava/lang/Number;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, LN4/a;->j0()LN4/c;

    move-result-object v0

    sget-object v1, LI4/i$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, LF4/u;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expecting number, got: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; at path "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LN4/a;->u0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, LI4/i;->a:LF4/y;

    invoke-interface {v0, p1}, LF4/y;->e(LN4/a;)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1}, LN4/a;->Z()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public m(LN4/d;Ljava/lang/Number;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, LN4/d;->r0(Ljava/lang/Number;)LN4/d;

    return-void
.end method
