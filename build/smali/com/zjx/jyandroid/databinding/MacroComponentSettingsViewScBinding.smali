.class public final Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bindKeyLinearLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final blockTouchLinearLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final blockTouchSwitch:Landroid/widget/Switch;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final changeMouseLockKeyButton2:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final changeMouseLockKeyButton3:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final changeNameButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final changeTerminateKeyButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final changeTriggerKeyButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final editButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nameTextView:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final segmentedButton:Lcom/addisonelliott/segmentedbutton/SegmentedButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final segmentedButton4:Lcom/addisonelliott/segmentedbutton/SegmentedButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final switchRadiusTypeHelpIcon:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final terminateKeyTextView:Landroid/widget/TextView;
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

.field public final triggerKeyTextView:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final triggerModeSegmentedControl:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final triggerTypeSegmentedControl:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/Switch;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Lcom/addisonelliott/segmentedbutton/SegmentedButton;Lcom/addisonelliott/segmentedbutton/SegmentedButton;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;)V
    .locals 2
    .param p1    # Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/Switch;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Lcom/addisonelliott/segmentedbutton/SegmentedButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Lcom/addisonelliott/segmentedbutton/SegmentedButton;
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
    .param p17    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19    # Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p20    # Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;->rootView:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;

    move-object v1, p2

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;->bindKeyLinearLayout:Landroid/widget/LinearLayout;

    move-object v1, p3

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;->blockTouchLinearLayout:Landroid/widget/LinearLayout;

    move-object v1, p4

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;->blockTouchSwitch:Landroid/widget/Switch;

    move-object v1, p5

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;->changeMouseLockKeyButton2:Landroid/widget/Button;

    move-object v1, p6

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;->changeMouseLockKeyButton3:Landroid/widget/Button;

    move-object v1, p7

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;->changeNameButton:Landroid/widget/Button;

    move-object v1, p8

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;->changeTerminateKeyButton:Landroid/widget/Button;

    move-object v1, p9

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;->changeTriggerKeyButton:Landroid/widget/Button;

    move-object v1, p10

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;->editButton:Landroid/widget/Button;

    move-object v1, p11

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;->nameTextView:Landroid/widget/TextView;

    move-object v1, p12

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;->segmentedButton:Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    move-object v1, p13

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;->segmentedButton4:Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;->switchRadiusTypeHelpIcon:Landroid/widget/ImageView;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;->terminateKeyTextView:Landroid/widget/TextView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;->textView3:Landroid/widget/TextView;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;->textView4:Landroid/widget/TextView;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;->triggerKeyTextView:Landroid/widget/TextView;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;->triggerModeSegmentedControl:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;->triggerTypeSegmentedControl:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;
    .locals 24
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    sget v1, Lcom/zjx/jyandroid/R$id;->bindKeyLinearLayout:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->blockTouchLinearLayout:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->blockTouchSwitch:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/Switch;

    if-eqz v7, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->changeMouseLockKeyButton2:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->changeMouseLockKeyButton3:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/Button;

    if-eqz v9, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->changeNameButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/Button;

    if-eqz v10, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->changeTerminateKeyButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/Button;

    if-eqz v11, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->changeTriggerKeyButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/Button;

    if-eqz v12, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->editButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/Button;

    if-eqz v13, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->nameTextView:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->segmentedButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    if-eqz v15, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->segmentedButton4:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    if-eqz v16, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->switchRadiusTypeHelpIcon:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/ImageView;

    if-eqz v17, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->terminateKeyTextView:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->textView3:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->textView4:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->triggerKeyTextView:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->triggerModeSegmentedControl:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    if-eqz v22, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->triggerTypeSegmentedControl:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    if-eqz v23, :cond_0

    new-instance v1, Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;

    invoke-direct/range {v3 .. v23}, Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/Switch;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Lcom/addisonelliott/segmentedbutton/SegmentedButton;Lcom/addisonelliott/segmentedbutton/SegmentedButton;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;
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
    invoke-static {p0, v0, v1}, Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;
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
    sget v0, Lcom/zjx/jyandroid/R$layout;->macro_component_settings_view_sc:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;->bind(Landroid/view/View;)Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;->getRoot()Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/zjx/jyandroid/databinding/MacroComponentSettingsViewScBinding;->rootView:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;

    return-object v0
.end method
