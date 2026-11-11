.class public Lcom/zjx/jyandroid/MainApp/MainPageView$a;
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

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$a;->a:Lcom/zjx/jyandroid/MainApp/MainPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$a;->a:Lcom/zjx/jyandroid/MainApp/MainPageView;

    invoke-static {p1}, Lcom/zjx/jyandroid/MainApp/MainPageView;->d(Lcom/zjx/jyandroid/MainApp/MainPageView;)Landroid/widget/Button;

    move-result-object p1

    const-string v0, "\u70b9\u51fb\u641c\u7d22"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->stopBluetoothGameController()V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$a;->a:Lcom/zjx/jyandroid/MainApp/MainPageView;

    invoke-static {p1}, Lcom/zjx/jyandroid/MainApp/MainPageView;->e(Lcom/zjx/jyandroid/MainApp/MainPageView;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/zjx/jyandroid/R$string;->current_device:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/zjx/jyandroid/R$string;->none:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$a;->a:Lcom/zjx/jyandroid/MainApp/MainPageView;

    invoke-static {p1}, Lcom/zjx/jyandroid/MainApp/MainPageView;->d(Lcom/zjx/jyandroid/MainApp/MainPageView;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$a;->a:Lcom/zjx/jyandroid/MainApp/MainPageView;

    invoke-static {v0}, Lcom/zjx/jyandroid/MainApp/MainPageView;->g(Lcom/zjx/jyandroid/MainApp/MainPageView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
