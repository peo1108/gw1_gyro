.class Lmdm/RcParamsView$12;
.super Ljava/lang/Object;
.source "RcParamsView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

.field final synthetic val$has:Z

.field final synthetic val$scope:I

.field final synthetic val$stance:I

.field final synthetic val$value:Landroid/widget/TextView;

.field final synthetic val$weapon:I


# direct methods
.method constructor <init>(Lmdm/RcParamsView;ZIIILandroid/widget/TextView;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 497
    iput-object p1, p0, Lmdm/RcParamsView$12;->this$0:Lmdm/RcParamsView;

    iput-boolean p2, p0, Lmdm/RcParamsView$12;->val$has:Z

    iput p3, p0, Lmdm/RcParamsView$12;->val$weapon:I

    iput p4, p0, Lmdm/RcParamsView$12;->val$scope:I

    iput p5, p0, Lmdm/RcParamsView$12;->val$stance:I

    iput-object p6, p0, Lmdm/RcParamsView$12;->val$value:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 10

    .line 499
    iget-boolean p1, p0, Lmdm/RcParamsView$12;->val$has:Z

    if-eqz p1, :cond_2c

    if-nez p3, :cond_7

    goto :goto_2c

    .line 500
    :cond_7
    iget-object p1, p0, Lmdm/RcParamsView$12;->this$0:Lmdm/RcParamsView;

    invoke-static {p1}, Lmdm/RcParamsView;->access$1100(Lmdm/RcParamsView;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lmdm/RcParamsView$12;->val$weapon:I

    iget v2, p0, Lmdm/RcParamsView$12;->val$scope:I

    iget v3, p0, Lmdm/RcParamsView$12;->val$stance:I

    int-to-double v4, p2

    invoke-static/range {v0 .. v5}, Lmdm/RcParams;->setValueFor(Ljava/util/Map;IIID)Z

    .line 501
    iget-object p1, p0, Lmdm/RcParamsView$12;->val$value:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lmdm/RcParams;->fmt(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object p1, p0, Lmdm/RcParamsView$12;->this$0:Lmdm/RcParamsView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lmdm/RcParamsView;->access$1202(Lmdm/RcParamsView;Z)Z

    .line 503
    iget-object p1, p0, Lmdm/RcParamsView$12;->this$0:Lmdm/RcParamsView;

    invoke-static {p1}, Lmdm/RcParamsView;->access$1300(Lmdm/RcParamsView;)V

    .line 504
    return-void

    .line 499
    :cond_2c
    :goto_2c
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .line 505
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .line 506
    return-void
.end method
