.class public Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;
.super Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/Button;

.field public e:Lcom/zjx/jyandroid/base/Components/IconView;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public final synthetic i:Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c;Landroid/view/View;)V
    .locals 5
    .param p1    # Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->i:Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c;

    invoke-direct {p0, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/zjx/jyandroid/R$id;->titleTextView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->b:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->subtitleTextView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->c:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->button:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->d:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->a:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/zjx/jyandroid/base/Components/IconView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->e:Lcom/zjx/jyandroid/base/Components/IconView;

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->c:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->b:Landroid/widget/TextView;

    const/16 v0, 0x32

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->b:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->d:Landroid/widget/Button;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/zjx/jyandroid/R$drawable;->rounded_button_background_15dp:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->d:Landroid/widget/Button;

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->d:Landroid/widget/Button;

    sget v2, Lcom/zjx/jyandroid/R$color;->jy_blue_1:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->d:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->d:Landroid/widget/Button;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/16 v2, 0xc8

    iput v2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->d:Landroid/widget/Button;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/16 v2, 0x50

    iput v2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->d:Landroid/widget/Button;

    sget v2, Lcom/zjx/jyandroid/R$string;->select:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->e:Lcom/zjx/jyandroid/base/Components/IconView;

    sget v2, Lcom/zjx/jyandroid/R$color;->white:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/zjx/jyandroid/base/Components/IconView;->setTint(I)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->e:Lcom/zjx/jyandroid/base/Components/IconView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->e:Lcom/zjx/jyandroid/base/Components/IconView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->e:Lcom/zjx/jyandroid/base/Components/IconView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v1, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->d:Landroid/widget/Button;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p2, v1, v1, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->d:Landroid/widget/Button;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b$a;

    invoke-direct {v0, p0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$b;)V
    .locals 2

    iget-boolean v0, p1, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$b;->c:Z

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->h:Z

    iget-boolean v0, p1, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$b;->b:Z

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->g:Z

    iget-object v0, p1, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$b;->a:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-boolean v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->h:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/zjx/jyandroid/R$string;->custom_pubg_recognition_assets_view_text1:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$b;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->f:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->g:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->d:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->e:Lcom/zjx/jyandroid/base/Components/IconView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->e:Lcom/zjx/jyandroid/base/Components/IconView;

    sget-object v0, Lcom/zjx/jyandroid/base/Components/IconView$IconType;->Correct:Lcom/zjx/jyandroid/base/Components/IconView$IconType;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/base/Components/IconView;->setIconType(Lcom/zjx/jyandroid/base/Components/IconView$IconType;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->d:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/CustomPubgRecognitionAssetsView$c$b;->e:Lcom/zjx/jyandroid/base/Components/IconView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setSelected(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;)V
    .locals 1
    .param p1    # Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setSelected(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;)V

    sget-object v0, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->SELECTED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    if-ne p1, v0, :cond_0

    sget p1, Lcom/zjx/jyandroid/R$color;->table_row_background_selected:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
