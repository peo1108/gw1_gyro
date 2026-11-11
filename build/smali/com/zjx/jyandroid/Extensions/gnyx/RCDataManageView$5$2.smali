.class Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$5;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$5;Landroid/widget/EditText;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$5$2;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$5;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$5$2;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionTriggered(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V
    .locals 3

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$5$2;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "yqgna_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    const-string v0, "\u6b64\u5206\u4eab\u7801\u4e0d\u9002\u7528\u3002\u9002\u7528\u7684\u5206\u4eab\u7801\u5e94\u4ee5yqgna_\u5f00\u5934"

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void

    :cond_0
    new-instance v0, Lcom/zjx/jyandroid/base/util/a;

    sget v1, Lcom/zjx/jyandroid/R$string;->rc_data_manage_view_text42:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/util/a;->a()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$5$2;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$5;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$5;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->privateKeymapManager:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$5$2$1;

    invoke-direct {v2, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$5$2$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$5$2;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->g(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;)V

    return-void
.end method
