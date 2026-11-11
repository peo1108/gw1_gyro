.class public LD6/f;
.super LW5/b;
.source "SourceFile"


# instance fields
.field public final c:Ln7/a;

.field public d:I


# direct methods
.method public constructor <init>(Ln7/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD6/f;->c:Ln7/a;

    return-void
.end method


# virtual methods
.method public d(II)V
    .locals 0

    return-void
.end method

.method public e(II)V
    .locals 0

    :try_start_0
    iget p1, p0, LD6/f;->d:I

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, LD6/f;->c:Ln7/a;

    invoke-interface {p1}, Ln7/a;->e()V

    return-void
.end method

.method public i()I
    .locals 1

    iget v0, p0, LD6/f;->d:I

    return v0
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, LD6/f;->d:I

    return-void
.end method
