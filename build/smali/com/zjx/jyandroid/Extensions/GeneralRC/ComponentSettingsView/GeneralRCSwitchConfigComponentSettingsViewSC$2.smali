.class Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC$2;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC$2;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC;->access$100(Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/KeymapComponents/UploadKeymapComponentGeneralRCSwitchConfig;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/e;->setBlockTouch(Z)V

    return-void
.end method
