.class public Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$LoginCompletionHandleable;
    }
.end annotation


# static fields
.field static instance:Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;


# instance fields
.field private activationCode:Ljava/lang/String;

.field public alreadyLogin:Z

.field public loginToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x13757dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->activationCode:Ljava/lang/String;

    # mdm-offline: unlock all config features without server login
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->alreadyLogin:Z

    return-void
.end method

.method public static sharedInstance()Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->instance:Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;-><init>()V

    sput-object v0, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->instance:Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;

    :cond_0
    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->instance:Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;

    return-object v0
.end method


# virtual methods
.method public getActivationCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->activationCode:Ljava/lang/String;

    return-object v0
.end method

.method public loginOrRegister(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$LoginCompletionHandleable;)V
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-wide v1, -0x138a7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v1, -0x138d7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->n()Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide p1, -0x13967dacc755L

    invoke-static {p1, p2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p1

    const-wide v1, -0x13e07dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->n()Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->g()Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;

    move-result-object v1

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;->loginToken:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    move-object v5, p1

    goto :goto_1

    :cond_0
    const-wide p1, -0x13ec7dacc755L

    invoke-static {p1, p2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p1

    const-wide v1, -0x141a7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->activationCode:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :goto_1
    const-wide p1, -0x142a7dacc755L

    invoke-static {p1, p2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$c;->d()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x142c7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$c;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->a(Ljava/lang/String;)V

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$3;

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$1;

    invoke-direct {v6, p0, p3}, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$1;-><init>(Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$LoginCompletionHandleable;)V

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$2;

    invoke-direct {v7, p0, p3}, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$2;-><init>(Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$LoginCompletionHandleable;)V

    const/4 v4, 0x1

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$3;-><init>(Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/zjx/jyandroid/ForegroundService/HttpSessionManager;->addTaskToQueue(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public setActivationCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager;->activationCode:Ljava/lang/String;

    return-void
.end method
