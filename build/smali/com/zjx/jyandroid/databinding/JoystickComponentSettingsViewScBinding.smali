.class public final Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final changeMouseLockKeyButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final horizontalSpeedSliderView:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final imageView2:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final imageView3:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final joystickPropertyHelpIcon:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final joystickTotalMoveSliderView:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mouseLockKeyTextView:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsViewSC;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final segmentedButton:Lcom/addisonelliott/segmentedbutton/SegmentedButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final switchRadiusKeySettingsStack:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final switchRadiusModeSegmentedControl:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final switchRadiusRatioSettingsStack:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final switchRadiusRatioSliderView:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final switchRadiusTypeHelpIcon:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final textView3:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final textView4:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final totalMoveCountHelpIcon:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final triggerJoystickModeSegmentedControl:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final verticalSpeedSliderView:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final zeroRadiusSliderView:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsViewSC;Landroid/widget/Button;Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;Landroid/widget/TextView;Lcom/addisonelliott/segmentedbutton/SegmentedButton;Landroid/widget/LinearLayout;Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;Landroid/widget/LinearLayout;Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;)V
    .locals 2
    .param p1    # Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsViewSC;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/addisonelliott/segmentedbutton/SegmentedButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19    # Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p20    # Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;->rootView:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsViewSC;

    move-object v1, p2

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;->changeMouseLockKeyButton:Landroid/widget/Button;

    move-object v1, p3

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;->horizontalSpeedSliderView:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    move-object v1, p4

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;->imageView2:Landroid/widget/ImageView;

    move-object v1, p5

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;->imageView3:Landroid/widget/ImageView;

    move-object v1, p6

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;->joystickPropertyHelpIcon:Landroid/widget/ImageView;

    move-object v1, p7

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;->joystickTotalMoveSliderView:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    move-object v1, p8

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;->mouseLockKeyTextView:Landroid/widget/TextView;

    move-object v1, p9

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;->segmentedButton:Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    move-object v1, p10

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;->switchRadiusKeySettingsStack:Landroid/widget/LinearLayout;

    move-object v1, p11

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;->switchRadiusModeSegmentedControl:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    move-object v1, p12

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;->switchRadiusRatioSettingsStack:Landroid/widget/LinearLayout;

    move-object v1, p13

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;->switchRadiusRatioSliderView:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;->switchRadiusTypeHelpIcon:Landroid/widget/ImageView;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;->textView3:Landroid/widget/TextView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;->textView4:Landroid/widget/TextView;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;->totalMoveCountHelpIcon:Landroid/widget/ImageView;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;->triggerJoystickModeSegmentedControl:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;->verticalSpeedSliderView:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;->zeroRadiusSliderView:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;
    .locals 24
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    sget v1, Lcom/zjx/jyandroid/R$id;->changeMouseLockKeyButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->horizontalSpeedSliderView:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    if-eqz v6, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->imageView2:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->imageView3:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->joystickPropertyHelpIcon:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->joystickTotalMoveSliderView:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    if-eqz v10, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->mouseLockKeyTextView:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->segmentedButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    if-eqz v12, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->switchRadiusKeySettingsStack:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->switchRadiusModeSegmentedControl:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    if-eqz v14, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->switchRadiusRatioSettingsStack:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/LinearLayout;

    if-eqz v15, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->switchRadiusRatioSliderView:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    if-eqz v16, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->switchRadiusTypeHelpIcon:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/ImageView;

    if-eqz v17, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->textView3:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->textView4:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->totalMoveCountHelpIcon:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/ImageView;

    if-eqz v20, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->triggerJoystickModeSegmentedControl:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    if-eqz v21, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->verticalSpeedSliderView:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    if-eqz v22, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->zeroRadiusSliderView:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    if-eqz v23, :cond_0

    new-instance v1, Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsViewSC;

    invoke-direct/range {v3 .. v23}, Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsViewSC;Landroid/widget/Button;Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;Landroid/widget/TextView;Lcom/addisonelliott/segmentedbutton/SegmentedButton;Landroid/widget/LinearLayout;Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;Landroid/widget/LinearLayout;Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;
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
    invoke-static {p0, v0, v1}, Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;
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
    sget v0, Lcom/zjx/jyandroid/R$layout;->joystick_component_settings_view_sc:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;->bind(Landroid/view/View;)Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;->getRoot()Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsViewSC;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsViewSC;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/zjx/jyandroid/databinding/JoystickComponentSettingsViewScBinding;->rootView:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsViewSC;

    return-object v0
.end method
