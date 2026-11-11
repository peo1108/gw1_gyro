.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView$c;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView$c;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView;

    iget-object v0, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->component:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;

    invoke-static {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView;->b(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$g;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->b(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$g;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->c()V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->a:Z

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView$c;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView;

    invoke-static {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView;->b(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$g;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->a(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k$g;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView$c;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView;

    invoke-static {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView;->c(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/zjx/jyandroid/R$string;->empty:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView$c;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView;

    invoke-static {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView;->d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView;)Landroid/widget/Button;

    move-result-object p1

    sget v0, Lcom/zjx/jyandroid/R$string;->component_settings_press_any_key:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
