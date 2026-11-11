.class Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;

.field final synthetic val$gnyxExtension:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

.field final synthetic val$gnyxUserSettings:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$1;->val$gnyxUserSettings:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    iput-object p3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$1;->val$gnyxExtension:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;F)F
    .locals 1

    float-to-int p1, p2

    int-to-float p1, p1

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$1;->val$gnyxUserSettings:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    float-to-int v0, p1

    invoke-virtual {p2, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->setRCPanelTransparency(I)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$1;->val$gnyxExtension:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {p2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->isStarted()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$1;->val$gnyxExtension:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {p2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->isFloatingPanelHidden()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$1;->val$gnyxExtension:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {p2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->refreshFloatingPanelAlpha()V

    :cond_0
    return p1
.end method
