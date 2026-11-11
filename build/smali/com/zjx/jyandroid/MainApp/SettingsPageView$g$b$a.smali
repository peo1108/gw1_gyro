.class public Lcom/zjx/jyandroid/MainApp/SettingsPageView$g$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$DepositCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/MainApp/SettingsPageView$g$b;->actionTriggered(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/MainApp/SettingsPageView$g$b;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/SettingsPageView$g$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView$g$b$a;->a:Lcom/zjx/jyandroid/MainApp/SettingsPageView$g$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public depositCompleted(Lcom/zjx/jyandroid/base/MError;J)V
    .locals 3

    const-string p2, "\u786e\u5b9a"

    const-string p3, "\u63d0\u793a"

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView$g$b$a;->a:Lcom/zjx/jyandroid/MainApp/SettingsPageView$g$b;

    iget-object v0, v0, Lcom/zjx/jyandroid/MainApp/SettingsPageView$g$b;->b:Lcom/zjx/jyandroid/MainApp/SettingsPageView$g;

    iget-object v0, v0, Lcom/zjx/jyandroid/MainApp/SettingsPageView$g;->a:Lcom/zjx/jyandroid/MainApp/SettingsPageView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5145\u503c\u5931\u8d25\u3002\u539f\u56e0\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/zjx/jyandroid/base/MError;->userInfo:Ljava/util/Map;

    const-string v2, "reason"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p3, p1, p2}, Lcom/zjx/jyandroid/base/util/b;->W(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView$g$b$a;->a:Lcom/zjx/jyandroid/MainApp/SettingsPageView$g$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/SettingsPageView$g$b;->b:Lcom/zjx/jyandroid/MainApp/SettingsPageView$g;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/SettingsPageView$g;->a:Lcom/zjx/jyandroid/MainApp/SettingsPageView;

    const-string v0, "\u5145\u503c\u6210\u529f"

    invoke-static {p1, p3, v0, p2}, Lcom/zjx/jyandroid/base/util/b;->W(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
