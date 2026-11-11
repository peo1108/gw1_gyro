.class public final Lcom/tencent/bugly/proguard/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected a:I

.field protected b:J

.field protected c:J

.field private d:I

.field private e:I

.field private final f:Landroid/content/Context;

.field private final g:I

.field private final h:[B

.field private final i:Lcom/tencent/bugly/proguard/aa;

.field private final j:Lcom/tencent/bugly/proguard/ac;

.field private final k:Lcom/tencent/bugly/proguard/af;

.field private final l:Lcom/tencent/bugly/proguard/ai;

.field private final m:I

.field private final n:Lcom/tencent/bugly/proguard/ah;

.field private final o:Lcom/tencent/bugly/proguard/ah;

.field private p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ah;IIZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/ah;",
            "IIZ)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/tencent/bugly/proguard/aj;->d:I

    const/16 v0, 0x7530

    .line 4
    iput v0, p0, Lcom/tencent/bugly/proguard/aj;->e:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->p:Ljava/lang/String;

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/tencent/bugly/proguard/aj;->a:I

    const-wide/16 v2, 0x0

    .line 7
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/aj;->b:J

    .line 8
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/aj;->c:J

    .line 9
    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/aj;->s:Z

    .line 10
    iput-object p1, p0, Lcom/tencent/bugly/proguard/aj;->f:Landroid/content/Context;

    .line 11
    invoke-static {p1}, Lcom/tencent/bugly/proguard/aa;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/aa;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/aj;->i:Lcom/tencent/bugly/proguard/aa;

    .line 12
    iput-object p4, p0, Lcom/tencent/bugly/proguard/aj;->h:[B

    .line 13
    invoke-static {}, Lcom/tencent/bugly/proguard/ac;->a()Lcom/tencent/bugly/proguard/ac;

    move-result-object p4

    iput-object p4, p0, Lcom/tencent/bugly/proguard/aj;->j:Lcom/tencent/bugly/proguard/ac;

    .line 14
    sget-object p4, Lcom/tencent/bugly/proguard/af;->a:Lcom/tencent/bugly/proguard/af;

    if-nez p4, :cond_0

    .line 15
    new-instance p4, Lcom/tencent/bugly/proguard/af;

    invoke-direct {p4, p1}, Lcom/tencent/bugly/proguard/af;-><init>(Landroid/content/Context;)V

    sput-object p4, Lcom/tencent/bugly/proguard/af;->a:Lcom/tencent/bugly/proguard/af;

    .line 16
    :cond_0
    sget-object p1, Lcom/tencent/bugly/proguard/af;->a:Lcom/tencent/bugly/proguard/af;

    .line 17
    iput-object p1, p0, Lcom/tencent/bugly/proguard/aj;->k:Lcom/tencent/bugly/proguard/af;

    .line 18
    invoke-static {}, Lcom/tencent/bugly/proguard/ai;->a()Lcom/tencent/bugly/proguard/ai;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/aj;->l:Lcom/tencent/bugly/proguard/ai;

    .line 19
    iput p2, p0, Lcom/tencent/bugly/proguard/aj;->m:I

    .line 20
    iput-object p5, p0, Lcom/tencent/bugly/proguard/aj;->p:Ljava/lang/String;

    .line 21
    iput-object p6, p0, Lcom/tencent/bugly/proguard/aj;->q:Ljava/lang/String;

    .line 22
    iput-object p7, p0, Lcom/tencent/bugly/proguard/aj;->n:Lcom/tencent/bugly/proguard/ah;

    .line 23
    iget-object p1, p1, Lcom/tencent/bugly/proguard/ai;->a:Lcom/tencent/bugly/proguard/ah;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/aj;->o:Lcom/tencent/bugly/proguard/ah;

    .line 24
    iput p3, p0, Lcom/tencent/bugly/proguard/aj;->g:I

    if-lez p8, :cond_1

    .line 25
    iput p8, p0, Lcom/tencent/bugly/proguard/aj;->d:I

    :cond_1
    if-lez p9, :cond_2

    .line 26
    iput p9, p0, Lcom/tencent/bugly/proguard/aj;->e:I

    .line 27
    :cond_2
    iput-boolean p10, p0, Lcom/tencent/bugly/proguard/aj;->s:Z

    .line 28
    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->r:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ah;Z)V
    .locals 11

    const/4 v8, 0x2

    const/16 v9, 0x7530

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v10, p8

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/tencent/bugly/proguard/aj;-><init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ah;IIZ)V

    return-void
