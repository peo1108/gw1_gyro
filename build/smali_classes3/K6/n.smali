.class public LK6/n;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final owner:LK6/m;


# direct methods
.method public constructor <init>(LK6/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, LK6/n;->owner:LK6/m;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LK6/n;->owner:LK6/m;

    :goto_0
    iget-boolean v1, v0, LK6/m;->gyroRunning:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LK6/m;->flushPending()V

    invoke-virtual {v0}, LK6/m;->flushScrollSmooth()V

    :try_start_0
    const-wide/16 v1, 0x5

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    iget-boolean v1, v0, LK6/m;->serverRunning:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, LK6/m;->sendGyro(FF)V

    :cond_1
    monitor-enter v0

    :try_start_1
    iget-object v1, v0, LK6/m;->gyroThread:Ljava/lang/Thread;

    if-ne v1, p0, :cond_2

    const/4 v1, 0x0

    iput-object v1, v0, LK6/m;->gyroThread:Ljava/lang/Thread;

    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
