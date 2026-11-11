.class Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.zjx.jyandroid.extension.shared.onAimingStatusChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "aiming"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->mainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$1$1;

    invoke-direct {p2, p0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$1$1;-><init>(Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$1;->this$0:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->mainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$1$2;

    invoke-direct {p2, p0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$1$2;-><init>(Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
