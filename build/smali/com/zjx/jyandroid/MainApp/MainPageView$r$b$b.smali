.class public Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->a(Lcom/zjx/jyandroid/MainApp/MainPageView$q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/MainApp/MainPageView$q;

.field public final synthetic b:Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;Lcom/zjx/jyandroid/MainApp/MainPageView$q;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;->b:Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;

    iput-object p2, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;->a:Lcom/zjx/jyandroid/MainApp/MainPageView$q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getStartPrerequisiteErrorCode()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, -0x3

    const/4 v1, 0x1

    if-eq v0, p1, :cond_2

    const/4 p1, -0x2

    if-eq v0, p1, :cond_1

    const/4 p1, -0x1

    if-eq v0, p1, :cond_0

    sget p1, Lcom/zjx/jyandroid/R$string;->unknown_error:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/zjx/jyandroid/base/Components/Alert;

    iget-object v2, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;->b:Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;

    iget-object v2, v2, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->i:Lcom/zjx/jyandroid/MainApp/MainPageView$r;

    iget-object v2, v2, Lcom/zjx/jyandroid/MainApp/MainPageView$r;->b:Lcom/zjx/jyandroid/MainApp/MainPageView;

    sget v3, Lcom/zjx/jyandroid/R$string;->prompt:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, p1}, Lcom/zjx/jyandroid/base/Components/Alert;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v2, Lcom/zjx/jyandroid/R$string;->ok:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v4, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$f;

    invoke-direct {v4, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$f;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;)V

    invoke-direct {p1, v2, v3, v4}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/Alert;->show(Z)V

    goto/16 :goto_0

    :cond_0
    sget p1, Lcom/zjx/jyandroid/R$string;->please_connect_wz:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/zjx/jyandroid/base/Components/Alert;

    iget-object v2, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;->b:Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;

    iget-object v2, v2, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->i:Lcom/zjx/jyandroid/MainApp/MainPageView$r;

    iget-object v2, v2, Lcom/zjx/jyandroid/MainApp/MainPageView$r;->b:Lcom/zjx/jyandroid/MainApp/MainPageView;

    sget v3, Lcom/zjx/jyandroid/R$string;->prompt:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, p1}, Lcom/zjx/jyandroid/base/Components/Alert;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v2, Lcom/zjx/jyandroid/R$string;->ok:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v4, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$a;

    invoke-direct {v4, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$a;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;)V

    invoke-direct {p1, v2, v3, v4}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/Alert;->show(Z)V

    goto/16 :goto_0

    :cond_1
    sget p1, Lcom/zjx/jyandroid/R$string;->permission_required_prompt:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/zjx/jyandroid/base/Components/Alert;

    iget-object v2, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;->b:Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;

    iget-object v2, v2, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->i:Lcom/zjx/jyandroid/MainApp/MainPageView$r;

    iget-object v2, v2, Lcom/zjx/jyandroid/MainApp/MainPageView$r;->b:Lcom/zjx/jyandroid/MainApp/MainPageView;

    sget v3, Lcom/zjx/jyandroid/R$string;->prompt:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, p1}, Lcom/zjx/jyandroid/base/Components/Alert;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v2, Lcom/zjx/jyandroid/R$string;->cancel:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v4, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$b;

    invoke-direct {v4, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$b;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;)V

    invoke-direct {p1, v2, v3, v4}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    new-instance p1, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v2, Lcom/zjx/jyandroid/R$string;->ok:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$c;

    invoke-direct {v4, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$c;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;)V

    invoke-direct {p1, v2, v3, v4}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/Alert;->show(Z)V

    goto :goto_0

    :cond_2
    sget p1, Lcom/zjx/jyandroid/R$string;->adb_required_prompt:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/zjx/jyandroid/base/Components/Alert;

    iget-object v2, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;->b:Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;

    iget-object v2, v2, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->i:Lcom/zjx/jyandroid/MainApp/MainPageView$r;

    iget-object v2, v2, Lcom/zjx/jyandroid/MainApp/MainPageView$r;->b:Lcom/zjx/jyandroid/MainApp/MainPageView;

    sget v3, Lcom/zjx/jyandroid/R$string;->prompt:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, p1}, Lcom/zjx/jyandroid/base/Components/Alert;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v2, Lcom/zjx/jyandroid/R$string;->cancel:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v4, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$d;

    invoke-direct {v4, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$d;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;)V

    invoke-direct {p1, v2, v3, v4}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    new-instance p1, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v2, Lcom/zjx/jyandroid/R$string;->ok:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$e;

    invoke-direct {v4, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$e;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;)V

    invoke-direct {p1, v2, v3, v4}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/Alert;->show(Z)V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;->b:Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;

    iget-object v0, v0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->e:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;->b:Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;

    iget-object v1, v1, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->e:Landroid/widget/Button;

    sget v2, Lcom/zjx/jyandroid/R$string;->loading:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;->b:Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;

    iget-object v3, v3, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;->b:Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;

    iget-object v1, v1, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->e:Landroid/widget/Button;

    new-instance v2, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$g;

    invoke-direct {v2, p0, v0, p1}, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$g;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/MainService;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zjx/jyandroid/base/util/a;

    sget v1, Lcom/zjx/jyandroid/R$string;->launch_failed:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/util/a;->a()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to launch app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;->b:Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;

    iget-object v1, v1, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    return-void
.end method
