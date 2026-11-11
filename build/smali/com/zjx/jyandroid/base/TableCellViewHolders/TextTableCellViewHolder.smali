.class public Lcom/zjx/jyandroid/base/TableCellViewHolders/TextTableCellViewHolder;
.super Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
.source "SourceFile"


# instance fields
.field public cellContainer:Landroid/widget/LinearLayout;

.field public rightTextView:Landroid/widget/TextView;

.field public subtitleTextView:Landroid/widget/TextView;

.field public titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/zjx/jyandroid/R$id;->titleTextView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/base/TableCellViewHolders/TextTableCellViewHolder;->titleTextView:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->subtitleTextView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/base/TableCellViewHolders/TextTableCellViewHolder;->subtitleTextView:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->rightTextView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/base/TableCellViewHolders/TextTableCellViewHolder;->rightTextView:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->cellContainer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/zjx/jyandroid/base/TableCellViewHolders/TextTableCellViewHolder;->cellContainer:Landroid/widget/LinearLayout;

    return-void
.end method
