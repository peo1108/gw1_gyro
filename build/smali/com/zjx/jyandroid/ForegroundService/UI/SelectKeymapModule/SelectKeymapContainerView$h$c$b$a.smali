.class public Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$RenameKeymapCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c$b;->actionTriggered(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c$b;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c$b$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c$b$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c$b;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c$b;->b:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c;->b:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$f;->e(Z)V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while renaming keymap. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->select_keymap_container_view_rename_fail:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c$b$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c$b;->b:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c;->b:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$f;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$f;->f:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$string;->rename:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->rename_success:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->b:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c$b$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c$b;->b:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c;->b:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$f;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$f;->f:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$string;->rename:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c$b$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c$b;->b:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$c;->c:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h;->b:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;

    iget-object v0, p1, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;->m:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
