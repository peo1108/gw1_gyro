.class public Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field public A:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

.field public B:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

.field public C:Z

.field public D:Z

.field public E:I

.field public F:Z

.field public G:I

.field public H:Landroid/widget/LinearLayout;

.field public I:Landroid/view/View;

.field public J:Z

.field public a:Lcom/zjx/jyandroid/base/Components/TextViewComponent;

.field public b:Lcom/zjx/jyandroid/base/Components/TextViewComponent;

.field public c:Lcom/zjx/jyandroid/base/Components/TextViewComponent;

.field public d:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

.field public e:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

.field public f:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

.field public g:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

.field public h:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

.field public i:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

.field public j:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field public k:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field public l:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field public m:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field public n:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field public o:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field public p:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field public q:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field public r:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field public s:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field public t:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field public u:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

.field public v:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

.field public w:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

.field public x:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

.field public y:Landroid/widget/LinearLayout;

.field public z:Landroid/widget/LinearLayout;


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
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->C:Z

    .line 3
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->D:Z

    .line 4
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->J:Z

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
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->C:Z

    .line 7
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->D:Z

    .line 8
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->J:Z

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
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->C:Z

    .line 11
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->D:Z

    .line 12
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->J:Z

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
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->C:Z

    .line 15
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->D:Z

    .line 16
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->J:Z

    return-void
.end method

