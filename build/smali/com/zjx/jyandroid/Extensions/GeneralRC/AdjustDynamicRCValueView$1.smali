.class Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$1;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$1;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    iget-boolean v0, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->multiselect:Z

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->multiselect:Z

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->multiselectButton:Landroid/view/View;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$1;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->multiselectButton:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$string;->adjust_dynamic_rc_value_view_text19:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->adjust_dynamic_rc_value_view_text18:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$1;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->lineGraphView:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->setEnableMultiselection(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->multiselectButton:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$1;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->multiselectButton:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    sget v1, Lcom/zjx/jyandroid/R$string;->multiselect:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView$1;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;->lineGraphView:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/base/Components/LineGraphView;->setEnableMultiselection(Z)V

    :goto_0
    return-void
.end method
