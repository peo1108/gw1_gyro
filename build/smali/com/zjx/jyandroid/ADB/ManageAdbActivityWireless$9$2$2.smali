.class Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$listener:Lcom/zjx/jyandroid/ADB/ADBConnector$StartOpenTcpipPortProcessResultListener;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;Lcom/zjx/jyandroid/ADB/ADBConnector$StartOpenTcpipPortProcessResultListener;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$2;->this$2:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;

    iput-object p2, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$2;->val$listener:Lcom/zjx/jyandroid/ADB/ADBConnector$StartOpenTcpipPortProcessResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/ADB/ADBConnector;->sharedInstance()Lcom/zjx/jyandroid/ADB/ADBConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$2;->this$2:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;

    iget-object v1, v1, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;->val$floatingView:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->getPairingCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$2;->this$2:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;

    iget-object v2, v2, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;->val$floatingView:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->getPairingPort()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {v0, v2, v1}, Lcom/zjx/jyandroid/ADB/ADBConnector;->pair(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$2;->val$listener:Lcom/zjx/jyandroid/ADB/ADBConnector$StartOpenTcpipPortProcessResultListener;

    invoke-virtual {v0, v1, v2}, Lcom/zjx/jyandroid/ADB/ADBConnector;->startOpenTcpipPortProcess(ILcom/zjx/jyandroid/ADB/ADBConnector$StartOpenTcpipPortProcessResultListener;)V

    return-void
.end method
