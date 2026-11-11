.class Lcom/zjx/jyandroid/ForegroundService/MainService$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/ForegroundService/MainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/ForegroundService/MainService;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/MainService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService$1;->this$0:Lcom/zjx/jyandroid/ForegroundService/MainService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.zjx.jyandroid.loginStatusChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->n()Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService$1;->this$0:Lcom/zjx/jyandroid/ForegroundService/MainService;

    sget-object p2, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->SOFTWARE_SC:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/ForegroundService/MainService;->hardwareConnected(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService$1;->this$0:Lcom/zjx/jyandroid/ForegroundService/MainService;

    invoke-static {p1}, Lcom/gamwing/security/GamwingSoftwareModeStore;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->hardwareDisconnected()V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/gamwing/security/GamwingSoftwareModeEnforcer;->applySoftwareGlobal(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.zjx.jyandroid.foregroundActivitiesChanged"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService$1;->this$0:Lcom/zjx/jyandroid/ForegroundService/MainService;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;->getForegroundActivities()Ljava/util/Set;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zjx/jyandroid/ForegroundService/MainService;->access$000(Lcom/zjx/jyandroid/ForegroundService/MainService;Ljava/util/Set;)V

    :cond_3
    :goto_0
    return-void
.end method
