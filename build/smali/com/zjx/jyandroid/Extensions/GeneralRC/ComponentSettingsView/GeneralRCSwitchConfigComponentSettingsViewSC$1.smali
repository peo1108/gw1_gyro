.class Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC$1;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC$1;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC;

    sget v0, Lcom/zjx/jyandroid/R$string;->help:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/zjx/jyandroid/R$string;->adjust_rc_value_settings__help1:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/R$string;->ok:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC;->access$000(Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentSettingsView/GeneralRCSwitchConfigComponentSettingsViewSC;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
