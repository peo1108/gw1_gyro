.class public Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/EditText;

.field public final synthetic b:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c;Landroid/widget/EditText;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c$b;->b:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c$b;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionTriggered(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V
    .locals 3

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c$b;->b:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c;->b:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$f;->e(Z)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c$b;->b:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c;->b:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$f;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$f;->f:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$string;->select_keymap_container_view_renaming:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->J()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c$b;->b:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c;->a:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$g;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$g;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c$b;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c$b$a;

    invoke-direct {v2, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c$b$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c$b;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->B(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$RenameKeymapCompletionHandler;)V

    return-void
.end method
