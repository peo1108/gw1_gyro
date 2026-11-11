.class Lmdm/RcParamsView$7;
.super Ljava/lang/Object;
.source "RcParamsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/RcParamsView;->weaponRow(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmdm/RcParamsView;

.field final synthetic val$weapon:I


# direct methods
.method constructor <init>(Lmdm/RcParamsView;I)V
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

    .line 372
    iput-object p1, p0, Lmdm/RcParamsView$7;->this$0:Lmdm/RcParamsView;

    iput p2, p0, Lmdm/RcParamsView$7;->val$weapon:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 374
    iget-object p1, p0, Lmdm/RcParamsView$7;->this$0:Lmdm/RcParamsView;

    iget-object v0, p0, Lmdm/RcParamsView$7;->this$0:Lmdm/RcParamsView;

    invoke-static {v0}, Lmdm/RcParamsView;->access$900(Lmdm/RcParamsView;)I

    move-result v0

    iget v1, p0, Lmdm/RcParamsView$7;->val$weapon:I

    if-ne v0, v1, :cond_e

    const/4 v0, -0x1

    goto :goto_10

    :cond_e
    iget v0, p0, Lmdm/RcParamsView$7;->val$weapon:I

    :goto_10
    invoke-static {p1, v0}, Lmdm/RcParamsView;->access$902(Lmdm/RcParamsView;I)I

    .line 375
    iget-object p1, p0, Lmdm/RcParamsView$7;->this$0:Lmdm/RcParamsView;

    invoke-static {p1}, Lmdm/RcParamsView;->access$600(Lmdm/RcParamsView;)V

    .line 376
    return-void
.end method
