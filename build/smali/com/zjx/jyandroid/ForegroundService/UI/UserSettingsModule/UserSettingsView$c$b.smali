.class public Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$c$b;
.super Lcom/zjx/jyandroid/base/TableCellViewHolders/TextTableCellViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$c;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$c;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$c;
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$c$b;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$c;

    invoke-direct {p0, p2}, Lcom/zjx/jyandroid/base/TableCellViewHolders/TextTableCellViewHolder;-><init>(Landroid/view/View;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$c$b;->a:I

    return-void
.end method


# virtual methods
.method public a(Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$d;)V
    .locals 4

    iget-object v0, p0, Lcom/zjx/jyandroid/base/TableCellViewHolders/TextTableCellViewHolder;->subtitleTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/base/TableCellViewHolders/TextTableCellViewHolder;->rightTextView:Landroid/widget/TextView;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/base/TableCellViewHolders/TextTableCellViewHolder;->rightTextView:Landroid/widget/TextView;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/zjx/jyandroid/base/TableCellViewHolders/TextTableCellViewHolder;->rightTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41980000    # 19.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/zjx/jyandroid/base/TableCellViewHolders/TextTableCellViewHolder;->rightTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/base/TableCellViewHolders/TextTableCellViewHolder;->titleTextView:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/base/TableCellViewHolders/TextTableCellViewHolder;->titleTextView:Landroid/widget/TextView;

    const/16 v3, 0x50

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/zjx/jyandroid/base/TableCellViewHolders/TextTableCellViewHolder;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$d;->b:I

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$c$b;->a:I

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

    const p1, 0x1affffff

    invoke-virtual {p0, p1}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
