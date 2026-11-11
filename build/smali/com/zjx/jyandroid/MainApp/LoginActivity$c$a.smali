.class public Lcom/zjx/jyandroid/MainApp/LoginActivity$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$LoginCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/MainApp/LoginActivity$c;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/MainApp/LoginActivity$c;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/LoginActivity$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/LoginActivity$c$a;->a:Lcom/zjx/jyandroid/MainApp/LoginActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loginCompleted(Lcom/zjx/jyandroid/base/MError;Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;)V
    .locals 2

    iget-object p2, p0, Lcom/zjx/jyandroid/MainApp/LoginActivity$c$a;->a:Lcom/zjx/jyandroid/MainApp/LoginActivity$c;

    iget-object p2, p2, Lcom/zjx/jyandroid/MainApp/LoginActivity$c;->a:Lcom/zjx/jyandroid/MainApp/LoginActivity;

    iget-object p2, p2, Lcom/zjx/jyandroid/MainApp/LoginActivity;->f:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/zjx/jyandroid/MainApp/LoginActivity$c$a;->a:Lcom/zjx/jyandroid/MainApp/LoginActivity$c;

    iget-object p2, p2, Lcom/zjx/jyandroid/MainApp/LoginActivity$c;->a:Lcom/zjx/jyandroid/MainApp/LoginActivity;

    iget-object p2, p2, Lcom/zjx/jyandroid/MainApp/LoginActivity;->d:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/zjx/jyandroid/MainApp/LoginActivity$c$a;->a:Lcom/zjx/jyandroid/MainApp/LoginActivity$c;

    iget-object p2, p2, Lcom/zjx/jyandroid/MainApp/LoginActivity$c;->a:Lcom/zjx/jyandroid/MainApp/LoginActivity;

    iget-object p2, p2, Lcom/zjx/jyandroid/MainApp/LoginActivity;->a:Lcom/zjx/jyandroid/databinding/ActivityLoginBinding;

    invoke-virtual {p2}, Lcom/zjx/jyandroid/databinding/ActivityLoginBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u767b\u5f55\u5931\u8d25\u3002\u539f\u56e0\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u786e\u5b9a"

    const-string v1, "\u63d0\u793a"

    invoke-static {p2, v1, p1, v0}, Lcom/zjx/jyandroid/base/util/b;->W(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/LoginActivity$c$a;->a:Lcom/zjx/jyandroid/MainApp/LoginActivity$c;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/LoginActivity$c;->a:Lcom/zjx/jyandroid/MainApp/LoginActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
