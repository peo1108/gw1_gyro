.class public Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field X0SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field X10SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field X1SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field X2SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field X3SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field X4SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field X6SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field X8SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field accessoryRecognitionModeSegmentedControl:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

.field accessoryRecognitionSettingsLinearLayout:Landroid/widget/LinearLayout;

.field accessoryRecognitionThresholdCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field aimingRecognitionModeSegmentedControl:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

.field controlViewWithAimingCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

.field controlViewWithPeekCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

.field crosshairSettingsCell:Lcom/zjx/jyandroid/base/Components/TextViewComponent;

.field dataPercentageCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field enableAccessoryRecognitionCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

.field enableRecoilControlCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

.field fixPanelCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

.field private flushConfig:Z

.field hippieSensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field private newCoefficientValue:I

.field private originalCoefficient:I

.field panelTransparencyCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field pictureCollectModeCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

.field rcDataManageCell:Lcom/zjx/jyandroid/base/Components/TextViewComponent;

.field recognitionFrequencyHelpIcon:Landroid/view/View;

.field recognitionFrequencySegmentedControl:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

.field private reloadExtensionWhenDisappear:Z

.field private restartGameStatusTrackerWhenDisappear:Z

.field scopeRecognitionThresholdCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field selectRecognitionAssetsCell:Lcom/zjx/jyandroid/base/Components/TextViewComponent;

.field sensitivityLinearLayout:Landroid/widget/LinearLayout;

.field shoucuoSettings:Landroid/widget/LinearLayout;

.field showPanelCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

.field splitGestureDataCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

.field private updateSensitivityOnExit:Z

.field weaponRecognitionThresholdCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->reloadExtensionWhenDisappear:Z

    .line 3
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->restartGameStatusTrackerWhenDisappear:Z

    .line 4
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->updateSensitivityOnExit:Z

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

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->reloadExtensionWhenDisappear:Z

    .line 7
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->restartGameStatusTrackerWhenDisappear:Z

    .line 8
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->updateSensitivityOnExit:Z

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

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->reloadExtensionWhenDisappear:Z

    .line 11
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->restartGameStatusTrackerWhenDisappear:Z

    .line 12
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->updateSensitivityOnExit:Z

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

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->reloadExtensionWhenDisappear:Z

    .line 15
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->restartGameStatusTrackerWhenDisappear:Z

    .line 16
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->updateSensitivityOnExit:Z

    return-void
.end method

