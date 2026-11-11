.class public Lcom/zjx/jyandroid/MainApp/SettingsPageView$g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/MainApp/SettingsPageView$g;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/EditText;

.field public final synthetic b:Lcom/zjx/jyandroid/MainApp/SettingsPageView$g;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/SettingsPageView$g;Landroid/widget/EditText;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView$g$b;->b:Lcom/zjx/jyandroid/MainApp/SettingsPageView$g;

    iput-object p2, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView$g$b;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionTriggered(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView$g$b;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView$g$b;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->n()Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/MainApp/SettingsPageView$g$b$a;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/MainApp/SettingsPageView$g$b$a;-><init>(Lcom/zjx/jyandroid/MainApp/SettingsPageView$g$b;)V

    invoke-virtual {v0, p1, v1}, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;->f(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$DepositCompleteHandler;)V

    return-void
.end method
