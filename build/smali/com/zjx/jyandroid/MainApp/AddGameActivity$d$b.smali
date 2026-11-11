.class public Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;
.super Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/MainApp/AddGameActivity$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/Button;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/view/View;

.field public e:Ljava/lang/String;

.field public f:Z

.field public final synthetic g:Lcom/zjx/jyandroid/MainApp/AddGameActivity$d;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/AddGameActivity$d;Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;->g:Lcom/zjx/jyandroid/MainApp/AddGameActivity$d;

    invoke-direct {p0, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;-><init>(Landroid/view/View;)V

    sget p1, Lcom/zjx/jyandroid/R$id;->textView:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;->a:Landroid/widget/TextView;

    sget p1, Lcom/zjx/jyandroid/R$id;->button:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;->b:Landroid/widget/Button;

    sget p1, Lcom/zjx/jyandroid/R$id;->imageView:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;->c:Landroid/widget/ImageView;

    sget p1, Lcom/zjx/jyandroid/R$id;->cellContainer:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;->d:Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;->c(Z)V

    return-void
.end method


# virtual methods
.method public b(Lcom/zjx/jyandroid/MainApp/AddGameActivity$c;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;->a:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/zjx/jyandroid/MainApp/AddGameActivity$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;->c:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/zjx/jyandroid/MainApp/AddGameActivity$c;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/zjx/jyandroid/MainApp/AddGameActivity$c;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;->e:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/zjx/jyandroid/MainApp/AddGameActivity$c;->d:Z

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;->c(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;->b:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b$a;

    invoke-direct {v1, p0, p1}, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b$a;-><init>(Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;Lcom/zjx/jyandroid/MainApp/AddGameActivity$c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final c(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;->b:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$color;->danger_red:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;->b:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$string;->remove:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;->b:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$color;->jy_blue_1:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;->b:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$string;->add:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setSelected(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;)V
    .locals 0
    .param p1    # Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setSelected(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;)V

    return-void
.end method
