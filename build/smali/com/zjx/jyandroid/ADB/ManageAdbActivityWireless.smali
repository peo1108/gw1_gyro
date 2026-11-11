.class public Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;
.super Lcom/zjx/jyandroid/ADB/ManageAdbActivity;
.source "SourceFile"


# static fields
.field private static COLOR_FAILED:I

.field private static COLOR_SUCCESS:I


# instance fields
.field adbEnableStatusButton:Landroid/widget/Button;

.field private alreadyAutoConnect:Z

.field binding:Lcom/zjx/jyandroid/databinding/ActivityManageAdbWirelessBinding;

.field button:Landroid/widget/Button;

.field cancelPairButton:Landroid/view/View;

.field connectionStatusButton:Landroid/widget/Button;

.field connectionStatusButtonOnClickListener:Landroid/view/View$OnClickListener;

.field developmentModeButton:Landroid/widget/Button;

.field finishButton:Landroid/view/View;

.field handler:Landroid/os/Handler;

.field promptImageView:Landroid/widget/ImageView;

.field seeSolutionTextView:Landroid/widget/TextView;

.field splitScreenModeCheckbox:Landroid/widget/CheckBox;

.field startPairingViewButton:Landroid/widget/Button;

.field tcpPortStatusButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/zjx/jyandroid/R$color;->success_green:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v0

    sput v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->COLOR_SUCCESS:I

    sget v0, Lcom/zjx/jyandroid/R$color;->danger_red:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v0

    sput v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->COLOR_FAILED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivity;-><init>()V

    new-instance v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$1;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$1;-><init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->connectionStatusButtonOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->alreadyAutoConnect:Z

    return-void
.end method

.method public static synthetic access$000()I
    .locals 1

    sget v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->COLOR_SUCCESS:I

    return v0
.end method

.method public static synthetic access$100(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;)V
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->updateTcpPortStatusButtonState()V

    return-void
.end method

.method public static synthetic access$200(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;)V
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->refresh()V

    return-void
.end method

