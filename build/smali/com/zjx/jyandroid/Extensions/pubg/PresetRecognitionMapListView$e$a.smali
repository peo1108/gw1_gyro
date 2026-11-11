.class public Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e;->onBindCellViewHolder(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;Ljava/lang/Object;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$d;

.field public final synthetic b:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e;Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e;->b:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;->b(Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;)Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e;->b:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;->b(Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;)Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$c;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$d;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$d;->b:Ljava/lang/String;

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {v0, v1, p1}, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$c;->shouldImportByShareCode(Ljava/lang/String;Landroid/widget/Button;)V

    :cond_0
    return-void
.end method
