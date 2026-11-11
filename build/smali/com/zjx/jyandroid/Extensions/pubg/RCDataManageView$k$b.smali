.class public Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;
.super Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/TableLayout;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Z

.field public h:Landroid/widget/Button;

.field public i:Landroid/widget/Button;

.field public j:Landroid/widget/Button;

.field public k:Landroid/widget/Button;

.field public l:Landroid/widget/Button;

.field public m:Landroid/view/View;

.field public final synthetic n:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;Landroid/view/View;)V
    .locals 2
    .param p1    # Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->n:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;

    invoke-direct {p0, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/zjx/jyandroid/R$id;->cellContainer:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->a:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->buttonsTableLayout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->b:Landroid/widget/TableLayout;

    sget v0, Lcom/zjx/jyandroid/R$id;->shareButton:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->h:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/zjx/jyandroid/R$id;->uploadButton:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->i:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->renameButton:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->j:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->deleteButton:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->k:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->selectButton:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->l:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->headerTextView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->c:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->selectedIndicator:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->m:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->statusTextView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->d:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->k:Landroid/widget/Button;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$a;

    invoke-direct {v0, p0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->l:Landroid/widget/Button;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$b;

    invoke-direct {v0, p0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$b;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->h:Landroid/widget/Button;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c;

    invoke-direct {v0, p0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->i:Landroid/widget/Button;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$d;

    invoke-direct {v0, p0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$d;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->j:Landroid/widget/Button;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$e;

    invoke-direct {v0, p0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$e;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$j;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->c:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$j;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->e:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$j;->c:Z

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->f:Z

    iget-boolean p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$j;->d:Z

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->g:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->l:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->m:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->l:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->m:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->f:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->d:Landroid/widget/TextView;

    sget v1, Lcom/zjx/jyandroid/R$string;->rc_data_manage_view_text36:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->d:Landroid/widget/TextView;

    sget v1, Lcom/zjx/jyandroid/R$color;->system_green:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->h:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->i:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->j:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->d:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$string;->rc_data_manage_view_text37:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->d:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$color;->white:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->h:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->i:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->j:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public setSelected(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;)V
    .locals 2
    .param p1    # Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setSelected(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;)V

    sget-object v0, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;->UNSELECTED:Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder$SelectionState;

    const/16 v1, 0x8

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->b:Landroid/widget/TableLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/zjx/jyandroid/R$color;->table_row_background_selected:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->b:Landroid/widget/TableLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->g:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->k:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->k:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
