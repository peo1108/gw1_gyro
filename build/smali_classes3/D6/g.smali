.class public LD6/g;
.super LW5/b;
.source "SourceFile"


# instance fields
.field public final c:LH6/a;

.field public d:I


# direct methods
.method public constructor <init>(LH6/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LD6/g;->d:I

    iput-object p1, p0, LD6/g;->c:LH6/a;

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 0

    return-void
.end method

.method public e(II)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, LD6/g;->c:LH6/a;

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LT5/a;->d()Z

    move-result p1

    if-nez p1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    iget p1, p0, LD6/g;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_2

    int-to-long p1, p1

    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_2
    :try_start_2
    iget-object p1, p0, LD6/g;->c:LH6/a;

    invoke-virtual {p1}, LH6/a;->a()V

    iget-object p1, p0, LD6/g;->c:LH6/a;

    invoke-virtual {p1}, LH6/a;->c()V

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public i()I
    .locals 1

    iget v0, p0, LD6/g;->d:I

    return v0
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, LD6/g;->d:I

    return-void
.end method
