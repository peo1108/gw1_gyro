.class public final Lcom/zjx/jyandroid/databinding/PubgAdjustRcValueBaseViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final coefficientButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final deleteButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final dynamicRCButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueBaseView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueBaseView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;)V
    .locals 0
    .param p1    # Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueBaseView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/databinding/PubgAdjustRcValueBaseViewBinding;->rootView:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueBaseView;

    iput-object p2, p0, Lcom/zjx/jyandroid/databinding/PubgAdjustRcValueBaseViewBinding;->coefficientButton:Landroid/widget/Button;

    iput-object p3, p0, Lcom/zjx/jyandroid/databinding/PubgAdjustRcValueBaseViewBinding;->deleteButton:Landroid/widget/Button;

    iput-object p4, p0, Lcom/zjx/jyandroid/databinding/PubgAdjustRcValueBaseViewBinding;->dynamicRCButton:Landroid/widget/Button;

    iput-object p5, p0, Lcom/zjx/jyandroid/databinding/PubgAdjustRcValueBaseViewBinding;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/zjx/jyandroid/databinding/PubgAdjustRcValueBaseViewBinding;
    .locals 8
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Lcom/zjx/jyandroid/R$id;->coefficientButton:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    sget v0, Lcom/zjx/jyandroid/R$id;->deleteButton:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    sget v0, Lcom/zjx/jyandroid/R$id;->dynamicRCButton:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_0

    sget v0, Lcom/zjx/jyandroid/R$id;->slider:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    if-eqz v7, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/databinding/PubgAdjustRcValueBaseViewBinding;

    move-object v3, p0

    check-cast v3, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueBaseView;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/zjx/jyandroid/databinding/PubgAdjustRcValueBaseViewBinding;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueBaseView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/zjx/jyandroid/databinding/PubgAdjustRcValueBaseViewBinding;
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
    invoke-static {p0, v0, v1}, Lcom/zjx/jyandroid/databinding/PubgAdjustRcValueBaseViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/zjx/jyandroid/databinding/PubgAdjustRcValueBaseViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/zjx/jyandroid/databinding/PubgAdjustRcValueBaseViewBinding;
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
    sget v0, Lcom/zjx/jyandroid/R$layout;->pubg_adjust_rc_value_base_view:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/zjx/jyandroid/databinding/PubgAdjustRcValueBaseViewBinding;->bind(Landroid/view/View;)Lcom/zjx/jyandroid/databinding/PubgAdjustRcValueBaseViewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zjx/jyandroid/databinding/PubgAdjustRcValueBaseViewBinding;->getRoot()Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueBaseView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueBaseView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/zjx/jyandroid/databinding/PubgAdjustRcValueBaseViewBinding;->rootView:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueBaseView;

    return-object v0
.end method
