.class Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;

.field final synthetic val$crosshairExtension:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;

.field final synthetic val$crosshairUserSettings:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$7;->this$0:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$7;->val$crosshairUserSettings:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;

    iput-object p3, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$7;->val$crosshairExtension:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;F)F
    .locals 1

    float-to-int p1, p2

    int-to-float p1, p1

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$7;->val$crosshairUserSettings:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;

    float-to-int v0, p1

    invoke-virtual {p2, v0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->setVerticalOffset(I)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$7;->val$crosshairExtension:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;

    invoke-virtual {p2}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->refresh()V

    return p1
.end method
