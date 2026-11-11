.class Lmdm/ParamsSheet$11$1;
.super Ljava/lang/Object;
.source "ParamsSheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/ParamsSheet$11;->requestCompleted(Lcom/zjx/jyandroid/base/MError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmdm/ParamsSheet$11;

.field final synthetic val$e:Lcom/zjx/jyandroid/base/MError;


# direct methods
.method constructor <init>(Lmdm/ParamsSheet$11;Lcom/zjx/jyandroid/base/MError;)V
    .registers 3
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

    .line 455
    iput-object p1, p0, Lmdm/ParamsSheet$11$1;->this$1:Lmdm/ParamsSheet$11;

    iput-object p2, p0, Lmdm/ParamsSheet$11$1;->val$e:Lcom/zjx/jyandroid/base/MError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 457
    iget-object v0, p0, Lmdm/ParamsSheet$11$1;->this$1:Lmdm/ParamsSheet$11;

    iget-object v0, v0, Lmdm/ParamsSheet$11;->this$0:Lmdm/ParamsSheet;

    iget-object v0, v0, Lmdm/ParamsSheet;->saveBtn:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 458
    iget-object v0, p0, Lmdm/ParamsSheet$11$1;->val$e:Lcom/zjx/jyandroid/base/MError;

    if-eqz v0, :cond_2b

    .line 459
    iget-object v0, p0, Lmdm/ParamsSheet$11$1;->this$1:Lmdm/ParamsSheet$11;

    iget-object v0, v0, Lmdm/ParamsSheet$11;->this$0:Lmdm/ParamsSheet;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L\u01b0u l\u1ed7i: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmdm/ParamsSheet$11$1;->val$e:Lcom/zjx/jyandroid/base/MError;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmdm/ParamsSheet;->toast(Ljava/lang/String;)V

    .line 460
    return-void

    .line 462
    :cond_2b
    iget-object v0, p0, Lmdm/ParamsSheet$11$1;->this$1:Lmdm/ParamsSheet$11;

    iget-object v0, v0, Lmdm/ParamsSheet$11;->this$0:Lmdm/ParamsSheet;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmdm/ParamsSheet;->dirty:Z

    .line 463
    iget-object v0, p0, Lmdm/ParamsSheet$11$1;->this$1:Lmdm/ParamsSheet$11;

    iget-object v0, v0, Lmdm/ParamsSheet$11;->this$0:Lmdm/ParamsSheet;

    iput-boolean v1, v0, Lmdm/ParamsSheet;->closeArmed:Z

    .line 464
    iget-object v0, p0, Lmdm/ParamsSheet$11$1;->this$1:Lmdm/ParamsSheet$11;

    iget-object v0, v0, Lmdm/ParamsSheet$11;->this$0:Lmdm/ParamsSheet;

    const-string v1, "\u0110\u00e3 l\u01b0u th\u00f4ng s\u1ed1"

    invoke-virtual {v0, v1}, Lmdm/ParamsSheet;->toast(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lmdm/ParamsSheet$11$1;->this$1:Lmdm/ParamsSheet$11;

    iget-object v0, v0, Lmdm/ParamsSheet$11;->this$0:Lmdm/ParamsSheet;

    iget-object v0, v0, Lmdm/ParamsSheet;->id:Ljava/lang/String;

    invoke-static {v0}, Lmdm/ParamsMenu;->reloadIfSelected(Ljava/lang/String;)V

    .line 466
    return-void
.end method