.end method

.method private a(Ljava/util/Map;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 48
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 49
    :cond_0
    const-string v1, "status"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "[Upload] Headers does not contain %s"

    if-nez v2, :cond_1

    .line 50
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 51
    :cond_1
    const-string v2, "Bugly-Version"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 52
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 53
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 54
    const-string v3, "bugly"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 55
    const-string v1, "[Upload] Bugly version is not valid: %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 56
    :cond_3
    const-string v3, "[Upload] Bugly version from headers is: %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 57
    :try_start_0
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :try_start_1
    const-string v1, "[Upload] Status from server is %d (pid=%d | tid=%d)."

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 61
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 62
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_4

    .line 63
    const-string v1, "status of server is "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/bugly/proguard/aj;->a(ZILjava/lang/String;)V

    .line 64
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 65
    :cond_4
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    const/4 p1, -0x1

    .line 66
    :catchall_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Upload] Failed to upload for format of status header is invalid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-static {p1}, Lcom/tencent/bugly/proguard/aj;->a(Ljava/lang/String;)V

    .line 69
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 70
    :cond_5
    :goto_0
    const-string v1, "[Upload] Headers is empty."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 71
    :goto_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 72
    const-string v2, "[Upload] Headers from server is not valid, just try again (pid=%d | tid=%d)."

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 73
    const-string v1, "[Upload] Failed to upload for no status header."

    invoke-static {v1}, Lcom/tencent/bugly/proguard/aj;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 74
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 76
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 77
    const-string v3, "[key]: %s, [value]: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_2

    .line 78
    :cond_6
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 79
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private a([BLjava/util/Map;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 36
    const-string p1, "Failed to upload for no response!"

    invoke-static {p1}, Lcom/tencent/bugly/proguard/aj;->a(Ljava/lang/String;)V

    .line 37
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 38
    :cond_0
    array-length v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[Upload] Received %d bytes"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 39
    array-length p1, p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 40
    const-string v0, "response data from server is empty"

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/tencent/bugly/proguard/aj;->a(ZILjava/lang/String;)V

    if-eqz p2, :cond_1

    .line 41
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 42
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 43
    const-string v0, "[Upload] HTTP headers from server: key = %s, value = %s"

    invoke-static {v0, p2}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_1
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 45
    :cond_2
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "[Upload] Failed to upload(%d): %s"

    invoke-static {v0, p0}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method private a(ZILjava/lang/String;)V
    .locals 4

    .line 2
    iget v0, p0, Lcom/tencent/bugly/proguard/aj;->g:I

    const/16 v1, 0x276

    if-eq v0, v1, :cond_1

    const/16 v1, 0x280

    if-eq v0, v1, :cond_0

    const/16 v1, 0x33e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x348

    if-eq v0, v1, :cond_0

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "userinfo"

    goto :goto_0

    .line 5
    :cond_1
    const-string v0, "crash"

    :goto_0
    if-eqz p1, :cond_2

    .line 6
    const-string p2, "[Upload] Success: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2, v0, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "[Upload] Failed to upload(%d) %s: %s"

    invoke-static {v0, p2}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 8
    :goto_1
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/aj;->b:J

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/aj;->c:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_3

    .line 9
    iget-object p2, p0, Lcom/tencent/bugly/proguard/aj;->l:Lcom/tencent/bugly/proguard/ai;

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/aj;->s:Z

    .line 10
    invoke-virtual {p2, v0}, Lcom/tencent/bugly/proguard/ai;->a(Z)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/aj;->b:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/aj;->c:J

    add-long/2addr v0, v2

    .line 11
    iget-object p2, p0, Lcom/tencent/bugly/proguard/aj;->l:Lcom/tencent/bugly/proguard/ai;

    iget-boolean v2, p0, Lcom/tencent/bugly/proguard/aj;->s:Z

    invoke-virtual {p2, v0, v1, v2}, Lcom/tencent/bugly/proguard/ai;->a(JZ)V

    .line 12
    :cond_3
    iget-object p2, p0, Lcom/tencent/bugly/proguard/aj;->n:Lcom/tencent/bugly/proguard/ah;

    if-eqz p2, :cond_4

    .line 13
    invoke-interface {p2, p1, p3}, Lcom/tencent/bugly/proguard/ah;->a(ZLjava/lang/String;)V

    .line 14
    :cond_4
    iget-object p2, p0, Lcom/tencent/bugly/proguard/aj;->o:Lcom/tencent/bugly/proguard/ah;

    if-eqz p2, :cond_5

    .line 15
    invoke-interface {p2, p1, p3}, Lcom/tencent/bugly/proguard/ah;->a(ZLjava/lang/String;)V

    :cond_5
    return-void
.end method

.method private static a(Lcom/tencent/bugly/proguard/br;Lcom/tencent/bugly/proguard/aa;Lcom/tencent/bugly/proguard/ac;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 16
    const-string p0, "resp == null!"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 17
    :cond_0
    iget-byte v1, p0, Lcom/tencent/bugly/proguard/br;->a:B

    if-eqz v1, :cond_1

    .line 18
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "resp result error %d"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_1
    const/4 v1, 0x1

    .line 19
    :try_start_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/br;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/ap;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 20
    invoke-static {}, Lcom/tencent/bugly/proguard/aa;->b()Lcom/tencent/bugly/proguard/aa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/aa;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/bugly/proguard/br;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 21
    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object v2

    sget v3, Lcom/tencent/bugly/proguard/ac;->a:I

    const-string v4, "device"

    iget-object v5, p0, Lcom/tencent/bugly/proguard/br;->g:Ljava/lang/String;

    const-string v6, "UTF-8"

    .line 22
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 23
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/tencent/bugly/proguard/w;->a(ILjava/lang/String;[BZ)Z

    .line 24
    iget-object v2, p0, Lcom/tencent/bugly/proguard/br;->g:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/tencent/bugly/proguard/aa;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 25
    invoke-static {v2}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    .line 26
    :cond_2
    :goto_0
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/br;->e:J

    iput-wide v2, p1, Lcom/tencent/bugly/proguard/aa;->m:J

    .line 27
    iget p1, p0, Lcom/tencent/bugly/proguard/br;->b:I

    const/16 v2, 0x1fe

    if-ne p1, v2, :cond_5

    .line 28
    iget-object v2, p0, Lcom/tencent/bugly/proguard/br;->c:[B

    if-nez v2, :cond_3

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "[Upload] Strategy data is null. Response cmd: %d"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 30
    :cond_3
    const-class p1, Lcom/tencent/bugly/proguard/bt;

    .line 31
    invoke-static {v2, p1}, Lcom/tencent/bugly/proguard/ae;->a([BLjava/lang/Class;)Lcom/tencent/bugly/proguard/m;

    move-result-object p1

    check-cast p1, Lcom/tencent/bugly/proguard/bt;

    if-nez p1, :cond_4

    .line 32
    iget p0, p0, Lcom/tencent/bugly/proguard/br;->b:I

    .line 33
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 34
    const-string p1, "[Upload] Failed to decode strategy from server. Response cmd: %d"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/al;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 35
    :cond_4
    invoke-virtual {p2, p1}, Lcom/tencent/bugly/proguard/ac;->a(Lcom/tencent/bugly/proguard/bt;)V

    :cond_5
    return v1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-static {p0}, Lcom/tencent/bugly/proguard/ap;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    :try_start_0
    const-string v0, "%s?aid=%s"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    return-object p0
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    .line 46
    iget v0, p0, Lcom/tencent/bugly/proguard/aj;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/bugly/proguard/aj;->a:I

    .line 47
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/aj;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/aj;->b:J

    return-void
.end method

.method public final b(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/aj;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/aj;->c:J

    return-void
.end method

.method public final run()V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/tencent/bugly/proguard/aj;->a:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/aj;->b:J

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/aj;->c:J

    iget-object v1, p0, Lcom/tencent/bugly/proguard/aj;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ab;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "network is not available"

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/aj;->h:[B

    if-eqz v1, :cond_5

    array-length v1, v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/tencent/bugly/proguard/aj;->f:Landroid/content/Context;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/bugly/proguard/aj;->i:Lcom/tencent/bugly/proguard/aa;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/bugly/proguard/aj;->j:Lcom/tencent/bugly/proguard/ac;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/tencent/bugly/proguard/aj;->k:Lcom/tencent/bugly/proguard/af;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ac;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "illegal local strategy"

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    :goto_0
    const-string v1, "illegal access error"

    goto :goto_2

    :cond_5
    :goto_1
    const-string v1, "request package is empty!"

    :goto_2
    if-eqz v1, :cond_6

    invoke-direct {p0, v0, v0, v1}, Lcom/tencent/bugly/proguard/aj;->a(ZILjava/lang/String;)V

    return-void

    :cond_6
    iget-object v1, p0, Lcom/tencent/bugly/proguard/aj;->h:[B

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ap;->a([B)[B

    move-result-object v1

    if-nez v1, :cond_7

    const-string v1, "failed to zip request body"

    invoke-direct {p0, v0, v0, v1}, Lcom/tencent/bugly/proguard/aj;->a(ZILjava/lang/String;)V

    return-void

    :cond_7
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v3, "tls"

    const-string v4, "1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "prodId"

    iget-object v4, p0, Lcom/tencent/bugly/proguard/aj;->i:Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/aa;->e()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "bundleId"

    iget-object v4, p0, Lcom/tencent/bugly/proguard/aj;->i:Lcom/tencent/bugly/proguard/aa;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/aa;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "appVer"

    iget-object v4, p0, Lcom/tencent/bugly/proguard/aj;->i:Lcom/tencent/bugly/proguard/aa;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/aa;->o:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/aj;->r:Ljava/util/Map;

    if-eqz v3, :cond_8

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_8
    const-string v3, "cmd"

    iget v4, p0, Lcom/tencent/bugly/proguard/aj;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "platformId"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sdkVer"

    iget-object v5, p0, Lcom/tencent/bugly/proguard/aj;->i:Lcom/tencent/bugly/proguard/aa;

    iget-object v5, v5, Lcom/tencent/bugly/proguard/aa;->h:Ljava/lang/String;

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "strategylastUpdateTime"

    iget-object v5, p0, Lcom/tencent/bugly/proguard/aj;->j:Lcom/tencent/bugly/proguard/ac;

    invoke-virtual {v5}, Lcom/tencent/bugly/proguard/ac;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v5

    iget-wide v5, v5, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->o:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/aj;->l:Lcom/tencent/bugly/proguard/ai;

    iget v5, p0, Lcom/tencent/bugly/proguard/aj;->m:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/tencent/bugly/proguard/ai;->a(IJ)V

    iget-object v3, p0, Lcom/tencent/bugly/proguard/aj;->p:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/bugly/proguard/aj;->j:Lcom/tencent/bugly/proguard/ac;

    invoke-virtual {v5}, Lcom/tencent/bugly/proguard/ac;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move v5, v0

    move v6, v5

    :goto_3
    add-int/lit8 v7, v5, 0x1

    iget v8, p0, Lcom/tencent/bugly/proguard/aj;->d:I

    if-ge v5, v8, :cond_12

    if-le v7, v4, :cond_9

    const-string v5, "[Upload] Failed to upload last time, wait and try(%d) again."

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget v5, p0, Lcom/tencent/bugly/proguard/aj;->e:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/ap;->b(J)V

    iget v5, p0, Lcom/tencent/bugly/proguard/aj;->d:I

    if-ne v7, v5, :cond_9

    const-string v3, "[Upload] Use the back-up url at the last time: %s"

    iget-object v5, p0, Lcom/tencent/bugly/proguard/aj;->q:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/tencent/bugly/proguard/aj;->q:Ljava/lang/String;

    :cond_9
    const-string v5, "[Upload] Send %d bytes"

    array-length v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/tencent/bugly/proguard/aj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "[Upload] Upload to %s with cmd %d (pid=%d | tid=%d)."

    iget v6, p0, Lcom/tencent/bugly/proguard/aj;->g:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v3, v6, v8, v9}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/tencent/bugly/proguard/aj;->k:Lcom/tencent/bugly/proguard/af;

    invoke-virtual {v5, v3, v1, p0, v2}, Lcom/tencent/bugly/proguard/af;->a(Ljava/lang/String;[BLcom/tencent/bugly/proguard/aj;Ljava/util/Map;)[B

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/bugly/proguard/aj;->k:Lcom/tencent/bugly/proguard/af;

    iget-object v6, v6, Lcom/tencent/bugly/proguard/af;->c:Ljava/util/Map;

    invoke-direct {p0, v5, v6}, Lcom/tencent/bugly/proguard/aj;->a([BLjava/util/Map;)Landroid/util/Pair;

    move-result-object v8

    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v5, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto/16 :goto_6

    :cond_a
    invoke-direct {p0, v6}, Lcom/tencent/bugly/proguard/aj;->a(Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v6

    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v5, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto/16 :goto_6

    :cond_b
    invoke-static {v5}, Lcom/tencent/bugly/proguard/ap;->b([B)[B

    move-result-object v6

    if-eqz v6, :cond_c

    move-object v5, v6

    :cond_c
    invoke-static {v5}, Lcom/tencent/bugly/proguard/ae;->a([B)Lcom/tencent/bugly/proguard/br;

    move-result-object v5

    if-nez v5, :cond_d

    const-string v5, "failed to decode response package"

    invoke-direct {p0, v0, v4, v5}, Lcom/tencent/bugly/proguard/aj;->a(ZILjava/lang/String;)V

    new-instance v5, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_d
    const-string v6, "[Upload] Response cmd is: %d, length of sBuffer is: %d"

    iget v8, v5, Lcom/tencent/bugly/proguard/br;->b:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v5, Lcom/tencent/bugly/proguard/br;->c:[B

    if-nez v9, :cond_e

    move v9, v0

    goto :goto_4

    :cond_e
    array-length v9, v9

    :goto_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/tencent/bugly/proguard/aj;->i:Lcom/tencent/bugly/proguard/aa;

    iget-object v8, p0, Lcom/tencent/bugly/proguard/aj;->j:Lcom/tencent/bugly/proguard/ac;

    invoke-static {v5, v6, v8}, Lcom/tencent/bugly/proguard/aj;->a(Lcom/tencent/bugly/proguard/br;Lcom/tencent/bugly/proguard/aa;Lcom/tencent/bugly/proguard/ac;)Z

    move-result v5

    const/4 v6, 0x2

    if-nez v5, :cond_f

    const-string v5, "failed to process response package"

    invoke-direct {p0, v0, v6, v5}, Lcom/tencent/bugly/proguard/aj;->a(ZILjava/lang/String;)V

    new-instance v5, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_f
    const-string v5, "successfully uploaded"

    invoke-direct {p0, v4, v6, v5}, Lcom/tencent/bugly/proguard/aj;->a(ZILjava/lang/String;)V

    new-instance v5, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_5
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_6

    :cond_10
    move v5, v0

    :goto_6
    if-eqz v5, :cond_11

    move v6, v4

    move v5, v7

    goto/16 :goto_3

    :cond_11
    return-void

    :cond_12
    const-string v1, "failed after many attempts"

    invoke-direct {p0, v0, v6, v1}, Lcom/tencent/bugly/proguard/aj;->a(ZILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_7
    invoke-static {v0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    return-void
.end method
