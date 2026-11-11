.class public Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c;
.super Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;,
        Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public b:Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView;

.field public final synthetic c:Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView;ILcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c;->c:Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView;

    invoke-direct {p0}, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;-><init>()V

    iput p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c;->a:I

    iput-object p3, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView;

    return-void
.end method


# virtual methods
.method public onBindCellViewHolder(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;Ljava/lang/Object;II)V
    .locals 0
    .param p1    # Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p2, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$b;

    check-cast p1, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->a(Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$b;)V

    iget-object p2, p1, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p3, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c;->a:I

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/16 p2, 0x30

    invoke-static {p2}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public onBindColumnHeaderViewHolder(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onBindRowHeaderViewHolder(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onCreateCellViewHolder(Landroid/view/ViewGroup;I)Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/zjx/jyandroid/R$layout;->text_view_with_button_component:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;

    invoke-direct {p2, p0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c;Landroid/view/View;)V

    return-object p2
.end method

.method public onCreateColumnHeaderViewHolder(Landroid/view/ViewGroup;I)Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/zjx/jyandroid/R$layout;->empty:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$a;

    invoke-direct {p2, p0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c;Landroid/view/View;)V

    return-object p2
.end method

.method public onCreateCornerView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateRowHeaderViewHolder(Landroid/view/ViewGroup;I)Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/zjx/jyandroid/R$layout;->empty:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$a;

    invoke-direct {p2, p0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c;Landroid/view/View;)V

    return-object p2
.end method