.method private refresh()V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->developmentModeButton:Landroid/widget/Button;

    sget v2, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->COLOR_SUCCESS:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->developmentModeButton:Landroid/widget/Button;

    sget v2, Lcom/zjx/jyandroid/R$string;->manage_adb_activity_on:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->developmentModeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->developmentModeButton:Landroid/widget/Button;

    sget v2, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->COLOR_FAILED:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->developmentModeButton:Landroid/widget/Button;

    sget v2, Lcom/zjx/jyandroid/R$string;->manage_adb_activity_jump:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->developmentModeButton:Landroid/widget/Button;

    new-instance v2, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$6;

    invoke-direct {v2, p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$6;-><init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    invoke-static {}, Lcom/zjx/jyandroid/ADB/ADBConnector;->sharedInstance()Lcom/zjx/jyandroid/ADB/ADBConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->isAdbEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->adbEnableStatusButton:Landroid/widget/Button;

    sget v3, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->COLOR_SUCCESS:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->adbEnableStatusButton:Landroid/widget/Button;

    sget v3, Lcom/zjx/jyandroid/R$string;->manage_adb_activity_on:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->adbEnableStatusButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->adbEnableStatusButton:Landroid/widget/Button;

    new-instance v3, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$7;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$7;-><init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->adbEnableStatusButton:Landroid/widget/Button;

    sget v3, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->COLOR_FAILED:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->adbEnableStatusButton:Landroid/widget/Button;

    sget v3, Lcom/zjx/jyandroid/R$string;->manage_adb_activity_click_to_open:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->adbEnableStatusButton:Landroid/widget/Button;

    new-instance v3, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$8;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$8;-><init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    new-instance v2, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;

    invoke-direct {v2, p0, v0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$9;-><init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;Lcom/zjx/jyandroid/ADB/ADBConnector;)V

    invoke-static {}, Lcom/zjx/jyandroid/ADB/ADBConnector;->isADBPaired()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->isTcpRunning()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->startPairingViewButton:Landroid/widget/Button;

    sget v3, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->COLOR_SUCCESS:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->startPairingViewButton:Landroid/widget/Button;

    sget v3, Lcom/zjx/jyandroid/R$string;->activity_manage_adb_wireless_text12:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->startPairingViewButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->startPairingViewButton:Landroid/widget/Button;

    sget v3, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->COLOR_SUCCESS:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->startPairingViewButton:Landroid/widget/Button;

    sget v3, Lcom/zjx/jyandroid/R$string;->activity_manage_adb_wireless_text13:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->startPairingViewButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->startPairingViewButton:Landroid/widget/Button;

    sget v3, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->COLOR_FAILED:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->startPairingViewButton:Landroid/widget/Button;

    sget v3, Lcom/zjx/jyandroid/R$string;->activity_manage_adb_wireless_text14:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->startPairingViewButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    invoke-direct {p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->updateTcpPortStatusButtonState()V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->getConnectionStatus()Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;->CONNECTED:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->connectionStatusButton:Landroid/widget/Button;

    sget v1, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->COLOR_SUCCESS:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->connectionStatusButton:Landroid/widget/Button;

    sget v1, Lcom/zjx/jyandroid/R$string;->adb_activated:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->connectionStatusButton:Landroid/widget/Button;

    sget v1, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->COLOR_FAILED:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->connectionStatusButton:Landroid/widget/Button;

    sget v1, Lcom/zjx/jyandroid/R$string;->manage_adb_activity_click_to_activate:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->connectionStatusButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->connectionStatusButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    return-void
.end method

.method private updateTcpPortStatusButtonState()V
    .locals 2

    invoke-static {}, Lcom/zjx/jyandroid/ADB/ADBConnector;->sharedInstance()Lcom/zjx/jyandroid/ADB/ADBConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->isTcpRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->tcpPortStatusButton:Landroid/widget/Button;

    sget v1, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->COLOR_SUCCESS:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->tcpPortStatusButton:Landroid/widget/Button;

    sget v1, Lcom/zjx/jyandroid/R$string;->manage_adb_activity_on:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->alreadyAutoConnect:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->connectionStatusButtonOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->connectionStatusButton:Landroid/widget/Button;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->alreadyAutoConnect:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->tcpPortStatusButton:Landroid/widget/Button;

    sget v1, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->COLOR_FAILED:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->tcpPortStatusButton:Landroid/widget/Button;

    sget v1, Lcom/zjx/jyandroid/R$string;->manage_adb_activity_off:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->alreadyAutoConnect:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onActivationStatusChanged()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/zjx/jyandroid/databinding/ActivityManageAdbWirelessBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/zjx/jyandroid/databinding/ActivityManageAdbWirelessBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->binding:Lcom/zjx/jyandroid/databinding/ActivityManageAdbWirelessBinding;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/databinding/ActivityManageAdbWirelessBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    sget p1, Lcom/zjx/jyandroid/R$id;->adbEnableStatusButton:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->adbEnableStatusButton:Landroid/widget/Button;

    sget p1, Lcom/zjx/jyandroid/R$id;->tcpPortStatusButton:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->tcpPortStatusButton:Landroid/widget/Button;

    sget p1, Lcom/zjx/jyandroid/R$id;->connectionStatusButton:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->connectionStatusButton:Landroid/widget/Button;

    sget p1, Lcom/zjx/jyandroid/R$id;->developmentModeButton:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->developmentModeButton:Landroid/widget/Button;

    sget p1, Lcom/zjx/jyandroid/R$id;->seeSolutionTextView:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->seeSolutionTextView:Landroid/widget/TextView;

    sget p1, Lcom/zjx/jyandroid/R$id;->startPairingViewButton:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->startPairingViewButton:Landroid/widget/Button;

    sget p1, Lcom/zjx/jyandroid/R$id;->cancelPairButton:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->cancelPairButton:Landroid/view/View;

    sget p1, Lcom/zjx/jyandroid/R$id;->splitScreenModeCheckbox:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->splitScreenModeCheckbox:Landroid/widget/CheckBox;

    sget p1, Lcom/zjx/jyandroid/R$id;->imageView6:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->promptImageView:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->seeSolutionTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->seeSolutionTextView:Landroid/widget/TextView;

    new-instance v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$2;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$2;-><init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/zjx/jyandroid/R$id;->finishButton:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->finishButton:Landroid/view/View;

    new-instance v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$3;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$3;-><init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->connectionStatusButton:Landroid/widget/Button;

    new-instance v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$4;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$4;-><init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->cancelPairButton:Landroid/view/View;

    new-instance v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$5;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless$5;-><init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/zjx/jyandroid/R$string;->locale:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ru"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->promptImageView:Landroid/widget/ImageView;

    sget v0, Lcom/zjx/jyandroid/R$drawable;->adb_prompt_ru:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->n(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivity;->onResume()V

    invoke-direct {p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityWireless;->refresh()V

    return-void
.end method
