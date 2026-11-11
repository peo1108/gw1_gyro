.class Lcom/zjx/gw2lic/devicehid/DirectHid$3;
.super Ljava/lang/Object;
.source "DirectHid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/gw2lic/devicehid/DirectHid;->enqueueScan(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$3;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 134
    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$3;->val$ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/zjx/gw2lic/devicehid/DirectHid;->access$100(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 136
    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u001d\u00b0\u0006\u00e5g\t\u008d6\u00b6"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ")\u00a4U\u00cf"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
