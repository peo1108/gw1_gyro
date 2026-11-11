.class public Lcom/zjx/jyandroid/MainApp/MainPageView$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/MainApp/MainPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/MainApp/MainPageView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/MainPageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$p;->a:Lcom/zjx/jyandroid/MainApp/MainPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$p;->a:Lcom/zjx/jyandroid/MainApp/MainPageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b$f;->e(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/zjx/jyandroid/base/Components/Alert;

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$p;->a:Lcom/zjx/jyandroid/MainApp/MainPageView;

    sget v1, Lcom/zjx/jyandroid/R$string;->error:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/R$string;->shoucuo_permission_needed_prompt:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/zjx/jyandroid/base/Components/Alert;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v1, Lcom/zjx/jyandroid/R$string;->ok:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v3, Lcom/zjx/jyandroid/MainApp/MainPageView$p$a;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$p$a;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView$p;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/Components/Alert;->show()V

    return-void

    :cond_0
    invoke-static {}, Lcom/zjx/jyandroid/base/util/b;->A()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/zjx/jyandroid/base/Components/Alert;

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$p;->a:Lcom/zjx/jyandroid/MainApp/MainPageView;

    const-string v1, "\u9519\u8bef"

    const-string v2, "\u8bf7\u5728\u7cfb\u7edf\u8bbe\u7f6e\u4e2d\u6253\u5f00\u84dd\u7259"

    invoke-direct {p1, v0, v1, v2}, Lcom/zjx/jyandroid/base/Components/Alert;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v1, Lcom/zjx/jyandroid/R$string;->ok:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v3, Lcom/zjx/jyandroid/MainApp/MainPageView$p$b;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$p$b;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView$p;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/Components/Alert;->show()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$p;->a:Lcom/zjx/jyandroid/MainApp/MainPageView;

    invoke-static {p1}, Lcom/zjx/jyandroid/MainApp/MainPageView;->d(Lcom/zjx/jyandroid/MainApp/MainPageView;)Landroid/widget/Button;

    move-result-object p1

    const-string v0, "\u505c\u6b62\u641c\u7d22"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->startBluetoothGameController()V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$p;->a:Lcom/zjx/jyandroid/MainApp/MainPageView;

    invoke-static {p1}, Lcom/zjx/jyandroid/MainApp/MainPageView;->e(Lcom/zjx/jyandroid/MainApp/MainPageView;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u6b63\u5728\u641c\u7d22..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$p;->a:Lcom/zjx/jyandroid/MainApp/MainPageView;

    invoke-static {p1}, Lcom/zjx/jyandroid/MainApp/MainPageView;->d(Lcom/zjx/jyandroid/MainApp/MainPageView;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$p;->a:Lcom/zjx/jyandroid/MainApp/MainPageView;

    invoke-static {v0}, Lcom/zjx/jyandroid/MainApp/MainPageView;->f(Lcom/zjx/jyandroid/MainApp/MainPageView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
