.class public LX6/a;
.super LW5/b;
.source "SourceFile"


# instance fields
.field public c:LX6/b;

.field public d:LX6/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LX6/a;->c:LX6/b;

    iput-object v0, p0, LX6/a;->d:LX6/b$a;

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 0

    return-void
.end method

.method public d(II)V
    .locals 0

    return-void
.end method

.method public e(II)V
    .locals 0

    iget-object p1, p0, LX6/a;->c:LX6/b;

    iget-object p2, p0, LX6/a;->d:LX6/b$a;

    invoke-virtual {p1, p2}, LX6/b;->j(LX6/b$a;)V

    return-void
.end method

.method public i()LX6/b$a;
    .locals 1

    iget-object v0, p0, LX6/a;->d:LX6/b$a;

    return-object v0
.end method

.method public j()LX6/b;
    .locals 1

    iget-object v0, p0, LX6/a;->c:LX6/b;

    return-object v0
.end method

.method public k(LX6/b$a;)V
    .locals 0

    iput-object p1, p0, LX6/a;->d:LX6/b$a;

    return-void
.end method

.method public l(LX6/b;)V
    .locals 0

    iput-object p1, p0, LX6/a;->c:LX6/b;

    return-void
.end method
