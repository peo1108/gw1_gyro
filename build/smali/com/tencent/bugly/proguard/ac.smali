.class public final Lcom/tencent/bugly/proguard/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x3e8

.field public static b:J = 0xf731400L

.field private static d:Lcom/tencent/bugly/proguard/ac;

.field private static i:Ljava/lang/String;


# instance fields
.field public final c:Lcom/tencent/bugly/proguard/ak;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/o;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

.field private g:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

.field private h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/o;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ac;->g:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ac;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/aa;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/aa;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/tencent/bugly/proguard/aa;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/aa;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/bugly/proguard/aa;->H:Ljava/lang/String;

    const-string v0, "oversea"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "https://astat.bugly.qcloud.com/rqd/async"

    sput-object p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;

    sput-object p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "na_https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "https://astat.bugly.cros.wr.pvp.net/:8180/rqd/async"

    sput-object p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;

    sput-object p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->b:Ljava/lang/String;

    :cond_1
    :goto_0
    new-instance p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    invoke-direct {p1}, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ac;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/ac;->e:Ljava/util/List;

    invoke-static {}, Lcom/tencent/bugly/proguard/ak;->a()Lcom/tencent/bugly/proguard/ak;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ac;->c:Lcom/tencent/bugly/proguard/ak;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/bugly/proguard/ac;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/bugly/proguard/ac;->h:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic a(Lcom/tencent/bugly/proguard/ac;Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/tencent/bugly/proguard/ac;->g:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    return-object p1
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/proguard/ac;
    .locals 2

    const-class v0, Lcom/tencent/bugly/proguard/ac;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/ac;->d:Lcom/tencent/bugly/proguard/ac;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/proguard/ac;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/o;",
            ">;)",
            "Lcom/tencent/bugly/proguard/ac;"
        }
    .end annotation

    const-class v0, Lcom/tencent/bugly/proguard/ac;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/ac;->d:Lcom/tencent/bugly/proguard/ac;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/tencent/bugly/proguard/ac;

    invoke-direct {v1, p0, p1}, Lcom/tencent/bugly/proguard/ac;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v1, Lcom/tencent/bugly/proguard/ac;->d:Lcom/tencent/bugly/proguard/ac;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    sget-object p0, Lcom/tencent/bugly/proguard/ac;->d:Lcom/tencent/bugly/proguard/ac;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-static {p0}, Lcom/tencent/bugly/proguard/ap;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/tencent/bugly/proguard/ap;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    sput-object p0, Lcom/tencent/bugly/proguard/ac;->i:Ljava/lang/String;

    return-void

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 16
    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "URL user set is invalid."

    invoke-static {v0, p0}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic b(Lcom/tencent/bugly/proguard/ac;)Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/bugly/proguard/ac;->g:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    return-object p0
.end method

