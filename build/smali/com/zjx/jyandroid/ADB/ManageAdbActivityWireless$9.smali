.class Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;

.field final synthetic val$adbConnector:Lcom/zjx/jyandroid/ADB/ADBConnector;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;Lcom/zjx/jyandroid/ADB/ADBConnector;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;

    iput-object p2, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;->val$adbConnector:Lcom/zjx/jyandroid/ADB/ADBConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b$f;->g(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/zjx/jyandroid/base/Components/Alert;

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->binding:Lcom/zjx/jyandroid/databinding/ActivityManageAdbWirelessBinding;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/databinding/ActivityManageAdbWirelessBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    sget v1, Lcom/zjx/jyandroid/R$string;->need_permission:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/R$string;->activity_manage_adb_wireless_text8:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/zjx/jyandroid/base/Components/Alert;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v1, Lcom/zjx/jyandroid/R$string;->ok:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v3, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$1;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$1;-><init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/Components/Alert;->show()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;->val$adbConnector:Lcom/zjx/jyandroid/ADB/ADBConnector;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ADB/ADBConnector;->killServer()Ljava/lang/Process;

    iget-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;->val$adbConnector:Lcom/zjx/jyandroid/ADB/ADBConnector;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ADB/ADBConnector;->startServer()Ljava/lang/Process;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x800000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;

    iget-object p1, p1, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->splitScreenModeCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/zjx/jyandroid/ADB/ADBConnector;->sharedInstance()Lcom/zjx/jyandroid/ADB/ADBConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ADB/ADBConnector;->showPairingFloatingView()Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    sget v0, Lcom/zjx/jyandroid/R$layout;->adb_pair_floating_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;->this$0:Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;

    iget-object v0, v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->binding:Lcom/zjx/jyandroid/databinding/ActivityManageAdbWirelessBinding;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/databinding/ActivityManageAdbWirelessBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    iget-object v0, p1, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->activateButton:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;

    invoke-direct {v1, p0, p1}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$2;-><init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->returnAppButton:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$3;

    invoke-direct {v1, p0, p1}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9$3;-><init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
