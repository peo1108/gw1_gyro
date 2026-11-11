.class Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6$1;->eventOccurred(Ljava/util/LinkedList;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6$1;

.field final synthetic val$l:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6$1;Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6$1$1;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6$1;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6$1$1;->val$l:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6$1$1;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6$1;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6$1;->val$alert:Lcom/zjx/jyandroid/base/Components/Alert;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6$1$1;->val$l:Ljava/util/List;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->getKeyCharString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/Alert;->setContentText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6$1$1;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6$1;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6$1;->this$1:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6;->val$bindKeyRow:Lcom/zjx/jyandroid/base/Components/BindKeyRow;

    iget-object v0, v0, Lcom/zjx/jyandroid/base/Components/BindKeyRow;->keyTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$6$1$1;->val$l:Ljava/util/List;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->getKeyCharString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
