.class Lmdm/RcParamsView$18;
.super Ljava/lang/Object;
.source "RcParamsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/RcParamsView;->promptValue(IIILandroid/widget/TextView;Landroid/widget/SeekBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmdm/RcParamsView;

.field final synthetic val$bar:Landroid/widget/SeekBar;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$layer:[Landroid/widget/FrameLayout;

.field final synthetic val$scope:I

.field final synthetic val$stance:I

.field final synthetic val$value:Landroid/widget/TextView;

.field final synthetic val$weapon:I


# direct methods
.method constructor <init>(Lmdm/RcParamsView;Landroid/widget/EditText;[Landroid/widget/FrameLayout;IIILandroid/widget/SeekBar;Landroid/widget/TextView;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
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
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 650
    iput-object p1, p0, Lmdm/RcParamsView$18;->this$0:Lmdm/RcParamsView;

    iput-object p2, p0, Lmdm/RcParamsView$18;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lmdm/RcParamsView$18;->val$layer:[Landroid/widget/FrameLayout;

    iput p4, p0, Lmdm/RcParamsView$18;->val$weapon:I

    iput p5, p0, Lmdm/RcParamsView$18;->val$scope:I

    iput p6, p0, Lmdm/RcParamsView$18;->val$stance:I

    iput-object p7, p0, Lmdm/RcParamsView$18;->val$bar:Landroid/widget/SeekBar;

    iput-object p8, p0, Lmdm/RcParamsView$18;->val$value:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11

    .line 654
    const/4 p1, 0x0

    :try_start_1
    iget-object v0, p0, Lmdm/RcParamsView$18;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_59

    .line 658
    nop

    .line 659
    iget-object v2, p0, Lmdm/RcParamsView$18;->this$0:Lmdm/RcParamsView;

    invoke-static {v2, v0, v1}, Lmdm/RcParamsView;->access$1400(Lmdm/RcParamsView;D)D

    move-result-wide v7

    .line 660
    iget-object v0, p0, Lmdm/RcParamsView$18;->this$0:Lmdm/RcParamsView;

    invoke-static {v0}, Lmdm/RcParamsView;->access$1100(Lmdm/RcParamsView;)Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Lmdm/RcParamsView$18;->val$weapon:I

    iget v5, p0, Lmdm/RcParamsView$18;->val$scope:I

    iget v6, p0, Lmdm/RcParamsView$18;->val$stance:I

    invoke-static/range {v3 .. v8}, Lmdm/RcParams;->setValueFor(Ljava/util/Map;IIID)Z

    .line 661
    iget-object v0, p0, Lmdm/RcParamsView$18;->val$bar:Landroid/widget/SeekBar;

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 662
    iget-object v0, p0, Lmdm/RcParamsView$18;->val$value:Landroid/widget/TextView;

    invoke-static {v7, v8}, Lmdm/RcParams;->fmt(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    iget-object v0, p0, Lmdm/RcParamsView$18;->this$0:Lmdm/RcParamsView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmdm/RcParamsView;->access$1202(Lmdm/RcParamsView;Z)Z

    .line 664
    iget-object v0, p0, Lmdm/RcParamsView$18;->this$0:Lmdm/RcParamsView;

    invoke-static {v0}, Lmdm/RcParamsView;->access$1300(Lmdm/RcParamsView;)V

    .line 665
    iget-object v0, p0, Lmdm/RcParamsView$18;->this$0:Lmdm/RcParamsView;

    iget-object v1, p0, Lmdm/RcParamsView$18;->val$layer:[Landroid/widget/FrameLayout;

    aget-object p1, v1, p1

    invoke-static {v0, p1}, Lmdm/RcParamsView;->access$1600(Lmdm/RcParamsView;Landroid/widget/FrameLayout;)V

    .line 666
    return-void

    .line 655
    :catchall_59
    move-exception v0

    .line 656
    iget-object v0, p0, Lmdm/RcParamsView$18;->this$0:Lmdm/RcParamsView;

    iget-object v1, p0, Lmdm/RcParamsView$18;->val$layer:[Landroid/widget/FrameLayout;

    aget-object p1, v1, p1

    invoke-static {v0, p1}, Lmdm/RcParamsView;->access$1600(Lmdm/RcParamsView;Landroid/widget/FrameLayout;)V

    .line 657
    return-void
.end method
