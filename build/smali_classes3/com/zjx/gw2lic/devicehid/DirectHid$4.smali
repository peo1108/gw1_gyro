.class Lcom/zjx/gw2lic/devicehid/DirectHid$4;
.super Ljava/lang/Object;
.source "DirectHid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/gw2lic/devicehid/DirectHid;->startWatch(Landroid/content/Context;)V
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

    .line 174
    iput-object p1, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$4;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$4;->val$ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/zjx/gw2lic/devicehid/DirectHid;->access$300(Landroid/content/Context;)V

    .line 177
    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$4;->val$ctx:Landroid/content/Context;

    const-string v1, "-\u00a6@\u00c2f[\u009b!\u00a3]\u00e8)^\u008d?\u00e2N\u00f2r\u0018\u00bd.\u0085J\u00fc\u00d6"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zjx/gw2lic/devicehid/DirectHid;->access$400(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$4;->val$ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/zjx/gw2lic/devicehid/DirectHid;->access$500(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 181
    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->access$600()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    invoke-static {v0}, Lcom/zjx/gw2lic/devicehid/DirectHid;->access$702(Z)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->access$200()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$4;->val$ctx:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-\u00a6@\u00c2f[\u008d;\u00a6\u000f\u00fdj\u0002\u008a&\u00d8\u0017"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->isActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zjx/gw2lic/devicehid/DirectHid;->access$400(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 181
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 179
    :try_start_3
    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->access$200()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "\u001d\u00b0\u0006\u00e5g\t\u008d6\u00b6"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-\u00a6@\u00c2f"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 181
    :cond_1
    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->access$600()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_4
    invoke-static {v0}, Lcom/zjx/gw2lic/devicehid/DirectHid;->access$702(Z)Z

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 182
    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->access$200()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$4;->val$ctx:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-\u00a6@\u00c2f[\u008d;\u00a6\u000f\u00fdj\u0002\u008a&\u00d8\u0017"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :catchall_2
    move-exception v0

    .line 181
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->access$600()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_6
    invoke-static {v0}, Lcom/zjx/gw2lic/devicehid/DirectHid;->access$702(Z)Z

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 182
    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->access$200()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zjx/gw2lic/devicehid/DirectHid$4;->val$ctx:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-\u00a6@\u00c2f[\u008d;\u00a6\u000f\u00fdj\u0002\u008a&\u00d8\u0017"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/zjx/gw2lic/devicehid/DirectHid;->isActive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zjx/gw2lic/devicehid/DirectHid;->access$400(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    :cond_3
    throw v1

    :catchall_4
    move-exception v0

    .line 181
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0
.end method
