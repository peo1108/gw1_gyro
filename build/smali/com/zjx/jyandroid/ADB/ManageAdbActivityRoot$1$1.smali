.class Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1;

.field final synthetic val$adbConnector:Lcom/zjx/jyandroid/ADB/ADBConnector;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1;Lcom/zjx/jyandroid/ADB/ADBConnector;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1$1;->this$1:Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1;

    iput-object p2, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1$1;->val$adbConnector:Lcom/zjx/jyandroid/ADB/ADBConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1$1;->val$adbConnector:Lcom/zjx/jyandroid/ADB/ADBConnector;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->stopConnectAndActivationProcess()V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1$1;->val$adbConnector:Lcom/zjx/jyandroid/ADB/ADBConnector;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->startRootActivationThread()V

    return-void
.end method
