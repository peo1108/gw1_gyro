.class Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$7$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$7;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$7;Landroid/widget/EditText;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$7$2;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$7;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$7$2;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionTriggered(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V
    .locals 2

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->rc_data_manage_view_text48:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$7$2;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$7;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$7;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$7$2;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$7$2$1;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$7$2$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$7$2;)V

    invoke-static {p1, v0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;->access$400(Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView;Ljava/lang/String;Lcom/zjx/jyandroid/Extensions/gnyx/RCDataManageView$FixConfigCompletionHandler;)V

    return-void
.end method
