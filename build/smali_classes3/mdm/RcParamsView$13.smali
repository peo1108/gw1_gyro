.class Lmdm/RcParamsView$13;
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
.method constructor <init>(Lmdm/RcParamsView;ZIIILandroid/widget/SeekBar;Landroid/widget/TextView;)V
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

    .line 509
    iput-object p1, p0, Lmdm/RcParamsView$13;->this$0:Lmdm/RcParamsView;

    iput-boolean p2, p0, Lmdm/RcParamsView$13;->val$has:Z

    iput p3, p0, Lmdm/RcParamsView$13;->val$weapon:I

    iput p4, p0, Lmdm/RcParamsView$13;->val$scope:I

    iput p5, p0, Lmdm/RcParamsView$13;->val$stance:I

    iput-object p6, p0, Lmdm/RcParamsView$13;->val$bar:Landroid/widget/SeekBar;

    iput-object p7, p0, Lmdm/RcParamsView$13;->val$value:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10

    .line 511
    iget-boolean p1, p0, Lmdm/RcParamsView$13;->val$has:Z

    if-nez p1, :cond_5

    return-void

    .line 512
    :cond_5
    iget-object p1, p0, Lmdm/RcParamsView$13;->this$0:Lmdm/RcParamsView;

    iget-object v0, p0, Lmdm/RcParamsView$13;->this$0:Lmdm/RcParamsView;

    invoke-static {v0}, Lmdm/RcParamsView;->access$1100(Lmdm/RcParamsView;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lmdm/RcParamsView$13;->val$weapon:I

    iget v2, p0, Lmdm/RcParamsView$13;->val$scope:I

    iget v3, p0, Lmdm/RcParamsView$13;->val$stance:I

    invoke-static {v0, v1, v2, v3}, Lmdm/RcParams;->valueFor(Ljava/util/Map;III)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    invoke-static {p1, v0, v1}, Lmdm/RcParamsView;->access$1400(Lmdm/RcParamsView;D)D

    move-result-wide v6

    .line 513
    iget-object p1, p0, Lmdm/RcParamsView$13;->this$0:Lmdm/RcParamsView;

    invoke-static {p1}, Lmdm/RcParamsView;->access$1100(Lmdm/RcParamsView;)Ljava/util/Map;

    move-result-object v2

    iget v3, p0, Lmdm/RcParamsView$13;->val$weapon:I

    iget v4, p0, Lmdm/RcParamsView$13;->val$scope:I

    iget v5, p0, Lmdm/RcParamsView$13;->val$stance:I

    invoke-static/range {v2 .. v7}, Lmdm/RcParams;->setValueFor(Ljava/util/Map;IIID)Z

    .line 514
    iget-object p1, p0, Lmdm/RcParamsView$13;->val$bar:Landroid/widget/SeekBar;

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 515
    iget-object p1, p0, Lmdm/RcParamsView$13;->val$value:Landroid/widget/TextView;

    invoke-static {v6, v7}, Lmdm/RcParams;->fmt(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object p1, p0, Lmdm/RcParamsView$13;->this$0:Lmdm/RcParamsView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmdm/RcParamsView;->access$1202(Lmdm/RcParamsView;Z)Z

    .line 517
    iget-object p1, p0, Lmdm/RcParamsView$13;->this$0:Lmdm/RcParamsView;

    invoke-static {p1}, Lmdm/RcParamsView;->access$1300(Lmdm/RcParamsView;)V

    .line 518
    return-void
.end method
