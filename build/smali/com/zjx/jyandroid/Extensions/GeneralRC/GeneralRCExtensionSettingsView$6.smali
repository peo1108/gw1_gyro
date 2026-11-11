.class Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;

.field final synthetic val$bindKeyRow:Lcom/zjx/jyandroid/base/Components/BindKeyRow;

.field final synthetic val$finalI:I

.field final synthetic val$generalRcUserSettings:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;

.field final synthetic val$keyCodeText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;Ljava/lang/String;Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;ILcom/zjx/jyandroid/base/Components/BindKeyRow;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6;->val$keyCodeText:Ljava/lang/String;

    iput-object p3, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6;->val$generalRcUserSettings:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;

    iput p4, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6;->val$finalI:I

    iput-object p5, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6;->val$bindKeyRow:Lcom/zjx/jyandroid/base/Components/BindKeyRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    new-instance p1, Lcom/zjx/jyandroid/base/Components/Alert;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;

    sget v1, Lcom/zjx/jyandroid/R$string;->general_rc_extension_settings_view_text4:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6;->val$keyCodeText:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Lcom/zjx/jyandroid/base/Components/Alert;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6$1;

    invoke-direct {v0, p0, p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6$1;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6;Lcom/zjx/jyandroid/base/Components/Alert;)V

    new-instance v1, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v2, Lcom/zjx/jyandroid/R$string;->ok:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v4, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6$2;

    invoke-direct {v4, p0, v0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6$2;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6;Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {p1, v1}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/Components/Alert;->show()V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->registerEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    return-void
.end method