.method public static synthetic access$002(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->restartGameStatusTrackerWhenDisappear:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->updateAccessoryRecognitionSettingsLinearLayoutVisibility()V

    return-void
.end method

.method public static synthetic access$202(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->reloadExtensionWhenDisappear:Z

    return p1
.end method

.method public static synthetic access$302(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->flushConfig:Z

    return p1
.end method

.method public static synthetic access$402(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;I)I
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->newCoefficientValue:I

    return p1
.end method

.method public static synthetic access$502(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->updateSensitivityOnExit:Z

    return p1
.end method

.method private updateAccessoryRecognitionSettingsLinearLayoutVisibility()V
    .locals 2

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;-><init>()V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->isEnableAccessoryRecognition()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->accessoryRecognitionSettingsLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->accessoryRecognitionSettingsLinearLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v1

    const-class v2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    sget v2, Lcom/zjx/jyandroid/R$id;->RCDataManageCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextViewComponent;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->rcDataManageCell:Lcom/zjx/jyandroid/base/Components/TextViewComponent;

    sget v2, Lcom/zjx/jyandroid/R$id;->selectRecognitionAssetsCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextViewComponent;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->selectRecognitionAssetsCell:Lcom/zjx/jyandroid/base/Components/TextViewComponent;

    sget v2, Lcom/zjx/jyandroid/R$id;->enableRecoilControlCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->enableRecoilControlCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    sget v2, Lcom/zjx/jyandroid/R$id;->showPanelCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->showPanelCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    sget v2, Lcom/zjx/jyandroid/R$id;->fixPanelCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->fixPanelCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    sget v2, Lcom/zjx/jyandroid/R$id;->pictureCollectModeCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->pictureCollectModeCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    sget v2, Lcom/zjx/jyandroid/R$id;->dataPercentageCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->dataPercentageCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v2, Lcom/zjx/jyandroid/R$id;->recognitionFrequencySegmentedControl:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->recognitionFrequencySegmentedControl:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    sget v2, Lcom/zjx/jyandroid/R$id;->weaponRecognitionThresholdCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->weaponRecognitionThresholdCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v2, Lcom/zjx/jyandroid/R$id;->scopeRecognitionThresholdCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->scopeRecognitionThresholdCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v2, Lcom/zjx/jyandroid/R$id;->sensitivityLinearLayout:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->sensitivityLinearLayout:Landroid/widget/LinearLayout;

    sget v2, Lcom/zjx/jyandroid/R$id;->hippieSensitivityCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->hippieSensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v2, Lcom/zjx/jyandroid/R$id;->X0SensitivityCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X0SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v2, Lcom/zjx/jyandroid/R$id;->X1SensitivityCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X1SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v2, Lcom/zjx/jyandroid/R$id;->X2SensitivityCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X2SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v2, Lcom/zjx/jyandroid/R$id;->X3SensitivityCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X3SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v2, Lcom/zjx/jyandroid/R$id;->X4SensitivityCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X4SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v2, Lcom/zjx/jyandroid/R$id;->X6SensitivityCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X6SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v2, Lcom/zjx/jyandroid/R$id;->X8SensitivityCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X8SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v2, Lcom/zjx/jyandroid/R$id;->X10SensitivityCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X10SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v2, Lcom/zjx/jyandroid/R$id;->accessoryRecognitionModeSegmentedControl:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->accessoryRecognitionModeSegmentedControl:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    sget v2, Lcom/zjx/jyandroid/R$id;->accessoryRecognitionThresholdCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->accessoryRecognitionThresholdCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v2, Lcom/zjx/jyandroid/R$id;->enableAccessoryRecognitionCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->enableAccessoryRecognitionCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    sget v2, Lcom/zjx/jyandroid/R$id;->panelTransparencyCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->panelTransparencyCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v2, Lcom/zjx/jyandroid/R$id;->accessoryRecognitionSettingsLinearLayout:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->accessoryRecognitionSettingsLinearLayout:Landroid/widget/LinearLayout;

    sget v2, Lcom/zjx/jyandroid/R$id;->recognitionFrequencyHelpIcon:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->recognitionFrequencyHelpIcon:Landroid/view/View;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->panelTransparencyCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->getRCPanelTransparency()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->panelTransparencyCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)V

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->enableAccessoryRecognitionCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->isEnableAccessoryRecognition()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->enableAccessoryRecognitionCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$2;

    invoke-direct {v3, p0, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$2;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->accessoryRecognitionThresholdCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->getAccessoryRecognitionThreshold()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->accessoryRecognitionThresholdCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$3;

    invoke-direct {v3, p0, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$3;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;)V

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->accessoryRecognitionThresholdCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->helpIcon:Landroid/view/View;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$4;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$4;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->showPanelCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->isShowPanel()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->showPanelCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$5;

    invoke-direct {v3, p0, v0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$5;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)V

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->fixPanelCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->isFixPanel()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->fixPanelCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$6;

    invoke-direct {v3, p0, v0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$6;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)V

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->enableRecoilControlCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->isEnableRecoilControl()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->enableRecoilControlCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$7;

    invoke-direct {v3, p0, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$7;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->rcDataManageCell:Lcom/zjx/jyandroid/base/Components/TextViewComponent;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$8;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$8;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->selectRecognitionAssetsCell:Lcom/zjx/jyandroid/base/Components/TextViewComponent;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$9;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$9;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->selectRecognitionAssetsCell:Lcom/zjx/jyandroid/base/Components/TextViewComponent;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextViewComponent;->helpIcon:Landroid/view/View;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$10;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$10;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->recognitionFrequencyHelpIcon:Landroid/view/View;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$11;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$11;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->pictureCollectModeCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->isPictureCollectMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->pictureCollectModeCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$12;

    invoke-direct {v3, p0, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$12;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->getRecognitionFrequency()Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;

    move-result-object v2

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->recognitionFrequencySegmentedControl:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v2, v4}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setPosition(IZ)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->recognitionFrequencySegmentedControl:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$13;

    invoke-direct {v3, p0, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$13;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;)V

    invoke-virtual {v2, v3}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setOnPositionChangedListener(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->weaponRecognitionThresholdCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->getWeaponRecognitionThreshold()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->weaponRecognitionThresholdCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$14;

    invoke-direct {v3, p0, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$14;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;)V

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->weaponRecognitionThresholdCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->helpIcon:Landroid/view/View;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$15;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$15;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->scopeRecognitionThresholdCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->getScopeRecognitionThreshold()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->scopeRecognitionThresholdCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$16;

    invoke-direct {v3, p0, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$16;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;)V

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->scopeRecognitionThresholdCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v0, v0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->helpIcon:Landroid/view/View;

    new-instance v2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$17;

    invoke-direct {v2, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$17;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->isStarted()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->getRcConfigDataProcessor()Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->getRcConfigDataProcessor()Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->getRcConfigDataProcessor()Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

    move-result-object v0

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->configRoot:Ljava/util/Map;

    const-string v3, "recoil_value_coefficient"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->originalCoefficient:I

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->dataPercentageCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v3, v3, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->dataPercentageCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v0, v0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$18;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$18;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;)V

    invoke-virtual {v0, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->dataPercentageCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v0, v0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->helpIcon:Landroid/view/View;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$19;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$19;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->getRcConfigDataProcessor()Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->sensitivityLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->hippieSensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->configRoot:Ljava/util/Map;

    const-string v5, "sensitivity"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X0SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->configRoot:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X1SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->configRoot:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X2SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->configRoot:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X3SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->configRoot:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X4SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->configRoot:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X6SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->configRoot:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X8SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->configRoot:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X10SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->configRoot:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$20;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$20;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->hippieSensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X0SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X1SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X2SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X3SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X4SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X6SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X8SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X10SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->dataPercentageCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v0, v0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v1, Landroid/util/Range;

    invoke-direct {v1, v5, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValueRange(Landroid/util/Range;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->dataPercentageCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v0, v0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->sensitivityLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->updateAccessoryRecognitionSettingsLinearLayoutVisibility()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 22

    move-object/from16 v1, p0

    invoke-super/range {p0 .. p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-boolean v0, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->updateSensitivityOnExit:Z

    const-string v2, "Error while flushing recoil coefficient: "

    const-string v3, "recoilValue"

    const-string v4, "v"

    const-string v5, "recoil_data"

    const-class v6, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->getRcConfigDataProcessor()Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

    move-result-object v9

    iget-object v9, v9, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->configRoot:Ljava/util/Map;

    const-string v10, "sensitivity"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->getRcConfigDataProcessor()Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

    move-result-object v10

    iget-object v10, v10, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->configRoot:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->hippieSensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v12, v12, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v12}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X0SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v12, v12, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v12}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X1SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v12, v12, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v12}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X2SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v12, v12, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v12}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X3SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v12, v12, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v12}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X4SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v12, v12, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v12}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X6SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v12, v12, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v12}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X8SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v12, v12, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v12}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->X10SensitivityCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v12, v12, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v12}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    :goto_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_4

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    move-result v14

    div-float/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v14, v13, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v14, v14

    const-wide v16, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v14, v14, v16

    if-gez v14, :cond_1

    :cond_0
    move-object/from16 v20, v9

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-interface {v9, v12, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x0

    :goto_1
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    move-result-object v8

    array-length v8, v8

    if-ge v15, v8, :cond_0

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v7, v17

    check-cast v7, Ljava/util/Map;

    move-object/from16 v17, v8

    const-string v8, "scope"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    move-object/from16 v19, v7

    const/4 v7, 0x1

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Double;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    move-object/from16 v18, v8

    float-to-double v7, v13

    div-double v20, v20, v7

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v20, v9

    move-object/from16 v9, v18

    const/4 v8, 0x1

    invoke-virtual {v9, v8, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v19

    move-object/from16 v9, v20

    goto :goto_3

    :cond_2
    move-object/from16 v20, v9

    move-object/from16 v8, v17

    move-object/from16 v9, v20

    goto :goto_2

    :cond_3
    move-object/from16 v20, v9

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    :goto_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v9, v20

    goto/16 :goto_0

    :cond_4
    :try_start_0
    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->getRcConfigDataProcessor()Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->flushConfigToFile()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    const/4 v7, 0x0

    goto :goto_6

    :catch_0
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/zjx/jyandroid/base/util/a;

    sget v7, Lcom/zjx/jyandroid/R$string;->write_file_failed:I

    invoke-static {v7}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v0, v7, v8}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/util/a;->a()V

    goto :goto_5

    :goto_6
    iput-boolean v7, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->updateSensitivityOnExit:Z

    :cond_5
    iget-boolean v0, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->flushConfig:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->getRcConfigDataProcessor()Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

    move-result-object v7

    iget-object v7, v7, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->configRoot:Ljava/util/Map;

    iget v8, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->newCoefficientValue:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "recoil_value_coefficient"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->getRcConfigDataProcessor()Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

    move-result-object v7

    iget-object v7, v7, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->configRoot:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    const/4 v7, 0x0

    :goto_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    const/4 v9, 0x0

    :goto_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_7

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    const/4 v11, 0x0

    :goto_9
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_6

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    iget v13, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->newCoefficientValue:I

    int-to-float v13, v13

    iget v15, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->originalCoefficient:I

    int-to-float v15, v15

    div-float/2addr v13, v15

    float-to-double v14, v13

    mul-double v17, v17, v14

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v12, v14, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_6
    const/4 v14, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_7
    const/4 v14, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_8
    :try_start_1
    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->getRcConfigDataProcessor()Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;->flushConfigToFile()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_a
    const/4 v2, 0x0

    goto :goto_b

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/zjx/jyandroid/base/util/a;

    sget v2, Lcom/zjx/jyandroid/R$string;->write_file_failed:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v0, v2, v3}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/util/a;->a()V

    goto :goto_a

    :goto_b
    iput-boolean v2, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->flushConfig:Z

    goto :goto_c

    :cond_9
    const/4 v2, 0x0

    :goto_c
    iget-boolean v0, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->reloadExtensionWhenDisappear:Z

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->onPause()V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->onResume()V

    iput-boolean v2, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->reloadExtensionWhenDisappear:Z

    goto :goto_d

    :cond_a
    iget-boolean v0, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->restartGameStatusTrackerWhenDisappear:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->restartGameStatusTracker()V

    iput-boolean v2, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->restartGameStatusTrackerWhenDisappear:Z

    :cond_b
    :goto_d
    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    return-void
.end method
