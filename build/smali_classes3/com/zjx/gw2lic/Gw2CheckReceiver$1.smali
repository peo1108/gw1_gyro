.class Lcom/zjx/gw2lic/Gw2CheckReceiver$1;
.super Ljava/lang/Object;
.source "Gw2CheckReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/gw2lic/Gw2CheckReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/gw2lic/Gw2CheckReceiver;

.field final synthetic val$app:Landroid/content/Context;

.field final synthetic val$result:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcom/zjx/gw2lic/Gw2CheckReceiver;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/zjx/gw2lic/Gw2CheckReceiver$1;->this$0:Lcom/zjx/gw2lic/Gw2CheckReceiver;

    iput-object p2, p0, Lcom/zjx/gw2lic/Gw2CheckReceiver$1;->val$app:Landroid/content/Context;

    iput-object p3, p0, Lcom/zjx/gw2lic/Gw2CheckReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/zjx/gw2lic/Gw2CheckReceiver$1;->val$app:Landroid/content/Context;

    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2License;->checkStatusSync(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    iget-object v0, p0, Lcom/zjx/gw2lic/Gw2CheckReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zjx/gw2lic/Gw2CheckReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 39
    throw v0
.end method
