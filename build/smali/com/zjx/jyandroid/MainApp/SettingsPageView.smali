.class public Lcom/zjx/jyandroid/MainApp/SettingsPageView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# static fields
.field public static final synthetic t:Z


# instance fields
.field public a:Landroid/widget/Spinner;

.field public b:Landroid/widget/Spinner;

.field public c:Landroid/app/Activity;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/view/View;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/view/View;

.field public l:Landroid/view/View;

.field public m:Landroid/view/View;

.field public n:Landroidx/cardview/widget/CardView;

.field public o:Landroidx/cardview/widget/CardView;

.field public p:Landroidx/cardview/widget/CardView;

.field public q:Landroid/widget/Switch;

.field public r:Landroid/widget/Switch;

.field public s:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/zjx/jyandroid/MainApp/SettingsPageView$d;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/MainApp/SettingsPageView$d;-><init>(Lcom/zjx/jyandroid/MainApp/SettingsPageView;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->s:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Lcom/zjx/jyandroid/MainApp/SettingsPageView$d;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/MainApp/SettingsPageView$d;-><init>(Lcom/zjx/jyandroid/MainApp/SettingsPageView;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->s:Landroid/content/BroadcastReceiver;

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

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Lcom/zjx/jyandroid/MainApp/SettingsPageView$d;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/MainApp/SettingsPageView$d;-><init>(Lcom/zjx/jyandroid/MainApp/SettingsPageView;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->s:Landroid/content/BroadcastReceiver;

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

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 8
    new-instance p1, Lcom/zjx/jyandroid/MainApp/SettingsPageView$d;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/MainApp/SettingsPageView$d;-><init>(Lcom/zjx/jyandroid/MainApp/SettingsPageView;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->s:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic a(Lcom/zjx/jyandroid/MainApp/SettingsPageView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->b()V

    return-void
.end method

.method private getCurrentAppLanguage()Ly/d$a;
    .locals 2

    sget v0, Lcom/zjx/jyandroid/R$string;->locale:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh-cn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Ly/d$a;->b:Ly/d$a;

    return-object v0

    :cond_0
    const-string v1, "zh-tw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Ly/d$a;->c:Ly/d$a;

    return-object v0

    :cond_1
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Ly/d$a;->a:Ly/d$a;

    return-object v0

    :cond_2
    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ly/d$a;->d:Ly/d$a;

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 3

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object v0

    invoke-virtual {v0}, Ly/d;->j()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->WangzuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    const/16 v2, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->p:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->o:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->p:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->o:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 10

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$c;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->i()Landroid/util/Size;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->c:Landroid/app/Activity;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/32 v6, 0x100000

    div-long/2addr v4, v6

    iget-wide v2, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    div-long/2addr v2, v6

    sget v6, Lcom/zjx/jyandroid/R$string;->settings_view_device_info:I

    invoke-static {v6}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$c;->j()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v7, v1, v4, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->b()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.zjx.jyandroid.loginStatusChanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/gamwing/security/ui/GamwingSoftwareModeUi;->bindSettingsPage(Landroid/view/View;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    sget v0, Lcom/zjx/jyandroid/R$id;->loadManagePermissionViewButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->d:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->adbManageCell:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->e:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->wechatQrCodeCell:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->h:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->resetSettingsCell:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->f:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->loginButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->n:Landroidx/cardview/widget/CardView;

    sget v0, Lcom/zjx/jyandroid/R$id;->loginCardView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->o:Landroidx/cardview/widget/CardView;

    sget v0, Lcom/zjx/jyandroid/R$id;->alreadyLoginCardView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->p:Landroidx/cardview/widget/CardView;

    sget v0, Lcom/zjx/jyandroid/R$id;->nickNameTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->i:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->expireTimeTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->j:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->depositButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->k:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->userInfoButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->l:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->exitButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->m:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->bypassingRecordingSwitch:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->q:Landroid/widget/Switch;

    sget v0, Lcom/zjx/jyandroid/R$id;->enableTouchEventRedirectSwitch:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->r:Landroid/widget/Switch;

    sget v0, Lcom/zjx/jyandroid/R$id;->activationModeSpinner:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->a:Landroid/widget/Spinner;

    invoke-static {v0}, LK6/GyroUI;->hideView(Landroid/view/View;)V

    sget v0, Lcom/zjx/jyandroid/R$id;->languageSpinner:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->b:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->q:Landroid/widget/Switch;

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object v1

    invoke-virtual {v1}, Ly/d;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->q:Landroid/widget/Switch;

    new-instance v1, Lcom/zjx/jyandroid/MainApp/SettingsPageView$e;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/MainApp/SettingsPageView$e;-><init>(Lcom/zjx/jyandroid/MainApp/SettingsPageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->r:Landroid/widget/Switch;

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object v1

    invoke-virtual {v1}, Ly/d;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->r:Landroid/widget/Switch;

    new-instance v1, Lcom/zjx/jyandroid/MainApp/SettingsPageView$f;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/MainApp/SettingsPageView$f;-><init>(Lcom/zjx/jyandroid/MainApp/SettingsPageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->k:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/MainApp/SettingsPageView$g;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/MainApp/SettingsPageView$g;-><init>(Lcom/zjx/jyandroid/MainApp/SettingsPageView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->m:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/MainApp/SettingsPageView$h;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/MainApp/SettingsPageView$h;-><init>(Lcom/zjx/jyandroid/MainApp/SettingsPageView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->n:Landroidx/cardview/widget/CardView;

    new-instance v1, Lcom/zjx/jyandroid/MainApp/SettingsPageView$i;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/MainApp/SettingsPageView$i;-><init>(Lcom/zjx/jyandroid/MainApp/SettingsPageView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zjx/jyandroid/R$array;->activation_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->a:Landroid/widget/Spinner;

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->n:Landroidx/cardview/widget/CardView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/zjx/jyandroid/R$layout;->settings_page_view_spinner_item:I

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->a:Landroid/widget/Spinner;

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object v1

    invoke-virtual {v1}, Ly/d;->a()Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->a:Landroid/widget/Spinner;

    new-instance v1, Lcom/zjx/jyandroid/MainApp/SettingsPageView$j;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/MainApp/SettingsPageView$j;-><init>(Lcom/zjx/jyandroid/MainApp/SettingsPageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->h:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/MainApp/SettingsPageView$k;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/MainApp/SettingsPageView$k;-><init>(Lcom/zjx/jyandroid/MainApp/SettingsPageView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->e:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/MainApp/SettingsPageView$l;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/MainApp/SettingsPageView$l;-><init>(Lcom/zjx/jyandroid/MainApp/SettingsPageView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->d:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/MainApp/SettingsPageView$a;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/MainApp/SettingsPageView$a;-><init>(Lcom/zjx/jyandroid/MainApp/SettingsPageView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->f:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/MainApp/SettingsPageView$b;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/MainApp/SettingsPageView$b;-><init>(Lcom/zjx/jyandroid/MainApp/SettingsPageView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zjx/jyandroid/R$array;->language_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->b:Landroid/widget/Spinner;

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->b:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/zjx/jyandroid/R$layout;->settings_page_view_spinner_item:I

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-direct {p0}, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->getCurrentAppLanguage()Ly/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->b:Landroid/widget/Spinner;

    invoke-direct {p0}, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->getCurrentAppLanguage()Ly/d$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->b:Landroid/widget/Spinner;

    new-instance v1, Lcom/zjx/jyandroid/MainApp/SettingsPageView$c;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/MainApp/SettingsPageView$c;-><init>(Lcom/zjx/jyandroid/MainApp/SettingsPageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :try_start_0
    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "DevicePictures/launchScreen.jpg"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    sget v0, Lcom/zjx/jyandroid/R$id;->imageView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    sget v0, Lcom/zjx/jyandroid/R$id;->deviceInfoTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->g:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->appVersionTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$f;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    const-string v1, "-googleplay"

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1.8.41"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->p:Landroidx/cardview/widget/CardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->o:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$f;->m()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->o:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->p:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
