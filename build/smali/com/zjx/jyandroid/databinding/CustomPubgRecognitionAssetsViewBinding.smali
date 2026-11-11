.class public final Lcom/zjx/jyandroid/databinding/CustomPubgRecognitionAssetsViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final deviceInfoText:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final infoView:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tableView:Lcom/evrencoskun/tableview/TableView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/evrencoskun/tableview/TableView;)V
    .locals 0
    .param p1    # Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/constraintlayout/widget/ConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/evrencoskun/tableview/TableView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/databinding/CustomPubgRecognitionAssetsViewBinding;->rootView:Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView;

    iput-object p2, p0, Lcom/zjx/jyandroid/databinding/CustomPubgRecognitionAssetsViewBinding;->deviceInfoText:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/zjx/jyandroid/databinding/CustomPubgRecognitionAssetsViewBinding;->infoView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p4, p0, Lcom/zjx/jyandroid/databinding/CustomPubgRecognitionAssetsViewBinding;->tableView:Lcom/evrencoskun/tableview/TableView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/zjx/jyandroid/databinding/CustomPubgRecognitionAssetsViewBinding;
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Lcom/zjx/jyandroid/R$id;->deviceInfoText:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    sget v0, Lcom/zjx/jyandroid/R$id;->infoView:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v2, :cond_0

    sget v0, Lcom/zjx/jyandroid/R$id;->tableView:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/evrencoskun/tableview/TableView;

    if-eqz v3, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/databinding/CustomPubgRecognitionAssetsViewBinding;

    check-cast p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/zjx/jyandroid/databinding/CustomPubgRecognitionAssetsViewBinding;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/evrencoskun/tableview/TableView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/zjx/jyandroid/databinding/CustomPubgRecognitionAssetsViewBinding;
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
    invoke-static {p0, v0, v1}, Lcom/zjx/jyandroid/databinding/CustomPubgRecognitionAssetsViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/zjx/jyandroid/databinding/CustomPubgRecognitionAssetsViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/zjx/jyandroid/databinding/CustomPubgRecognitionAssetsViewBinding;
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
    sget v0, Lcom/zjx/jyandroid/R$layout;->custom_pubg_recognition_assets_view:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/zjx/jyandroid/databinding/CustomPubgRecognitionAssetsViewBinding;->bind(Landroid/view/View;)Lcom/zjx/jyandroid/databinding/CustomPubgRecognitionAssetsViewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zjx/jyandroid/databinding/CustomPubgRecognitionAssetsViewBinding;->getRoot()Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/zjx/jyandroid/databinding/CustomPubgRecognitionAssetsViewBinding;->rootView:Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView;

    return-object v0
.end method
