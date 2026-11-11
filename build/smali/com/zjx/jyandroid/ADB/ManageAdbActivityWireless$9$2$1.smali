.class Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ADB/ADBConnector$StartOpenTcpipPortProcessResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1;->this$2:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processCancelled()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1;->this$2:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;->this$1:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->binding:Lcom/zjx/jyandroid/databinding/ActivityManageAdbWirelessBinding;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/databinding/ActivityManageAdbWirelessBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1$2;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1$2;-><init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public processFailed(Ljava/lang/Exception;)V
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1;->this$2:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;

    iget-object p1, p1, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;->this$1:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;

    iget-object p1, p1, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;

    iget-object p1, p1, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->binding:Lcom/zjx/jyandroid/databinding/ActivityManageAdbWirelessBinding;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/databinding/ActivityManageAdbWirelessBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    new-instance v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1$3;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1$3;-><init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public processFinished()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1;->this$2:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;->this$1:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->binding:Lcom/zjx/jyandroid/databinding/ActivityManageAdbWirelessBinding;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/databinding/ActivityManageAdbWirelessBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1$1;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1$1;-><init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
