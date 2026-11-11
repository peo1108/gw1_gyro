.class Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;


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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$3;->this$0:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$3;->val$crosshairUserSettings:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;

    iput-object p3, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$3;->val$crosshairExtension:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositionChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$3;->val$crosshairUserSettings:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$CrosshairType;->values()[Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$CrosshairType;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairUserSettings;->setType(Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension$CrosshairType;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairSettingsView$3;->val$crosshairExtension:Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairExtension;->refresh()V

    return-void
.end method
