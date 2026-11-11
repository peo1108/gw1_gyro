.class public Lcom/zjx/jyandroid/ForegroundService/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/ForegroundService/c$m;,
        Lcom/zjx/jyandroid/ForegroundService/c$l;,
        Lcom/zjx/jyandroid/ForegroundService/c$k;
    }
.end annotation


# static fields
.field public static c:Lcom/zjx/jyandroid/ForegroundService/c;


# instance fields
.field public a:Z

.field public b:Lcom/zjx/jyandroid/ForegroundService/c$m;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/c;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/c;->b:Lcom/zjx/jyandroid/ForegroundService/c$m;

    return-void
.end method

.method public static synthetic a(Lcom/zjx/jyandroid/ForegroundService/c;)Lcom/zjx/jyandroid/ForegroundService/c$m;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/c;->b:Lcom/zjx/jyandroid/ForegroundService/c$m;

    return-object p0
.end method

.method public static synthetic b(Lcom/zjx/jyandroid/ForegroundService/c;Lcom/zjx/jyandroid/ForegroundService/c$m;)Lcom/zjx/jyandroid/ForegroundService/c$m;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/c;->b:Lcom/zjx/jyandroid/ForegroundService/c$m;

    return-object p1
.end method

.method public static synthetic c(Lcom/zjx/jyandroid/ForegroundService/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/c;->a:Z

    return p1
.end method

.method public static synthetic d(Lcom/zjx/jyandroid/ForegroundService/c;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/c;->e()V

    return-void
.end method

.method public static h()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/App;->V1:Landroid/content/Context;

    sget v2, Lcom/zjx/jyandroid/e$k;->Ig:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide v1, -0x29fd1f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static o()Lcom/zjx/jyandroid/ForegroundService/c;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/c;->c:Lcom/zjx/jyandroid/ForegroundService/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/c;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ForegroundService/c;-><init>()V

    sput-object v0, Lcom/zjx/jyandroid/ForegroundService/c;->c:Lcom/zjx/jyandroid/ForegroundService/c;

    :cond_0
    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/c;->c:Lcom/zjx/jyandroid/ForegroundService/c;

    return-object v0
.end method


# virtual methods
.method public final e()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-wide v1, -0x2ab31f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/zjx/jyandroid/App;->V1:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public declared-synchronized f(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/c$k;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/c;->a:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    new-instance p1, Lo6/g;

    const-wide v0, -0x2a771f79daedL

    invoke-static {v0, v1}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lo6/i;

    sget-object v2, Led/a;->a:[Ljava/lang/String;

    const-wide v3, -0x2a891f79daedL

    invoke-static {v3, v4, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x2a901f79daedL

    invoke-static {v4, v5, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, -0x1

    invoke-direct {p1, v0, v2, v1}, Lo6/g;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    const-wide/16 v0, -0x1

    invoke-interface {p2, p1, v0, v1}, Lcom/zjx/jyandroid/ForegroundService/c$k;->a(Lo6/g;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-wide v1, -0x2a9a1f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Led/a;->a:[Ljava/lang/String;

    const-wide v1, -0x2aa21f79daedL

    invoke-static {v1, v2, v0}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/c$j;

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/c$h;

    invoke-direct {v6, p0, p2}, Lcom/zjx/jyandroid/ForegroundService/c$h;-><init>(Lcom/zjx/jyandroid/ForegroundService/c;Lcom/zjx/jyandroid/ForegroundService/c$k;)V

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/c$i;

    invoke-direct {v7, p0, p2}, Lcom/zjx/jyandroid/ForegroundService/c$i;-><init>(Lcom/zjx/jyandroid/ForegroundService/c;Lcom/zjx/jyandroid/ForegroundService/c$k;)V

    const/4 v4, 0x1

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/zjx/jyandroid/ForegroundService/c$j;-><init>(Lcom/zjx/jyandroid/ForegroundService/c;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lorg/json/JSONObject;)V

    invoke-static {}, LR5/f;->d()LR5/f;

    move-result-object p2

    invoke-virtual {p2, p1}, LR5/f;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public g()Lcom/zjx/jyandroid/ForegroundService/c$m;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/c;->b:Lcom/zjx/jyandroid/ForegroundService/c$m;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/c;->a:Z

    return v0
.end method

.method public declared-synchronized j(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/c$l;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-wide v1, -0x2a1d1f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Led/a;->a:[Ljava/lang/String;

    const-wide v2, -0x2a201f79daedL

    invoke-static {v2, v3, v1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, LA6/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v2, -0x2a221f79daedL

    invoke-static {v2, v3, v1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/c$d;

    new-instance v8, Lcom/zjx/jyandroid/ForegroundService/c$b;

    invoke-direct {v8, p0, p2, p1}, Lcom/zjx/jyandroid/ForegroundService/c$b;-><init>(Lcom/zjx/jyandroid/ForegroundService/c;Lcom/zjx/jyandroid/ForegroundService/c$l;Ljava/lang/String;)V

    new-instance v9, Lcom/zjx/jyandroid/ForegroundService/c$c;

    invoke-direct {v9, p0, p2}, Lcom/zjx/jyandroid/ForegroundService/c$c;-><init>(Lcom/zjx/jyandroid/ForegroundService/c;Lcom/zjx/jyandroid/ForegroundService/c$l;)V

    const/4 v6, 0x1

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/zjx/jyandroid/ForegroundService/c$d;-><init>(Lcom/zjx/jyandroid/ForegroundService/c;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lorg/json/JSONObject;)V

    invoke-static {}, LR5/f;->d()LR5/f;

    move-result-object p1

    invoke-virtual {p1, v0}, LR5/f;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized k(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/c$l;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-wide v1, -0x2a451f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Led/a;->a:[Ljava/lang/String;

    const-wide v1, -0x2a531f79daedL

    invoke-static {v1, v2, p1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, LA6/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x2a551f79daedL

    invoke-static {v1, v2, p1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/c$g;

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/c$e;

    invoke-direct {v7, p0, p2}, Lcom/zjx/jyandroid/ForegroundService/c$e;-><init>(Lcom/zjx/jyandroid/ForegroundService/c;Lcom/zjx/jyandroid/ForegroundService/c$l;)V

    new-instance v8, Lcom/zjx/jyandroid/ForegroundService/c$f;

    invoke-direct {v8, p0, p2}, Lcom/zjx/jyandroid/ForegroundService/c$f;-><init>(Lcom/zjx/jyandroid/ForegroundService/c;Lcom/zjx/jyandroid/ForegroundService/c$l;)V

    const/4 v5, 0x1

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/zjx/jyandroid/ForegroundService/c$g;-><init>(Lcom/zjx/jyandroid/ForegroundService/c;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lorg/json/JSONObject;)V

    invoke-static {}, LR5/f;->d()LR5/f;

    move-result-object p2

    invoke-virtual {p2, p1}, LR5/f;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized l()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/c;->b:Lcom/zjx/jyandroid/ForegroundService/c$m;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/c;->a:Z

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/c;->n(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/c;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized m(Lcom/zjx/jyandroid/ForegroundService/c$l;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, LA6/b;->e()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v2, -0x2aec1f79daedL

    invoke-static {v2, v3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/c$a;

    invoke-direct {v1, p0, p1}, Lcom/zjx/jyandroid/ForegroundService/c$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/c;Lcom/zjx/jyandroid/ForegroundService/c$l;)V

    invoke-virtual {p0, v0, v1}, Lcom/zjx/jyandroid/ForegroundService/c;->j(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/c$l;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x2ade1f79daedL

    invoke-static {v2, v3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LA6/d;->a(Ljava/lang/String;)V

    new-instance v0, Lo6/g;

    new-instance v1, Lo6/i;

    sget-object v2, Led/a;->a:[Ljava/lang/String;

    const-wide v3, -0x2ae01f79daedL

    invoke-static {v3, v4, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Led/a;->a:[Ljava/lang/String;

    const-wide v4, -0x2ae71f79daedL

    invoke-static {v4, v5, v3}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lo6/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lo6/g;-><init>(ILjava/util/Map;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/zjx/jyandroid/ForegroundService/c$l;->a(Lo6/g;Lcom/zjx/jyandroid/ForegroundService/c$m;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public n(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/App;->V1:Landroid/content/Context;

    sget v2, Lcom/zjx/jyandroid/e$k;->Ig:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-wide v1, -0x2a0d1f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
