.class Lmdm/RcParamsView$10;
.super Ljava/lang/Object;
.source "RcParamsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/RcParamsView;->comboStrip(II)Landroid/view/View;
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

    .line 413
    iput-object p1, p0, Lmdm/RcParamsView$10;->this$0:Lmdm/RcParamsView;

    iput p2, p0, Lmdm/RcParamsView$10;->val$weapon:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 414
    iget-object v0, p0, Lmdm/RcParamsView$10;->this$0:Lmdm/RcParamsView;

    iget v1, p0, Lmdm/RcParamsView$10;->val$weapon:I

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lmdm/RcParamsView;->access$1000(Lmdm/RcParamsView;II)V

    return-void
.end method
