.class Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$6;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$6;->val$gnyxUserSettings:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    iput-object p3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$6;->val$gnyxExtension:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$6;->val$gnyxUserSettings:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->setFixPanel(Z)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtensionSettingsView$6;->val$gnyxExtension:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->setFixPanel(Z)V

    return-void
.end method
