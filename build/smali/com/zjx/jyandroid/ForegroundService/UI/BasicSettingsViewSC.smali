.class public Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field public a:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

.field public b:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

.field public c:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field public d:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field public e:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;


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


# virtual methods
.method public onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    sget v0, Lcom/zjx/jyandroid/R$id;->enableSCPointCell:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;->a:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    sget v0, Lcom/zjx/jyandroid/R$id;->scPointDashLengthCell:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;->c:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v0, Lcom/zjx/jyandroid/R$id;->scPointDashGapCell:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;->d:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v0, Lcom/zjx/jyandroid/R$id;->scPointDashWidthCell:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;->e:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v0, Lcom/zjx/jyandroid/R$id;->switchPointerLocationDisplayCell:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;->b:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    :try_start_0
    invoke-static {}, Lcom/zjx/jyandroid/ADB/BinderClientApplication;->sharedInstance()Lcom/zjx/jyandroid/ADB/BinderClientApplication;

    move-result-object v0

    const-string v1, "settings get system pointer_location"

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ADB/BinderClientApplication;->executeShellCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;->b:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;->b:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v0, v0, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC$a;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;->a:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Ly/d;->l()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;->a:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC$b;

    invoke-direct {v2, p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC$b;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;Ly/d;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;->c:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Ly/d;->f()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;->c:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v2, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC$c;

    invoke-direct {v2, p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC$c;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;Ly/d;)V

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;->d:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Ly/d;->e()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;->d:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v2, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC$d;

    invoke-direct {v2, p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC$d;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;Ly/d;)V

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;->e:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Ly/d;->d()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;->e:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v2, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC$e;

    invoke-direct {v2, p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC$e;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;Ly/d;)V

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    return-void
.end method
