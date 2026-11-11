.class Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$2;->this$0:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$2;->this$0:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iget v0, p1, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->value:F

    iget v1, p1, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->minusButtonValue:F

    sub-float/2addr v0, v1

    iget v1, p1, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->minimumValue:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    iget v1, p1, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->maximumValue:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->access$000(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;)Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$2;->this$0:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-static {p1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->access$000(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;)Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;

    move-result-object p1

    iget-object v1, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$2;->this$0:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-interface {p1, v1, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;->onValueChange(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;F)F

    move-result v0

    :cond_2
    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$2;->this$0:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput v0, p1, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->value:F

    invoke-static {p1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->access$100(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;)V

    return-void
.end method
