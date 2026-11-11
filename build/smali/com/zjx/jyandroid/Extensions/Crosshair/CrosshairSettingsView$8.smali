.class Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$8;->this$0:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$8;->val$crosshairUserSettings:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;

    iput-object p3, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$8;->val$crosshairExtension:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    check-cast p1, Lcom/zjx/jyandroid/Extensions/Crosshair/ColorHolderComponent;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$8;->val$crosshairUserSettings:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/Crosshair/ColorHolderComponent;->getColor()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->setColor(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$8;->this$0:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$8;->val$crosshairExtension:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$8;->val$crosshairUserSettings:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;

    invoke-static {p1, v0, v1}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;->access$000(Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$8;->val$crosshairExtension:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->refresh()V

    return-void
.end method
