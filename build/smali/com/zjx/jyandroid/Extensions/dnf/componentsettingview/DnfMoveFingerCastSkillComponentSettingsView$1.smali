.class Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView$1;->this$0:Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView$1;->this$0:Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;->access$000(Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView$1;->this$0:Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;->access$100(Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/dnf/keymapcomponent/UploadKeymapComponentDnfMoveFingerCastSkill;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->disableKeysChange:Z

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView$1;->this$0:Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;->access$200(Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->removeOnBindingKeyChangedListener(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->clearKeys()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView$1;->this$0:Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;->access$200(Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->addOnBindingKeyChangedListener(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView$1;->this$0:Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;->modifyBindingKeyComponent:Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;

    iget-object p1, p1, Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;->changeKeyButton:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$string;->component_settings_press_any_key:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
