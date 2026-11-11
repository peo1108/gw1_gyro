.class public Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/d;

.field public final synthetic b:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;


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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d;->b:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->G()Lcom/zjx/jyandroid/Extensions/pubg/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/i;->c()Lcom/zjx/jyandroid/Extensions/pubg/g$f;

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
    iget-object v0, p1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->n:Lcom/zjx/jyandroid/Extensions/pubg/g$d;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/g$d;->d()Ljava/util/Map;

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
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d;->b:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    sget v2, Lcom/zjx/jyandroid/R$layout;->pubg_adjust_coefficient_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d;->b:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;->f:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d;->b:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;->a:Lcom/zjx/jyandroid/base/CustomViews/NavigationView;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->pushView(Landroid/view/View;Z)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->a:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const-string v3, "crouch"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->a:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const v3, 0x3c23d70a    # 0.01f

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setAddButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->a:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setMinusButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->b:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const-string v4, "prone"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->b:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setAddButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->b:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setMinusButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->c:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const-string v4, "compensatorMuzzle"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->c:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setAddButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->c:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setMinusButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->d:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const-string v4, "flashHidderMuzzle"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->d:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setAddButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->d:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setMinusButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->l:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const-string v4, "generalStock"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->l:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setAddButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->l:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setMinusButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->h:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const-string v4, "halfGrip"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->h:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setAddButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->h:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setMinusButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->g:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const-string v4, "horizontalGrip"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->g:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setAddButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->g:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setMinusButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->k:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const-string v4, "laserGrip"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->k:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setAddButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->k:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setMinusButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->i:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const-string v4, "lightGrip"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->i:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setAddButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->i:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setMinusButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->e:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const-string v4, "suppressorMuzzle"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->e:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setAddButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->e:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setMinusButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->j:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const-string v4, "thumbGrip"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->j:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setAddButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->j:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setMinusButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->f:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const-string v4, "verticalGrip"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->f:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setAddButtonValue(F)V

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->f:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setMinusButtonValue(F)V

    new-instance v2, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$a;

    invoke-direct {v2, p0}, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d;)V

    iput-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->m:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d;->b:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView;->f:Landroid/view/View;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d$b;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$d;Ljava/util/Map;Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;Lcom/zjx/jyandroid/Extensions/pubg/g$f;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
