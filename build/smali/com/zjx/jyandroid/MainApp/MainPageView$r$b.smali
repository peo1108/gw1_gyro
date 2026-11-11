.class public Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;
.super Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/MainApp/MainPageView$r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/Button;

.field public e:Landroid/widget/Button;

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/widget/LinearLayout;

.field public h:Ljava/lang/String;

.field public final synthetic i:Lcom/zjx/jyandroid/MainApp/MainPageView$r;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/MainPageView$r;Landroid/view/View;)V
    .locals 0
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

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->i:Lcom/zjx/jyandroid/MainApp/MainPageView$r;

    invoke-direct {p0, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;-><init>(Landroid/view/View;)V

    sget p1, Lcom/zjx/jyandroid/R$id;->headerTextView:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->a:Landroid/widget/TextView;

    sget p1, Lcom/zjx/jyandroid/R$id;->versionTextView:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->b:Landroid/widget/TextView;

    sget p1, Lcom/zjx/jyandroid/R$id;->bundleIdTextView:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->c:Landroid/widget/TextView;

    sget p1, Lcom/zjx/jyandroid/R$id;->removeButton:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->d:Landroid/widget/Button;

    sget p1, Lcom/zjx/jyandroid/R$id;->startGameButton:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->e:Landroid/widget/Button;

    sget p1, Lcom/zjx/jyandroid/R$id;->imageView:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->f:Landroid/widget/ImageView;

    sget p1, Lcom/zjx/jyandroid/R$id;->cellContainer:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->g:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public a(Lcom/zjx/jyandroid/MainApp/MainPageView$q;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->a:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/zjx/jyandroid/MainApp/MainPageView$q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/zjx/jyandroid/MainApp/MainPageView$q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->c:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/zjx/jyandroid/MainApp/MainPageView$q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->f:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/zjx/jyandroid/MainApp/MainPageView$q;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/zjx/jyandroid/MainApp/MainPageView$q;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->d:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$a;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$a;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->e:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;

    invoke-direct {v1, p0, p1}, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;Lcom/zjx/jyandroid/MainApp/MainPageView$q;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->d:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->d:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
