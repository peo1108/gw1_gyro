.class public final Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final accessoryRectSizeConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final accessoryRectSizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final canFoldView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final cancelButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final customizeAssetSizeSwitch:Landroid/widget/Switch;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final downButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final enableAccessoryRecognitionSwitch:Landroid/widget/Switch;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final enableRecoilControlSwitch:Landroid/widget/Switch;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final leftButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final presetMapsButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final resetButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rightButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final saveButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final scopeRecognitionSwitch:Landroid/widget/Switch;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final shareButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final switchFoldButton:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final textView13:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final textView9:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tttt:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final upButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final view53:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final view54:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final view55:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final weaponSizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final weaponSizeSliderContainer:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Switch;Landroid/widget/Button;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Switch;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 2
    .param p1    # Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/constraintlayout/widget/ConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/Switch;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/Switch;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/Switch;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Landroid/widget/Switch;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p20    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p21    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p22    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p23    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p24    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p25    # Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p26    # Landroidx/constraintlayout/widget/ConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->rootView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    move-object v1, p2

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->accessoryRectSizeConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p3

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->accessoryRectSizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    move-object v1, p4

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->canFoldView:Landroid/widget/LinearLayout;

    move-object v1, p5

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->cancelButton:Landroid/widget/Button;

    move-object v1, p6

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->customizeAssetSizeSwitch:Landroid/widget/Switch;

    move-object v1, p7

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->downButton:Landroid/widget/Button;

    move-object v1, p8

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->enableAccessoryRecognitionSwitch:Landroid/widget/Switch;

    move-object v1, p9

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->enableRecoilControlSwitch:Landroid/widget/Switch;

    move-object v1, p10

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->leftButton:Landroid/widget/Button;

    move-object v1, p11

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->presetMapsButton:Landroid/widget/Button;

    move-object v1, p12

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->resetButton:Landroid/widget/Button;

    move-object v1, p13

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->rightButton:Landroid/widget/Button;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->saveButton:Landroid/widget/Button;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->scopeRecognitionSwitch:Landroid/widget/Switch;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->shareButton:Landroid/widget/Button;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->switchFoldButton:Landroid/widget/TextView;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->textView13:Landroid/widget/TextView;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->textView9:Landroid/widget/TextView;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->tttt:Landroid/widget/TextView;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->upButton:Landroid/widget/Button;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->view53:Landroid/view/View;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->view54:Landroid/view/View;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->view55:Landroid/view/View;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->weaponSizeSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->weaponSizeSliderContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;
    .locals 30
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    sget v1, Lcom/zjx/jyandroid/R$id;->accessoryRectSizeConstraintLayout:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->accessoryRectSizeSlider:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    if-eqz v6, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->canFoldView:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->cancelButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->customizeAssetSizeSwitch:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/Switch;

    if-eqz v9, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->downButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/Button;

    if-eqz v10, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->enableAccessoryRecognitionSwitch:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/Switch;

    if-eqz v11, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->enableRecoilControlSwitch:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/Switch;

    if-eqz v12, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->leftButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/Button;

    if-eqz v13, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->presetMapsButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/Button;

    if-eqz v14, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->resetButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/Button;

    if-eqz v15, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->rightButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/Button;

    if-eqz v16, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->saveButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/Button;

    if-eqz v17, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->scopeRecognitionSwitch:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/Switch;

    if-eqz v18, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->shareButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/Button;

    if-eqz v19, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->switchFoldButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->textView13:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->textView9:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->tttt:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/TextView;

    if-eqz v23, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->upButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/Button;

    if-eqz v24, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->view53:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v25

    if-eqz v25, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->view54:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v26

    if-eqz v26, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->view55:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v27

    if-eqz v27, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->weaponSizeSlider:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    if-eqz v28, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->weaponSizeSliderContainer:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v29, :cond_0

    new-instance v1, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    invoke-direct/range {v3 .. v29}, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Switch;Landroid/widget/Button;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Switch;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-object v1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    sget v0, Lcom/zjx/jyandroid/R$layout;->gnyx_map_panel_view:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->bind(Landroid/view/View;)Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->getRoot()Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/zjx/jyandroid/databinding/GnyxMapPanelViewBinding;->rootView:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxMapPanelView;

    return-object v0
.end method
