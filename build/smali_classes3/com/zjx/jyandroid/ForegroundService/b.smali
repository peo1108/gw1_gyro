.class public Lcom/zjx/jyandroid/ForegroundService/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/ForegroundService/b$d;
    }
.end annotation


# static fields
.field public static d:Lcom/zjx/jyandroid/ForegroundService/b;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x16ff1f79daedL

    invoke-static {v0, v1}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static d()Lcom/zjx/jyandroid/ForegroundService/b;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/b;->d:Lcom/zjx/jyandroid/ForegroundService/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/b;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ForegroundService/b;-><init>()V

    sput-object v0, Lcom/zjx/jyandroid/ForegroundService/b;->d:Lcom/zjx/jyandroid/ForegroundService/b;

    :cond_0
    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/b;->d:Lcom/zjx/jyandroid/ForegroundService/b;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/b$d;)V
    .locals 10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-wide v1, -0x17141f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Led/a;->a:[Ljava/lang/String;

    const-wide v1, -0x17171f79daedL

    invoke-static {v1, v2, p1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/c;->o()Lcom/zjx/jyandroid/ForegroundService/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zjx/jyandroid/ForegroundService/c;->i()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x17201f79daedL

    invoke-static {v1, v2, p1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-wide v1, -0x17521f79daedL

    invoke-static {v1, v2, p1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/c;->o()Lcom/zjx/jyandroid/ForegroundService/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ForegroundService/c;->g()Lcom/zjx/jyandroid/ForegroundService/c$m;

    move-result-object v2

    iget-object v2, v2, Lcom/zjx/jyandroid/ForegroundService/c$m;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    move-object v6, p2

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x175e1f79daedL

    invoke-static {v1, v2, p1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-wide v1, -0x17741f79daedL

    invoke-static {v1, v2, p1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :goto_1
    const-wide v1, -0x17841f79daedL

    invoke-static {v1, v2, p1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, LA6/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x17861f79daedL

    invoke-static {v1, v2, p1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LA6/b;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LA6/d;->a(Ljava/lang/String;)V

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/b$c;

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/b$a;

    invoke-direct {v7, p0, p3}, Lcom/zjx/jyandroid/ForegroundService/b$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/b;Lcom/zjx/jyandroid/ForegroundService/b$d;)V

    new-instance v8, Lcom/zjx/jyandroid/ForegroundService/b$b;

    invoke-direct {v8, p0, p3}, Lcom/zjx/jyandroid/ForegroundService/b$b;-><init>(Lcom/zjx/jyandroid/ForegroundService/b;Lcom/zjx/jyandroid/ForegroundService/b$d;)V

    const/4 v5, 0x1

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/zjx/jyandroid/ForegroundService/b$c;-><init>(Lcom/zjx/jyandroid/ForegroundService/b;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lorg/json/JSONObject;)V

    invoke-static {}, LR5/f;->d()LR5/f;

    move-result-object p2

    invoke-virtual {p2, p1}, LR5/f;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/b;->a:Ljava/lang/String;

    return-void
.end method
