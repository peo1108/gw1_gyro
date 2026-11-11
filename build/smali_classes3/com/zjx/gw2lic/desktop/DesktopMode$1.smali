.class Lcom/zjx/gw2lic/desktop/DesktopMode$1;
.super Ljava/lang/Object;
.source "DesktopMode.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/gw2lic/desktop/DesktopMode;->bind(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 31
    invoke-static {p2}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$002(Z)Z

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$100()Landroid/content/Context;

    move-result-object p1

    const-string v0, "=\u00a0\u0006\u00fej\u001e\u009b>\u00b6@\u00ec"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "?\u00a9U\u00c3b\u001e\u008c"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v1}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$202(Z)Z

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->access$300()V

    invoke-static {}, Lcom/zjx/gw2lic/Gw2KbdSync;->gw2InGame()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/zjx/gw2lic/Gw2KbdSync;->gw2Release()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/zjx/gw2lic/Gw2KbdSync;->gw2Claim()V

    .line 32
    :cond_1
    :goto_0
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/zjx/jyandroid/ForegroundService/MainService;->X:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->gw2CursorActive()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->gw2CursorVis(Z)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->gw2CursorVis(Z)V

    :cond_3
    :goto_1
    return-void
.end method