.method public static synthetic a(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->C:Z

    return p1
.end method

.method public static synthetic b(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->D:Z

    return p1
.end method

.method public static synthetic c(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->updateAccessoryRecognitionSettingsLinearLayoutVisibility()V

    return-void
.end method

.method public static synthetic d(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->F:Z

    return p1
.end method

.method public static synthetic e(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;I)I
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->G:I

    return p1
.end method

.method public static synthetic f(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->J:Z

    return p1
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 7

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v1

    const-class v2, Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/Extensions/pubg/d;

    sget v2, Lcom/zjx/jyandroid/R$id;->RCDataManageCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextViewComponent;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->a:Lcom/zjx/jyandroid/base/Components/TextViewComponent;

    sget v2, Lcom/zjx/jyandroid/R$id;->selectRecognitionAssetsCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextViewComponent;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->b:Lcom/zjx/jyandroid/base/Components/TextViewComponent;

    sget v2, Lcom/zjx/jyandroid/R$id;->enableRecoilControlCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->d:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    sget v2, Lcom/zjx/jyandroid/R$id;->showPanelCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->e:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    sget v2, Lcom/zjx/jyandroid/R$id;->fixPanelCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->f:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    sget v2, Lcom/zjx/jyandroid/R$id;->pictureCollectModeCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->g:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    sget v2, Lcom/zjx/jyandroid/R$id;->dataPercentageCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->j:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v2, Lcom/zjx/jyandroid/R$id;->recognitionFrequencySegmentedControl:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->x:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    sget v2, Lcom/zjx/jyandroid/R$id;->weaponRecognitionThresholdCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->k:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v2, Lcom/zjx/jyandroid/R$id;->scopeRecognitionThresholdCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->l:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v2, Lcom/zjx/jyandroid/R$id;->sensitivityLinearLayout:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->z:Landroid/widget/LinearLayout;

    sget v2, Lcom/zjx/jyandroid/R$id;->hippieSensitivityCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->o:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v2, Lcom/zjx/jyandroid/R$id;->X1SensitivityCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->p:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v2, Lcom/zjx/jyandroid/R$id;->X2SensitivityCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->q:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v2, Lcom/zjx/jyandroid/R$id;->X3SensitivityCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->r:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v2, Lcom/zjx/jyandroid/R$id;->X4SensitivityCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->s:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v2, Lcom/zjx/jyandroid/R$id;->X6SensitivityCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->t:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v2, Lcom/zjx/jyandroid/R$id;->X8SensitivityCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->u:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v2, Lcom/zjx/jyandroid/R$id;->accessoryRecognitionModeSegmentedControl:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->v:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    sget v2, Lcom/zjx/jyandroid/R$id;->accessoryRecognitionThresholdCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->m:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v2, Lcom/zjx/jyandroid/R$id;->enableAccessoryRecognitionCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->i:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    sget v2, Lcom/zjx/jyandroid/R$id;->aimingRecognitionModeSegmentedControl:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->w:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    sget v2, Lcom/zjx/jyandroid/R$id;->panelTransparencyCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->n:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    sget v2, Lcom/zjx/jyandroid/R$id;->accessoryRecognitionSettingsLinearLayout:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->y:Landroid/widget/LinearLayout;

    sget v2, Lcom/zjx/jyandroid/R$id;->controlViewWithAimingCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->A:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    sget v2, Lcom/zjx/jyandroid/R$id;->controlViewWithPeekCell:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->B:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    sget v2, Lcom/zjx/jyandroid/R$id;->shoucuoSettings:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->H:Landroid/widget/LinearLayout;

    sget v2, Lcom/zjx/jyandroid/R$id;->recognitionFrequencyHelpIcon:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->I:Landroid/view/View;

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object v2

    invoke-virtual {v2}, Ly/d;->j()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object v2

    sget-object v3, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->WangzuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->A:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->a()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->A:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$k;

    invoke-direct {v3, p0, v0}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$k;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/pubg/f;)V

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->B:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->b()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->B:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$q;

    invoke-direct {v3, p0, v0}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$q;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/pubg/f;)V

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->n:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->o()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->n:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$r;

    invoke-direct {v3, p0, v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$r;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/pubg/f;Lcom/zjx/jyandroid/Extensions/pubg/d;)V

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->w:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->i()Lcom/zjx/jyandroid/Extensions/pubg/c$a;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setPosition(IZ)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->w:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$s;

    invoke-direct {v3, p0, v0}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$s;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/pubg/f;)V

    invoke-virtual {v2, v3}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setOnPositionChangedListener(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->i:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->u()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->i:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$t;

    invoke-direct {v3, p0, v0}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$t;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/pubg/f;)V

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->v:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->e()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setPosition(IZ)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->v:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$u;

    invoke-direct {v3, p0, v0}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$u;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/pubg/f;)V

    invoke-virtual {v2, v3}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setOnPositionChangedListener(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->m:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->f()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->m:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$v;

    invoke-direct {v3, p0, v0}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$v;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/pubg/f;)V

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->m:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->helpIcon:Landroid/view/View;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$w;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$w;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->e:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->A()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->e:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$x;

    invoke-direct {v3, p0, v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$x;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/pubg/f;Lcom/zjx/jyandroid/Extensions/pubg/d;)V

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->f:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->y()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->f:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$a;

    invoke-direct {v3, p0, v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/pubg/f;Lcom/zjx/jyandroid/Extensions/pubg/d;)V

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->d:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->w()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->d:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$b;

    invoke-direct {v3, p0, v0}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$b;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/pubg/f;)V

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->a:Lcom/zjx/jyandroid/base/Components/TextViewComponent;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$c;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$c;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->b:Lcom/zjx/jyandroid/base/Components/TextViewComponent;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$d;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$d;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->b:Lcom/zjx/jyandroid/base/Components/TextViewComponent;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextViewComponent;->helpIcon:Landroid/view/View;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$e;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$e;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->I:Landroid/view/View;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$f;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$f;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->g:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->z()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->g:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$g;

    invoke-direct {v3, p0, v0}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$g;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/pubg/f;)V

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->q()Lcom/zjx/jyandroid/Extensions/pubg/f$a;

    move-result-object v2

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->x:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v3, v2, v5}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setPosition(IZ)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->x:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$h;

    invoke-direct {v3, p0, v0}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$h;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/pubg/f;)V

    invoke-virtual {v2, v3}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setOnPositionChangedListener(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->k:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->t()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->k:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$i;

    invoke-direct {v3, p0, v0}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$i;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/pubg/f;)V

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->k:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->helpIcon:Landroid/view/View;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$j;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$j;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->l:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->r()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->l:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$l;

    invoke-direct {v3, p0, v0}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$l;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/pubg/f;)V

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->l:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v0, v0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->helpIcon:Landroid/view/View;

    new-instance v2, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$m;

    invoke-direct {v2, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$m;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->N()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->E()Lcom/zjx/jyandroid/Extensions/pubg/g;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->E()Lcom/zjx/jyandroid/Extensions/pubg/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/g;->i()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->E()Lcom/zjx/jyandroid/Extensions/pubg/g;

    move-result-object v0

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/g;->e:Ljava/util/Map;

    const-string v2, "recoil_value_coefficient"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->E:I

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->j:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->j:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v0, v0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v2, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$n;

    invoke-direct {v2, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$n;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;)V

    invoke-virtual {v0, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->j:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v0, v0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->helpIcon:Landroid/view/View;

    new-instance v2, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$o;

    invoke-direct {v2, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$o;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->E()Lcom/zjx/jyandroid/Extensions/pubg/g;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->o:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iget-object v2, v0, Lcom/zjx/jyandroid/Extensions/pubg/g;->e:Ljava/util/Map;

    const-string v3, "sensitivity"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->p:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iget-object v2, v0, Lcom/zjx/jyandroid/Extensions/pubg/g;->e:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->q:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iget-object v2, v0, Lcom/zjx/jyandroid/Extensions/pubg/g;->e:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->r:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iget-object v2, v0, Lcom/zjx/jyandroid/Extensions/pubg/g;->e:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v4, 0x3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->s:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iget-object v2, v0, Lcom/zjx/jyandroid/Extensions/pubg/g;->e:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v4, 0x4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->t:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iget-object v2, v0, Lcom/zjx/jyandroid/Extensions/pubg/g;->e:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v4, 0x5

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->u:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/g;->e:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$p;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$p;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->o:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->p:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->q:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->r:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->s:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->t:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->u:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->j:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v0, v0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v1, Landroid/util/Range;

    invoke-direct {v1, v6, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValueRange(Landroid/util/Range;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->j:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v0, v0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->updateAccessoryRecognitionSettingsLinearLayoutVisibility()V

    invoke-static {p0}, LK6/GyroUI;->installRecoilCell(Landroid/view/View;)V

    invoke-static {p0}, Lmdm/ForceRedDot;->bind(Landroid/view/View;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 22

    move-object/from16 v1, p0

    invoke-super/range {p0 .. p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-boolean v0, v1, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->J:Z

    const-string v2, "Error while flushing recoil coefficient: "

    const-string v3, "recoilValue"

    const-string v4, "v"

    const-string v5, "recoil_data"

    const-class v6, Lcom/zjx/jyandroid/Extensions/pubg/d;

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->E()Lcom/zjx/jyandroid/Extensions/pubg/g;

    move-result-object v9

    iget-object v9, v9, Lcom/zjx/jyandroid/Extensions/pubg/g;->e:Ljava/util/Map;

    const-string v10, "sensitivity"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->E()Lcom/zjx/jyandroid/Extensions/pubg/g;

    move-result-object v10

    iget-object v10, v10, Lcom/zjx/jyandroid/Extensions/pubg/g;->e:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, v1, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->o:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v12, v12, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v12}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v1, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->p:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v12, v12, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v12}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v1, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->q:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v12, v12, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v12}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v1, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->r:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v12, v12, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v12}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v1, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->s:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v12, v12, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v12}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v1, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->t:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iget-object v12, v12, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v12}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v1, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->u:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

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

    if-ge v12, v13, :cond_6

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

    goto/16 :goto_5

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

    sget-object v15, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->f:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    if-ne v12, v15, :cond_2

    sget-object v15, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->h:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-object v15, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->g:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    if-ne v12, v15, :cond_3

    sget-object v15, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->i:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v15, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->j:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    const/4 v15, 0x0

    :goto_2
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->values()[Lcom/zjx/jyandroid/Extensions/pubg/c$l;

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

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

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

    if-eqz v8, :cond_4

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

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

    goto :goto_4

    :cond_4
    move-object/from16 v20, v9

    move-object/from16 v8, v17

    move-object/from16 v9, v20

    goto :goto_3

    :cond_5
    move-object/from16 v20, v9

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    :goto_5
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v9, v20

    goto/16 :goto_0

    :cond_6
    :try_start_0
    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->E()Lcom/zjx/jyandroid/Extensions/pubg/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/g;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    const/4 v7, 0x0

    goto :goto_7

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

    goto :goto_6

    :goto_7
    iput-boolean v7, v1, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->J:Z

    :cond_7
    iget-boolean v0, v1, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->F:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->E()Lcom/zjx/jyandroid/Extensions/pubg/g;

    move-result-object v7

    iget-object v7, v7, Lcom/zjx/jyandroid/Extensions/pubg/g;->e:Ljava/util/Map;

    iget v8, v1, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->G:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "recoil_value_coefficient"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->E()Lcom/zjx/jyandroid/Extensions/pubg/g;

    move-result-object v7

    iget-object v7, v7, Lcom/zjx/jyandroid/Extensions/pubg/g;->e:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    const/4 v7, 0x0

    :goto_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_a

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    const/4 v9, 0x0

    :goto_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    const/4 v11, 0x0

    :goto_a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_8

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

    iget v13, v1, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->G:I

    int-to-float v13, v13

    iget v15, v1, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->E:I

    int-to-float v15, v15

    div-float/2addr v13, v15

    float-to-double v14, v13

    mul-double v17, v17, v14

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v12, v14, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_8
    const/4 v14, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_9
    const/4 v14, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_a
    :try_start_1
    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->E()Lcom/zjx/jyandroid/Extensions/pubg/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/g;->e()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_b
    const/4 v2, 0x0

    goto :goto_c

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

    goto :goto_b

    :goto_c
    iput-boolean v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->F:Z

    goto :goto_d

    :cond_b
    const/4 v2, 0x0

    :goto_d
    iget-boolean v0, v1, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->C:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->onPause()V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->onResume()V

    iput-boolean v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->C:Z

    goto :goto_e

    :cond_c
    iget-boolean v0, v1, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->D:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->V()V

    iput-boolean v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->D:Z

    :cond_d
    :goto_e
    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    return-void
.end method

.method public final updateAccessoryRecognitionSettingsLinearLayoutVisibility()V
    .locals 2

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;-><init>()V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->y:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->y:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
