.class Lcom/zjx/jyandroid/ForegroundService/MainService$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/MainService;->onForegroundActivitiesChanged(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/ForegroundService/MainService;

.field final synthetic val$foregroundActivities:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/MainService;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService$5;->this$0:Lcom/zjx/jyandroid/ForegroundService/MainService;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/MainService$5;->val$foregroundActivities:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService$5;->this$0:Lcom/zjx/jyandroid/ForegroundService/MainService;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getConnectedDeviceType()Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService$5;->val$foregroundActivities:Ljava/util/Set;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService$5;->this$0:Lcom/zjx/jyandroid/ForegroundService/MainService;

    invoke-static {v1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->access$300(Lcom/zjx/jyandroid/ForegroundService/MainService;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService$5;->this$0:Lcom/zjx/jyandroid/ForegroundService/MainService;

    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->access$300(Lcom/zjx/jyandroid/ForegroundService/MainService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->startFunctioning(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService$5;->this$0:Lcom/zjx/jyandroid/ForegroundService/MainService;

    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->access$400(Lcom/zjx/jyandroid/ForegroundService/MainService;)V

    :cond_1
    :goto_0
    return-void
.end method
