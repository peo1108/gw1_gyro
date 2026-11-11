.class Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$2$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$2$2;->actionTriggered(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$2$2;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$2$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$2$2$1;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error while importing recoil config. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ly/c;->b(Ljava/lang/String;)V

    new-instance p2, Lcom/zjx/jyandroid/base/util/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/zjx/jyandroid/R$string;->rc_data_manage_view_text43:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/zjx/jyandroid/base/MError;->userInfo:Ljava/util/Map;

    const-string v1, "reason"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p2, p1, v0}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p2}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void

    :cond_0
    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget p2, Lcom/zjx/jyandroid/R$string;->rc_data_manage_view_text44:I

    invoke-static {p2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/zjx/jyandroid/base/util/ToastView$a;->b:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, p2, v0}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$2$2$1;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$2$2;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$2$2;->this$1:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$2;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$2;->val$keymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->getRCDataBundleId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->y(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$2$2$1;->this$2:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$2$2;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$2$2;->this$1:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$2;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$2;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;->access$000(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;)V

    return-void
.end method
