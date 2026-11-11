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


# direct methods
.method constructor <init>(Lmdm/ParamsSheet$11;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 439
    iput-object p1, p0, Lmdm/ParamsSheet$11$1;->this$1:Lmdm/ParamsSheet$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 441
    iget-object v0, p0, Lmdm/ParamsSheet$11$1;->this$1:Lmdm/ParamsSheet$11;

    iget-object v0, v0, Lmdm/ParamsSheet$11;->this$0:Lmdm/ParamsSheet;

    iget-object v0, v0, Lmdm/ParamsSheet;->saveBtn:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 442
    iget-object v0, p0, Lmdm/ParamsSheet$11$1;->this$1:Lmdm/ParamsSheet$11;

    iget-object v0, v0, Lmdm/ParamsSheet$11;->this$0:Lmdm/ParamsSheet;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmdm/ParamsSheet;->dirty:Z

    .line 443
    iget-object v0, p0, Lmdm/ParamsSheet$11$1;->this$1:Lmdm/ParamsSheet$11;

    iget-object v0, v0, Lmdm/ParamsSheet$11;->this$0:Lmdm/ParamsSheet;

    iput-boolean v1, v0, Lmdm/ParamsSheet;->closeArmed:Z

    .line 444
    iget-object v0, p0, Lmdm/ParamsSheet$11$1;->this$1:Lmdm/ParamsSheet$11;

    iget-object v0, v0, Lmdm/ParamsSheet$11;->this$0:Lmdm/ParamsSheet;

    const-string v1, "\u0110\u00e3 l\u01b0u th\u00f4ng s\u1ed1"

    invoke-virtual {v0, v1}, Lmdm/ParamsSheet;->toast(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lmdm/ParamsSheet$11$1;->this$1:Lmdm/ParamsSheet$11;

    iget-object v0, v0, Lmdm/ParamsSheet$11;->this$0:Lmdm/ParamsSheet;

    iget-object v0, v0, Lmdm/ParamsSheet;->id:Ljava/lang/String;

    invoke-static {v0}, Lmdm/ParamsMenu;->reloadIfSelected(Ljava/lang/String;)V

    .line 446
    return-void
.end method
