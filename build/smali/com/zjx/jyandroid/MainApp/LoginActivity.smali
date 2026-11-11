.class public Lcom/zjx/jyandroid/MainApp/LoginActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# instance fields
.field public a:Lcom/zjx/jyandroid/databinding/ActivityLoginBinding;

.field public b:Landroid/widget/EditText;

.field public c:Landroid/widget/EditText;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/zjx/jyandroid/databinding/ActivityLoginBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/zjx/jyandroid/databinding/ActivityLoginBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/LoginActivity;->a:Lcom/zjx/jyandroid/databinding/ActivityLoginBinding;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/databinding/ActivityLoginBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    sget p1, Lcom/zjx/jyandroid/R$id;->countryCodeTextInput:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/LoginActivity;->b:Landroid/widget/EditText;

    sget p1, Lcom/zjx/jyandroid/R$id;->phoneNumberTextInput:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/LoginActivity;->c:Landroid/widget/EditText;

    sget p1, Lcom/zjx/jyandroid/R$id;->loginButton:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/LoginActivity;->d:Landroid/view/View;

    sget p1, Lcom/zjx/jyandroid/R$id;->finishButton:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/LoginActivity;->e:Landroid/view/View;

    sget p1, Lcom/zjx/jyandroid/R$id;->progressLoader:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/LoginActivity;->f:Landroid/widget/ProgressBar;

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/LoginActivity;->e:Landroid/view/View;

    new-instance v0, Lcom/zjx/jyandroid/MainApp/LoginActivity$b;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/MainApp/LoginActivity$b;-><init>(Lcom/zjx/jyandroid/MainApp/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/LoginActivity;->d:Landroid/view/View;

    new-instance v0, Lcom/zjx/jyandroid/MainApp/LoginActivity$c;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/MainApp/LoginActivity$c;-><init>(Lcom/zjx/jyandroid/MainApp/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/zjx/jyandroid/MainApp/LoginActivity$a;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/MainApp/LoginActivity$a;-><init>(Lcom/zjx/jyandroid/MainApp/LoginActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
