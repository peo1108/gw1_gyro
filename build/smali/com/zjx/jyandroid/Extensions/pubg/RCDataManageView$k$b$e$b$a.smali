.class public Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$e$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$UpdateKeymapCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$e$b;->actionTriggered(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$e$b;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$e$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$e$b$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$e$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$e$b$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$e$b;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$e$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$e;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$e;->b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->j:Landroid/widget/Button;

    sget v1, Lcom/zjx/jyandroid/R$string;->rename:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$e$b$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$e$b;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$e$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$e;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$e;->b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->j:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to update rc config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->rc_data_manage_view_upload_failed:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void

    :cond_0
    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->rename_success:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->b:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$e$b$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$e$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$e$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$e;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$e;->b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->n:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;->c:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;->f:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->y(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$e$b$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$e$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$e$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$e;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$e;->b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->n:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;->c:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;->a(Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;)V

    return-void
.end method
