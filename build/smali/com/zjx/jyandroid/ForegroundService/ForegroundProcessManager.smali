.class public Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager$ActivityInfo;
    }
.end annotation


# static fields
.field static instance:Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;


# instance fields
.field foregroundActivitiesInfo:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager$ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;->packageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;->foregroundActivitiesInfo:Ljava/util/LinkedList;

    return-void
.end method

.method private notifyForegroundActivitiesChanged([Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zjx.jyandroid.foregroundActivitiesChanged"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "packages"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "foregroundActivities"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static sharedInstance()Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;->instance:Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;-><init>()V

    sput-object v0, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;->instance:Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;

    :cond_0
    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;->instance:Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;

    return-object v0
.end method


# virtual methods
.method public getForegroundActivities()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;->foregroundActivitiesInfo:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;->foregroundActivitiesInfo:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager$ActivityInfo;

    iget-object v3, v3, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager$ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .locals 6

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;->foregroundActivitiesInfo:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    if-eqz p3, :cond_0

    new-instance v5, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager$ActivityInfo;

    invoke-direct {v5, p0, v4, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager$ActivityInfo;-><init>(Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;Ljava/lang/String;II)V

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;->foregroundActivitiesInfo:Ljava/util/LinkedList;

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;->foregroundActivitiesInfo:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager$ActivityInfo;

    iget v5, v5, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager$ActivityInfo;->pid:I

    if-ne v5, p1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0, p3}, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;->notifyForegroundActivitiesChanged([Ljava/lang/String;Z)V

    return-void

    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onProcessDied(II)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;->foregroundActivitiesInfo:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;->foregroundActivitiesInfo:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager$ActivityInfo;

    iget v2, v2, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager$ActivityInfo;->pid:I

    if-ne v2, p1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;->notifyForegroundActivitiesChanged([Ljava/lang/String;Z)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
