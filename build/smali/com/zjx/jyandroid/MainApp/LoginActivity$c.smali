.class public Lcom/zjx/jyandroid/MainApp/LoginActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/MainApp/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/MainApp/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/LoginActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/LoginActivity$c;->a:Lcom/zjx/jyandroid/MainApp/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/LoginActivity$c;->a:Lcom/zjx/jyandroid/MainApp/LoginActivity;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/LoginActivity;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/LoginActivity$c;->a:Lcom/zjx/jyandroid/MainApp/LoginActivity;

    iget-object v0, v0, Lcom/zjx/jyandroid/MainApp/LoginActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "86"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->B(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/LoginActivity$c;->a:Lcom/zjx/jyandroid/MainApp/LoginActivity;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/LoginActivity;->a:Lcom/zjx/jyandroid/databinding/ActivityLoginBinding;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/databinding/ActivityLoginBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7"

    const-string v1, "\u786e\u5b9a"

    const-string v2, "\u63d0\u793a"

    invoke-static {p1, v2, v0, v1}, Lcom/zjx/jyandroid/base/util/b;->W(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/LoginActivity$c;->a:Lcom/zjx/jyandroid/MainApp/LoginActivity;

    iget-object v1, v1, Lcom/zjx/jyandroid/MainApp/LoginActivity;->f:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/LoginActivity$c;->a:Lcom/zjx/jyandroid/MainApp/LoginActivity;

    iget-object v1, v1, Lcom/zjx/jyandroid/MainApp/LoginActivity;->d:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[^0-9]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->n()Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/MainApp/LoginActivity$c$a;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/MainApp/LoginActivity$c$a;-><init>(Lcom/zjx/jyandroid/MainApp/LoginActivity$c;)V

    invoke-virtual {v0, p1, v1}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->j(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$LoginCompleteHandler;)V

    return-void
.end method
