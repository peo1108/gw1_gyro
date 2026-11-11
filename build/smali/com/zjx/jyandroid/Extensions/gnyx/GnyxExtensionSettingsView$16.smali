.class Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$16;
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

.field final synthetic val$gnyxUserSettings:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$16;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$16;->val$gnyxUserSettings:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;F)F
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$16;->val$gnyxUserSettings:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->setScopeRecognitionThreshold(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$16;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->access$202(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;Z)Z

    int-to-float p1, p2

    return p1
.end method
