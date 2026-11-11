.class public final Lcom/zjx/jyandroid/databinding/BasicSettingsViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bindCrazyTapKeyRow:Lcom/zjx/jyandroid/base/Components/BindKeyRow;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final communicationFrequencySegmentedControl:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final enableMouseCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mouseSensitivitySliderCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mouseStyleSegmentedButton:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mouseViewSizeCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final segmentedButton1000hz:Lcom/addisonelliott/segmentedbutton/SegmentedButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final segmentedButton6:Lcom/addisonelliott/segmentedbutton/SegmentedButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final segmentedButton8:Lcom/addisonelliott/segmentedbutton/SegmentedButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final switchPointerLocationDisplayCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final textView20:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final view21:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final view44:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final view7:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;Lcom/zjx/jyandroid/base/Components/BindKeyRow;Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;Lcom/zjx/jyandroid/base/Components/TextWithSliderView;Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;Lcom/zjx/jyandroid/base/Components/TextWithSliderView;Lcom/addisonelliott/segmentedbutton/SegmentedButton;Lcom/addisonelliott/segmentedbutton/SegmentedButton;Lcom/addisonelliott/segmentedbutton/SegmentedButton;Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/zjx/jyandroid/base/Components/BindKeyRow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/zjx/jyandroid/base/Components/TextWithSliderView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/zjx/jyandroid/base/Components/TextWithSliderView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/addisonelliott/segmentedbutton/SegmentedButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/addisonelliott/segmentedbutton/SegmentedButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/addisonelliott/segmentedbutton/SegmentedButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/databinding/BasicSettingsViewBinding;->rootView:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;

    iput-object p2, p0, Lcom/zjx/jyandroid/databinding/BasicSettingsViewBinding;->bindCrazyTapKeyRow:Lcom/zjx/jyandroid/base/Components/BindKeyRow;

    iput-object p3, p0, Lcom/zjx/jyandroid/databinding/BasicSettingsViewBinding;->communicationFrequencySegmentedControl:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    iput-object p4, p0, Lcom/zjx/jyandroid/databinding/BasicSettingsViewBinding;->enableMouseCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iput-object p5, p0, Lcom/zjx/jyandroid/databinding/BasicSettingsViewBinding;->mouseSensitivitySliderCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object p6, p0, Lcom/zjx/jyandroid/databinding/BasicSettingsViewBinding;->mouseStyleSegmentedButton:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    iput-object p7, p0, Lcom/zjx/jyandroid/databinding/BasicSettingsViewBinding;->mouseViewSizeCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object p8, p0, Lcom/zjx/jyandroid/databinding/BasicSettingsViewBinding;->segmentedButton1000hz:Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    iput-object p9, p0, Lcom/zjx/jyandroid/databinding/BasicSettingsViewBinding;->segmentedButton6:Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    iput-object p10, p0, Lcom/zjx/jyandroid/databinding/BasicSettingsViewBinding;->segmentedButton8:Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    iput-object p11, p0, Lcom/zjx/jyandroid/databinding/BasicSettingsViewBinding;->switchPointerLocationDisplayCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iput-object p12, p0, Lcom/zjx/jyandroid/databinding/BasicSettingsViewBinding;->textView20:Landroid/widget/TextView;

    iput-object p13, p0, Lcom/zjx/jyandroid/databinding/BasicSettingsViewBinding;->view21:Landroid/view/View;

    iput-object p14, p0, Lcom/zjx/jyandroid/databinding/BasicSettingsViewBinding;->view44:Landroid/view/View;

    iput-object p15, p0, Lcom/zjx/jyandroid/databinding/BasicSettingsViewBinding;->view7:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/zjx/jyandroid/databinding/BasicSettingsViewBinding;
    .locals 19
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    sget v1, Lcom/zjx/jyandroid/R$id;->bindCrazyTapKeyRow:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/zjx/jyandroid/base/Components/BindKeyRow;

    if-eqz v5, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->communicationFrequencySegmentedControl:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    if-eqz v6, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->enableMouseCell:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    if-eqz v7, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->mouseSensitivitySliderCell:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    if-eqz v8, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->mouseStyleSegmentedButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    if-eqz v9, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->mouseViewSizeCell:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    if-eqz v10, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->segmentedButton1000hz:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    if-eqz v11, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->segmentedButton6:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    if-eqz v12, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->segmentedButton8:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    if-eqz v13, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->switchPointerLocationDisplayCell:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    if-eqz v14, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->textView20:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->view21:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->view44:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->view7:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_0

    new-instance v1, Lcom/zjx/jyandroid/databinding/BasicSettingsViewBinding;

    move-object v4, v0

    check-cast v4, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;

    move-object v3, v1

    invoke-direct/range {v3 .. v18}, Lcom/zjx/jyandroid/databinding/BasicSettingsViewBinding;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;Lcom/zjx/jyandroid/base/Components/BindKeyRow;Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;Lcom/zjx/jyandroid/base/Components/TextWithSliderView;Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;Lcom/zjx/jyandroid/base/Components/TextWithSliderView;Lcom/addisonelliott/segmentedbutton/SegmentedButton;Lcom/addisonelliott/segmentedbutton/SegmentedButton;Lcom/addisonelliott/segmentedbutton/SegmentedButton;Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/zjx/jyandroid/databinding/BasicSettingsViewBinding;
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
    invoke-static {p0, v0, v1}, Lcom/zjx/jyandroid/databinding/BasicSettingsViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/zjx/jyandroid/databinding/BasicSettingsViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/zjx/jyandroid/databinding/BasicSettingsViewBinding;
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
    sget v0, Lcom/zjx/jyandroid/R$layout;->basic_settings_view:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/zjx/jyandroid/databinding/BasicSettingsViewBinding;->bind(Landroid/view/View;)Lcom/zjx/jyandroid/databinding/BasicSettingsViewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zjx/jyandroid/databinding/BasicSettingsViewBinding;->getRoot()Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/zjx/jyandroid/databinding/BasicSettingsViewBinding;->rootView:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;

    return-object v0
.end method
