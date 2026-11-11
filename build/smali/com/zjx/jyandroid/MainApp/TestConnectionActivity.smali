.class public Lcom/zjx/jyandroid/MainApp/TestConnectionActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# instance fields
.field public a:Lcom/zjx/jyandroid/databinding/ActivityTestConnectionBinding;

.field public b:Landroid/widget/EditText;

.field public c:Landroid/widget/EditText;

.field public d:Landroid/widget/Button;


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

    invoke-static {p1}, Lcom/zjx/jyandroid/databinding/ActivityTestConnectionBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/zjx/jyandroid/databinding/ActivityTestConnectionBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/TestConnectionActivity;->a:Lcom/zjx/jyandroid/databinding/ActivityTestConnectionBinding;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/databinding/ActivityTestConnectionBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    sget p1, Lcom/zjx/jyandroid/R$id;->portEditText:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/TestConnectionActivity;->b:Landroid/widget/EditText;

    sget p1, Lcom/zjx/jyandroid/R$id;->pairCodeEditText:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/TestConnectionActivity;->c:Landroid/widget/EditText;

    sget p1, Lcom/zjx/jyandroid/R$id;->button:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/TestConnectionActivity;->d:Landroid/widget/Button;

    new-instance v0, Lcom/zjx/jyandroid/MainApp/TestConnectionActivity$a;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/MainApp/TestConnectionActivity$a;-><init>(Lcom/zjx/jyandroid/MainApp/TestConnectionActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
