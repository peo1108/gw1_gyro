.class Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1;->processCancelled()V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1$2;->this$3:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/zjx/jyandroid/base/util/a;

    sget v1, Lcom/zjx/jyandroid/R$string;->activity_manage_adb_wireless_text9:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/util/a;->a()V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1$2;->this$3:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1;->this$2:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;->val$floatingView:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->setProgressLoaderHidden(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1$2;->this$3:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2$1;->this$2:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;->val$floatingView:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->activateButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
