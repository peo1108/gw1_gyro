.class public Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC;
.super Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;
.source "SourceFile"


# instance fields
.field blockTouchLinearLayout:Landroid/view/View;

.field blockTouchSwitch:Landroid/widget/Switch;

.field helpIcon:Landroid/view/View;

.field switchIndexSliderView:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;-><init>(Landroid/content/Context;)V

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
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic access$000(Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->component:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->component:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    return-object p0
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->onFinishInflate()V

    sget v0, Lcom/zjx/jyandroid/R$id;->switchIndexSliderView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC;->switchIndexSliderView:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget v0, Lcom/zjx/jyandroid/R$id;->helpIcon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC;->helpIcon:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->blockTouchLinearLayout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC;->blockTouchLinearLayout:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->blockTouchSwitch:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC;->blockTouchSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC;->helpIcon:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC$1;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC$1;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC;->blockTouchSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC$2;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC$2;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC;->switchIndexSliderView:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC$3;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC$3;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC;)V

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    return-void
.end method

.method public updateViewByComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->inflated:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    check-cast p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/KeymapComponents/UploadKeymapComponentGeneralRCSwitchConfig;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC;->blockTouchSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/e;->isBlockTouch()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC;->switchIndexSliderView:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/KeymapComponents/UploadKeymapComponentGeneralRCSwitchConfig;->getSwitchToIndex()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    return-void
.end method
