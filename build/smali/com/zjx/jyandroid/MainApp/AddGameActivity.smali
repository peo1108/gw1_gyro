.class public Lcom/zjx/jyandroid/MainApp/AddGameActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/MainApp/AddGameActivity$c;,
        Lcom/zjx/jyandroid/MainApp/AddGameActivity$d;
    }
.end annotation


# instance fields
.field public a:Lcom/zjx/jyandroid/databinding/ActivityAddGameBinding;

.field public b:Lcom/evrencoskun/tableview/TableView;

.field public c:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/zjx/jyandroid/MainApp/AddGameActivity;)Lcom/evrencoskun/tableview/TableView;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity;->b:Lcom/evrencoskun/tableview/TableView;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/zjx/jyandroid/databinding/ActivityAddGameBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/zjx/jyandroid/databinding/ActivityAddGameBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity;->a:Lcom/zjx/jyandroid/databinding/ActivityAddGameBinding;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/databinding/ActivityAddGameBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    sget p1, Lcom/zjx/jyandroid/R$id;->addGameTableView:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/evrencoskun/tableview/TableView;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity;->b:Lcom/evrencoskun/tableview/TableView;

    sget p1, Lcom/zjx/jyandroid/R$id;->finishButton:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity;->c:Landroid/view/View;

    new-instance v0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$a;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/MainApp/AddGameActivity$a;-><init>(Lcom/zjx/jyandroid/MainApp/AddGameActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/zjx/jyandroid/R$string;->preferences_main_application:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/zjx/jyandroid/R$string;->settings_key_add_app_list:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity;->c:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/MainApp/AddGameActivity$b;

    invoke-direct {v1, p0, p1}, Lcom/zjx/jyandroid/MainApp/AddGameActivity$b;-><init>(Lcom/zjx/jyandroid/MainApp/AddGameActivity;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
