.class Lcom/zjx/jyandroid/base/Components/Alert$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/base/Components/Alert;->refreshLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/base/Components/Alert;

.field final synthetic val$action:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/base/Components/Alert;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/Alert$2;->this$0:Lcom/zjx/jyandroid/base/Components/Alert;

    iput-object p2, p0, Lcom/zjx/jyandroid/base/Components/Alert$2;->val$action:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/Alert$2;->val$action:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;->trigger()V

    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/Alert$2;->this$0:Lcom/zjx/jyandroid/base/Components/Alert;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/Components/Alert;->destroy()V

    return-void
.end method
