.class Lcom/zjx/gw2lic/SkipShot$1;
.super Ljava/lang/Object;
.source "SkipShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/gw2lic/SkipShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 53
    invoke-static {}, Lcom/zjx/gw2lic/SkipShot;->access$000()Ljava/util/WeakHashMap;

    move-result-object v0

    monitor-enter v0

    .line 54
    :try_start_0
    invoke-static {}, Lcom/zjx/gw2lic/SkipShot;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 55
    invoke-static {}, Lcom/zjx/gw2lic/SkipShot;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/zjx/gw2lic/SkipShot;->access$000()Ljava/util/WeakHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 56
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 57
    :goto_0
    invoke-static {}, Lcom/zjx/gw2lic/SkipShot;->access$100()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 58
    invoke-static {}, Lcom/zjx/gw2lic/SkipShot;->access$100()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 59
    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    invoke-static {v3}, Lcom/zjx/gw2lic/SkipShot;->access$200(Landroid/view/View;)Z

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {}, Lcom/zjx/gw2lic/SkipShot;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz v2, :cond_2

    .line 66
    invoke-static {}, Lcom/zjx/gw2lic/SkipShot;->access$300()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 68
    :cond_2
    invoke-static {v0}, Lcom/zjx/gw2lic/SkipShot;->access$402(Z)Z

    :goto_1
    return-void

    :catchall_0
    move-exception v1

    .line 56
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
