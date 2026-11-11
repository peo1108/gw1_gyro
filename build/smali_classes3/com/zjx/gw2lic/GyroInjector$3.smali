.class Lcom/zjx/gw2lic/GyroInjector$3;
.super Ljava/lang/Object;
.source "GyroInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/gw2lic/GyroInjector;->ensureInjected(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 339
    iput-object p1, p0, Lcom/zjx/gw2lic/GyroInjector$3;->val$app:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/zjx/gw2lic/GyroInjector$3;->val$app:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/zjx/gw2lic/GyroInjector;->access$000(Landroid/content/Context;I)I

    move-result v1

    const/16 v3, 0x4d

    if-ne v1, v3, :cond_0

    .line 349
    invoke-static {v2}, Lcom/zjx/gw2lic/GyroInjector;->access$102(Z)Z

    .line 350
    invoke-static {v2}, Lcom/zjx/gw2lic/GyroInjector;->access$202(Z)Z

    .line 351
    invoke-static {v2}, Lcom/zjx/gw2lic/GyroInjector;->access$302(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    :goto_0
    invoke-static {}, Lcom/zjx/gw2lic/GyroInjector;->access$400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_0
    if-eqz v1, :cond_1

    const-wide/16 v4, 0x190

    .line 357
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/zjx/gw2lic/GyroInjector$3;->val$app:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v1, v4}, Lcom/zjx/gw2lic/GyroInjector;->access$000(Landroid/content/Context;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 360
    invoke-static {v2}, Lcom/zjx/gw2lic/GyroInjector;->access$102(Z)Z

    .line 361
    invoke-static {v2}, Lcom/zjx/gw2lic/GyroInjector;->access$202(Z)Z

    .line 362
    invoke-static {v2}, Lcom/zjx/gw2lic/GyroInjector;->access$302(Z)Z

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 368
    invoke-static {v2}, Lcom/zjx/gw2lic/GyroInjector;->access$302(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 376
    :catchall_0
    :cond_2
    invoke-static {}, Lcom/zjx/gw2lic/GyroInjector;->access$400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
