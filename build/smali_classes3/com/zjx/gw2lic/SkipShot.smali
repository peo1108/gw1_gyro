.class public final Lcom/zjx/gw2lic/SkipShot;
.super Ljava/lang/Object;
.source "SkipShot.java"


# static fields
.field private static final HOOKED:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAST:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAIN:Landroid/os/Handler;

.field private static final PUMP:Ljava/lang/Runnable;

.field private static final SCRATCH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "GW2SKIP"

.field private static sExemptTried:Z

.field private static sGetVri:Ljava/lang/reflect/Method;

.field private static sIsValid:Ljava/lang/reflect/Method;

.field private static sLogFile:Ljava/io/File;

.field private static sPumping:Z

.field private static sScCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sScField:Ljava/lang/reflect/Field;

.field private static sSetSkip:Ljava/lang/reflect/Method;

.field private static sTxApply:Ljava/lang/reflect/Method;

.field private static sTxClose:Ljava/lang/reflect/Method;

.field private static sTxCtor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/zjx/gw2lic/SkipShot;->LAST:Ljava/util/WeakHashMap;

    .line 40
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/zjx/gw2lic/SkipShot;->HOOKED:Ljava/util/WeakHashMap;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/zjx/gw2lic/SkipShot;->MAIN:Landroid/os/Handler;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zjx/gw2lic/SkipShot;->SCRATCH:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Lcom/zjx/gw2lic/SkipShot$1;

    invoke-direct {v0}, Lcom/zjx/gw2lic/SkipShot$1;-><init>()V

    sput-object v0, Lcom/zjx/gw2lic/SkipShot;->PUMP:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/WeakHashMap;
    .locals 1

    .line 33
    sget-object v0, Lcom/zjx/gw2lic/SkipShot;->HOOKED:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .line 33
    sget-object v0, Lcom/zjx/gw2lic/SkipShot;->SCRATCH:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/View;)Z
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/zjx/gw2lic/SkipShot;->applyIfChanged(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 1

    .line 33
    sget-object v0, Lcom/zjx/gw2lic/SkipShot;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 33
    sget-boolean v0, Lcom/zjx/gw2lic/SkipShot;->sPumping:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    .line 33
    sput-boolean p0, Lcom/zjx/gw2lic/SkipShot;->sPumping:Z

    return p0
.end method

.method static synthetic access$500()Ljava/lang/Runnable;
    .locals 1

    .line 33
    sget-object v0, Lcom/zjx/gw2lic/SkipShot;->PUMP:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static declared-synchronized applyIfChanged(Landroid/view/View;)Z
    .locals 7

    const-string v0, ")\u00a2@\u00f2e\u0012\u0098\u0006\u00a1]\u00f9l\u0018\u00908\u00d2^\u00b7W$\u009d\u0008\u00fd`\u00d6\u00ba(\u00f9"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/zjx/gw2lic/SkipShot;

    monitor-enter v1

    const/4 v2, 0x0

    .line 201
    :try_start_0
    invoke-static {p0}, Lcom/zjx/gw2lic/SkipShot;->currentSc(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 203
    monitor-exit v1

    return v2

    .line 205
    :cond_0
    :try_start_1
    sget-object v4, Lcom/zjx/gw2lic/SkipShot;->LAST:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x1

    if-ne v3, v5, :cond_1

    .line 206
    monitor-exit v1

    return v6

    .line 208
    :cond_1
    :try_start_2
    invoke-static {v3}, Lcom/zjx/gw2lic/SkipShot;->skip(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 209
    invoke-virtual {v4, p0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "z"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zjx/gw2lic/SkipShot;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    monitor-exit v1

    return v6

    .line 213
    :cond_2
    monitor-exit v1

    return v2

    .line 215
    :catchall_0
    monitor-exit v1

    return v2
.end method

.method private static currentSc(Landroid/view/View;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 220
    sget-object v0, Lcom/zjx/gw2lic/SkipShot;->sGetVri:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 221
    const-class v0, Landroid/view/View;

    const-string v2, "=\u00a2@\u00f7g\u001e\u009f\u0007\u00ad@\u00e8@\u001b\u0093<"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/zjx/gw2lic/SkipShot;->sGetVri:Ljava/lang/reflect/Method;

    .line 223
    :cond_0
    sget-object v0, Lcom/zjx/gw2lic/SkipShot;->sGetVri:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 227
    :cond_1
    sget-object v0, Lcom/zjx/gw2lic/SkipShot;->sScField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2

    .line 228
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "7\u0094A\u00d3h\u001a\u008b0\u0081@\u00f2}\u0004\u008c<"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/zjx/gw2lic/SkipShot;->sScField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    .line 229
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 231
    :cond_2
    sget-object v0, Lcom/zjx/gw2lic/SkipShot;->sScField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v1

    .line 235
    :cond_3
    sget-object v0, Lcom/zjx/gw2lic/SkipShot;->sScCls:Ljava/lang/Class;

    if-nez v0, :cond_4

    .line 236
    const-string v0, ";\u00a9P\u00d3a\u0012\u008c{\u00b4F\u00f9~X\u00b0%\u00cfL\u00f6g\u0014\u009d$\u00d6Q\u00e0\u0090\u0000"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/zjx/gw2lic/SkipShot;->sScCls:Ljava/lang/Class;

    .line 238
    :try_start_0
    const-string v2, "3\u00b4b\u00c0b\u0012\u008c"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/zjx/gw2lic/SkipShot;->sIsValid:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :catchall_0
    :cond_4
    sget-object v0, Lcom/zjx/gw2lic/SkipShot;->sIsValid:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    .line 243
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 244
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    return-object v1

    :cond_5
    return-object p0
.end method

.method public static ensurePolicy()V
    .locals 3

    .line 103
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zjx/gw2lic/SkipShot$3;

    invoke-direct {v1}, Lcom/zjx/gw2lic/SkipShot$3;-><init>()V

    const-string v2, "=\u00b0\u0006\u008c}\u0010\u0081%\u00ef_\u00f3e\u001f\u0080)"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static exemptOnce()V
    .locals 7

    .line 278
    sget-boolean v0, Lcom/zjx/gw2lic/SkipShot;->sExemptTried:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 281
    sput-boolean v0, Lcom/zjx/gw2lic/SkipShot;->sExemptTried:Z

    .line 283
    :try_start_0
    const-class v1, Ljava/lang/Class;

    const-string v2, "<\u00a8F\u00efo\u0016\u008d"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 284
    const-class v2, Ljava/lang/Class;

    const-string v3, "=\u00a2@\u00e5k\u0018\u00844\u00b0J\u00f8D\u0013\u00978\u00d2N"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    const-class v5, [Ljava/lang/Class;

    filled-new-array {v4, v5}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 286
    const-string v3, ">\u00a6X\u00d7g\u0010\u00c6&\u00bb\\\u00e8l\u001b\u00cd\u0006\u00f0x\u00e2j\u0005\u00b7&\u00dd"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 287
    const-string v3, "=\u00a2@\u00f3{\u0015\u009c<\u00afJ"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 288
    const-string v5, ")\u00a2@\u00e9g\u001f\u008c0\u00acn\u00ec`3\u009b5\u00d0Z\u00e3m\u001e\u00b08"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-class v6, [Ljava/lang/String;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 290
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 291
    invoke-virtual {v3, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 292
    const-string v2, "\u0016"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v0, "2\u00aeP\u00c5k\u0015\u00c54\u00b2F\u00bcl\u000e\u0086=\u00cd^\u00fek\u001f\u00fe8\u00ddQ\u00b2\u00b0\'"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/gw2lic/SkipShot;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 295
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "2\u00aeP\u00c5k\u0015\u00c54\u00b2F\u00bcl\u000e\u0086=\u00cd^\u00fek\u001f\u00fe\r\u00f9l\u00de\u00ba(\u00f9n\u00c1O\u00e2\u008eG\u00a4.\u00c2r\u00eb\u008cB\u00a6O\u0089b\u00eb\u0095}\u00b8R\u00c5}^\u008d1\u00bd\u001b\u00a5,"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "z\u00a4U\u00d4}\u001e\u00d5"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    .line 297
    const-string v0, "4\u00b2X\u00cd"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "`\u00e7"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v0}, Lcom/zjx/gw2lic/SkipShot;->log(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static hide(Landroid/view/View;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/gw2lic/SkipShot;->initLog(Landroid/content/Context;)V

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "2\u00aeP\u00c4&R\u00c8\u0010\u008c{\u00d9[V\u00959\u00d8]\u00aa"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_1

    const-string v1, "4\u00b2X\u00cd"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "z\u00a3Q\u00d73"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "u"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "z\u00b4P\u00ca3"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/gw2lic/SkipShot;->log(Ljava/lang/String;)V

    if-nez p0, :cond_2

    return-void

    .line 129
    :cond_2
    invoke-static {}, Lcom/zjx/gw2lic/SkipShot;->exemptOnce()V

    .line 132
    sget-object v0, Lcom/zjx/gw2lic/SkipShot;->HOOKED:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 133
    :try_start_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    invoke-static {}, Lcom/zjx/gw2lic/SkipShot;->startPump()V

    .line 143
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/zjx/gw2lic/SkipShot$4;

    invoke-direct {v1, p0}, Lcom/zjx/gw2lic/SkipShot$4;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :catchall_0
    new-instance v0, Lcom/zjx/gw2lic/SkipShot$5;

    invoke-direct {v0, p0}, Lcom/zjx/gw2lic/SkipShot$5;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_1
    move-exception p0

    .line 134
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private static initLog(Landroid/content/Context;)V
    .locals 2

    .line 304
    sget-object v0, Lcom/zjx/gw2lic/SkipShot;->sLogFile:Ljava/io/File;

    if-nez v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 308
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 312
    :cond_1
    new-instance p0, Ljava/io/File;

    const-string v1, "=\u00b0\u0006\u00d2e\u0012\u0098{\u00ae@\u00fb"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object p0, Lcom/zjx/gw2lic/SkipShot;->sLogFile:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method private static declared-synchronized log(Ljava/lang/String;)V
    .locals 1

    return-void
.end method

.method public static reapply(Landroid/view/View;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 180
    :cond_0
    sget-object v0, Lcom/zjx/gw2lic/SkipShot;->HOOKED:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 181
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 182
    monitor-exit v0

    return-void

    .line 184
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-static {p0}, Lcom/zjx/gw2lic/SkipShot;->applyIfChanged(Landroid/view/View;)Z

    .line 186
    new-instance v0, Lcom/zjx/gw2lic/SkipShot$6;

    invoke-direct {v0, p0}, Lcom/zjx/gw2lic/SkipShot$6;-><init>(Landroid/view/View;)V

    const-wide/16 v1, 0x10

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception p0

    .line 184
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static skip(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 252
    sget-object v0, Lcom/zjx/gw2lic/SkipShot;->sTxCtor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 253
    const-string v0, ";\u00a9P\u00d3a\u0012\u008c{\u00b4F\u00f9~X\u00b0%\u00cfL\u00f6g\u0014\u009d$\u00d6Q\u00e0\u0090\u0000\u00fd\u0012\u00c1A\u00e3\u0089\u0006\u00b75\u00c7t\u00e6"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sput-object v2, Lcom/zjx/gw2lic/SkipShot;->sTxCtor:Ljava/lang/reflect/Constructor;

    .line 255
    sget-object v2, Lcom/zjx/gw2lic/SkipShot;->sScCls:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, ")\u00a2@\u00f2e\u0012\u0098\u0006\u00a1]\u00f9l\u0018\u00908\u00d2^"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/zjx/gw2lic/SkipShot;->sSetSkip:Ljava/lang/reflect/Method;

    .line 256
    const-string v2, ";\u00b7D\u00cdw"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/zjx/gw2lic/SkipShot;->sTxApply:Ljava/lang/reflect/Method;

    .line 258
    :try_start_0
    const-string v2, "9\u00ab[\u00d2k"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/zjx/gw2lic/SkipShot;->sTxClose:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :catchall_0
    :cond_0
    sget-object v0, Lcom/zjx/gw2lic/SkipShot;->sTxCtor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 264
    :try_start_1
    sget-object v2, Lcom/zjx/gw2lic/SkipShot;->sSetSkip:Ljava/lang/reflect/Method;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {p0, v3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object p0, Lcom/zjx/gw2lic/SkipShot;->sTxApply:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 267
    sget-object p0, Lcom/zjx/gw2lic/SkipShot;->sTxClose:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_1

    .line 269
    :try_start_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_1
    const/4 p0, 0x1

    return p0

    :catchall_2
    move-exception p0

    .line 267
    sget-object v2, Lcom/zjx/gw2lic/SkipShot;->sTxClose:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2

    .line 269
    :try_start_3
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 273
    :catchall_3
    :cond_2
    throw p0
.end method

.method private static startPump()V
    .locals 2

    .line 74
    sget-object v0, Lcom/zjx/gw2lic/SkipShot;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/zjx/gw2lic/SkipShot$2;

    invoke-direct {v1}, Lcom/zjx/gw2lic/SkipShot$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
