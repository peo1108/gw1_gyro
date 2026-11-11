.class Lmdm/RcParamsView$22;
.super Ljava/lang/Object;
.source "RcParamsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/RcParamsView;->promptValue(Ljava/util/Map;Landroid/widget/TextView;Landroid/widget/SeekBar;)V
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

.field final synthetic val$rec:Ljava/util/Map;

.field final synthetic val$value:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lmdm/RcParamsView;Landroid/widget/EditText;[Landroid/widget/FrameLayout;Ljava/util/Map;Landroid/widget/SeekBar;Landroid/widget/TextView;)V
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

    .line 679
    iput-object p1, p0, Lmdm/RcParamsView$22;->this$0:Lmdm/RcParamsView;

    iput-object p2, p0, Lmdm/RcParamsView$22;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lmdm/RcParamsView$22;->val$layer:[Landroid/widget/FrameLayout;

    iput-object p4, p0, Lmdm/RcParamsView$22;->val$rec:Ljava/util/Map;

    iput-object p5, p0, Lmdm/RcParamsView$22;->val$bar:Landroid/widget/SeekBar;

    iput-object p6, p0, Lmdm/RcParamsView$22;->val$value:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 683
    const/4 p1, 0x0

    :try_start_1
    iget-object v0, p0, Lmdm/RcParamsView$22;->val$input:Landroid/widget/EditText;

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
    .catchall {:try_start_1 .. :try_end_1b} :catchall_4f

    .line 687
    nop

    .line 688
    iget-object v2, p0, Lmdm/RcParamsView$22;->this$0:Lmdm/RcParamsView;

    invoke-static {v2, v0, v1}, Lmdm/RcParamsView;->access$1200(Lmdm/RcParamsView;D)D

    move-result-wide v0

    .line 689
    iget-object v2, p0, Lmdm/RcParamsView$22;->val$rec:Ljava/util/Map;

    invoke-static {v2, v0, v1}, Lmdm/RcParams;->writeValue(Ljava/util/Map;D)V

    .line 690
    iget-object v2, p0, Lmdm/RcParamsView$22;->val$bar:Landroid/widget/SeekBar;

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 691
    iget-object v2, p0, Lmdm/RcParamsView$22;->val$value:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lmdm/RcParams;->fmt(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    iget-object v0, p0, Lmdm/RcParamsView$22;->this$0:Lmdm/RcParamsView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmdm/RcParamsView;->access$1002(Lmdm/RcParamsView;Z)Z

    .line 693
    iget-object v0, p0, Lmdm/RcParamsView$22;->this$0:Lmdm/RcParamsView;

    invoke-static {v0}, Lmdm/RcParamsView;->access$1100(Lmdm/RcParamsView;)V

    .line 694
    iget-object v0, p0, Lmdm/RcParamsView$22;->this$0:Lmdm/RcParamsView;

    iget-object v1, p0, Lmdm/RcParamsView$22;->val$layer:[Landroid/widget/FrameLayout;

    aget-object p1, v1, p1

    invoke-static {v0, p1}, Lmdm/RcParamsView;->access$1400(Lmdm/RcParamsView;Landroid/widget/FrameLayout;)V

    .line 695
    return-void

    .line 684
    :catchall_4f
    move-exception v0

    .line 685
    iget-object v0, p0, Lmdm/RcParamsView$22;->this$0:Lmdm/RcParamsView;

    iget-object v1, p0, Lmdm/RcParamsView$22;->val$layer:[Landroid/widget/FrameLayout;

    aget-object p1, v1, p1

    invoke-static {v0, p1}, Lmdm/RcParamsView;->access$1400(Lmdm/RcParamsView;Landroid/widget/FrameLayout;)V

    .line 686
    return-void
.end method
