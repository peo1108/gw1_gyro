.class public Lcom/zjx/jyandroid/ForegroundService/UI/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/a;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/a;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a$f;->a:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a$f;->a:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->n(I)V

    const-wide/16 v2, 0x50

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a$f;->a:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->o(I)V

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a$f;->a:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->o(I)V

    :cond_0
    return-void
.end method
