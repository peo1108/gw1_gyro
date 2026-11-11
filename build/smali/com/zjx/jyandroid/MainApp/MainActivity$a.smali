.class public Lcom/zjx/jyandroid/MainApp/MainActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/MainApp/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/MainApp/MainActivity;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainActivity$a;->a:Lcom/zjx/jyandroid/MainApp/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.zjx.jyandroid.onServerMessageReceived"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/zjx/jyandroid/base/Components/Alert;

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainActivity$a;->a:Lcom/zjx/jyandroid/MainApp/MainActivity;

    invoke-static {v0}, Lcom/zjx/jyandroid/MainApp/MainActivity;->c(Lcom/zjx/jyandroid/MainApp/MainActivity;)Lcom/zjx/jyandroid/databinding/ActivityMainBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/databinding/ActivityMainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "msg"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/zjx/jyandroid/base/Components/Alert;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/zjx/jyandroid/MainApp/MainActivity;->d()Ljava/util/LinkedList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v0, Lcom/zjx/jyandroid/R$string;->ok:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v2, Lcom/zjx/jyandroid/MainApp/MainActivity$a$a;

    invoke-direct {v2, p0, p1}, Lcom/zjx/jyandroid/MainApp/MainActivity$a$a;-><init>(Lcom/zjx/jyandroid/MainApp/MainActivity$a;Lcom/zjx/jyandroid/base/Components/Alert;)V

    invoke-direct {p2, v0, v1, v2}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/Components/Alert;->show()V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.zjx.jyandroid.onUpdateInfoReceived"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "success"

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/zjx/jyandroid/base/Components/Alert;

    iget-object p2, p0, Lcom/zjx/jyandroid/MainApp/MainActivity$a;->a:Lcom/zjx/jyandroid/MainApp/MainActivity;

    invoke-static {p2}, Lcom/zjx/jyandroid/MainApp/MainActivity;->c(Lcom/zjx/jyandroid/MainApp/MainActivity;)Lcom/zjx/jyandroid/databinding/ActivityMainBinding;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zjx/jyandroid/databinding/ActivityMainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    sget v0, Lcom/zjx/jyandroid/R$string;->error:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/zjx/jyandroid/R$string;->main_activity_text1:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lcom/zjx/jyandroid/base/Components/Alert;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/zjx/jyandroid/MainApp/MainActivity;->d()Ljava/util/LinkedList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v0, Lcom/zjx/jyandroid/R$string;->ok:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v2, Lcom/zjx/jyandroid/MainApp/MainActivity$a$b;

    invoke-direct {v2, p0, p1}, Lcom/zjx/jyandroid/MainApp/MainActivity$a$b;-><init>(Lcom/zjx/jyandroid/MainApp/MainActivity$a;Lcom/zjx/jyandroid/base/Components/Alert;)V

    invoke-direct {p2, v0, v1, v2}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/Components/Alert;->show()V

    goto/16 :goto_1

    :cond_1
    const-string p1, "updateContent"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "downloadUrl"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "forceUpdate"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\uff0c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/zjx/jyandroid/R$string;->main_activity_text2:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    new-instance v2, Lcom/zjx/jyandroid/base/Components/Alert;

    iget-object v3, p0, Lcom/zjx/jyandroid/MainApp/MainActivity$a;->a:Lcom/zjx/jyandroid/MainApp/MainActivity;

    invoke-static {v3}, Lcom/zjx/jyandroid/MainApp/MainActivity;->c(Lcom/zjx/jyandroid/MainApp/MainActivity;)Lcom/zjx/jyandroid/databinding/ActivityMainBinding;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zjx/jyandroid/databinding/ActivityMainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    sget v4, Lcom/zjx/jyandroid/R$string;->main_activity_text3:I

    invoke-static {v4}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/zjx/jyandroid/R$string;->main_activity_text4:I

    invoke-static {v6}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u3002"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/zjx/jyandroid/R$string;->main_activity_text5:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, v4, p1}, Lcom/zjx/jyandroid/base/Components/Alert;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/zjx/jyandroid/MainApp/MainActivity;->d()Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v1, Lcom/zjx/jyandroid/R$string;->ok:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v4, Lcom/zjx/jyandroid/MainApp/MainActivity$a$c;

    invoke-direct {v4, p0, v2, v0, p2}, Lcom/zjx/jyandroid/MainApp/MainActivity$a$c;-><init>(Lcom/zjx/jyandroid/MainApp/MainActivity$a;Lcom/zjx/jyandroid/base/Components/Alert;Ljava/lang/String;Z)V

    invoke-direct {p1, v1, v3, v4}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {v2, p1}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    if-nez p2, :cond_3

    new-instance p1, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget p2, Lcom/zjx/jyandroid/R$string;->cancel:I

    invoke-static {p2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/zjx/jyandroid/MainApp/MainActivity$a$d;

    invoke-direct {v0, p0, v2}, Lcom/zjx/jyandroid/MainApp/MainActivity$a$d;-><init>(Lcom/zjx/jyandroid/MainApp/MainActivity$a;Lcom/zjx/jyandroid/base/Components/Alert;)V

    invoke-direct {p1, p2, v3, v0}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {v2, p1}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    :cond_3
    invoke-virtual {v2}, Lcom/zjx/jyandroid/base/Components/Alert;->show()V

    :cond_4
    :goto_1
    return-void
.end method
