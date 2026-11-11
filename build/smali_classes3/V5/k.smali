.class public LV5/k;
.super LV5/a;
.source "SourceFile"


# static fields
.field public static c:J


# instance fields
.field public b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, LV5/k;->c:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LV5/a;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    return-void
.end method

.method public d(II)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, LV5/k;->c:J

    sub-long v4, v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    return-void

    :cond_0
    sput-wide v0, LV5/k;->c:J

    iget-boolean v2, p0, LV5/k;->b:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ")\u00a2@\u00d1|\u0014\u0098u\u00b1V\u00ef\'\u0012\u008a#\u00cdF\u00f6}_\u00ad.\u00c9\u0005"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "u\u00a3U\u00d5oT\u00891\u00a0\u0000\u00f1f\u0012\u0096<\u00d8Y\u00b8t\u0004\u00bc,\u00e7B\u00e0\u009e\u001c\u00b1/\u00d0S\u00a2\u0098\u000e\u00ban\u00c0t\u00fc\u009c\u0004\u00b6_\u00ddz\u00a3\u0091-\u00ba[\u00dd<\r\u008a.\u00a0V"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "su"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "-c"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    :cond_2
    :goto_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, LV5/k$a;

    invoke-direct {v2, v0}, LV5/k$a;-><init>(Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
