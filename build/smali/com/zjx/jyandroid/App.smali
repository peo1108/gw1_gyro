.class public Lcom/zjx/jyandroid/App;
.super Landroid/app/Application;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/App$GetMessageTaskCompleteHandler;,
        Lcom/zjx/jyandroid/App$GetUpdateInfoCompleteHandler;
    }
.end annotation


# static fields
.field private static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getAppDocumentFolder()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$f;->m()Z

    move-result v0

    const-string v1, "/jyandroid"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/App;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static j()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/App;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getCopiesAssetsFilesDir()Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/assets"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInternalDocumentFolder()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMessageFromServer(Ljava/lang/String;Lcom/zjx/jyandroid/App$GetMessageTaskCompleteHandler;)V
    .locals 8

    # mdm-offline: no server message fetch
    return-void

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://121.41.85.22:8888/v2/message/android?version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    new-instance p1, Lcom/zjx/jyandroid/App$3;

    new-instance v6, Lcom/zjx/jyandroid/App$1;

    invoke-direct {v6, p0, p2}, Lcom/zjx/jyandroid/App$1;-><init>(Lcom/zjx/jyandroid/App;Lcom/zjx/jyandroid/App$GetMessageTaskCompleteHandler;)V

    new-instance v7, Lcom/zjx/jyandroid/App$2;

    invoke-direct {v7, p0, p2}, Lcom/zjx/jyandroid/App$2;-><init>(Lcom/zjx/jyandroid/App;Lcom/zjx/jyandroid/App$GetMessageTaskCompleteHandler;)V

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/zjx/jyandroid/App$3;-><init>(Lcom/zjx/jyandroid/App;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;

    move-result-object v0

    const/16 v1, 0x1b58

    invoke-virtual {v0, p1, v1, p0}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->addTaskToQueue(Lcom/android/volley/Request;ILjava/lang/Object;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zjx/jyandroid/base/MError;

    new-instance v1, Lcom/zjx/jyandroid/base/SingleElementMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u539f\u56e0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "reason"

    invoke-direct {v1, v2, p1}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "RuntimeError"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    const/4 p1, 0x0

    invoke-interface {p2, v0, v2, p1, p1}, Lcom/zjx/jyandroid/App$GetMessageTaskCompleteHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;ZLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getUpdateInfoFromServer(ILcom/zjx/jyandroid/App$GetUpdateInfoCompleteHandler;)V
    .locals 7

    # mdm-offline: no server update check
    return-void

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://121.41.85.22:8888/v3/app/update_info?version_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&platform=android"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    new-instance p1, Lcom/zjx/jyandroid/App$6;

    new-instance v5, Lcom/zjx/jyandroid/App$4;

    invoke-direct {v5, p0, p2}, Lcom/zjx/jyandroid/App$4;-><init>(Lcom/zjx/jyandroid/App;Lcom/zjx/jyandroid/App$GetUpdateInfoCompleteHandler;)V

    new-instance v6, Lcom/zjx/jyandroid/App$5;

    invoke-direct {v6, p0, p2}, Lcom/zjx/jyandroid/App$5;-><init>(Lcom/zjx/jyandroid/App;Lcom/zjx/jyandroid/App$GetUpdateInfoCompleteHandler;)V

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/zjx/jyandroid/App$6;-><init>(Lcom/zjx/jyandroid/App;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;

    move-result-object v0

    const/16 v1, 0xfa0

    invoke-virtual {v0, p1, v1, p0}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->addTaskToQueue(Lcom/android/volley/Request;ILjava/lang/Object;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Lcom/zjx/jyandroid/base/MError;

    new-instance v0, Lcom/zjx/jyandroid/base/SingleElementMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u539f\u56e0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "reason"

    invoke-direct {v0, v2, p1}, Lcom/zjx/jyandroid/base/SingleElementMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "RuntimeError"

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0}, Lcom/zjx/jyandroid/base/MError;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/zjx/jyandroid/App$GetUpdateInfoCompleteHandler;->requestCompleted(Lcom/zjx/jyandroid/base/MError;ZILjava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public static loadManageADBActivity(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object v0

    invoke-virtual {v0}, Ly/d;->a()Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/ADB/ADBConnectionMode;->WIRELESS:Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object v0

    invoke-virtual {v0}, Ly/d;->a()Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/ADB/ADBConnectionMode;->WIRED:Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWired;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object v0

    invoke-virtual {v0}, Ly/d;->a()Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/ADB/ADBConnectionMode;->ROOT:Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/App;->context:Landroid/content/Context;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ly/a;->f(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    new-instance v0, Lcom/zjx/jyandroid/App$7;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/App$7;-><init>(Lcom/zjx/jyandroid/App;)V

    const-string v1, "1.8.41"

    invoke-direct {p0, v1, v0}, Lcom/zjx/jyandroid/App;->getMessageFromServer(Ljava/lang/String;Lcom/zjx/jyandroid/App$GetMessageTaskCompleteHandler;)V

    new-instance v0, Lcom/zjx/jyandroid/App$8;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/App$8;-><init>(Lcom/zjx/jyandroid/App;)V

    const/16 v1, 0xdb

    invoke-direct {p0, v1, v0}, Lcom/zjx/jyandroid/App;->getUpdateInfoFromServer(ILcom/zjx/jyandroid/App$GetUpdateInfoCompleteHandler;)V

    return-void
.end method
