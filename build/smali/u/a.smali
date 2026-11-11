.class public Lu/a;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field public a:Lcom/zjx/jyandroid/MainApp/MainPageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget p2, Lcom/zjx/jyandroid/R$layout;->main_page_view:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/MainApp/MainPageView;

    iput-object p1, p0, Lu/a;->a:Lcom/zjx/jyandroid/MainApp/MainPageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iput-object p2, p1, Lcom/zjx/jyandroid/MainApp/MainPageView;->a:Landroid/app/Activity;

    iget-object p1, p0, Lu/a;->a:Lcom/zjx/jyandroid/MainApp/MainPageView;

    return-object p1
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lu/a;->a:Lcom/zjx/jyandroid/MainApp/MainPageView;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/MainApp/MainPageView;->refreshList()V

    iget-object v0, p0, Lu/a;->a:Lcom/zjx/jyandroid/MainApp/MainPageView;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/MainApp/MainPageView;->l()V

    iget-object v0, p0, Lu/a;->a:Lcom/zjx/jyandroid/MainApp/MainPageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/MainApp/MainPageView;->j(Z)V

    return-void
.end method
