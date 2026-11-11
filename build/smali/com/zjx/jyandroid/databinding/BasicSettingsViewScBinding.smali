.class public final Lcom/zjx/jyandroid/databinding/BasicSettingsViewScBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final enableSCPointCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final scPointDashGapCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final scPointDashLengthCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final scPointDashWidthCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final switchPointerLocationDisplayCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final view46:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final view47:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final view48:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final view52:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;Lcom/zjx/jyandroid/base/Components/TextWithSliderView;Lcom/zjx/jyandroid/base/Components/TextWithSliderView;Lcom/zjx/jyandroid/base/Components/TextWithSliderView;Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/zjx/jyandroid/base/Components/TextWithSliderView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/zjx/jyandroid/base/Components/TextWithSliderView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/zjx/jyandroid/base/Components/TextWithSliderView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/databinding/BasicSettingsViewScBinding;->rootView:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;

    iput-object p2, p0, Lcom/zjx/jyandroid/databinding/BasicSettingsViewScBinding;->enableSCPointCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iput-object p3, p0, Lcom/zjx/jyandroid/databinding/BasicSettingsViewScBinding;->scPointDashGapCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object p4, p0, Lcom/zjx/jyandroid/databinding/BasicSettingsViewScBinding;->scPointDashLengthCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object p5, p0, Lcom/zjx/jyandroid/databinding/BasicSettingsViewScBinding;->scPointDashWidthCell:Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    iput-object p6, p0, Lcom/zjx/jyandroid/databinding/BasicSettingsViewScBinding;->switchPointerLocationDisplayCell:Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    iput-object p7, p0, Lcom/zjx/jyandroid/databinding/BasicSettingsViewScBinding;->view46:Landroid/view/View;

    iput-object p8, p0, Lcom/zjx/jyandroid/databinding/BasicSettingsViewScBinding;->view47:Landroid/view/View;

    iput-object p9, p0, Lcom/zjx/jyandroid/databinding/BasicSettingsViewScBinding;->view48:Landroid/view/View;

    iput-object p10, p0, Lcom/zjx/jyandroid/databinding/BasicSettingsViewScBinding;->view52:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/zjx/jyandroid/databinding/BasicSettingsViewScBinding;
    .locals 13
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Lcom/zjx/jyandroid/R$id;->enableSCPointCell:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    if-eqz v4, :cond_0

    sget v0, Lcom/zjx/jyandroid/R$id;->scPointDashGapCell:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    if-eqz v5, :cond_0

    sget v0, Lcom/zjx/jyandroid/R$id;->scPointDashLengthCell:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    if-eqz v6, :cond_0

    sget v0, Lcom/zjx/jyandroid/R$id;->scPointDashWidthCell:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;

    if-eqz v7, :cond_0

    sget v0, Lcom/zjx/jyandroid/R$id;->switchPointerLocationDisplayCell:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;

    if-eqz v8, :cond_0

    sget v0, Lcom/zjx/jyandroid/R$id;->view46:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    sget v0, Lcom/zjx/jyandroid/R$id;->view47:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    sget v0, Lcom/zjx/jyandroid/R$id;->view48:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_0

    sget v0, Lcom/zjx/jyandroid/R$id;->view52:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/databinding/BasicSettingsViewScBinding;

    move-object v3, p0

    check-cast v3, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/zjx/jyandroid/databinding/BasicSettingsViewScBinding;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;Lcom/zjx/jyandroid/base/Components/TextWithSliderView;Lcom/zjx/jyandroid/base/Components/TextWithSliderView;Lcom/zjx/jyandroid/base/Components/TextWithSliderView;Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/zjx/jyandroid/databinding/BasicSettingsViewScBinding;
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
    invoke-static {p0, v0, v1}, Lcom/zjx/jyandroid/databinding/BasicSettingsViewScBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/zjx/jyandroid/databinding/BasicSettingsViewScBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/zjx/jyandroid/databinding/BasicSettingsViewScBinding;
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
    sget v0, Lcom/zjx/jyandroid/R$layout;->basic_settings_view_sc:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/zjx/jyandroid/databinding/BasicSettingsViewScBinding;->bind(Landroid/view/View;)Lcom/zjx/jyandroid/databinding/BasicSettingsViewScBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zjx/jyandroid/databinding/BasicSettingsViewScBinding;->getRoot()Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/zjx/jyandroid/databinding/BasicSettingsViewScBinding;->rootView:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsViewSC;

    return-object v0
.end method
