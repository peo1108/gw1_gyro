.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsViewSC$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsViewSC;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsViewSC;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsViewSC;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsViewSC$i;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsViewSC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;F)F
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsViewSC$i;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/JoystickComponentSettingsViewSC;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->component:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;

    float-to-int v0, p2

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->setSwitchRadiusRatio(I)V

    return p2
.end method
