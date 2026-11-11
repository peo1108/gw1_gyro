.class public Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$e;->onCellClicked(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public final synthetic b:Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$e;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$e;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$e$a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$e;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$e$a;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$e$a;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$c$b;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$e$a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$e;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$e;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iget v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$c$b;->a:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$e$a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$e;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$e;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;->a:Lcom/zjx/jyandroid/base/CustomViews/NavigationView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->pushView(Landroid/view/View;Z)V

    return-void
.end method
