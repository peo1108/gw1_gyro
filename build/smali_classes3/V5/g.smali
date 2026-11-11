.class public LV5/g;
.super LV5/a;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Thread;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, LV5/g;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public d(II)V
    .locals 0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, LV5/g;->a:Ljava/lang/Thread;

    :try_start_0
    iget p1, p0, LV5/g;->b:I

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, LV5/g;->a:Ljava/lang/Thread;

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, LV5/g;->b:I

    return v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, LV5/g;->b:I

    return-void
.end method
