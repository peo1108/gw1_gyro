.class Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1;->processFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1$1;->this$3:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1$1;->this$3:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1;->this$2:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;->val$floatingView:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->setProgressLoaderHidden(Z)V

    new-instance v0, Lcom/zjx/jyandroid/base/util/a;

    const-string v2, "\u914d\u5bf9\u6210\u529f"

    sget-object v3, Lcom/zjx/jyandroid/base/util/ToastView$a;->b:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v0, v2, v3}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/util/a;->a()V

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zjx/jyandroid/ADB/ADBConnector;->sharedInstance()Lcom/zjx/jyandroid/ADB/ADBConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->destroyPairingFloatingView()V

    :cond_0
    invoke-static {v1}, Lcom/zjx/jyandroid/ADB/ADBConnector;->setADBPaired(Z)V

    return-void
.end method
