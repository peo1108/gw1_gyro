.class public abstract LW5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7/a;


# instance fields
.field public a:Lh7/b;

.field public b:Z


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

    return-void
.end method

.method public d(II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public e(II)V
    .locals 1

    new-instance v0, Lh7/b;

    invoke-direct {v0, p1, p2}, Lh7/b;-><init>(II)V

    iput-object v0, p0, LW5/b;->a:Lh7/b;

    return-void
.end method

.method public f()Lh7/b;
    .locals 1

    iget-object v0, p0, LW5/b;->a:Lh7/b;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, LW5/b;->b:Z

    return v0
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, LW5/b;->b:Z

    return-void
.end method
