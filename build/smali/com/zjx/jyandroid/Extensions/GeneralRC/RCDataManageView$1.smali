.class Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;

.field final synthetic val$keymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;Lcom/zjx/jyandroid/ForegroundService/KeymapManager;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$1;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$1;->val$keymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$1;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;->access$200(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$1;->val$keymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->getRCDataBundleId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$1$1;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$1$1;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$1;)V

    const-string v2, "general_rc_yq_default_android2"

    invoke-virtual {p1, v2, v0, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->g(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;)V

    return-void
.end method
