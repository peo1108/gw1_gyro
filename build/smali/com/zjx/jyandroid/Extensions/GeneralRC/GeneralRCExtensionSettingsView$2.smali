.class Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;

.field final synthetic val$generalRCExtension:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

.field final synthetic val$generalRcUserSettings:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$2;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$2;->val$generalRcUserSettings:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;

    iput-object p3, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$2;->val$generalRCExtension:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$2;->val$generalRcUserSettings:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;->setShowPanel(Z)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$2;->val$generalRCExtension:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$2;->val$generalRCExtension:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->setFloatingPanelHidden(Z)V

    :cond_0
    return-void
.end method
