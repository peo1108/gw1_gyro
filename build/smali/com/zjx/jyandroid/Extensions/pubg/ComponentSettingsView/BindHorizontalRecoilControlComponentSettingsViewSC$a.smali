.class public Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewSC$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewSC;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewSC;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewSC;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewSC$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewSC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewSC$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewSC;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewSC;->a(Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewSC;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewSC$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewSC;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewSC;->b(Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewSC;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/i;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->disableKeysChange:Z

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewSC$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewSC;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewSC;->c(Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewSC;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->removeOnBindingKeyChangedListener(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->clearKeys()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewSC$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewSC;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewSC;->c(Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewSC;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->addOnBindingKeyChangedListener(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewSC$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewSC;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/ComponentSettingsView/BindHorizontalRecoilControlComponentSettingsViewSC;->a:Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;

    iget-object p1, p1, Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;->changeKeyButton:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$string;->component_settings_press_any_key:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