.method public static d()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    .locals 2

    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/w;->a(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/y;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/y;->g:[B

    if-eqz v0, :cond_0

    sget-object v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/ap;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/ac;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;Z)V
    .locals 3

    .line 7
    const-class v0, Lcom/tencent/bugly/proguard/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[Strategy] Notify %s"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 8
    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/s;->a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;Z)V

    .line 9
    iget-object p2, p0, Lcom/tencent/bugly/proguard/ac;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/o;

    .line 10
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/o;->onServerStrategyChanged(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    invoke-static {v0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/bt;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_0

    return-void

    .line 17
    :cond_0
    iget-object v0, v1, Lcom/tencent/bugly/proguard/ac;->g:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    if-eqz v0, :cond_1

    iget-wide v3, v2, Lcom/tencent/bugly/proguard/bt;->h:J

    iget-wide v5, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->o:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    return-void

    .line 18
    :cond_1
    new-instance v3, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    invoke-direct {v3}, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;-><init>()V

    .line 19
    iget-boolean v0, v2, Lcom/tencent/bugly/proguard/bt;->a:Z

    iput-boolean v0, v3, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->f:Z

    .line 20
    iget-boolean v0, v2, Lcom/tencent/bugly/proguard/bt;->c:Z

    iput-boolean v0, v3, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->h:Z

    .line 21
    iget-boolean v0, v2, Lcom/tencent/bugly/proguard/bt;->b:Z

    iput-boolean v0, v3, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z

    .line 22
    sget-object v0, Lcom/tencent/bugly/proguard/ac;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ap;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/bugly/proguard/ac;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ap;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 23
    :cond_2
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bt;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ap;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bt;->d:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "[Strategy] Upload url changes to %s"

    invoke-static {v4, v0}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 25
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bt;->d:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->q:Ljava/lang/String;

    .line 26
    :cond_3
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bt;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ap;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bt;->e:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "[Strategy] Exception upload url changes to %s"

    invoke-static {v4, v0}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 28
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bt;->e:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->r:Ljava/lang/String;

    .line 29
    :cond_4
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bt;->f:Lcom/tencent/bugly/proguard/bs;

    if-eqz v0, :cond_5

    .line 30
    iget-object v0, v0, Lcom/tencent/bugly/proguard/bs;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ap;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 31
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bt;->f:Lcom/tencent/bugly/proguard/bs;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/bs;->a:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->s:Ljava/lang/String;

    .line 32
    :cond_5
    iget-wide v4, v2, Lcom/tencent/bugly/proguard/bt;->h:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_6

    .line 33
    iput-wide v4, v3, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->o:J

    .line 34
    :cond_6
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bt;->g:Ljava/util/Map;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_7

    goto/16 :goto_3

    .line 35
    :cond_7
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bt;->g:Ljava/util/Map;

    iput-object v0, v3, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->t:Ljava/util/Map;

    .line 36
    const-string v6, "B11"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 37
    const-string v6, "1"

    if-eqz v0, :cond_8

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v3, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->i:Z

    .line 38
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bt;->g:Ljava/util/Map;

    const-string v7, "B3"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 39
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v3, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->w:J

    .line 40
    :cond_9
    iget v0, v2, Lcom/tencent/bugly/proguard/bt;->l:I

    int-to-long v7, v0

    iput-wide v7, v3, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->p:J

    int-to-long v7, v0

    .line 41
    iput-wide v7, v3, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->v:J

    .line 42
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bt;->g:Ljava/util/Map;

    const-string v7, "B27"

    .line 43
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_a

    .line 45
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    .line 46
    iput v0, v3, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->u:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 47
    invoke-static {v0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 48
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    :cond_a
    :goto_1
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bt;->g:Ljava/util/Map;

    const-string v7, "B25"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 50
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_2

    :cond_b
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, v3, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->k:Z

    .line 51
    :cond_c
    :goto_3
    iget-boolean v0, v3, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->f:Z

    .line 52
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v0, v3, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->h:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v0, v3, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v0, v3, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->i:Z

    .line 53
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v0, v3, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->j:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-boolean v0, v3, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->m:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-boolean v0, v3, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->n:Z

    .line 54
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-wide v13, v3, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->p:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iget-boolean v0, v3, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->k:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget-wide v4, v3, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->o:J

    .line 55
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    filled-new-array/range {v6 .. v15}, [Ljava/lang/Object;

    move-result-object v0

    .line 56
    const-string v4, "[Strategy] enableCrashReport:%b, enableQuery:%b, enableUserInfo:%b, enableAnr:%b, enableBlock:%b, enableSession:%b, enableSessionTimer:%b, sessionOverTime:%d, enableCocos:%b, strategyLastUpdateTime:%d"

    invoke-static {v4, v0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 57
    iput-object v3, v1, Lcom/tencent/bugly/proguard/ac;->g:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    .line 58
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bt;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ap;->d(Ljava/lang/String;)Z

    move-result v0

    const-string v4, ""

    if-nez v0, :cond_d

    .line 59
    const-string v0, "[Strategy] download url is null"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 60
    iget-object v0, v1, Lcom/tencent/bugly/proguard/ac;->g:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    iput-object v4, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->q:Ljava/lang/String;

    goto :goto_4

    :cond_d
    const/4 v5, 0x0

    .line 61
    :goto_4
    iget-object v0, v2, Lcom/tencent/bugly/proguard/bt;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ap;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 62
    const-string v0, "[Strategy] download crashurl is null"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 63
    iget-object v0, v1, Lcom/tencent/bugly/proguard/ac;->g:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    iput-object v4, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->r:Ljava/lang/String;

    .line 64
    :cond_e
    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/w;->b(I)V

    .line 65
    new-instance v0, Lcom/tencent/bugly/proguard/y;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/y;-><init>()V

    .line 66
    iput v2, v0, Lcom/tencent/bugly/proguard/y;->b:I

    .line 67
    iget-wide v4, v3, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->d:J

    iput-wide v4, v0, Lcom/tencent/bugly/proguard/y;->a:J

    .line 68
    iget-wide v4, v3, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->e:J

    iput-wide v4, v0, Lcom/tencent/bugly/proguard/y;->e:J

    .line 69
    invoke-static {v3}, Lcom/tencent/bugly/proguard/ap;->a(Landroid/os/Parcelable;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/proguard/y;->g:[B

    .line 70
    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/y;)Z

    const/4 v2, 0x1

    .line 71
    invoke-virtual {v1, v3, v2}, Lcom/tencent/bugly/proguard/ac;->a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;Z)V

    return-void
.end method

.method public final declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->g:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->g:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ap;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->g:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    sget-object v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->q:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->g:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ap;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->g:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    sget-object v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->r:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->g:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    return-object v0

    :cond_2
    sget-object v0, Lcom/tencent/bugly/proguard/ac;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ap;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/tencent/bugly/proguard/ac;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ap;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    sget-object v1, Lcom/tencent/bugly/proguard/ac;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->q:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->r:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->f:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    return-object v0
.end method
