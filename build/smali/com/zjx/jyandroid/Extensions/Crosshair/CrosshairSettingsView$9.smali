.class Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->refreshColorHolderViewState(Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$9;->this$0:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$9;->val$crosshairUserSettings:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;

    iput-object p3, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$9;->val$crosshairExtension:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;F)F
    .locals 6

    float-to-int p2, p2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$9;->val$crosshairUserSettings:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$9;->this$0:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;

    iget-object v5, v4, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->redSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    if-ne p1, v5, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    iget-object v5, v4, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->greenSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    if-ne p1, v5, :cond_1

    move v2, p2

    goto :goto_0

    :cond_1
    iget-object v5, v4, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->blueSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    if-ne p1, v5, :cond_2

    move v3, p2

    goto :goto_0

    :cond_2
    iget-object v4, v4, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->transparencySlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    if-ne p1, v4, :cond_3

    move v0, p2

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$9;->val$crosshairUserSettings:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->setColor(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$9;->this$0:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$9;->val$crosshairExtension:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$9;->val$crosshairUserSettings:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;

    invoke-static {p1, v0, v1}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->access$000(Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$9;->val$crosshairExtension:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->refresh()V

    int-to-float p1, p2

    return p1
.end method
