.class Lmdm/RcParamsView$15;
.super Ljava/lang/Object;
.source "RcParamsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/RcParamsView;->scopeRow(III)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmdm/RcParamsView;

.field final synthetic val$bar:Landroid/widget/SeekBar;

.field final synthetic val$has:Z

.field final synthetic val$scope:I

.field final synthetic val$stance:I

.field final synthetic val$value:Landroid/widget/TextView;

.field final synthetic val$weapon:I


# direct methods
.method constructor <init>(Lmdm/RcParamsView;ZIIILandroid/widget/TextView;Landroid/widget/SeekBar;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 532
    iput-object p1, p0, Lmdm/RcParamsView$15;->this$0:Lmdm/RcParamsView;

    iput-boolean p2, p0, Lmdm/RcParamsView$15;->val$has:Z

    iput p3, p0, Lmdm/RcParamsView$15;->val$weapon:I

    iput p4, p0, Lmdm/RcParamsView$15;->val$scope:I

    iput p5, p0, Lmdm/RcParamsView$15;->val$stance:I

    iput-object p6, p0, Lmdm/RcParamsView$15;->val$value:Landroid/widget/TextView;

    iput-object p7, p0, Lmdm/RcParamsView$15;->val$bar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 534
    iget-boolean p1, p0, Lmdm/RcParamsView$15;->val$has:Z

    if-nez p1, :cond_5

    return-void

    .line 535
    :cond_5
    iget-object v0, p0, Lmdm/RcParamsView$15;->this$0:Lmdm/RcParamsView;

    iget v1, p0, Lmdm/RcParamsView$15;->val$weapon:I

    iget v2, p0, Lmdm/RcParamsView$15;->val$scope:I

    iget v3, p0, Lmdm/RcParamsView$15;->val$stance:I

    iget-object v4, p0, Lmdm/RcParamsView$15;->val$value:Landroid/widget/TextView;

    iget-object v5, p0, Lmdm/RcParamsView$15;->val$bar:Landroid/widget/SeekBar;

    invoke-static/range {v0 .. v5}, Lmdm/RcParamsView;->access$1500(Lmdm/RcParamsView;IIILandroid/widget/TextView;Landroid/widget/SeekBar;)V

    .line 536
    return-void
.end method
