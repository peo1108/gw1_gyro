.class Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;

.field final synthetic val$gnyxExtension:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)V
    .locals 0
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4;->val$gnyxExtension:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4;->val$gnyxExtension:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->getRcPerformer()Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->getCurrentDataNode()Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Current data node is null."

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->adjust_rc_value_floating_panel_text2:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->configUpdater:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$ConfigValueUpdater;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$ConfigValueUpdater;->getCoefficientMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->adjust_rc_value_floating_panel_text3:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->d:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    sget v2, Lcom/zjx/jyandroid/R$layout;->gnyx_adjust_coefficient_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustCoefficientView;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->saveButton:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->navigationView:Lcom/zjx/jyandroid/base/CustomViews/NavigationView;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->pushView(Landroid/view/View;Z)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustCoefficientView;->crouchSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const-string v4, "others"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustCoefficientView;->crouchSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const v4, 0x3c23d70a    # 0.01f

    invoke-virtual {v2, v4}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setAddButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustCoefficientView;->crouchSlider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v4}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setMinusButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustCoefficientView;->muzzleLevel1Slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const-string v5, "muzzles"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-virtual {v2, v6}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustCoefficientView;->muzzleLevel1Slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v4}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setAddButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustCoefficientView;->muzzleLevel1Slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v4}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setMinusButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustCoefficientView;->muzzleLevel4Slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-virtual {v2, v5}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustCoefficientView;->muzzleLevel4Slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v4}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setAddButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustCoefficientView;->muzzleLevel4Slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v4}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setMinusButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustCoefficientView;->stockLevel1Slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const-string v5, "stocks"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustCoefficientView;->stockLevel1Slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v4}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setAddButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustCoefficientView;->stockLevel1Slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v4}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setMinusButtonValue(F)V

    new-instance v2, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4$1;

    invoke-direct {v2, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4;)V

    iput-object v2, v1, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustCoefficientView;->onDetachedFromWindowRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->saveButton:Landroid/view/View;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4$2;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4$2;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4;Ljava/util/Map;Lcom/zjx/jyandroid/Extensions/gnyx/AdjustCoefficientView;Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
