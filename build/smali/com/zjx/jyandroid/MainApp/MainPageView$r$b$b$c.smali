.class public Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$c;->a:Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionTriggered(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$c;->a:Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;

    iget-object v0, v0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;->b:Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;

    iget-object v0, v0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->i:Lcom/zjx/jyandroid/MainApp/MainPageView$r;

    iget-object v0, v0, Lcom/zjx/jyandroid/MainApp/MainPageView$r;->b:Lcom/zjx/jyandroid/MainApp/MainPageView;

    iget-object v0, v0, Lcom/zjx/jyandroid/MainApp/MainPageView;->a:Landroid/app/Activity;

    const-class v1, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$c;->a:Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;

    iget-object v0, v0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;->b:Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;

    iget-object v0, v0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->i:Lcom/zjx/jyandroid/MainApp/MainPageView$r;

    iget-object v0, v0, Lcom/zjx/jyandroid/MainApp/MainPageView$r;->b:Lcom/zjx/jyandroid/MainApp/MainPageView;

    iget-object v0, v0, Lcom/zjx/jyandroid/MainApp/MainPageView;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
