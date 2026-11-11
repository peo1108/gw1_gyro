.class public LK6/h;
.super Lr7/c;
.source "SourceFile"

# interfaces
.implements LL6/e;
.implements Lr7/j;


# instance fields
.field public G7:LM6/h;

.field public H7:LK6/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Li/P;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lr7/c;-><init>(Landroid/content/Context;)V

    new-instance p1, LM6/h;

    invoke-direct {p1}, LM6/h;-><init>()V

    iput-object p1, p0, LK6/h;->G7:LM6/h;

    new-instance p1, LK6/g;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, LK6/g;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, LK6/h;->H7:LK6/g;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zjx/jyandroid/e$c;->q:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p0, p1}, Lr7/k;->setSelectedBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zjx/jyandroid/e$c;->q:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p0, p1}, Lr7/k;->setUnselectedBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zjx/jyandroid/e$c;->O:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p0, p1}, Lr7/k;->setSelectedBorderColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lg7/c$b;->j:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p0, p1}, Lr7/k;->setUnselectedBorderColor(I)V

    sget p1, Lcom/zjx/jyandroid/e$k;->a4:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->B(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr7/k;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lr7/k;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x3f59999a    # 0.85f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lr7/c;->setEnableAutoHotkeyChange(Z)V

    iget-object v0, p0, LK6/h;->H7:LK6/g;

    invoke-virtual {v0, p1}, Lr7/a;->setDisableDeleteButton(Z)V

    const-string p1, "com.zjx.app:ntp"

    invoke-virtual {p0, p1}, Lr7/a;->setComponentIdentifier(Ljava/lang/String;)V

    iget-object p1, p0, LK6/h;->G7:LM6/h;

    invoke-virtual {p0, p1}, Lr7/a;->B0(Lm7/c;)V

    return-void
.end method

.method public static M0()Ljava/lang/String;
    .locals 1

    const-string v0, "com.zjx.app:ntp"

    return-object v0
.end method


# virtual methods
.method public N0()Z
    .locals 1

    iget-object v0, p0, LK6/h;->G7:LM6/h;

    invoke-virtual {v0}, LM6/h;->B()Z

    move-result v0

    return v0
.end method

.method public O0()Z
    .locals 1

    iget-object v0, p0, LK6/h;->G7:LM6/h;

    invoke-virtual {v0}, LM6/h;->e()Z

    move-result v0

    return v0
.end method

.method public P0()Z
    .locals 1

    iget-object v0, p0, LK6/h;->G7:LM6/h;

    invoke-virtual {v0}, LM6/h;->q()Z

    move-result v0

    return v0
.end method

.method public c()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Li/P;
    .end annotation

    iget-object v0, p0, LK6/h;->H7:LK6/g;

    invoke-virtual {v0}, Lr7/a;->c()Ljava/util/Map;

    move-result-object v0

    invoke-super {p0}, Lr7/c;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public d(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lr7/c;->d(Ljava/util/Map;)V

    iget-object v0, p0, LK6/h;->H7:LK6/g;

    invoke-virtual {v0, p1}, LK6/g;->d(Ljava/util/Map;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lr7/c;->setEnableAutoHotkeyChange(Z)V

    return-void
.end method

.method public getClickDuration()F
    .locals 1

    iget-object v0, p0, LK6/h;->G7:LM6/h;

    invoke-virtual {v0}, LM6/h;->w()F

    move-result v0

    return v0
.end method

.method public getClickInterval()F
    .locals 1

    iget-object v0, p0, LK6/h;->G7:LM6/h;

    invoke-virtual {v0}, LM6/h;->C()F

    move-result v0

    return v0
.end method

.method public getMouseDisplayLatency()I
    .locals 1

    iget-object v0, p0, LK6/h;->H7:LK6/g;

    invoke-virtual {v0}, LK6/g;->getMouseDisplayLatency()I

    move-result v0

    return v0
.end method

.method public getMouseDisplayMode()LN6/e$a;
    .locals 1

    iget-object v0, p0, LK6/h;->H7:LK6/g;

    invoke-virtual {v0}, LK6/g;->getMouseDisplayMode()LN6/e$a;

    move-result-object v0

    return-object v0
.end method

.method public getMouseDisplayPosition()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, LK6/h;->H7:LK6/g;

    invoke-virtual {v0}, LK6/g;->getMouseDisplayPosition()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getMouseDisplayTriggerType()LN6/e$b;
    .locals 1

    iget-object v0, p0, LK6/h;->H7:LK6/g;

    invoke-virtual {v0}, LK6/g;->getMouseDisplayTriggerType()LN6/e$b;

    move-result-object v0

    return-object v0
.end method

.method public getReactivateJoystickLatency()F
    .locals 1

    iget-object v0, p0, LK6/h;->G7:LM6/h;

    invoke-virtual {v0}, LM6/h;->i()F

    move-result v0

    return v0
.end method

.method public getResetViewLatency()F
    .locals 1

    iget-object v0, p0, LK6/h;->G7:LM6/h;

    invoke-virtual {v0}, LM6/h;->E()F

    move-result v0

    return v0
.end method

.method public getSettingsViewLayoutResourceId()I
    .locals 1

    sget v0, Lcom/zjx/jyandroid/e$h;->C0:I

    return v0
.end method

.method public getType()LN6/f$a;
    .locals 1

    iget-object v0, p0, LK6/h;->G7:LM6/h;

    invoke-virtual {v0}, LM6/h;->getType()LN6/f$a;

    move-result-object v0

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, LK6/h;->H7:LK6/g;

    invoke-virtual {v0}, LK6/g;->l()Z

    move-result v0

    return v0
.end method

.method public setClickDuration(F)V
    .locals 1

    iget-object v0, p0, LK6/h;->G7:LM6/h;

    invoke-virtual {v0, p1}, LM6/h;->p(F)V

    return-void
.end method

.method public setClickInterval(F)V
    .locals 1

    iget-object v0, p0, LK6/h;->G7:LM6/h;

    invoke-virtual {v0, p1}, LM6/h;->u(F)V

    return-void
.end method

.method public setComponentHolderView(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-super {p0, p1}, Lr7/a;->setComponentHolderView(Landroid/view/ViewGroup;)V

    iget-object v0, p0, LK6/h;->H7:LK6/g;

    invoke-virtual {v0, p1}, Lr7/a;->setComponentHolderView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setMouseDisplayLatency(I)V
    .locals 1

    iget-object v0, p0, LK6/h;->H7:LK6/g;

    invoke-virtual {v0, p1}, LK6/g;->setMouseDisplayLatency(I)V

    return-void
.end method

.method public setMouseDisplayMode(LN6/e$a;)V
    .locals 1

    iget-object v0, p0, LK6/h;->H7:LK6/g;

    invoke-virtual {v0, p1}, LK6/g;->setMouseDisplayMode(LN6/e$a;)V

    return-void
.end method

.method public setMouseDisplayPosition(Landroid/graphics/Point;)V
    .locals 1

    iget-object v0, p0, LK6/h;->H7:LK6/g;

    invoke-virtual {v0, p1}, LK6/g;->setMouseDisplayPosition(Landroid/graphics/Point;)V

    return-void
.end method

.method public setMouseDisplayTriggerType(LN6/e$b;)V
    .locals 1

    iget-object v0, p0, LK6/h;->H7:LK6/g;

    invoke-virtual {v0, p1}, LK6/g;->setMouseDisplayTriggerType(LN6/e$b;)V

    return-void
.end method

.method public setReactivateJoystick(Z)V
    .locals 1

    iget-object v0, p0, LK6/h;->G7:LM6/h;

    invoke-virtual {v0, p1}, LM6/h;->A(Z)V

    return-void
.end method

.method public setReactivateJoystickLatency(F)V
    .locals 1

    iget-object v0, p0, LK6/h;->G7:LM6/h;

    invoke-virtual {v0, p1}, LM6/h;->n(F)V

    return-void
.end method

.method public setResetView(Z)V
    .locals 1

    iget-object v0, p0, LK6/h;->G7:LM6/h;

    invoke-virtual {v0, p1}, LM6/h;->t(Z)V

    return-void
.end method

.method public setResetViewLatency(F)V
    .locals 1

    iget-object v0, p0, LK6/h;->G7:LM6/h;

    invoke-virtual {v0, p1}, LM6/h;->x(F)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    invoke-super {p0, p1}, Lr7/k;->setSelected(Z)V

    iget-object v0, p0, LK6/h;->H7:LK6/g;

    invoke-virtual {v0, p1}, LK6/g;->setSelected(Z)V

    return-void
.end method

.method public setSwitchMouseLock(Z)V
    .locals 1

    iget-object v0, p0, LK6/h;->G7:LM6/h;

    invoke-virtual {v0, p1}, LM6/h;->g(Z)V

    iget-object p1, p0, LK6/h;->H7:LK6/g;

    sget-object v0, LN6/e$a;->X:LN6/e$a;

    invoke-virtual {p1, v0}, LK6/g;->setMouseDisplayMode(LN6/e$a;)V

    return-void
.end method

.method public setType(LN6/f$a;)V
    .locals 1

    iget-object v0, p0, LK6/h;->G7:LM6/h;

    invoke-virtual {v0, p1}, LM6/h;->z(LN6/f$a;)V

    return-void
.end method

.method public z0()V
    .locals 1

    invoke-virtual {p0}, Lr7/a;->C0()V

    iget-object v0, p0, LK6/h;->H7:LK6/g;

    invoke-virtual {v0}, LK6/g;->z0()V

    return-void
.end method
