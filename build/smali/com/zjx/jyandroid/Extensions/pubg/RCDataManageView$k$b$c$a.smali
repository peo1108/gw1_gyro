.class public Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$UpdateKeymapCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c;I)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c;

    iput p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->h:Landroid/widget/Button;

    sget v1, Lcom/zjx/jyandroid/R$string;->rc_data_manage_view_share:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->h:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to upload rc config when sharing: "

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
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;

    iget-object v0, p1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->n:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;->c:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;->f:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->e:Ljava/lang/String;

    iget v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c$a;->a:I

    new-instance v2, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c$a$a;

    invoke-direct {v2, p0}, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c$a$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$c$a;)V

    const-string v3, "yq"

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->G(Ljava/lang/String;Ljava/lang/String;ILcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;)V

    return-void
.end method
