.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;


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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView$g;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;F)F
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView$g;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->component:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setRadius(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView$g;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->component:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->updateDeleteButtonViewPosition()V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView$g;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsView;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->component:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    check-cast p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->getRadius()I

    move-result p1

    int-to-float p1, p1

    return p1
.end method
