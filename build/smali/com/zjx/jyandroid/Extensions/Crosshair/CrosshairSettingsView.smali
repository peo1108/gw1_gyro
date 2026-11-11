.class public Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field autoHiddenWhenAimingCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

.field blueSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

.field colorSettingsView:Landroid/widget/LinearLayout;

.field customizedCrosshair:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

.field enableCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

.field greenSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

.field horizontalOffsetSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

.field redSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

.field sizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

.field transparencySlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

.field typeSegmentedControl:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

.field verticalOffsetSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;


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

.method public static synthetic access$000(Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->refreshColorHolderViewState(Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;)V

    return-void
.end method

.method private refreshColorHolderViewState(Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->colorSettingsView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->colorSettingsView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/zjx/jyandroid/Extensions/Crosshair/ColorHolderComponent;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/zjx/jyandroid/Extensions/Crosshair/ColorHolderComponent;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/Extensions/Crosshair/ColorHolderComponent;->getColor()I

    move-result v3

    invoke-virtual {p2}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->getColor()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/Extensions/Crosshair/ColorHolderComponent;->setSelected(Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v0}, Lcom/zjx/jyandroid/Extensions/Crosshair/ColorHolderComponent;->setSelected(Z)V

    :goto_1
    new-instance v3, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$8;

    invoke-direct {v3, p0, p2, p1}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$8;-><init>(Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->redSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->greenSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->blueSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->transparencySlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    new-instance v0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$9;

    invoke-direct {v0, p0, p2, p1}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$9;-><init>(Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->redSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->greenSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->blueSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->transparencySlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v0

    const-class v1, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/base/util/a;

    const-string v1, "\u5185\u90e8\u9519\u8bef"

    sget-object v2, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->refresh()V

    sget v1, Lcom/zjx/jyandroid/R$id;->typeSegmentedControl:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->typeSegmentedControl:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    sget v1, Lcom/zjx/jyandroid/R$id;->sizeSlider:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->sizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget v1, Lcom/zjx/jyandroid/R$id;->horizontalOffsetSlider:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->horizontalOffsetSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget v1, Lcom/zjx/jyandroid/R$id;->verticalOffsetSlider:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->verticalOffsetSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget v1, Lcom/zjx/jyandroid/R$id;->enableCell:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->enableCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    sget v1, Lcom/zjx/jyandroid/R$id;->autoHiddenWhenAimingCell:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->autoHiddenWhenAimingCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    sget v1, Lcom/zjx/jyandroid/R$id;->colorSettingsView:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->colorSettingsView:Landroid/widget/LinearLayout;

    sget v1, Lcom/zjx/jyandroid/R$id;->redSlider:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->redSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget v1, Lcom/zjx/jyandroid/R$id;->greenSlider:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->greenSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget v1, Lcom/zjx/jyandroid/R$id;->blueSlider:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->blueSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget v1, Lcom/zjx/jyandroid/R$id;->blueSlider:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->blueSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget v1, Lcom/zjx/jyandroid/R$id;->transparencySlider:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->transparencySlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget v1, Lcom/zjx/jyandroid/R$id;->customizedCrosshair:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->customizedCrosshair:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;

    invoke-direct {v1}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;-><init>()V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->enableCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->enableCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$1;-><init>(Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;)V

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->autoHiddenWhenAimingCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->isHiddenWhenAiming()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->autoHiddenWhenAimingCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$2;-><init>(Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;)V

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->typeSegmentedControl:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->getType()Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$CrosshairType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setPosition(IZ)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->typeSegmentedControl:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$3;-><init>(Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;)V

    invoke-virtual {v2, v3}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setOnPositionChangedListener(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->customizedCrosshair:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->isCustomizedStyle()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->customizedCrosshair:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$4;

    invoke-direct {v3, p0, v1, v0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$4;-><init>(Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;)V

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->sizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->getSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->sizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->continuous:Z

    new-instance v3, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$5;

    invoke-direct {v3, p0, v1, v0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$5;-><init>(Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;)V

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->horizontalOffsetSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->getHorizontalOffset()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->horizontalOffsetSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$6;

    invoke-direct {v3, p0, v1, v0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$6;-><init>(Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;)V

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->verticalOffsetSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->getVerticalOffset()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->verticalOffsetSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$7;

    invoke-direct {v3, p0, v1, v0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$7;-><init>(Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;)V

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    invoke-direct {p0, v0, v1}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->refreshColorHolderViewState(Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;)V

    return-void
.end method
