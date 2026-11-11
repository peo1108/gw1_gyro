.class Lmdm/RcParamsView$24$1;
.super Ljava/lang/Object;
.source "RcParamsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/RcParamsView$24;->requestCompleted(Lcom/zjx/jyandroid/base/MError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmdm/RcParamsView$24;


# direct methods
.method constructor <init>(Lmdm/RcParamsView$24;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 746
    iput-object p1, p0, Lmdm/RcParamsView$24$1;->this$1:Lmdm/RcParamsView$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 748
    iget-object v0, p0, Lmdm/RcParamsView$24$1;->this$1:Lmdm/RcParamsView$24;

    iget-object v0, v0, Lmdm/RcParamsView$24;->this$0:Lmdm/RcParamsView;

    invoke-static {v0}, Lmdm/RcParamsView;->access$1800(Lmdm/RcParamsView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 749
    iget-object v0, p0, Lmdm/RcParamsView$24$1;->this$1:Lmdm/RcParamsView$24;

    iget-object v0, v0, Lmdm/RcParamsView$24;->this$0:Lmdm/RcParamsView;

    invoke-static {v0}, Lmdm/RcParamsView;->access$1800(Lmdm/RcParamsView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 750
    iget-object v0, p0, Lmdm/RcParamsView$24$1;->this$1:Lmdm/RcParamsView$24;

    iget-object v0, v0, Lmdm/RcParamsView$24;->this$0:Lmdm/RcParamsView;

    invoke-static {v0}, Lmdm/RcParamsView;->access$1800(Lmdm/RcParamsView;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 752
    :cond_23
    iget-object v0, p0, Lmdm/RcParamsView$24$1;->this$1:Lmdm/RcParamsView$24;

    iget-object v0, v0, Lmdm/RcParamsView$24;->this$0:Lmdm/RcParamsView;

    iget-object v1, p0, Lmdm/RcParamsView$24$1;->this$1:Lmdm/RcParamsView$24;

    iget-object v1, v1, Lmdm/RcParamsView$24;->val$out:Ljava/util/Map;

    invoke-static {v1}, Lmdm/RcParams;->copyContent(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lmdm/RcParamsView;->access$1902(Lmdm/RcParamsView;Ljava/util/Map;)Ljava/util/Map;

    .line 753
    iget-object v0, p0, Lmdm/RcParamsView$24$1;->this$1:Lmdm/RcParamsView$24;

    iget-object v0, v0, Lmdm/RcParamsView$24;->this$0:Lmdm/RcParamsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmdm/RcParamsView;->access$1302(Lmdm/RcParamsView;Z)Z

    .line 754
    iget-object v0, p0, Lmdm/RcParamsView$24$1;->this$1:Lmdm/RcParamsView$24;

    iget-object v0, v0, Lmdm/RcParamsView$24;->this$0:Lmdm/RcParamsView;

    invoke-static {v0}, Lmdm/RcParamsView;->access$1400(Lmdm/RcParamsView;)V

    .line 755
    iget-object v0, p0, Lmdm/RcParamsView$24$1;->this$1:Lmdm/RcParamsView$24;

    iget-object v0, v0, Lmdm/RcParamsView$24;->this$0:Lmdm/RcParamsView;

    const-string v1, "\u0110\u00e3 l\u01b0u th\u00f4ng s\u1ed1"

    invoke-static {v0, v1}, Lmdm/RcParamsView;->access$200(Lmdm/RcParamsView;Ljava/lang/String;)V

    .line 756
    return-void
.end method
