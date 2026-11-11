.class public Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;
.super Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;
.source "SourceFile"


# instance fields
.field helpIcon:Landroid/view/View;

.field modifyBindingKeyComponent:Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;

.field private onBindingKeyChangedListener:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;

.field valueSliderView:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;


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

.method public static synthetic access$000(Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->component:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->component:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;->onBindingKeyChangedListener:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->component:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/dnf/keymapcomponent/UploadKeymapComponentDnfMoveFingerCastSkill;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;->onBindingKeyChangedListener:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->removeOnBindingKeyChangedListener(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;->onBindingKeyChangedListener:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->onFinishInflate()V

    sget v0, Lcom/zjx/jyandroid/R$id;->modifyBindingKeyComponent:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;->modifyBindingKeyComponent:Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;

    sget v0, Lcom/zjx/jyandroid/R$id;->valueSliderView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;->valueSliderView:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget v0, Lcom/zjx/jyandroid/R$id;->helpIcon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;->helpIcon:Landroid/view/View;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;->modifyBindingKeyComponent:Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;

    iget-object v0, v0, Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;->changeKeyButton:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView$1;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView$1;-><init>(Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;->helpIcon:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView$2;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView$2;-><init>(Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->component:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;->onBindingKeyChangedListener:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->removeOnBindingKeyChangedListener(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;->onBindingKeyChangedListener:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;

    :cond_0
    invoke-super {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->setComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    if-eqz p1, :cond_1

    new-instance v0, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView$4;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView$4;-><init>(Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;->onBindingKeyChangedListener:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;

    check-cast p1, Lcom/zjx/jyandroid/Extensions/dnf/keymapcomponent/UploadKeymapComponentDnfMoveFingerCastSkill;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->addOnBindingKeyChangedListener(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;)V

    :cond_1
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
    check-cast p1, Lcom/zjx/jyandroid/Extensions/dnf/keymapcomponent/UploadKeymapComponentDnfMoveFingerCastSkill;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;->modifyBindingKeyComponent:Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->getKeyCodeArray()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;->setOriginKeyArray(Ljava/util/List;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;->modifyBindingKeyComponent:Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;->updateText()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;->valueSliderView:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/dnf/keymapcomponent/UploadKeymapComponentDnfMoveFingerCastSkill;->getSensitivity()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;->valueSliderView:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView$3;

    invoke-direct {v1, p0, p1}, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView$3;-><init>(Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;Lcom/zjx/jyandroid/Extensions/dnf/keymapcomponent/UploadKeymapComponentDnfMoveFingerCastSkill;)V

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    return-void
.end method
