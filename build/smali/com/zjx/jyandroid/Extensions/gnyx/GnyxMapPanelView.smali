.class public Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;
.super Lcom/zjx/jyandroid/base/BaseFloatingView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$MapPanelViewAdapter;,
        Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$SwitchStateChangedListener;
    }
.end annotation


# instance fields
.field accessoryRectSizeConstraintLayout:Landroid/view/View;

.field accessoryRectSizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

.field canFoldView:Landroid/view/View;

.field public customizeAccessoryPlaceSwitch:Landroid/widget/Switch;

.field public customizeAccessoryPlaceSwitchStateChangedListener:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$SwitchStateChangedListener;

.field public customizeAssetSizeSwitch:Landroid/widget/Switch;

.field downButton:Landroid/widget/Button;

.field public enableAccessoryRecognitionSwitch:Landroid/widget/Switch;

.field public enableAccessoryRecognitionSwitchStateChangedListener:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$SwitchStateChangedListener;

.field public enableRecognitionSwitchStateChangedListener:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$SwitchStateChangedListener;

.field public enableRecoilControlSwitch:Landroid/widget/Switch;

.field exitButton:Landroid/widget/Button;

.field folding:Z

.field leftButton:Landroid/widget/Button;

.field presetMapsButton:Landroid/widget/Button;

.field pubgMapPanelViewAdapter:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$MapPanelViewAdapter;

.field resetButton:Landroid/widget/Button;

.field rightButton:Landroid/widget/Button;

.field saveButton:Landroid/widget/Button;

.field public scopeRecognitionSwitch:Landroid/widget/Switch;

.field public scopeRecognitionSwitchStateChangedListener:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$SwitchStateChangedListener;

.field shareButton:Landroid/widget/Button;

.field switchFoldButton:Landroid/widget/TextView;

.field upButton:Landroid/widget/Button;

.field weaponSizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

.field weaponSizeSliderContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->folding:Z

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
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->folding:Z

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
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->folding:Z

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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->folding:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->updateViewByFoldState()V

    return-void
.end method

.method private updateViewByFoldState()V
    .locals 2

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->folding:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->switchFoldButton:Landroid/widget/TextView;

    const-string v1, "\u5c55\u5f00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->canFoldView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->switchFoldButton:Landroid/widget/TextView;

    const-string v1, "\u6298\u53e0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->canFoldView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->accessoryRectSizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/base/util/b;->C(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->weaponSizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/base/util/b;->C(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getMapPanelViewAdapter()Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$MapPanelViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->pubgMapPanelViewAdapter:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$MapPanelViewAdapter;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->onFinishInflate()V

    sget v0, Lcom/zjx/jyandroid/R$id;->cancelButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->exitButton:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->resetButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->resetButton:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->saveButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->saveButton:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->presetMapsButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->presetMapsButton:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->accessoryRectSizeSlider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->accessoryRectSizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget v0, Lcom/zjx/jyandroid/R$id;->enableRecoilControlSwitch:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->enableRecoilControlSwitch:Landroid/widget/Switch;

    sget v0, Lcom/zjx/jyandroid/R$id;->enableAccessoryRecognitionSwitch:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->enableAccessoryRecognitionSwitch:Landroid/widget/Switch;

    sget v0, Lcom/zjx/jyandroid/R$id;->scopeRecognitionSwitch:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->scopeRecognitionSwitch:Landroid/widget/Switch;

    sget v0, Lcom/zjx/jyandroid/R$id;->accessoryRectSizeConstraintLayout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->accessoryRectSizeConstraintLayout:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->customizeAssetSizeSwitch:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->customizeAssetSizeSwitch:Landroid/widget/Switch;

    sget v0, Lcom/zjx/jyandroid/R$id;->weaponSizeSlider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->weaponSizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget v0, Lcom/zjx/jyandroid/R$id;->weaponSizeSliderContainer:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->weaponSizeSliderContainer:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->shareButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->shareButton:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->upButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->upButton:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->leftButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->leftButton:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->downButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->downButton:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->rightButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->rightButton:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->switchFoldButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->switchFoldButton:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->canFoldView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->canFoldView:Landroid/view/View;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->weaponSizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->continuous:Z

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->accessoryRectSizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-boolean v1, v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->continuous:Z

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->enableRecoilControlSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$1;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->enableAccessoryRecognitionSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$2;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$2;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->scopeRecognitionSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$3;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$3;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->exitButton:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$4;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$4;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->resetButton:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$5;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$5;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->saveButton:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$6;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$6;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->presetMapsButton:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$7;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$7;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->shareButton:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$8;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$8;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->upButton:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$9;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$9;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->leftButton:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$10;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$10;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->downButton:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$11;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$11;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->rightButton:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$12;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$12;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->switchFoldButton:Landroid/widget/TextView;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$13;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$13;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->updateViewByFoldState()V

    return-void
.end method

.method public setMapPanelViewAdapter(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$MapPanelViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;->pubgMapPanelViewAdapter:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView$MapPanelViewAdapter;

    return-void
.end method
