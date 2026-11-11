.class Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$7;
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


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;ILcom/zjx/jyandroid/base/Components/BindKeyRow;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$7;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$7;->val$generalRcUserSettings:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;

    iput p3, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$7;->val$finalI:I

    iput-object p4, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$7;->val$bindKeyRow:Lcom/zjx/jyandroid/base/Components/BindKeyRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$7;->val$generalRcUserSettings:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;->values()[Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    move-result-object v1

    iget v2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$7;->val$finalI:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;->setGestureHotkeys(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;Ljava/util/List;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView$7;->val$bindKeyRow:Lcom/zjx/jyandroid/base/Components/BindKeyRow;

    iget-object v0, v0, Lcom/zjx/jyandroid/base/Components/BindKeyRow;->keyTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtensionSettingsView;->getKeyCharString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
