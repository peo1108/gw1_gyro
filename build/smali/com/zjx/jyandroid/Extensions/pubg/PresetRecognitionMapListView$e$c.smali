.class public Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e$c;
.super Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/LinearLayout;

.field public c:Landroid/widget/Button;

.field public final synthetic d:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e;Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e$c;->d:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e;

    invoke-direct {p0, p2}, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;-><init>(Landroid/view/View;)V

    sget p1, Lcom/zjx/jyandroid/R$id;->importButton:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e$c;->c:Landroid/widget/Button;

    sget p1, Lcom/zjx/jyandroid/R$id;->cellContainer:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e$c;->b:Landroid/widget/LinearLayout;

    sget p1, Lcom/zjx/jyandroid/R$id;->nameTextView:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e$c;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$d;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e$c;->a:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$d;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
