.class public final Lcom/zjx/gw2lic/Gw2License;
.super Ljava/lang/Object;
.source "Gw2License.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/gw2lic/Gw2License$Cb;,
        Lcom/zjx/gw2lic/Gw2License$Gw2Exception;
    }
.end annotation


# static fields
.field static final ACTIVE:Ljava/lang/String; = "ACTIVE"

.field private static final AUTH_PREF:Ljava/lang/String; = "GameW2Auth"

.field static final BASE:Ljava/lang/String; = "https://caesarvn.xyz"

.field private static final K_ACCESS:Ljava/lang/String; = "access_token"

.field private static final K_EXPIRES:Ljava/lang/String; = "expires_at"

.field private static final K_LIBKEY:Ljava/lang/String; = "lib_key"

.field private static final K_RECENT:Ljava/lang/String; = "recent_keys"

.field private static final K_REFRESH:Ljava/lang/String; = "refresh_token"

.field private static final K_ROLE:Ljava/lang/String; = "role"

.field private static final K_SECRET:Ljava/lang/String; = "unlock_secret"

.field private static final K_STATUS:Ljava/lang/String; = "last_status"

.field private static final K_TOKEN:Ljava/lang/String; = "session_token"

.field private static final MAX_RECENT:I = 0x5

.field private static final MAX_TRIES:I = 0x3

