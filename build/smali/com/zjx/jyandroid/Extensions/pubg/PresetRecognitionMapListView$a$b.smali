.class public Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/EditText;

.field public final synthetic b:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$a;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$a;Landroid/widget/EditText;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$a$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$a;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$a$b;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionTriggered(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$a$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$a;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;->b(Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;)Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$a$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$a;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;->b(Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;)Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$c;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$a$b;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$c;->shouldImportByShareCode(Ljava/lang/String;Landroid/widget/Button;)V

    :cond_0
    return-void
.end method
