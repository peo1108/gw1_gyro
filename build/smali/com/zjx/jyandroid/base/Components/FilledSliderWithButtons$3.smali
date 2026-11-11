.class Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$3;->this$0:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_1

    int-to-float p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$3;->this$0:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-static {p2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->access$000(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;)Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$3;->this$0:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iget-boolean p3, p2, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->continuous:Z

    if-eqz p3, :cond_0

    invoke-static {p2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->access$000(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;)Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;

    move-result-object p2

    iget-object p3, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$3;->this$0:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-interface {p2, p3, p1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;->onValueChange(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;F)F

    move-result p1

    :cond_0
    iget-object p2, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$3;->this$0:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {p2, p1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$3;->this$0:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-static {v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->access$000(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;)Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$3;->this$0:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iget-boolean v1, v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->continuous:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->access$000(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;)Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$3;->this$0:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-interface {v0, v1, p1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;->onValueChange(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;F)F

    move-result p1

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$3;->this$0:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    :cond_1
    return-void
.end method
