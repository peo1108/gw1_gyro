.class public Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;
.super Lcom/zjx/jyandroid/ADB/ManageAdbActivity;
.source "SourceFile"


# static fields
.field private static COLOR_FAILED:I

.field private static COLOR_SUCCESS:I


# instance fields
.field adbEnableStatusButton:Landroid/widget/Button;

.field binding:Lcom/zjx/jyandroid/databinding/ActivityManageAdbRootBinding;

.field button:Landroid/widget/Button;

.field connectionStatusButton:Landroid/widget/Button;

.field connectionStatusButtonOnClickListener:Landroid/view/View$OnClickListener;

.field developmentModeButton:Landroid/widget/Button;

.field finishButton:Landroid/view/View;

.field handler:Landroid/os/Handler;

.field seeSolutionTextView:Landroid/widget/TextView;

.field startPairingViewButton:Landroid/widget/Button;

.field tcpPortStatusButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/zjx/jyandroid/R$color;->success_green:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v0

    sput v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;->COLOR_SUCCESS:I

    sget v0, Lcom/zjx/jyandroid/R$color;->danger_red:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v0

    sput v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;->COLOR_FAILED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivity;-><init>()V

    new-instance v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$1;-><init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;->connectionStatusButtonOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000()I
    .locals 1

    sget v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;->COLOR_SUCCESS:I

    return v0
.end method

.method private refresh()V
    .locals 2

    invoke-static {}, Lcom/zjx/jyandroid/ADB/ADBConnector;->sharedInstance()Lcom/zjx/jyandroid/ADB/ADBConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->getConnectionStatus()Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;->CONNECTED:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;->connectionStatusButton:Landroid/widget/Button;

    sget v1, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;->COLOR_SUCCESS:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;->connectionStatusButton:Landroid/widget/Button;

    sget v1, Lcom/zjx/jyandroid/R$string;->adb_activated:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;->connectionStatusButton:Landroid/widget/Button;

    sget v1, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;->COLOR_FAILED:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;->connectionStatusButton:Landroid/widget/Button;

    sget v1, Lcom/zjx/jyandroid/R$string;->manage_adb_activity_click_to_activate:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;->connectionStatusButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;->connectionStatusButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    invoke-static {p1}, Lcom/zjx/jyandroid/databinding/ActivityManageAdbRootBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/zjx/jyandroid/databinding/ActivityManageAdbRootBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;->binding:Lcom/zjx/jyandroid/databinding/ActivityManageAdbRootBinding;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/databinding/ActivityManageAdbRootBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    sget p1, Lcom/zjx/jyandroid/R$id;->connectionStatusButton:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;->connectionStatusButton:Landroid/widget/Button;

    sget p1, Lcom/zjx/jyandroid/R$id;->finishButton:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;->finishButton:Landroid/view/View;

    new-instance v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$2;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$2;-><init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;->connectionStatusButton:Landroid/widget/Button;

    new-instance v0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$3;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot$3;-><init>(Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivity;->onResume()V

    invoke-direct {p0}, Lcom/zjx/jyandroid/ADB/ManageAdbActivityRoot;->refresh()V

    return-void
.end method
