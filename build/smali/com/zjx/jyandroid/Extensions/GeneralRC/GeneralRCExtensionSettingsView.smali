.class public Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field bindGestureLinearLayout:Landroid/widget/LinearLayout;

.field bindKeyLinearLayout:Landroid/widget/LinearLayout;

.field enableRecoilControlCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

.field fixPanelCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

.field panelTransparencyCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field rcDataManageCell:Lcom/zjx/jyandroid/base/Components/TextViewComponent;

.field private reloadExtensionWhenDisappear:Z

.field showPanelCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

.field wangzuoSettings:Landroid/widget/LinearLayout;


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
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->reloadExtensionWhenDisappear:Z

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

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->reloadExtensionWhenDisappear:Z

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

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->reloadExtensionWhenDisappear:Z

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

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->reloadExtensionWhenDisappear:Z

    return-void
.end method

.method public static synthetic access$002(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->reloadExtensionWhenDisappear:Z

    return p1
.end method

.method public static getKeyCharString(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget v0, Lcom/zjx/jyandroid/R$string;->error:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    sget p0, Lcom/zjx/jyandroid/R$string;->empty:I

    invoke-static {p0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    sget-object v0, Lcom/zjx/jyandroid/base/util/b$b;->a:Ljava/util/Map;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    sget p0, Lcom/zjx/jyandroid/R$string;->keymap_component_text3:I

    invoke-static {p0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    move-object v0, p0

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    sget-object v0, Lcom/zjx/jyandroid/base/util/b$b;->a:Ljava/util/Map;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/zjx/jyandroid/base/util/b$b;->a:Ljava/util/Map;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez v0, :cond_3

    sget v0, Lcom/zjx/jyandroid/R$string;->keymap_component_text3:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-nez p0, :cond_4

    sget p0, Lcom/zjx/jyandroid/R$string;->keymap_component_text3:I

    invoke-static {p0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "+"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_0
    return-object v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 12

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    new-instance v6, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;

    invoke-direct {v6}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v0

    const-class v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    sget v1, Lcom/zjx/jyandroid/R$id;->RCDataManageCell:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/base/Components/TextViewComponent;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->rcDataManageCell:Lcom/zjx/jyandroid/base/Components/TextViewComponent;

    sget v1, Lcom/zjx/jyandroid/R$id;->enableRecoilControlCell:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->enableRecoilControlCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    sget v1, Lcom/zjx/jyandroid/R$id;->showPanelCell:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->showPanelCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    sget v1, Lcom/zjx/jyandroid/R$id;->fixPanelCell:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->fixPanelCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    sget v1, Lcom/zjx/jyandroid/R$id;->panelTransparencyCell:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->panelTransparencyCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v1, Lcom/zjx/jyandroid/R$id;->bindKeyLinearLayout:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->bindKeyLinearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/zjx/jyandroid/R$id;->bindGestureLinearLayout:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->bindGestureLinearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/zjx/jyandroid/R$id;->wangzuoSettings:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->wangzuoSettings:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->panelTransparencyCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v6}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;->getRCPanelTransparency()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->panelTransparencyCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v2, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$1;

    invoke-direct {v2, p0, v6, v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$1;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)V

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->showPanelCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;->isShowPanel()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->showPanelCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$2;

    invoke-direct {v2, p0, v6, v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$2;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->fixPanelCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;->isFixPanel()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->fixPanelCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$3;

    invoke-direct {v2, p0, v6, v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$3;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->enableRecoilControlCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v0, v0, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;->isEnableRecoilControl()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->enableRecoilControlCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v0, v0, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$4;

    invoke-direct {v1, p0, v6}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$4;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->rcDataManageCell:Lcom/zjx/jyandroid/base/Components/TextViewComponent;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$5;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$5;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    const/4 v0, 0x3

    if-ge v8, v0, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->bindGestureLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/zjx/jyandroid/base/Components/BindKeyRow;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v9, v0

    check-cast v9, Lcom/zjx/jyandroid/base/Components/BindKeyRow;

    iget-object v0, v9, Lcom/zjx/jyandroid/base/Components/BindKeyRow;->titleTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;->values()[Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData;->getGestureNameByGesture(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;->values()[Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    move-result-object v0

    aget-object v0, v0, v8

    invoke-virtual {v6, v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;->getGestureHotkeys(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->getKeyCharString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v9, Lcom/zjx/jyandroid/base/Components/BindKeyRow;->keyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v9, Lcom/zjx/jyandroid/base/Components/BindKeyRow;->bindKeyButton:Landroid/widget/Button;

    new-instance v11, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6;

    move-object v0, v11

    move-object v1, p0

    move-object v3, v6

    move v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;Ljava/lang/String;Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;ILcom/zjx/jyandroid/base/Components/BindKeyRow;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v9, Lcom/zjx/jyandroid/base/Components/BindKeyRow;->clearKeyButton:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$7;

    invoke-direct {v1, p0, v6, v8, v9}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$7;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;ILcom/zjx/jyandroid/base/Components/BindKeyRow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->bindKeyLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    :goto_2
    if-ge v7, v8, :cond_3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->bindKeyLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/zjx/jyandroid/base/Components/BindKeyRow;

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    move-object v9, v0

    check-cast v9, Lcom/zjx/jyandroid/base/Components/BindKeyRow;

    iget-object v0, v9, Lcom/zjx/jyandroid/base/Components/BindKeyRow;->titleTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/zjx/jyandroid/R$string;->general_rc_extension_settings_view_text3:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v7}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;->getSwitchHotkeys(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->getKeyCharString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v9, Lcom/zjx/jyandroid/base/Components/BindKeyRow;->keyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v9, Lcom/zjx/jyandroid/base/Components/BindKeyRow;->bindKeyButton:Landroid/widget/Button;

    new-instance v11, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$8;

    move-object v0, v11

    move-object v1, p0

    move-object v3, v6

    move v4, v7

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$8;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;Ljava/lang/String;Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;ILcom/zjx/jyandroid/base/Components/BindKeyRow;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v9, Lcom/zjx/jyandroid/base/Components/BindKeyRow;->clearKeyButton:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$9;

    invoke-direct {v1, p0, v6, v7, v9}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$9;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;ILcom/zjx/jyandroid/base/Components/BindKeyRow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/zjx/jyandroid/base/util/b;->y()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->ShoucuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->wangzuoSettings:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->reloadExtensionWhenDisappear:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v0

    const-class v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->onPause()V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->reloadExtensionWhenDisappear:Z

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    return-void
.end method
