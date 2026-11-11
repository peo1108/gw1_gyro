.class Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4;

.field final synthetic val$adjustCoefficientView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustCoefficientView;

.field final synthetic val$coefficientMap:Ljava/util/Map;

.field final synthetic val$currentDataNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4;Ljava/util/Map;Lcom/zjx/jyandroid/Extensions/gnyx/AdjustCoefficientView;Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4$2;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4$2;->val$coefficientMap:Ljava/util/Map;

    iput-object p3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4$2;->val$adjustCoefficientView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustCoefficientView;

    iput-object p4, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4$2;->val$currentDataNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4$2;->val$coefficientMap:Ljava/util/Map;

    const-string v0, "others"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4$2;->val$adjustCoefficientView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustCoefficientView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustCoefficientView;->crouchSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4$2;->val$coefficientMap:Ljava/util/Map;

    const-string v0, "muzzles"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4$2;->val$adjustCoefficientView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustCoefficientView;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustCoefficientView;->muzzleLevel1Slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4$2;->val$coefficientMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4$2;->val$adjustCoefficientView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustCoefficientView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustCoefficientView;->muzzleLevel4Slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4$2;->val$coefficientMap:Ljava/util/Map;

    const-string v0, "stocks"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4$2;->val$adjustCoefficientView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustCoefficientView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustCoefficientView;->stockLevel1Slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4$2;->val$currentDataNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->configUpdater:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$ConfigValueUpdater;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$ConfigValueUpdater;->updateSameSourceNodeValuesWithNewCoefficients()V

    :try_start_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4$2;->val$currentDataNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->configUpdater:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$ConfigValueUpdater;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$ConfigValueUpdater;->flush()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4$2;->this$1:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4;->val$gnyxExtension:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->refreshPanel()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->save_success:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->b:Lcom/zjx/jyandroid/base/util/ToastView$a;

    const-wide/16 v2, 0x3e8

    invoke-direct {p1, v0, v2, v3, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;JLcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error flushing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->write_file_failed:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    :goto_2
    return-void
.end method
