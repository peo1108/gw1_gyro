.class Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;

.field final synthetic val$floatingView:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;->this$1:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;

    iput-object p2, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;->val$floatingView:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;->val$floatingView:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->setProgressLoaderHidden(Z)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;->val$floatingView:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;

    iget-object p1, p1, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->activateButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    new-instance p1, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1;-><init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;->val$floatingView:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->isOnlyConnectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$2;

    invoke-direct {v1, p0, p1}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$2;-><init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;Lcom/zjx/jyandroid/ADB/ADBConnector$StartOpenTcpipPortProcessResultListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$3;

    invoke-direct {v1, p0, p1}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$3;-><init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;Lcom/zjx/jyandroid/ADB/ADBConnector$StartOpenTcpipPortProcessResultListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method
