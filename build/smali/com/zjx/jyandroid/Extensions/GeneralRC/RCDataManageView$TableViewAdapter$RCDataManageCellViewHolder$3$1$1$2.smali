.class Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3$1$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3$1$1;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$5:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3$1$1;

.field final synthetic val$shareCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3$1$1;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3$1$1$2;->this$5:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3$1$1;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3$1$1$2;->val$shareCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionTriggered(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V
    .locals 2

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    const-string v0, ""

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$TableViewAdapter$RCDataManageCellViewHolder$3$1$1$2;->val$shareCode:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method
