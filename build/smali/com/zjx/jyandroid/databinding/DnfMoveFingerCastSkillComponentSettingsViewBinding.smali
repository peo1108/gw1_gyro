.class public final Lcom/zjx/jyandroid/databinding/DnfMoveFingerCastSkillComponentSettingsViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final helpIcon:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final imageView9:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final modifyBindingKeyComponent:Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;
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

.field public final valueSliderView:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;)V
    .locals 0
    .param p1    # Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/databinding/DnfMoveFingerCastSkillComponentSettingsViewBinding;->rootView:Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;

    iput-object p2, p0, Lcom/zjx/jyandroid/databinding/DnfMoveFingerCastSkillComponentSettingsViewBinding;->helpIcon:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/zjx/jyandroid/databinding/DnfMoveFingerCastSkillComponentSettingsViewBinding;->imageView9:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/zjx/jyandroid/databinding/DnfMoveFingerCastSkillComponentSettingsViewBinding;->modifyBindingKeyComponent:Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;

    iput-object p5, p0, Lcom/zjx/jyandroid/databinding/DnfMoveFingerCastSkillComponentSettingsViewBinding;->textView3:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/zjx/jyandroid/databinding/DnfMoveFingerCastSkillComponentSettingsViewBinding;->textView4:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/zjx/jyandroid/databinding/DnfMoveFingerCastSkillComponentSettingsViewBinding;->valueSliderView:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/zjx/jyandroid/databinding/DnfMoveFingerCastSkillComponentSettingsViewBinding;
    .locals 10
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Lcom/zjx/jyandroid/R$id;->helpIcon:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    sget v0, Lcom/zjx/jyandroid/R$id;->imageView9:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    sget v0, Lcom/zjx/jyandroid/R$id;->modifyBindingKeyComponent:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;

    if-eqz v6, :cond_0

    sget v0, Lcom/zjx/jyandroid/R$id;->textView3:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    sget v0, Lcom/zjx/jyandroid/R$id;->textView4:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    sget v0, Lcom/zjx/jyandroid/R$id;->valueSliderView:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    if-eqz v9, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/databinding/DnfMoveFingerCastSkillComponentSettingsViewBinding;

    move-object v3, p0

    check-cast v3, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/zjx/jyandroid/databinding/DnfMoveFingerCastSkillComponentSettingsViewBinding;-><init>(Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/zjx/jyandroid/databinding/DnfMoveFingerCastSkillComponentSettingsViewBinding;
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
    invoke-static {p0, v0, v1}, Lcom/zjx/jyandroid/databinding/DnfMoveFingerCastSkillComponentSettingsViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/zjx/jyandroid/databinding/DnfMoveFingerCastSkillComponentSettingsViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/zjx/jyandroid/databinding/DnfMoveFingerCastSkillComponentSettingsViewBinding;
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
    sget v0, Lcom/zjx/jyandroid/R$layout;->dnf_move_finger_cast_skill_component_settings_view:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/zjx/jyandroid/databinding/DnfMoveFingerCastSkillComponentSettingsViewBinding;->bind(Landroid/view/View;)Lcom/zjx/jyandroid/databinding/DnfMoveFingerCastSkillComponentSettingsViewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zjx/jyandroid/databinding/DnfMoveFingerCastSkillComponentSettingsViewBinding;->getRoot()Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/zjx/jyandroid/databinding/DnfMoveFingerCastSkillComponentSettingsViewBinding;->rootView:Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;

    return-object v0
.end method
