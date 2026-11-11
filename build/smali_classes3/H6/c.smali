.class public LH6/c;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final owner:LH6/a;


# direct methods
.method public constructor <init>(LH6/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, LH6/c;->owner:LH6/a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LH6/c;->owner:LH6/a;

    :goto_0
    iget-boolean v1, v0, LH6/a;->rsRunning:Z

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, LH6/a;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    :try_start_1
    const-wide/16 v1, 0x5

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    :cond_0
    return-void
.end method
