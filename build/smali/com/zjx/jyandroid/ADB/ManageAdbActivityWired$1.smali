.class Lcom/zjx/jyandroid/ADB/ManageAdbActivityWired$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/ADB/ManageAdbActivityWired;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWired;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWired;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWired$1;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWired;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/zjx/jyandroid/ADB/ADBConnector;->sharedInstance()Lcom/zjx/jyandroid/ADB/ADBConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ADB/ADBConnector;->getConnectionStatus()Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;->CONNECTED:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zjx/jyandroid/ADB/ADBConnector;->stopConnectAndActivationProcess()V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ADB/ADBConnector;->startConnectAndActivationProcess()V

    return-void
.end method
