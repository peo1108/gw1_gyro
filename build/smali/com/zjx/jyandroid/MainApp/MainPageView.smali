.class public Lcom/zjx/jyandroid/MainApp/MainPageView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/Hardware/IHardwareConnectionStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/MainApp/MainPageView$q;,
        Lcom/zjx/jyandroid/MainApp/MainPageView$r;
    }
.end annotation


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;

.field public h:Landroid/view/View;

.field public i:Landroid/widget/TextView;

.field public j:Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;

.field public k:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;

.field public l:Landroid/widget/ImageView;

.field public m:Landroid/widget/ImageView;

.field public n:Lcom/evrencoskun/tableview/TableView;

.field public o:Landroid/widget/Button;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/view/View$OnClickListener;

.field public r:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;-><init>(ZLcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->j:Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;

    .line 3
    iput-object v1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->k:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;

    .line 4
    new-instance p1, Lcom/zjx/jyandroid/MainApp/MainPageView$p;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$p;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->q:Landroid/view/View$OnClickListener;

    .line 5
    new-instance p1, Lcom/zjx/jyandroid/MainApp/MainPageView$a;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$a;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->r:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p1, Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;-><init>(ZLcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->j:Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;

    .line 8
    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->k:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;

    .line 9
    new-instance p1, Lcom/zjx/jyandroid/MainApp/MainPageView$p;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$p;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->q:Landroid/view/View$OnClickListener;

    .line 10
    new-instance p1, Lcom/zjx/jyandroid/MainApp/MainPageView$a;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$a;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->r:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance p1, Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;-><init>(ZLcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->j:Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;

    .line 13
    iput-object p3, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->k:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;

    .line 14
    new-instance p1, Lcom/zjx/jyandroid/MainApp/MainPageView$p;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$p;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->q:Landroid/view/View$OnClickListener;

    .line 15
    new-instance p1, Lcom/zjx/jyandroid/MainApp/MainPageView$a;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$a;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->r:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 17
    new-instance p1, Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;-><init>(ZLcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->j:Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;

    .line 18
    iput-object p3, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->k:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;

    .line 19
    new-instance p1, Lcom/zjx/jyandroid/MainApp/MainPageView$p;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$p;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->q:Landroid/view/View$OnClickListener;

    .line 20
    new-instance p1, Lcom/zjx/jyandroid/MainApp/MainPageView$a;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$a;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->r:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic a(Lcom/zjx/jyandroid/MainApp/MainPageView;ZLcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zjx/jyandroid/MainApp/MainPageView;->m(ZLcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)V

    return-void
.end method

.method public static synthetic b(Lcom/zjx/jyandroid/MainApp/MainPageView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/MainApp/MainPageView;->n()V

    return-void
.end method

.method public static synthetic c(Lcom/zjx/jyandroid/MainApp/MainPageView;)Lcom/evrencoskun/tableview/TableView;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->n:Lcom/evrencoskun/tableview/TableView;

    return-object p0
.end method

.method public static synthetic d(Lcom/zjx/jyandroid/MainApp/MainPageView;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->o:Landroid/widget/Button;

    return-object p0
.end method

.method public static synthetic e(Lcom/zjx/jyandroid/MainApp/MainPageView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->p:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic f(Lcom/zjx/jyandroid/MainApp/MainPageView;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->r:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static synthetic g(Lcom/zjx/jyandroid/MainApp/MainPageView;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->q:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static synthetic h(Lcom/zjx/jyandroid/MainApp/MainPageView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->f:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic i(Lcom/zjx/jyandroid/MainApp/MainPageView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->b:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public hardwareConnected(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/zjx/jyandroid/MainApp/MainPageView$h;

    invoke-direct {v1, p0, p1}, Lcom/zjx/jyandroid/MainApp/MainPageView$h;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView;Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hardwareDisconnected()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zjx/jyandroid/MainApp/MainPageView;->m(ZLcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)V

    return-void
.end method

.method public j(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x1f4

    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->b:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/MainApp/MainPageView$g;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$g;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public k()V
    .locals 5

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getHardwareManager()Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/zjx/jyandroid/Hardware/IHardwareManageable;->getDeviceVersionMode()Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;

    move-result-object v2

    invoke-static {v2}, Lcom/gamwing/security/GamwingSoftwareModeLaunch;->ensureFirmwareForLaunch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;

    iget v3, v2, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;->btVersion:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    iget v3, v2, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;->mcuVersion:I

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/zjx/jyandroid/Hardware/IHardwareManageable;->getConnectionState()Lcom/zjx/jyandroid/Hardware/ConnectionState;

    move-result-object v0

    iget-object v0, v0, Lcom/zjx/jyandroid/Hardware/ConnectionState;->deviceType:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    new-instance v1, Lcom/zjx/jyandroid/MainApp/MainPageView$c;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$c;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView;)V

    invoke-static {v0, v2, v1}, Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager;->checkUpdateFromServer(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$GetUpdateInfoCompleteHandler;)V

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public l()V
    .locals 2

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final m(ZLcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/zjx/jyandroid/Hardware/Hardware;->getDeviceName(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b;->y()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->ShoucuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->o:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->o:Landroid/widget/Button;

    sget v1, Lcom/zjx/jyandroid/R$string;->state_connected:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->p:Landroid/widget/TextView;

    sget v1, Lcom/zjx/jyandroid/R$string;->current_device:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->m:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/zjx/jyandroid/Hardware/Hardware;->getDeviceImage(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1}, Lmdm/Brand;->logo(Landroid/widget/ImageView;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->o:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$color;->system_green:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/base/util/b;->S(Landroid/widget/Button;I)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/MainApp/MainPageView;->k()V

    new-instance p1, Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;-><init>(ZLcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->j:Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Lcom/zjx/jyandroid/base/util/b;->y()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object p1

    sget-object p2, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->ShoucuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    const/4 v1, 0x0

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->p:Landroid/widget/TextView;

    sget p2, Lcom/zjx/jyandroid/R$string;->current_device:I

    invoke-static {p2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p2

    sget v2, Lcom/zjx/jyandroid/R$string;->none:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->o:Landroid/widget/Button;

    const-string p2, "\u70b9\u51fb\u641c\u7d22"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->m:Landroid/widget/ImageView;

    invoke-static {p1}, Lmdm/Brand;->logo(Landroid/widget/ImageView;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->o:Landroid/widget/Button;

    sget p2, Lcom/zjx/jyandroid/R$color;->jy_blue_1:I

    invoke-static {p2}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/zjx/jyandroid/base/util/b;->S(Landroid/widget/Button;I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->o:Landroid/widget/Button;

    iget-object p2, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->p:Landroid/widget/TextView;

    sget p2, Lcom/zjx/jyandroid/R$string;->current_device:I

    invoke-static {p2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p2

    sget v2, Lcom/zjx/jyandroid/R$string;->none:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->o:Landroid/widget/Button;

    sget p2, Lcom/zjx/jyandroid/R$string;->state_not_connected:I

    invoke-static {p2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->m:Landroid/widget/ImageView;

    invoke-static {p1}, Lmdm/Brand;->logo(Landroid/widget/ImageView;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->o:Landroid/widget/Button;

    sget p2, Lcom/zjx/jyandroid/R$color;->system_red:I

    invoke-static {p2}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/zjx/jyandroid/base/util/b;->S(Landroid/widget/Button;I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->f:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance p1, Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;

    invoke-direct {p1, v1, v0}, Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;-><init>(ZLcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->j:Lcom/zjx/jyandroid/Hardware/Hardware$HardwareConnectionState;

    :goto_1
    return-void
.end method

.method public final n()V
    .locals 6

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->k:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/base/Components/Alert;

    const-string v2, "\u9519\u8bef"

    const-string v3, "\u53d1\u751f\u4e86\u4e00\u4e2a\u9519\u8bef\uff0c\u6682\u65f6\u65e0\u6cd5\u5347\u7ea7\u56fa\u4ef6"

    invoke-direct {v0, p0, v2, v3}, Lcom/zjx/jyandroid/base/Components/Alert;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v3, Lcom/zjx/jyandroid/R$string;->ok:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v5, Lcom/zjx/jyandroid/MainApp/MainPageView$d;

    invoke-direct {v5, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$d;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {v0, v2}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/Alert;->show(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$f;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/zjx/jyandroid/base/Components/Alert;

    sget v2, Lcom/zjx/jyandroid/R$string;->need_permission:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zjx/jyandroid/R$string;->need_permission_prompt:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/zjx/jyandroid/base/Components/Alert;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v3, Lcom/zjx/jyandroid/R$string;->ok:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v5, Lcom/zjx/jyandroid/MainApp/MainPageView$e;

    invoke-direct {v5, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$e;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {v0, v2}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    new-instance v2, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v3, Lcom/zjx/jyandroid/R$string;->cancel:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/zjx/jyandroid/MainApp/MainPageView$f;

    invoke-direct {v5, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$f;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {v0, v2}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/Alert;->show(Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->a:Landroid/app/Activity;

    const-class v2, Lcom/zjx/jyandroid/MainApp/OTAActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "updateInfo"

    iget-object v2, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->k:Lcom/zjx/jyandroid/Hardware/FirmwareUpdateManager$FirmwareUpdateInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Lcom/zjx/jyandroid/MainApp/MainPageView$b;

    invoke-direct {v2, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$b;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView;)V

    int-to-long v3, v0

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/zjx/jyandroid/MainApp/MainPageView;->l()V

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/MainApp/MainPageView;->j(Z)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/gamwing/security/GamwingSoftwareModeEnforcer;->syncConnectionForUi(Lcom/zjx/jyandroid/ForegroundService/MainService;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getConnectedDeviceType()Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/zjx/jyandroid/MainApp/MainPageView;->m(ZLcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/zjx/jyandroid/MainApp/MainPageView;->m(ZLcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->unregisterHardwareConnectionStateChangedListener(Lcom/zjx/jyandroid/Hardware/IHardwareConnectionStateChangedListener;)V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    sget v0, Lcom/zjx/jyandroid/R$id;->addButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->l:Landroid/widget/ImageView;

    sget v0, Lcom/zjx/jyandroid/R$id;->myGamesTableView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evrencoskun/tableview/TableView;

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->n:Lcom/evrencoskun/tableview/TableView;

    sget v0, Lcom/zjx/jyandroid/R$id;->deviceImageView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->m:Landroid/widget/ImageView;

    sget v0, Lcom/zjx/jyandroid/R$id;->connectionStatusButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->o:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->deviceInfoTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->p:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->adbNeedView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->b:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->permissionNeedView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->c:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->loadAdbActivityButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->e:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->loadPermissionAcitivityButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->d:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->OtaNeedView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->f:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->loadOtaActivityButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->g:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->deviceInfoLayout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->h:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->switchModeButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->i:Landroid/widget/TextView;

    invoke-static {v0}, LK6/GyroUI;->hideView(Landroid/view/View;)V

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object v0

    invoke-virtual {v0}, Ly/d;->j()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->WangzuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    if-ne v0, v1, :cond_0

    sget v0, Lcom/zjx/jyandroid/R$string;->main_page_view_text5:I

    :goto_0
    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    sget v0, Lcom/zjx/jyandroid/R$string;->main_page_view_text4:I

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/zjx/jyandroid/MainApp/MainPageView$i;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$i;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/zjx/jyandroid/MainApp/MainPageView$j;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$j;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->o:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->g:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/MainApp/MainPageView$k;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$k;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->d:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/MainApp/MainPageView$l;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$l;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->l:Landroid/widget/ImageView;

    new-instance v1, Lcom/zjx/jyandroid/MainApp/MainPageView$m;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$m;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->e:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/MainApp/MainPageView$n;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$n;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/MainApp/MainPageView;->refreshList()V

    return-void
.end method

.method public refreshList()V
    .locals 5

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/R$string;->preferences_main_application:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/zjx/jyandroid/R$string;->settings_key_add_app_list:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :try_start_0
    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView;->n:Lcom/evrencoskun/tableview/TableView;

    new-instance v2, Lcom/zjx/jyandroid/MainApp/MainPageView$o;

    invoke-direct {v2, p0, v1, v3}, Lcom/zjx/jyandroid/MainApp/MainPageView$o;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView;Ljava/util/Set;Landroid/content/pm/PackageManager;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
