.class Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$1;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/zjx/jyandroid/ADB/ADBConnector;->sharedInstance()Lcom/zjx/jyandroid/ADB/ADBConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ADB/ADBConnector;->getConnectionStatus()Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;->CONNECTED:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$1$1;

    invoke-direct {v1, p0, p1}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$1$1;-><init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$1;Lcom/zjx/jyandroid/ADB/ADBConnector;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$1;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->connectionStatusButton:Landroid/widget/Button;

    sget v1, Lcom/zjx/jyandroid/R$string;->adb_activating:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$1;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->connectionStatusButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$1;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->connectionStatusButton:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$1$2;

    invoke-direct {v1, p0, p1}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$1$2;-><init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$1;Lcom/zjx/jyandroid/ADB/ADBConnector;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
