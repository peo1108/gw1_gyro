.class public Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

.field public b:Lcom/zjx/jyandroid/Extensions/pubg/g$g;

.field public final synthetic c:Lcom/zjx/jyandroid/Extensions/pubg/d;

.field public final synthetic d:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;Lcom/zjx/jyandroid/Extensions/pubg/d;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c;->d:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c;->c:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c;->c:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->G()Lcom/zjx/jyandroid/Extensions/pubg/i;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c;->d:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;->c:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueBaseView;

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/i;->c()Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    move-result-object v0

    # mdm-rc: title = weapon · stance · scope, extra buttons hidden
    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c;->d:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    invoke-static {v4, v0}, Lmdm/RcPanel;->bind(Landroid/view/View;Ljava/lang/Object;)V


    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c;->a:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    if-ne v3, v0, :cond_1

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->d()Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    move-result-object v4

    if-ne v3, v4, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c;->d:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;->c:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueBaseView;

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->n:Lcom/zjx/jyandroid/Extensions/pubg/g$d;

    invoke-virtual {v3}, Lcom/zjx/jyandroid/Extensions/pubg/g$d;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c;->d:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;->c:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueBaseView;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueBaseView;->c:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c;->d:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;->c:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueBaseView;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueBaseView;->c:Landroid/widget/Button;

    new-instance v4, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c$a;

    invoke-direct {v4, p0, v0}, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c;Lcom/zjx/jyandroid/Extensions/pubg/g$f;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c;->d:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;->c:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueBaseView;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueBaseView;->c:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c;->d:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;->c:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueBaseView;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueBaseView;->c:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c;->a:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->d()Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    move-result-object v3

    iput-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c;->d:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;->c:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueBaseView;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueBaseView;->d:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->d()Lcom/zjx/jyandroid/Extensions/pubg/g$g;

    move-result-object v4

    iget-wide v4, v4, Lcom/zjx/jyandroid/Extensions/pubg/g$g;->b:D

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c;->d:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;->c:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueBaseView;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueBaseView;->d:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v4, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c$b;

    invoke-direct {v4, p0, v0}, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c$b;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c;Lcom/zjx/jyandroid/Extensions/pubg/g$f;)V

    invoke-virtual {v3, v4}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c;->d:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;->c:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueBaseView;

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
