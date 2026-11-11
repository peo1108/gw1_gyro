.class Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$4;
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

.field final synthetic val$generalRcUserSettings:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$4;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$4;->val$generalRcUserSettings:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$4;->val$generalRcUserSettings:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;->setEnableRecoilControl(Z)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$4;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->access$002(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;Z)Z

    return-void
.end method
