.class public Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    new-instance p1, Lcom/zjx/jyandroid/base/Components/Alert;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    sget v1, Lcom/zjx/jyandroid/R$string;->str_import:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/R$string;->macro_settings_text14:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/zjx/jyandroid/base/Components/Alert;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/Components/Alert;->addTextField()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v2, Lcom/zjx/jyandroid/R$string;->cancel:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v4, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$a$a;

    invoke-direct {v4, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$a$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$a;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {p1, v1}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    new-instance v1, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v2, Lcom/zjx/jyandroid/R$string;->str_import:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$a$b;

    invoke-direct {v4, p0, v0}, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$a$b;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$a;Landroid/widget/EditText;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {p1, v1}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/Components/Alert;->show()V

    return-void
.end method
