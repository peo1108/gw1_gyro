.class Lmdm/RcParamsView$27;
.super Ljava/lang/Object;
.source "RcParamsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/RcParamsView;->confirmReset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmdm/RcParamsView;

.field final synthetic val$d:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lmdm/RcParamsView;Landroid/app/Dialog;)V
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

    .line 748
    iput-object p1, p0, Lmdm/RcParamsView$27;->this$0:Lmdm/RcParamsView;

    iput-object p2, p0, Lmdm/RcParamsView$27;->val$d:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 750
    iget-object p1, p0, Lmdm/RcParamsView$27;->this$0:Lmdm/RcParamsView;

    iget-object v0, p0, Lmdm/RcParamsView$27;->this$0:Lmdm/RcParamsView;

    invoke-static {v0}, Lmdm/RcParamsView;->access$1600(Lmdm/RcParamsView;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lmdm/RcParams;->copyContent(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lmdm/RcParamsView;->access$2002(Lmdm/RcParamsView;Ljava/util/Map;)Ljava/util/Map;

    .line 751
    iget-object p1, p0, Lmdm/RcParamsView$27;->this$0:Lmdm/RcParamsView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmdm/RcParamsView;->access$1202(Lmdm/RcParamsView;Z)Z

    .line 752
    iget-object p1, p0, Lmdm/RcParamsView$27;->val$d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 753
    iget-object p1, p0, Lmdm/RcParamsView$27;->this$0:Lmdm/RcParamsView;

    invoke-static {p1}, Lmdm/RcParamsView;->access$600(Lmdm/RcParamsView;)V

    .line 754
    return-void
.end method
