.class public Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/zjx/jyandroid/ForegroundService/MainService;

.field public final synthetic c:Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/MainService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$g;->c:Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;

    iput-object p2, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$g;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$g;->b:Lcom/zjx/jyandroid/ForegroundService/MainService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$g;->c:Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;

    iget-object v0, v0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;->b:Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;

    iget-object v0, v0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$g;->c:Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;

    iget-object v0, v0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b;->a:Lcom/zjx/jyandroid/MainApp/MainPageView$q;

    iget-object v0, v0, Lcom/zjx/jyandroid/MainApp/MainPageView$q;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$r$b$b$g;->b:Lcom/zjx/jyandroid/ForegroundService/MainService;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->startFunctioning(Ljava/lang/String;)V

    return-void
.end method
