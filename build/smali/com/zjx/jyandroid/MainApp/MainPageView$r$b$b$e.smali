.class public Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$e;
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

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$e;->a:Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionTriggered(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$e;->a:Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;->b:Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->i:Lcom/zjx/jyandroid/MainApp/MainPageView$r;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/MainPageView$r;->b:Lcom/zjx/jyandroid/MainApp/MainPageView;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/MainPageView;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/zjx/jyandroid/App;->loadManageADBActivity(Landroid/app/Activity;)V

    return-void
.end method
