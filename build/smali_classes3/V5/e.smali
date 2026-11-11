.class public LV5/e;
.super LV5/a;
.source "SourceFile"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LV5/e;->a:I

    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    return-void
.end method

.method public d(II)V
    .locals 2

    invoke-static {}, LB6/a;->e()LB6/a;

    move-result-object p1

    invoke-virtual {p1}, LB6/a;->a()Ln7/a;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget p2, p0, LV5/e;->a:I

    if-lez p2, :cond_1

    int-to-long v0, p2

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    invoke-interface {p1}, Ln7/a;->e()V

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, LV5/e;->a:I

    return v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, LV5/e;->a:I

    return-void
.end method
