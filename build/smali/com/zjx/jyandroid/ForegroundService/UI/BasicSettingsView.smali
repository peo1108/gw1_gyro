.class public Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field public a:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

.field public b:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

.field public c:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field public d:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field public e:Landroid/view/View;

.field public f:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

.field public g:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

.field public h:Lcom/zjx/jyandroid/base/Components/BindKeyRow;

.field public i:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

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

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic a(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->d(Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;)V

    return-void
.end method

.method public static synthetic b(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->c()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    sget-object v0, Lcom/zjx/jyandroid/base/util/b$b;->a:Ljava/util/Map;

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object v1

    invoke-virtual {v1}, Ly/d;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->h:Lcom/zjx/jyandroid/base/Components/BindKeyRow;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/BindKeyRow;->keyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final d(Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;)V
    .locals 4

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->f:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    invoke-virtual {p1, v2, v2}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setPosition(IZ)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->f:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    invoke-virtual {p1, v1, v2}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setPosition(IZ)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->f:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    invoke-virtual {p1, v3, v2}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setPosition(IZ)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->f:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    invoke-virtual {p1, v0, v2}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setPosition(IZ)V

    :goto_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 8

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    sget v0, Lcom/zjx/jyandroid/R$id;->mouseSensitivitySliderCell:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->c:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v0, Lcom/zjx/jyandroid/R$id;->enableMouseCell:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->a:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    sget v0, Lcom/zjx/jyandroid/R$id;->mouseViewSizeCell:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->d:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v0, Lcom/zjx/jyandroid/R$id;->bindCrazyTapKeyRow:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/BindKeyRow;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->h:Lcom/zjx/jyandroid/base/Components/BindKeyRow;

    sget v0, Lcom/zjx/jyandroid/R$id;->communicationFrequencySegmentedControl:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->f:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    sget v0, Lcom/zjx/jyandroid/R$id;->switchPointerLocationDisplayCell:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->b:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    sget v0, Lcom/zjx/jyandroid/R$id;->segmentedButton1000hz:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->i:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->mouseStyleSegmentedButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->g:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/zjx/jyandroid/ADB/BinderClientApplication;->sharedInstance()Lcom/zjx/jyandroid/ADB/BinderClientApplication;

    move-result-object v1

    const-string v2, "settings get system pointer_location"

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/ADB/BinderClientApplication;->executeShellCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->b:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->b:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$b;

    invoke-direct {v2, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$b;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->g:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->y()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->h()Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setPosition(IZ)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->g:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$c;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$c;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;)V

    invoke-virtual {v0, v1}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setOnPositionChangedListener(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getConnectedDeviceType()Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    move-result-object v4

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getHardwareManager()Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->getDeviceVersionMode()Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;

    move-result-object v5

    sget-object v0, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->LIE_YING:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    if-ne v4, v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sget-object v0, Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;->MO_XIE_MX_200_SX:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    if-ne v4, v0, :cond_2

    iget v0, v5, Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;->mcuVersion:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->f:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$e;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$e;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;)V

    invoke-virtual {v0, v1}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setOnPositionChangedListener(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;)V

    goto :goto_3

    :cond_2
    :goto_1
    invoke-virtual {v3}, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;->getCommunicationRate()Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    move-result-object v6

    sget-object v0, Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;->RATE_UNKNOWN:Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;

    if-ne v6, v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v6}, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->d(Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;)V

    :goto_2
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->f:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$d;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;Lcom/zjx/jyandroid/Hardware/USBWangZuoManager;Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;Lcom/zjx/jyandroid/Hardware/DeviceVersionMode;Lcom/zjx/jyandroid/Hardware/USBWangZuoManager$USBCommunicationRate;)V

    invoke-virtual {v0, v7}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setOnPositionChangedListener(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;)V

    :goto_3
    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->a:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Ly/d;->n()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->a:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$f;

    invoke-direct {v2, p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$f;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;Ly/d;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->c:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->y()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->i()F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->c:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v2, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$g;

    invoke-direct {v2, p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$g;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;Ly/d;)V

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->d:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Ly/d;->i()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->d:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v2, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$h;

    invoke-direct {v2, p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$h;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;Ly/d;)V

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->h:Lcom/zjx/jyandroid/base/Components/BindKeyRow;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/BindKeyRow;->titleTextView:Landroid/widget/TextView;

    sget v2, Lcom/zjx/jyandroid/R$string;->basic_settings_text16:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->c()V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->h:Lcom/zjx/jyandroid/base/Components/BindKeyRow;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/BindKeyRow;->bindKeyButton:Landroid/widget/Button;

    new-instance v2, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i;

    invoke-direct {v2, p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;Ly/d;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->h:Lcom/zjx/jyandroid/base/Components/BindKeyRow;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/BindKeyRow;->clearKeyButton:Landroid/widget/Button;

    new-instance v2, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$j;

    invoke-direct {v2, p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$j;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;Ly/d;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