.field private static final PERMANENT:[Ljava/lang/String;

.field static final PRODUCT:Ljava/lang/String; = "gamew2"

.field private static final REFRESH_LOCK:Ljava/lang/Object;

.field private static final TIMEOUT:I = 0x3a98

.field private static final UTF8:Ljava/nio/charset/Charset;

.field private static volatile sActiveCache:Ljava/lang/Boolean;

.field private static volatile sAppCtx:Landroid/content/Context;

.field private static volatile sLibKeyCache:Ljava/lang/String;

.field private static volatile sMain:Landroid/os/Handler;

.field private static volatile sSecretCache:[B

.field private static volatile sTokenCache:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 45
    const-string v0, "\u000f\u0093r\u008c6"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/zjx/gw2lic/Gw2License;->UTF8:Ljava/nio/charset/Charset;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zjx/gw2lic/Gw2License;->REFRESH_LOCK:Ljava/lang/Object;

    .line 67
    const-string v6, "\u000f\u0089v\u00ee[5\u00ac"

    invoke-static/range {v6 .. v6}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n\u0095{\u00e5[8\u00bc\n\u0086f\u00cfH4\u00af\u0015\u00f9"

    invoke-static/range {v7 .. v7}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "\u001f\u009fd\u00e8\\>\u00ac"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u0008\u0082b\u00eeE>\u00ac"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u0016\u0088w\u00eaK?"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u001e\u0082b\u00e8M>\u00b7\u0018\u008b|\u00d1H\"\u00a0\u0018"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n\u0095{\u00e5[8\u00bc\n\u008ff\u00cfD7\u00b7\u0013\u00f5"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zjx/gw2lic/Gw2License;->PERMANENT:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-static {p0, p1}, Lcom/zjx/gw2lic/Gw2License;->toast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/zjx/gw2lic/Gw2License$Cb;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-static {p0, p1, p2, p3}, Lcom/zjx/gw2lic/Gw2License;->post(Lcom/zjx/gw2lic/Gw2License$Cb;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zjx/gw2lic/Gw2License$Gw2Exception;
        }
    .end annotation

    .line 21
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->refreshBlocking(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static activate(Landroid/content/Context;Ljava/lang/String;Lcom/zjx/gw2lic/Gw2License$Cb;)V
    .locals 2

    .line 334
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 335
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zjx/gw2lic/Gw2License$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/zjx/gw2lic/Gw2License$3;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/zjx/gw2lic/Gw2License$Cb;)V

    const-string p0, "=\u00b0\u0006\u008co\u0018\u009c<\u00b4N\u00e8l"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static activateBlocking(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zjx/gw2lic/Gw2License$Gw2Exception;
        }
    .end annotation

    .line 364
    const-string v0, "\u001b\u0084`\u00e8X>"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 365
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v1, :cond_4

    .line 366
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->store(Landroid/content/Context;)Lcom/zjx/gw2lic/Gw2Store;

    move-result-object v1

    .line 367
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2Device;->collect(Landroid/content/Context;)Lcom/zjx/gw2lic/Gw2Device;

    move-result-object v10

    .line 369
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 370
    const-string v4, "1\u00a2M"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 371
    const-string p1, ">\u00a2B\u00c8m\u001e"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10}, Lcom/zjx/gw2lic/Gw2Device;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v6, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    const-string v4, "\n\u0088g\u00f5"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "u\u00a6A\u00d5fT\u00896\u00b6F\u00eal[\u00885\u00c4"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v8, v10

    invoke-static/range {v4 .. v9}, Lcom/zjx/gw2lic/Gw2License;->httpRetry(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/zjx/gw2lic/Gw2Device;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 378
    invoke-static {v1, p1}, Lcom/zjx/gw2lic/Gw2License;->saveTokens(Lcom/zjx/gw2lic/Gw2Store;Lorg/json/JSONObject;)V

    .line 379
    invoke-static {v1, p1}, Lcom/zjx/gw2lic/Gw2License;->saveSecret(Lcom/zjx/gw2lic/Gw2Store;Lorg/json/JSONObject;)V

    .line 380
    const-string v4, "6\u00a6G\u00d5Q\u0008\u009c4\u00b6Z\u00ef"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lcom/zjx/gw2lic/Gw2Store;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v4, Lcom/zjx/gw2lic/Gw2License;->sActiveCache:Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/zjx/gw2lic/Gw2License$Gw2Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 383
    :try_start_1
    const-string v4, "\u001d\u0082`"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "u\u00ab]\u00c2k\u0015\u009b0\u00ed\\\u00e8h\u0002\u0096#"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ";\u00a4W\u00c4}\u0008\u00bc:\u00a9J\u00f2"

    invoke-static/range {v6 .. v6}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/zjx/gw2lic/Gw2License;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    const/4 v6, 0x0

    move-object v8, v10

    invoke-static/range {v4 .. v9}, Lcom/zjx/gw2lic/Gw2License;->http(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/zjx/gw2lic/Gw2Device;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 384
    invoke-static {v1, p1}, Lcom/zjx/gw2lic/Gw2License;->recordStatus(Lcom/zjx/gw2lic/Gw2Store;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 385
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 386
    invoke-static {v1, p1}, Lcom/zjx/gw2lic/Gw2License;->saveSecret(Lcom/zjx/gw2lic/Gw2Store;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 387
    :cond_1
    invoke-static {v4}, Lcom/zjx/gw2lic/Gw2License;->isPermanent(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 388
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->logout(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/zjx/gw2lic/Gw2License$Gw2Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    return-object v4

    :catch_0
    move-exception p1

    .line 392
    :try_start_2
    iget-boolean v1, p1, Lcom/zjx/gw2lic/Gw2License$Gw2Exception;->network:Z

    if-eqz v1, :cond_3

    return-object v0

    .line 393
    :cond_3
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->logout(Landroid/content/Context;)V

    .line 394
    throw p1
    :try_end_2
    .catch Lcom/zjx/gw2lic/Gw2License$Gw2Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 400
    :catch_1
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->logout(Landroid/content/Context;)V

    .line 401
    new-instance p0, Lcom/zjx/gw2lic/Gw2License$Gw2Exception;

    const-string p1, "\u0016\u00aeW\u00c4`\u0008\u008du\u00a7]\u00eef\u0004"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v3, v3}, Lcom/zjx/gw2lic/Gw2License$Gw2Exception;-><init>(Ljava/lang/String;IZZ)V

    throw p0

    :catch_2
    move-exception p1

    .line 397
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->logout(Landroid/content/Context;)V

    .line 398
    throw p1

    .line 365
    :cond_4
    new-instance p0, Lcom/zjx/gw2lic/Gw2License$Gw2Exception;

    const-string p1, "\u0016\u00aeW\u00c4`\u0008\u008du\u00a9J\u00e5)\u001f\u0090p\u00cfO\u00e6q\u0018\u00ac.\u00dc\u000b"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v3, v3}, Lcom/zjx/gw2lic/Gw2License$Gw2Exception;-><init>(Ljava/lang/String;IZZ)V

    throw p0
.end method

.method public static active(Landroid/content/Context;)Z
    .locals 2

    .line 206
    sget-object v0, Lcom/zjx/gw2lic/Gw2License;->sActiveCache:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 208
    :cond_0
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->store(Landroid/content/Context;)Lcom/zjx/gw2lic/Gw2Store;

    move-result-object p0

    const-string v0, "6\u00a6G\u00d5Q\u0008\u009c4\u00b6Z\u00ef"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zjx/gw2lic/Gw2Store;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u001b\u0084`\u00e8X>"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 209
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/zjx/gw2lic/Gw2License;->sActiveCache:Ljava/lang/Boolean;

    return p0
.end method

.method public static attach(Landroid/content/Context;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/zjx/gw2lic/Gw2License;->sAppCtx:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method private static backgroundCheck(Landroid/content/Context;)V
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zjx/gw2lic/Gw2License$1;

    invoke-direct {v1, p0}, Lcom/zjx/gw2lic/Gw2License$1;-><init>(Landroid/content/Context;)V

    const-string p0, "=\u00b0\u0006\u008c}\u000f\u0089\'\u00b6L\u00f4l\u0015\u0088"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static checkStatusSync(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .line 407
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->store(Landroid/content/Context;)Lcom/zjx/gw2lic/Gw2Store;

    move-result-object v0

    .line 408
    const-string v1, ";\u00a4W\u00c4}\u0008\u00b7!\u00adD\u00f9g"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zjx/gw2lic/Gw2Store;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 409
    const-string v1, "(\u00a2R\u00d3k\u0008\u0080\n\u00b6@\u00f7l\u0018"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/zjx/gw2lic/Gw2Store;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 410
    invoke-static {v6}, Lcom/zjx/gw2lic/Gw2License;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 411
    invoke-static {v1}, Lcom/zjx/gw2lic/Gw2License;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    :try_start_0
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->refreshBlocking(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/zjx/gw2lic/Gw2License$Gw2Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v2

    .line 417
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2Device;->collect(Landroid/content/Context;)Lcom/zjx/gw2lic/Gw2Device;

    move-result-object v7

    .line 418
    const-string v3, "\u001d\u0082`"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "u\u00ab]\u00c2k\u0015\u009b0\u00ed\\\u00e8h\u0002\u0096#"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lcom/zjx/gw2lic/Gw2License;->http(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/zjx/gw2lic/Gw2Device;Z)Lorg/json/JSONObject;

    move-result-object v3

    .line 419
    invoke-static {v0, v3}, Lcom/zjx/gw2lic/Gw2License;->recordStatus(Lcom/zjx/gw2lic/Gw2Store;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 420
    const-string v5, "\u001b\u0084`\u00e8X>"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v0, v3}, Lcom/zjx/gw2lic/Gw2License;->saveSecret(Lcom/zjx/gw2lic/Gw2Store;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 421
    :cond_2
    invoke-static {v4}, Lcom/zjx/gw2lic/Gw2License;->isPermanent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->logout(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/zjx/gw2lic/Gw2License$Gw2Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_0
    return-object v4

    :catch_1
    move-exception v0

    .line 428
    iget v3, v0, Lcom/zjx/gw2lic/Gw2License$Gw2Exception;->httpCode:I

    const/16 v4, 0x191

    if-eq v3, v4, :cond_4

    iget v3, v0, Lcom/zjx/gw2lic/Gw2License$Gw2Exception;->httpCode:I

    const/16 v4, 0x193

    if-ne v3, v4, :cond_6

    :cond_4
    invoke-static {v1}, Lcom/zjx/gw2lic/Gw2License;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 430
    :try_start_2
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->refreshBlocking(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Lcom/zjx/gw2lic/Gw2License$Gw2Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    move-exception v0

    .line 432
    iget-boolean v0, v0, Lcom/zjx/gw2lic/Gw2License$Gw2Exception;->network:Z

    if-eqz v0, :cond_5

    return-object v2

    .line 433
    :cond_5
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->logout(Landroid/content/Context;)V

    return-object v2

    .line 437
    :cond_6
    iget-boolean v1, v0, Lcom/zjx/gw2lic/Gw2License$Gw2Exception;->permanent:Z

    if-eqz v1, :cond_7

    iget-boolean v0, v0, Lcom/zjx/gw2lic/Gw2License$Gw2Exception;->network:Z

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->logout(Landroid/content/Context;)V

    :cond_7
    return-object v2
.end method

.method private static contains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 628
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static deviceCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 224
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2Device;->collect(Landroid/content/Context;)Lcom/zjx/gw2lic/Gw2Device;

    move-result-object p0

    iget-object p0, p0, Lcom/zjx/gw2lic/Gw2Device;->deviceCode:Ljava/lang/String;

    return-object p0
.end method

.method public static expiresAt(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 219
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->store(Landroid/content/Context;)Lcom/zjx/gw2lic/Gw2Store;

    move-result-object p0

    const-string v0, "?\u00bfD\u00c8|\u001e\u009b\n\u00a3["

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zjx/gw2lic/Gw2Store;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 220
    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static friendlyError(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 584
    const-string v0, "\u001b\u0084`\u00e8X:\u00bc\u0010\u009dc\u00d3J=\u00a6\u0014"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "\u0014\u00af\u1e99\u00d1.\u0008\u0089<\u00e2D\u00f9pV\u0092%\\\n\u00f9l\u0018\u1e1f>\u0098I\u1e35\u0091B\u00f9\u0010\u00c6I\u00ad\u0096\u0095\u00ba&\u008eo\u00e0\u1e18B\u00a3\u1e9d\u00c06\u00f0\u0091(\u00e4"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 585
    :cond_0
    const-string v0, "\u001e\u0082b\u00e8M>\u00b7\u0018\u008b|\u00d1H\"\u00a0\u0018"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "\u0011\u00a2M\u0081\u011f\u0098\u00c8>/L\u00f4)\u001e\u008c\u1ef1\u00c9\n\u00e3v\u009b\u00b0k\u00ccM\u00fb\u1e40\u0018\u00f9$\u1e78\u0000\u00e6\u0092\u0086\u00b7o\u008eX\u1e2f\u009bB\u00aeX\u00c4\u007f\u00ed\u00d0/\u00afD\u00c1e^\u009f0\u00ac\u1e8d\u00eb,\u001b\u1e2ds\u00ad\u1ef6\u00f3\'\u0010\u0018 \u00dc\u0008\u0184\u01b2\u1e8c\u00bfg"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 586
    :cond_1
    const-string v0, "\u000f\u0089v\u00ee[5\u00ac"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "\u000e\u00af]\u1e1ez[\u008a\u1e9e\u00e2\u013e\u007f)\u0014\u1e28p\u00cfO\u00e4a\u0005\u00fe)\u00d1K\u00f6\u0096\u0002\u00beh\u0093v\u00f8\u0093G\u00b8\u00b3\u00c0|\u00a8\u009e\u008f\u00acT\u0089~\u00ec\u1e51)\u00ea[\u1e05xP"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 587
    :cond_2
    const-string v0, "\u0008\u0082b\u00eeE>\u00ac"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "\u0011\u00a2M\u0081\u011f\u0098\u00c87\u1e09\u000f\u00e8a\u0003\u00c38\u1e6eC\u00b9"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 588
    :cond_3
    const-string v0, "\u001f\u009fd\u00e8\\>\u00ac"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "\u0011\u00a2M\u0081\u011f\u0098\u00c8=\u1e7d[\u00bca\u1ed7\u008d~"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 589
    :cond_4
    const-string v0, "\n\u0095{\u00e5[8\u00bc\n\u0086f\u00cfH4\u00af\u0015\u00f9"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "\t\u1e64Z\u0081~\u0013\u1e418\u00e2[\u1e3ddV\u008d7\u010dD\u00f0$\u0012\u1e7b;\u0098U\u00fa\u0016\u001c\u00f7"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 590
    :cond_5
    const-string v0, "\n\u0095{\u00e5[8\u00bc\n\u008ff\u00cfD7\u00b7\u0013\u00f5"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "\u0011\u00a2M\u0081e\u0013\u001c;\u00a5\u000f\u00e8a\u0003\u1e3a3\u009dY\u1e34jQ\u00ae#\u1e11H\u00b2\u0091\u008c\u00a0h"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 591
    :cond_6
    const-string v0, "\u0016\u0088w\u00eaK?"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "\u0011\u00a2M\u0081\u011f\u0098\u00c87\u1e09\u000f\u00f7a\u0085\u0082~"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 592
    :cond_7
    const-string v0, "\u0014\u0088`\u0081O-\u00a9\u001c\u008en\u00deE3"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\u0011\u00a2M\u0081\u011f\u0098\u00c8\u0144\u0172\u1ecc\u00ff)\u001d\u000e3\u00d5\n\u00ffk\u1ed0\u00aak\u1e67\u0005\u00e6\u0097\u0005\u1e662\u0093B\u1e46\u00da\u000c\u00bc\u00a0\u00cd;\u00e0\u009a\u1ed5\u00ac\u001c\u00c2~w\u009e:\u00eaTV\u007f^\u00800\u1e66\u0012\u00fb\u1ee9\u0017\u0081}"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_11

    const-string v0, "\u0014\u0088`\u00feO-\u00a9\u001c\u008en\u00deE3"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    .line 594
    :cond_8
    const-string v0, "\u0014\u0088`\u0081H4\u00bd\u001b\u0086"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "\u0011\u00a2M\u0081e\u0013\u001c;\u00a5\u000f\u00e8\u1eda\u0018\u00c3$\u1e1cC\u00b9"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_10

    const-string v0, "\u0014\u0088`\u00feH4\u00bd\u001b\u0086"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_0

    :cond_9
    const/16 p1, 0x191

    if-eq p0, p1, :cond_f

    const/16 p1, 0x199

    if-eq p0, p1, :cond_e

    const/16 p1, 0x1ad

    if-eq p0, p1, :cond_d

    const/16 p1, 0x193

    if-eq p0, p1, :cond_c

    const/16 p1, 0x194

    if-eq p0, p1, :cond_b

    .line 603
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    return-object p2

    .line 604
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u0016\u1e10]\u0081c\u009a\u0091u\u00a1G\u1e7b)^"

    invoke-static/range {p2 .. p2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "s\u00e9"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    return-object v2

    .line 598
    :cond_c
    const-string p0, "\u0011\u00a2M\u0081e\u0013\u001c;\u00a5\u000f\u00f7\u00e4\u0015\u008bp\u00d5E\u1e36pQ\u01cf\u01fb\u1e5bF\u00b2\u20ebL\u00ba\u00b5\u0093T\u00e5\u1e39G\u01c5\u00a2\u008es\u1e37\u0081B\u00a7\u1e9d\u00c7:\u00a3\u01e1\u00be\u00eaS]\u007f\u0019\u00cb\u1e87\u00e5F\u00f7e\u1ec6\u0092s\u00a2\u1ee6\u00bal\u001c\u0000-\u0097\u0008\u00f7\u1ec9O\u00b7!EB\u00b0\u0095\u0005\u1e60\'\u0091|\u1e40\u00d8\u0011\u00baJ\u008cq\u1e55\u009aN\u00edv\u00ce\u00fe\u00ef\u00ce3\u1e0f\u0015\u00c3k\u0011\u00808\u00ed"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 601
    :cond_d
    const-string p0, "\u000e\u00afU\u00ce.\u000f\t6\u00e2^\u00e9\u00e8V\u008d8\u00d4\u1eeb\u00e2$\u001d\u1e79%\u0096\u0005\u00c4\u008a\u0005\u00f9*AN\u00ea\u00da\u0013\u00bc\u1eac\u008ew\u1e29\u009cB\u00bc]\u00dc8"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    return-object v1

    .line 597
    :cond_f
    const-string p0, "\n\u00af]K`[\u0083=6A\u00fb)\u001e\u1e00 \u009dF\u1e50*Q\u0088>\u00d1\u0005\u00fe\r\u0002\u00bef\u00d8\u00cd\u00ee\u0092G\u00bc.\u1e0fo\u00a8\u0099\u1ec3\u00a6\u0012"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    :goto_0
    return-object v2

    :cond_11
    :goto_1
    return-object v1
.end method

.method public static gate(I)I
    .locals 1

    if-nez p0, :cond_0

    return p0

    .line 95
    :cond_0
    sget-object v0, Lcom/zjx/gw2lic/Gw2License;->sAppCtx:Landroid/content/Context;

    if-nez v0, :cond_1

    return p0

    .line 97
    :cond_1
    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2License;->active(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static gyroAuthTag([B)[B
    .locals 5

    .line 309
    const-string v0, "\u0012\u00aaU\u00c2]3\u00a9g\u00f7\u0019"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/gw2lic/Gw2License;->sAppCtx:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    invoke-static {v1}, Lcom/zjx/gw2lic/Gw2License;->unlockSecret(Landroid/content/Context;)[B

    move-result-object v1

    if-eqz v1, :cond_2

    .line 312
    array-length v3, v1

    if-nez v3, :cond_1

    goto :goto_0

    .line 314
    :cond_1
    :try_start_0
    const-string v3, "\t\u008fu\u008c<N\u00de"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 315
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 316
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v4, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 317
    invoke-virtual {v3, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    :goto_0
    return-object v2
.end method

.method private static http(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/zjx/gw2lic/Gw2Device;Z)Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zjx/gw2lic/Gw2License$Gw2Exception;
        }
    .end annotation

    .line 540
    const-string v0, ";\u00b7D\u00cdg\u0018\u0089!\u00ab@\u00f2&\u001c\u0090?\u00d3"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 0
    const-string v1, "\u0018\u00a2U\u00d3k\t\u00c8"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2\u00b3@\u00d1}A\u00c7z\u00a1N\u00f9z\u0017\u0091&\u00d3\u0004\u00ef}\u000b"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 542
    :try_start_0
    new-instance v7, Ljava/net/URL;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Lcom/zjx/gw2lic/Gw2License$Gw2Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 543
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 p0, 0x3a98

    .line 544
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 545
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 546
    const-string p0, "\u001b\u00a4W\u00c4~\u000f"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string p0, "\u0002\u00eay\u00e5C-\u00a6x\u0092]\u00f3m\u0003\u0080$\u0090i\u00f8`\u0014"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "=\u00a6Y\u00c4yI"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 548
    const-string p0, "\u001b\u00b2@\u00c9a\t\u0081/\u00a3[\u00f5f\u0018"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p0, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_1

    .line 549
    invoke-virtual {p4, p1}, Lcom/zjx/gw2lic/Gw2Device;->applyHeaders(Ljava/net/HttpURLConnection;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 551
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 552
    const-string p0, "\u0019\u00a8Z\u00d5k\u0015\u009cx\u0096V\u00ecl"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/zjx/gw2lic/Gw2License;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 554
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 555
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 556
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 558
    :cond_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    const/16 p2, 0x12c

    const/16 p3, 0xc8

    if-lt p0, p3, :cond_3

    if-ge p0, p2, :cond_3

    .line 559
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p4

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p4

    :goto_0
    invoke-static {p4}, Lcom/zjx/gw2lic/Gw2License;->readAll(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p4

    .line 560
    invoke-static {p4}, Lcom/zjx/gw2lic/Gw2License;->isBlank(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_4

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    goto :goto_1

    :cond_4
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/zjx/gw2lic/Gw2License$Gw2Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p4, p5

    :goto_1
    if-lt p0, p3, :cond_6

    if-ge p0, p2, :cond_6

    if-eqz p1, :cond_5

    .line 570
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    return-object p4

    .line 561
    :cond_6
    :try_start_2
    invoke-static {p4, p0}, Lcom/zjx/gw2lic/Gw2License;->toApiException(Lorg/json/JSONObject;I)Lcom/zjx/gw2lic/Gw2License$Gw2Exception;

    move-result-object p0

    throw p0
    :try_end_2
    .catch Lcom/zjx/gw2lic/Gw2License$Gw2Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    move-object v6, p1

    goto :goto_5

    :catch_0
    move-object v6, p1

    goto :goto_2

    :catch_1
    move-object v6, p1

    goto :goto_3

    :catch_2
    move-exception p0

    move-object v6, p1

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    .line 568
    :catch_3
    :goto_2
    :try_start_3
    new-instance p0, Lcom/zjx/gw2lic/Gw2License$Gw2Exception;

    const-string p1, "\u0013\u00a9B\u00c0b\u0012\u008cu\u00b0J\u00efy\u0019\u008d#\u00d8"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4, v5, v5}, Lcom/zjx/gw2lic/Gw2License$Gw2Exception;-><init>(Ljava/lang/String;IZZ)V

    throw p0

    .line 566
    :catch_4
    :goto_3
    new-instance p0, Lcom/zjx/gw2lic/Gw2License$Gw2Exception;

    const-string p1, "\u0014\u00a2@\u00d6a\t\u0083u\u00a7]\u00eef\u0004"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4, v5, v3}, Lcom/zjx/gw2lic/Gw2License$Gw2Exception;-><init>(Ljava/lang/String;IZZ)V

    throw p0

    :catch_5
    move-exception p0

    .line 564
    :goto_4
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_5
    if-eqz v6, :cond_7

    .line 570
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 571
    :cond_7
    throw p0
.end method

.method private static httpRetry(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/zjx/gw2lic/Gw2Device;Z)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zjx/gw2lic/Gw2License$Gw2Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 520
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/zjx/gw2lic/Gw2License;->http(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/zjx/gw2lic/Gw2Device;Z)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Lcom/zjx/gw2lic/Gw2License$Gw2Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    if-eq v1, v2, :cond_0

    .line 523
    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2License;->isTransient(Lcom/zjx/gw2lic/Gw2License$Gw2Exception;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x2bc

    int-to-long v4, v1

    mul-long/2addr v4, v2

    .line 524
    invoke-static {v4, v5}, Lcom/zjx/gw2lic/Gw2License;->sleepQuiet(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 523
    :cond_0
    throw v0

    .line 527
    :cond_1
    throw v0
.end method

.method public static isActivated(Landroid/content/Context;)Z
    .locals 2

    .line 201
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->store(Landroid/content/Context;)Lcom/zjx/gw2lic/Gw2Store;

    move-result-object p0

    const-string v0, ";\u00a4W\u00c4}\u0008\u00b7!\u00adD\u00f9g"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zjx/gw2lic/Gw2Store;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->isBlank(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static isBlank(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 633
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isPermanent(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 608
    sget-object v0, Lcom/zjx/gw2lic/Gw2License;->PERMANENT:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/zjx/gw2lic/Gw2License;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isTransient(Lcom/zjx/gw2lic/Gw2License$Gw2Exception;)Z
    .locals 2

    .line 531
    iget-boolean v0, p0, Lcom/zjx/gw2lic/Gw2License$Gw2Exception;->network:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/zjx/gw2lic/Gw2License$Gw2Exception;->httpCode:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    iget p0, p0, Lcom/zjx/gw2lic/Gw2License$Gw2Exception;->httpCode:I

    const/16 v0, 0x258

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static libKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 274
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->active(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 275
    :cond_0
    sget-object v0, Lcom/zjx/gw2lic/Gw2License;->sLibKeyCache:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    .line 277
    :cond_1
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->store(Landroid/content/Context;)Lcom/zjx/gw2lic/Gw2Store;

    move-result-object p0

    const-string v0, "6\u00aeV\u00fee\u001e\u0091"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/zjx/gw2lic/Gw2Store;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 278
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 279
    :cond_2
    sput-object p0, Lcom/zjx/gw2lic/Gw2License;->sLibKeyCache:Ljava/lang/String;

    return-object p0
.end method

.method public static logout(Landroid/content/Context;)V
    .locals 7

    .line 324
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->store(Landroid/content/Context;)Lcom/zjx/gw2lic/Gw2Store;

    move-result-object p0

    const-string v5, "6\u00aeV\u00fee\u001e\u0091"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ")\u00a2G\u00d2g\u0014\u0086\n\u00b6@\u00f7l\u0018"

    invoke-static/range {v6 .. v6}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, ";\u00a4W\u00c4}\u0008\u00b7!\u00adD\u00f9g"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(\u00a2R\u00d3k\u0008\u0080\n\u00b6@\u00f7l\u0018"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "?\u00bfD\u00c8|\u001e\u009b\n\u00a3["

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(\u00a8X\u00c4"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/\u00a9X\u00cem\u0010\u00b7&\u00a7L\u00eel\u0002"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zjx/gw2lic/Gw2Store;->remove([Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 325
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/zjx/gw2lic/Gw2License;->sActiveCache:Ljava/lang/Boolean;

    const/4 p0, 0x0

    .line 326
    sput-object p0, Lcom/zjx/gw2lic/Gw2License;->sSecretCache:[B

    .line 327
    sput-object p0, Lcom/zjx/gw2lic/Gw2License;->sLibKeyCache:Ljava/lang/String;

    .line 328
    sput-object p0, Lcom/zjx/gw2lic/Gw2License;->sTokenCache:Ljava/lang/String;

    return-void
.end method

.method private static main()Landroid/os/Handler;
    .locals 3

    .line 52
    sget-object v0, Lcom/zjx/gw2lic/Gw2License;->sMain:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 54
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_0
    const-class v1, Lcom/zjx/gw2lic/Gw2License;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v2, Lcom/zjx/gw2lic/Gw2License;->sMain:Landroid/os/Handler;

    if-nez v2, :cond_1

    .line 59
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 60
    sput-object v2, Lcom/zjx/gw2lic/Gw2License;->sMain:Landroid/os/Handler;

    :cond_1
    move-object v0, v2

    .line 62
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 624
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static post(Lcom/zjx/gw2lic/Gw2License$Cb;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 638
    :cond_0
    invoke-static {}, Lcom/zjx/gw2lic/Gw2License;->main()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 640
    invoke-interface {p0, p1, p2, p3}, Lcom/zjx/gw2lic/Gw2License$Cb;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 643
    :cond_1
    new-instance v1, Lcom/zjx/gw2lic/Gw2License$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/zjx/gw2lic/Gw2License$5;-><init>(Lcom/zjx/gw2lic/Gw2License$Cb;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static publicStatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 214
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->store(Landroid/content/Context;)Lcom/zjx/gw2lic/Gw2Store;

    move-result-object p0

    const-string v0, "6\u00a6G\u00d5Q\u0008\u009c4\u00b6Z\u00ef"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zjx/gw2lic/Gw2Store;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 215
    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static readAll(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p0, :cond_0

    .line 614
    const-string p0, ""

    return-object p0

    .line 615
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    .line 616
    new-array v1, v1, [B

    .line 618
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 619
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 620
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    sget-object v1, Lcom/zjx/gw2lic/Gw2License;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0
.end method

.method public static recentKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->store(Landroid/content/Context;)Lcom/zjx/gw2lic/Gw2Store;

    move-result-object p0

    const-string v1, "(\u00a2W\u00c4`\u000f\u00b7>\u00a7V\u00ef"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/zjx/gw2lic/Gw2Store;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 231
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 232
    :cond_0
    const-string v1, "P"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 233
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 234
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private static recordStatus(Lcom/zjx/gw2lic/Gw2Store;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    .line 481
    const-string v0, ")\u00b3U\u00d5{\u0008"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u001f\u009fd\u00e8\\>\u00ac"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 482
    const-string v1, "6\u00a6G\u00d5Q\u0008\u009c4\u00b6Z\u00ef"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/zjx/gw2lic/Gw2Store;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v1, "?\u00bfD\u00c8|\u001e\u009b\u0014\u00b6"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "?\u00bfD\u00c8|\u001e\u009b\n\u00a3["

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/zjx/gw2lic/Gw2Store;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string p0, "\u001b\u0084`\u00e8X>"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/zjx/gw2lic/Gw2License;->sActiveCache:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static refresh(Landroid/content/Context;Lcom/zjx/gw2lic/Gw2License$Cb;)V
    .locals 2

    .line 348
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 349
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zjx/gw2lic/Gw2License$4;

    invoke-direct {v1, p0, p1}, Lcom/zjx/gw2lic/Gw2License$4;-><init>(Landroid/content/Context;Lcom/zjx/gw2lic/Gw2License$Cb;)V

    const-string p0, "=\u00b0\u0006\u008c|\u001e\u008e\'\u00a7\\\u00f4"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static refreshBlocking(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zjx/gw2lic/Gw2License$Gw2Exception;
        }
    .end annotation

    .line 443
    sget-object v0, Lcom/zjx/gw2lic/Gw2License;->REFRESH_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 444
    :try_start_0
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->store(Landroid/content/Context;)Lcom/zjx/gw2lic/Gw2Store;

    move-result-object v1

    .line 445
    const-string v2, "(\u00a2R\u00d3k\u0008\u0080\n\u00b6@\u00f7l\u0018"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/zjx/gw2lic/Gw2Store;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 446
    invoke-static {v2}, Lcom/zjx/gw2lic/Gw2License;->isBlank(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-nez v3, :cond_3

    .line 449
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2Device;->collect(Landroid/content/Context;)Lcom/zjx/gw2lic/Gw2Device;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 452
    const-string v6, "(\u00a2R\u00d3k\u0008\u0080\u0001\u00adD\u00f9g"

    invoke-static/range {v6 .. v6}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 453
    const-string v2, ">\u00a2B\u00c8m\u001e"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/zjx/gw2lic/Gw2Device;->toJson()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v8, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 454
    const-string v6, "\n\u0088g\u00f5"

    invoke-static/range {v6 .. v6}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "u\u00a6A\u00d5fT\u0084<\u00a1J\u00f2z\u0013\u00ce\"\u00d8L\u00e5a\u0002\u00b6"

    invoke-static/range {v7 .. v7}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v10, v3

    invoke-static/range {v6 .. v11}, Lcom/zjx/gw2lic/Gw2License;->http(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/zjx/gw2lic/Gw2Device;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 455
    invoke-static {v1, v2}, Lcom/zjx/gw2lic/Gw2License;->saveTokens(Lcom/zjx/gw2lic/Gw2Store;Lorg/json/JSONObject;)V

    .line 456
    invoke-static {v1, v2}, Lcom/zjx/gw2lic/Gw2License;->saveSecret(Lcom/zjx/gw2lic/Gw2Store;Lorg/json/JSONObject;)V

    .line 457
    const-string v6, "\u001d\u0082`"

    invoke-static/range {v6 .. v6}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "u\u00ab]\u00c2k\u0015\u009b0\u00ed\\\u00e8h\u0002\u0096#"

    invoke-static/range {v7 .. v7}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ";\u00a4W\u00c4}\u0008\u00bc:\u00a9J\u00f2"

    invoke-static/range {v8 .. v8}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/zjx/gw2lic/Gw2License;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    const/4 v8, 0x0

    move-object v10, v3

    invoke-static/range {v6 .. v11}, Lcom/zjx/gw2lic/Gw2License;->http(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/zjx/gw2lic/Gw2Device;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 458
    invoke-static {v1, v2}, Lcom/zjx/gw2lic/Gw2License;->recordStatus(Lcom/zjx/gw2lic/Gw2Store;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 459
    const-string v6, "\u001b\u0084`\u00e8X>"

    invoke-static/range {v6 .. v6}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v1, v2}, Lcom/zjx/gw2lic/Gw2License;->saveSecret(Lcom/zjx/gw2lic/Gw2Store;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 460
    :cond_0
    invoke-static {v3}, Lcom/zjx/gw2lic/Gw2License;->isPermanent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->logout(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/zjx/gw2lic/Gw2License$Gw2Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v0

    return-object v3

    .line 466
    :catch_0
    new-instance p0, Lcom/zjx/gw2lic/Gw2License$Gw2Exception;

    const-string v1, "\u0016\u00aeW\u00c4`\u0008\u008du\u00a7]\u00eef\u0004"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4, v5, v5}, Lcom/zjx/gw2lic/Gw2License$Gw2Exception;-><init>(Ljava/lang/String;IZZ)V

    throw p0

    :catch_1
    move-exception v1

    .line 463
    iget-boolean v2, v1, Lcom/zjx/gw2lic/Gw2License$Gw2Exception;->network:Z

    if-nez v2, :cond_2

    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->logout(Landroid/content/Context;)V

    .line 464
    :cond_2
    throw v1

    .line 447
    :cond_3
    new-instance p0, Lcom/zjx/gw2lic/Gw2License$Gw2Exception;

    const-string v1, "\u0014\u00a8\u0014\u00d3k\u001d\u009a0\u00b1G\u00bc}\u0019\u00885\u00d3\u0004\u00b7E\u0012\u00aa\"\u00ceD\u00e6\u009aL\u00b8!\u00d2I\u00e3\u00d4"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4, v5, v5}, Lcom/zjx/gw2lic/Gw2License$Gw2Exception;-><init>(Ljava/lang/String;IZZ)V

    throw p0

    :catchall_0
    move-exception p0

    .line 468
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static rememberKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    .line 242
    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 243
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 244
    :cond_1
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->recentKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 245
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 246
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x5

    if-ge v1, v2, :cond_3

    .line 249
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 252
    :cond_3
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->store(Landroid/content/Context;)Lcom/zjx/gw2lic/Gw2Store;

    move-result-object p0

    const-string v0, "(\u00a2W\u00c4`\u000f\u00b7>\u00a7V\u00ef"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/zjx/gw2lic/Gw2Store;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static saveSecret(Lcom/zjx/gw2lic/Gw2Store;Lorg/json/JSONObject;)V
    .locals 2

    .line 489
    const-string v0, "/\u00a9X\u00cem\u0010\u00bb0\u00a1]\u00f9}"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zjx/gw2lic/Gw2License;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2License;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 491
    const-string v1, "/\u00a9X\u00cem\u0010\u00b7&\u00a7L\u00eel\u0002"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/zjx/gw2lic/Gw2Store;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    sget-object v1, Lcom/zjx/gw2lic/Gw2License;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/zjx/gw2lic/Gw2License;->sSecretCache:[B

    .line 494
    :cond_0
    const-string v0, "6\u00aeV\u00eak\u0002"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zjx/gw2lic/Gw2License;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2License;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 496
    const-string v1, "6\u00aeV\u00fee\u001e\u0091"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/zjx/gw2lic/Gw2Store;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    sput-object v0, Lcom/zjx/gw2lic/Gw2License;->sLibKeyCache:Ljava/lang/String;

    .line 499
    :cond_1
    const-string v0, ")\u00a2G\u00d2g\u0014\u0086\u0001\u00adD\u00f9g"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zjx/gw2lic/Gw2License;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 500
    invoke-static {p1}, Lcom/zjx/gw2lic/Gw2License;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 501
    const-string v0, ")\u00a2G\u00d2g\u0014\u0086\n\u00b6@\u00f7l\u0018"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/zjx/gw2lic/Gw2Store;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    sput-object p1, Lcom/zjx/gw2lic/Gw2License;->sTokenCache:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private static saveTokens(Lcom/zjx/gw2lic/Gw2Store;Lorg/json/JSONObject;)V
    .locals 2

    .line 474
    const-string v0, ";\u00a4W\u00c4}\u0008\u00bc:\u00a9J\u00f2"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zjx/gw2lic/Gw2License;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ";\u00a4W\u00c4}\u0008\u00b7!\u00adD\u00f9g"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/zjx/gw2lic/Gw2Store;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v0, "(\u00a2R\u00d3k\u0008\u0080\u0001\u00adD\u00f9g"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zjx/gw2lic/Gw2License;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(\u00a2R\u00d3k\u0008\u0080\n\u00b6@\u00f7l\u0018"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/zjx/gw2lic/Gw2Store;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v0, "?\u00bfD\u00c8|\u001e\u009b\u0014\u00b6"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zjx/gw2lic/Gw2License;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "?\u00bfD\u00c8|\u001e\u009b\n\u00a3["

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/zjx/gw2lic/Gw2Store;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v0, "\u000f\u0094q\u00f3"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(\u00a8X\u00c4"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/zjx/gw2lic/Gw2Store;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sessionToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 291
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->active(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 292
    :cond_0
    sget-object v0, Lcom/zjx/gw2lic/Gw2License;->sTokenCache:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    .line 294
    :cond_1
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->store(Landroid/content/Context;)Lcom/zjx/gw2lic/Gw2Store;

    move-result-object p0

    const-string v0, ")\u00a2G\u00d2g\u0014\u0086\n\u00b6@\u00f7l\u0018"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/zjx/gw2lic/Gw2Store;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 295
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 296
    :cond_2
    sput-object p0, Lcom/zjx/gw2lic/Gw2License;->sTokenCache:Ljava/lang/String;

    return-object p0
.end method

.method private static sleepQuiet(J)V
    .locals 0

    .line 535
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method

.method public static startGate(I)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 116
    :cond_0
    sget-object p0, Lcom/zjx/gw2lic/Gw2License;->sAppCtx:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez p0, :cond_1

    return v1

    .line 118
    :cond_1
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->active(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->backgroundCheck(Landroid/content/Context;)V

    return v0

    .line 122
    :cond_2
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->checkStatusSync(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 123
    const-string v3, "\u001b\u0084`\u00e8X>"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v0

    :cond_3
    if-nez v2, :cond_5

    .line 125
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->active(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 126
    const-string v1, "\u0019\u00af\u0184\u00c0.\u0010\u00056\u00aa\u000f\u00f4f\u1ed7\u0097p\u00d1C\u00f4a\u001f\u00ad.\u0096\u0005\u00c4\u008a\u0005\u00f9*AN\u00ea\u00da\u000c9\"\u00c6;\u00e0\u009a\u1ec3\u00bb\u001c\u00ddd\u00ec\u009e:\u00eatDx^\u01fa\u1eef\u00b1\u001c"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zjx/gw2lic/Gw2License;->toast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    return v0

    .line 129
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\u0016\u00aeW\u00c4`\u0008\u008du\u00a9Ghg\u0011\u00c34DD\u00f0$\u0160\u016e\u1ea8\u00db\u0005\u00ba"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "s\u00e9\u0014\u00f7{\u0012\u00c890A\u00fb)\u001d\u000e3\u00d5\n\u00ffk\u1ed0\u00aak\u00d4\u1e84\u00fb\u00d1"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zjx/gw2lic/Gw2License;->toast(Landroid/content/Context;Ljava/lang/String;)V

    return v1
.end method

.method private static store(Landroid/content/Context;)Lcom/zjx/gw2lic/Gw2Store;
    .locals 2

    .line 195
    new-instance v0, Lcom/zjx/gw2lic/Gw2Store;

    const-string v1, "\u001d\u00a6Y\u00c4YI\u00a9 \u00b6G"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zjx/gw2lic/Gw2Store;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private static toApiException(Lorg/json/JSONObject;I)Lcom/zjx/gw2lic/Gw2License$Gw2Exception;
    .locals 4

    .line 575
    const-string v0, "7\u00a2G\u00d2o\u001c\u008d"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 576
    const-string v2, "?\u00b5F\u00ce|"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 577
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p0, v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x190

    const/4 v2, 0x0

    if-lt p1, v1, :cond_1

    const/16 v1, 0x1f4

    if-lt p1, v1, :cond_2

    .line 578
    :cond_1
    sget-object v1, Lcom/zjx/gw2lic/Gw2License;->PERMANENT:[Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/zjx/gw2lic/Gw2License;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 579
    :goto_0
    new-instance v3, Lcom/zjx/gw2lic/Gw2License$Gw2Exception;

    invoke-static {p1, p0, v0}, Lcom/zjx/gw2lic/Gw2License;->friendlyError(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/zjx/gw2lic/Gw2License$Gw2Exception;-><init>(Ljava/lang/String;IZZ)V

    return-object v3
.end method

.method private static toast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 182
    invoke-static {}, Lcom/zjx/gw2lic/Gw2License;->main()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    new-instance v1, Lcom/zjx/gw2lic/Gw2License$2;

    invoke-direct {v1, p0, p1}, Lcom/zjx/gw2lic/Gw2License$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static unlock(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 156
    sget-object v0, Lcom/zjx/gw2lic/Gw2License;->sAppCtx:Landroid/content/Context;

    .line 157
    const-string v1, ""

    if-eqz v0, :cond_5

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 158
    :cond_0
    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2License;->unlockSecret(Landroid/content/Context;)[B

    move-result-object v2

    if-eqz v2, :cond_5

    .line 159
    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_1

    .line 160
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v1, 0x0

    .line 161
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 162
    array-length v3, v2

    rem-int v3, v1, v3

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v1, 0x6d

    add-int/lit8 v4, v4, 0x5a

    and-int/lit16 v4, v4, 0xff

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    .line 163
    aget-char v4, p0, v1

    xor-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([C)V

    .line 173
    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2License;->libKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 174
    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2License;->sessionToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    const-string v3, "z\u00e1\u0012\u0081"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "?\u00bfD\u00ce|\u000f\u00c8\u0014\u0085x\u00a1"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v0, :cond_4

    .line 177
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "?\u00bfD\u00ce|\u000f\u00c8\u0014\u0085{\u00a1"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    :goto_1
    return-object v1
.end method

.method public static unlockSecret(Landroid/content/Context;)[B
    .locals 2

    .line 257
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->active(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 258
    :cond_0
    sget-object v0, Lcom/zjx/gw2lic/Gw2License;->sSecretCache:[B

    if-eqz v0, :cond_1

    return-object v0

    .line 260
    :cond_1
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->store(Landroid/content/Context;)Lcom/zjx/gw2lic/Gw2Store;

    move-result-object p0

    const-string v0, "/\u00a9X\u00cem\u0010\u00b7&\u00a7L\u00eel\u0002"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/zjx/gw2lic/Gw2Store;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 261
    invoke-static {p0}, Lcom/zjx/gw2lic/Gw2License;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 262
    :cond_2
    sget-object v0, Lcom/zjx/gw2lic/Gw2License;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 263
    sput-object p0, Lcom/zjx/gw2lic/Gw2License;->sSecretCache:[B

    return-object p0
.end method
