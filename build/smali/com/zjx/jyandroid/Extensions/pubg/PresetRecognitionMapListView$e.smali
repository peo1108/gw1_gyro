.class public Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e;
.super Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e$c;,
        Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e$b;
    }
.end annotation


# instance fields
.field public final a:I

.field public final synthetic b:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e;->b:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    invoke-direct {p0}, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;-><init>()V

    iput p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e;->a:I

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

    check-cast p1, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e$c;

    check-cast p2, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$d;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e$c;->a(Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$d;)V

    iget-object p3, p1, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e$c;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget p4, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e;->a:I

    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e$c;->c:Landroid/widget/Button;

    new-instance p3, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e$a;

    invoke-direct {p3, p0, p2}, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e;Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$d;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    sget v0, Lcom/zjx/jyandroid/R$layout;->pubg_preset_recognition_map_row:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e$c;

    invoke-direct {p2, p0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e$c;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e;Landroid/view/View;)V

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

    new-instance p2, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e$b;

    invoke-direct {p2, p0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e$b;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e;Landroid/view/View;)V

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

    new-instance p2, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e$b;

    invoke-direct {p2, p0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e$b;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e;Landroid/view/View;)V

    return-object p2
.end method
