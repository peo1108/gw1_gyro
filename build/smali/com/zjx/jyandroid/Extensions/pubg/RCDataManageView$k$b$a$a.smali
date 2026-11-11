.class public Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$a;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$a$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionTriggered(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$a$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$a;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->k:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->rc_data_manage_view_deleting:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$a$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$a;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->rc_data_manage_view_text6:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$a$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$a;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;

    iget-object v0, p1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->n:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k;->c:Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView;->f:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b;->e:Ljava/lang/String;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$a$a$a;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$a$a$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/RCDataManageView$k$b$a$a;)V

    invoke-virtual {v0, p1, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->j(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$DeleteKeymapCompletionHandler;)V

    return-void
.end method
