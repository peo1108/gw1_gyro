.class Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field lastDataNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

.field lastValueNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlValueNode;

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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$3;->val$gnyxExtension:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$3;->val$gnyxExtension:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;->getRcPerformer()Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->adjustRCValueBaseView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueBaseView;

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCPerformer;->getCurrentDataNode()Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    move-result-object v0

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$3;->lastDataNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    if-ne v3, v0, :cond_1

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$3;->lastValueNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlValueNode;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->getFirstValueNode()Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlValueNode;

    move-result-object v4

    if-ne v3, v4, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->adjustRCValueBaseView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueBaseView;

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->configUpdater:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$ConfigValueUpdater;

    invoke-virtual {v3}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$ConfigValueUpdater;->canDeleteData()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->adjustRCValueBaseView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueBaseView;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueBaseView;->deleteButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->adjustRCValueBaseView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueBaseView;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueBaseView;->deleteButton:Landroid/widget/Button;

    new-instance v4, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$3$1;

    invoke-direct {v4, p0, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$3$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$3;Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->adjustRCValueBaseView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueBaseView;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueBaseView;->deleteButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->adjustRCValueBaseView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueBaseView;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueBaseView;->deleteButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$3;->lastDataNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->getFirstValueNode()Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlValueNode;

    move-result-object v3

    iput-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$3;->lastValueNode:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlValueNode;

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->adjustRCValueBaseView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueBaseView;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueBaseView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;->getFirstValueNode()Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlValueNode;

    move-result-object v4

    iget-wide v4, v4, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlValueNode;->value:D

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->adjustRCValueBaseView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueBaseView;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueBaseView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v4, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$3$2;

    invoke-direct {v4, p0, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$3$2;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$3;Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlDataNode;)V

    invoke-virtual {v3, v4}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$3;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->adjustRCValueBaseView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueBaseView;

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
