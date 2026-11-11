.class Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;->updateViewByComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;

.field final synthetic val$c:Lcom/zjx/jyandroid/Extensions/dnf/keymapcomponent/UploadKeymapComponentDnfMoveFingerCastSkill;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;Lcom/zjx/jyandroid/Extensions/dnf/keymapcomponent/UploadKeymapComponentDnfMoveFingerCastSkill;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView$3;->this$0:Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView$3;->val$c:Lcom/zjx/jyandroid/Extensions/dnf/keymapcomponent/UploadKeymapComponentDnfMoveFingerCastSkill;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;F)F
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/dnf/componentsettingview/DnfMoveFingerCastSkillComponentSettingsView$3;->val$c:Lcom/zjx/jyandroid/Extensions/dnf/keymapcomponent/UploadKeymapComponentDnfMoveFingerCastSkill;

    float-to-int v0, p2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/Extensions/dnf/keymapcomponent/UploadKeymapComponentDnfMoveFingerCastSkill;->setSensitivity(F)V

    return p2
.end method
