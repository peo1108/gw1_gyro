.class Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$18;
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


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$18;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;F)F
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$18;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->access$202(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;Z)Z

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$18;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->access$302(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;Z)Z

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$18;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;

    float-to-int p2, p2

    invoke-static {p1, p2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;->access$402(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;I)I

    int-to-float p1, p2

    return p1
.end method
