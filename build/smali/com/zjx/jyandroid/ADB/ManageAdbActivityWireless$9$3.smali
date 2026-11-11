.class Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$3;
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$3;->this$1:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;

    iput-object p2, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$3;->val$floatingView:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b;->P()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->activity_manage_adb_wireless_text11:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$3;->this$1:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;

    iget-object p1, p1, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;

    iget-object p1, p1, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->splitScreenModeCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/zjx/jyandroid/ADB/ADBConnector;->sharedInstance()Lcom/zjx/jyandroid/ADB/ADBConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ADB/ADBConnector;->destroyPairingFloatingView()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$3;->this$1:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;

    iget-object p1, p1, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;

    iget-object p1, p1, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->binding:Lcom/zjx/jyandroid/databinding/ActivityManageAdbWirelessBinding;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/databinding/ActivityManageAdbWirelessBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$3;->val$floatingView:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method
