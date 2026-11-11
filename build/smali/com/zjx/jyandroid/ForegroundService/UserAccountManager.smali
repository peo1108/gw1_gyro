.class public Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;,
        Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$LoginCompleteHandler;,
        Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$DepositCompleteHandler;
    }
.end annotation


# static fields
.field public static c:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;


# instance fields
.field public a:Z

.field public b:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->b:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;

    return-void
.end method

.method public static synthetic a(Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;)Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->b:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;

    return-object p0
.end method

.method public static synthetic b(Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;)Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->b:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;

    return-object p1
.end method

.method public static synthetic c(Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->a:Z

    return p1
.end method

.method public static synthetic d(Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->e()V

    return-void
.end method

.method public static h()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/R$string;->settings_key_basic_settings:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide v1, -0x24b27dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static n()Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->c:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;-><init>()V

    sput-object v0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->c:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;

    :cond_0
    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->c:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;

    return-object v0
.end method


# virtual methods
.method public final e()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-wide v1, -0x25b07dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public declared-synchronized f(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$DepositCompleteHandler;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->a:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    new-instance p1, Lcom/zjx/jyandroid/base/MError;

    const-wide v0, -0x255c7dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/base/SingleElementMap;

    const-wide v2, -0x256e7dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x25757dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, -0x1

    invoke-direct {p1, v0, v2, v1}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    const-wide/16 v0, -0x1

    invoke-interface {p2, p1, v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$DepositCompleteHandler;->depositCompleted(Lcom/zjx/jyandroid/base/MError;J)V
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

    const-wide v1, -0x257f7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-wide v0, -0x25877dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v5

    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$9;

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$7;

    invoke-direct {v6, p0, p2}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$7;-><init>(Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$DepositCompleteHandler;)V

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$8;

    invoke-direct {v7, p0, p2}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$8;-><init>(Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$DepositCompleteHandler;)V

    const/4 v4, 0x1

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$9;-><init>(Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->addTaskToQueue(Lcom/android/volley/Request;)Lcom/android/volley/Request;
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

.method public g()Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->b:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->a:Z

    return v0
.end method

.method public declared-synchronized j(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$LoginCompleteHandler;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-wide v1, -0x24d27dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v1, -0x24d57dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-wide v0, -0x24d77dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$3;

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$1;

    invoke-direct {v7, p0, p2, p1}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$1;-><init>(Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$LoginCompleteHandler;Ljava/lang/String;)V

    new-instance v8, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$2;

    invoke-direct {v8, p0, p2}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$2;-><init>(Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$LoginCompleteHandler;)V

    const/4 v5, 0x1

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$3;-><init>(Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->addTaskToQueue(Lcom/android/volley/Request;)Lcom/android/volley/Request;
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

.method public declared-synchronized k(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$LoginCompleteHandler;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-wide v1, -0x25127dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v1, -0x25207dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-wide v0, -0x25227dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v5

    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$6;

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$4;

    invoke-direct {v6, p0, p2}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$4;-><init>(Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$LoginCompleteHandler;)V

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$5;

    invoke-direct {v7, p0, p2}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$5;-><init>(Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$LoginCompleteHandler;)V

    const/4 v4, 0x1

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$6;-><init>(Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->addTaskToQueue(Lcom/android/volley/Request;)Lcom/android/volley/Request;
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
    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->b:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->a:Z

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->m(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->e()V
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

.method public m(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/R$string;->settings_key_basic_settings:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-wide v1, -0x24c27dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
