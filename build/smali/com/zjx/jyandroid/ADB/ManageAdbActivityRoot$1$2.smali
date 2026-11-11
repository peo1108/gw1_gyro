.class Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1$2;
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1$2;->this$1:Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1;

    iput-object p2, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1$2;->val$adbConnector:Lcom/zjx/jyandroid/ADB/ADBConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1$2;->this$1:Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;->connectionStatusButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1$2;->val$adbConnector:Lcom/zjx/jyandroid/ADB/ADBConnector;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->getConnectionStatus()Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;->CONNECTED:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1$2;->this$1:Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;->connectionStatusButton:Landroid/widget/Button;

    invoke-static {}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;->access$000()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1$2;->this$1:Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;->connectionStatusButton:Landroid/widget/Button;

    sget v1, Lcom/zjx/jyandroid/R$string;->adb_activated:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1$2;->this$1:Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;->connectionStatusButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1$2;->this$1:Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;->connectionStatusButton:Landroid/widget/Button;

    sget v1, Lcom/zjx/jyandroid/R$string;->retry:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
