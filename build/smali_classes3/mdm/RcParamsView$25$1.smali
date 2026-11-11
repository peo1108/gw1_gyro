.class Lmdm/RcParamsView$25$1;
.super Ljava/lang/Object;
.source "RcParamsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/RcParamsView$25;->requestCompleted(Lcom/zjx/jyandroid/base/MError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmdm/RcParamsView$25;


# direct methods
.method constructor <init>(Lmdm/RcParamsView$25;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 704
    iput-object p1, p0, Lmdm/RcParamsView$25$1;->this$1:Lmdm/RcParamsView$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 706
    iget-object v0, p0, Lmdm/RcParamsView$25$1;->this$1:Lmdm/RcParamsView$25;

    iget-object v0, v0, Lmdm/RcParamsView$25;->this$0:Lmdm/RcParamsView;

    invoke-static {v0}, Lmdm/RcParamsView;->access$1500(Lmdm/RcParamsView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 707
    iget-object v0, p0, Lmdm/RcParamsView$25$1;->this$1:Lmdm/RcParamsView$25;

    iget-object v0, v0, Lmdm/RcParamsView$25;->this$0:Lmdm/RcParamsView;

    invoke-static {v0}, Lmdm/RcParamsView;->access$1500(Lmdm/RcParamsView;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 708
    iget-object v0, p0, Lmdm/RcParamsView$25$1;->this$1:Lmdm/RcParamsView$25;

    iget-object v0, v0, Lmdm/RcParamsView$25;->this$0:Lmdm/RcParamsView;

    iget-object v1, p0, Lmdm/RcParamsView$25$1;->this$1:Lmdm/RcParamsView$25;

    iget-object v1, v1, Lmdm/RcParamsView$25;->val$out:Ljava/util/Map;

    invoke-static {v1}, Lmdm/RcParams;->copyContent(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lmdm/RcParamsView;->access$1602(Lmdm/RcParamsView;Ljava/util/Map;)Ljava/util/Map;

    .line 709
    iget-object v0, p0, Lmdm/RcParamsView$25$1;->this$1:Lmdm/RcParamsView$25;

    iget-object v0, v0, Lmdm/RcParamsView$25;->this$0:Lmdm/RcParamsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmdm/RcParamsView;->access$1202(Lmdm/RcParamsView;Z)Z

    .line 710
    iget-object v0, p0, Lmdm/RcParamsView$25$1;->this$1:Lmdm/RcParamsView$25;

    iget-object v0, v0, Lmdm/RcParamsView$25;->this$0:Lmdm/RcParamsView;

    invoke-static {v0}, Lmdm/RcParamsView;->access$1700(Lmdm/RcParamsView;)V

    .line 711
    iget-object v0, p0, Lmdm/RcParamsView$25$1;->this$1:Lmdm/RcParamsView$25;

    iget-object v0, v0, Lmdm/RcParamsView$25;->this$0:Lmdm/RcParamsView;

    invoke-static {v0}, Lmdm/RcParamsView;->access$600(Lmdm/RcParamsView;)V

    .line 712
    iget-object v0, p0, Lmdm/RcParamsView$25$1;->this$1:Lmdm/RcParamsView$25;

    iget-object v0, v0, Lmdm/RcParamsView$25;->this$0:Lmdm/RcParamsView;

    invoke-static {v0}, Lmdm/RcParamsView;->access$1800(Lmdm/RcParamsView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lmdm/RcParamsView$25$1;->this$1:Lmdm/RcParamsView$25;

    iget-object v0, v0, Lmdm/RcParamsView$25;->this$0:Lmdm/RcParamsView;

    invoke-static {v0}, Lmdm/RcParamsView;->access$1800(Lmdm/RcParamsView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0110\u00e3 l\u01b0u \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmdm/RcParamsView$25$1;->this$1:Lmdm/RcParamsView$25;

    iget-object v2, v2, Lmdm/RcParamsView$25;->this$0:Lmdm/RcParamsView;

    invoke-static {v2}, Lmdm/RcParamsView;->access$1900(Lmdm/RcParamsView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    :cond_6e
    iget-object v0, p0, Lmdm/RcParamsView$25$1;->this$1:Lmdm/RcParamsView$25;

    iget-object v0, v0, Lmdm/RcParamsView$25;->this$0:Lmdm/RcParamsView;

    const-string v1, "\u0110\u00e3 l\u01b0u th\u00f4ng s\u1ed1"

    invoke-static {v0, v1}, Lmdm/RcParamsView;->access$000(Lmdm/RcParamsView;Ljava/lang/String;)V

    .line 714
    return-void
.end method
