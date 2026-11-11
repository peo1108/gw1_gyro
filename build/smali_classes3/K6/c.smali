.class public LK6/c;
.super Lr7/b;
.source "SourceFile"

# interfaces
.implements LL6/b;
.implements Lr7/j;


# static fields
.field public static final H7:Ljava/lang/String; = "switchradiushotkey"

.field public static final I7:Ljava/lang/String; = "northhotkey"

.field public static final J7:Ljava/lang/String; = "westhotkey"

.field public static final K7:Ljava/lang/String; = "easthotkey"

.field public static final L7:Ljava/lang/String; = "southhotkey"

.field public static final M7:Ljava/lang/String; = "smallanglehotkey"

.field public static final N7:Ljava/lang/String; = "largeanglehotkey"


# instance fields
.field public D7:LL6/b$a;

.field public E7:Landroid/widget/ImageView;

.field public F7:Lr7/g;

.field public G7:LM6/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Li/P;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lr7/b;-><init>(Landroid/content/Context;)V

    new-instance v0, LM6/c;

    invoke-direct {v0}, LM6/c;-><init>()V

    iput-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zjx/jyandroid/e$c;->f:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lr7/k;->setSelectedBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zjx/jyandroid/e$c;->M:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lr7/k;->setUnselectedBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zjx/jyandroid/e$c;->M:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lr7/k;->setUnselectedBorderColor(I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LK6/c;->E7:Landroid/widget/ImageView;

    sget v1, Lcom/zjx/jyandroid/e$e;->a0:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    const/16 v2, 0xc8

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->T:I

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->U:I

    iget-object v2, p0, LK6/c;->E7:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, LK6/c;->E7:Landroid/widget/ImageView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    new-instance v0, Landroidx/constraintlayout/widget/f;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/f;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/f;->H(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v2, p0, LK6/c;->E7:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x6

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v3}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    iget-object v2, p0, LK6/c;->E7:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x7

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v3}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    iget-object v2, p0, LK6/c;->E7:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v3}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    iget-object v2, p0, LK6/c;->E7:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v3}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    iget-object v2, p0, LK6/c;->E7:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v2, v3}, Landroidx/constraintlayout/widget/f;->V(IF)V

    iget-object v2, p0, LK6/c;->E7:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroidx/constraintlayout/widget/f;->U(IF)V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/f;->r(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lr7/k;->setDragResizable(Z)V

    invoke-virtual {p0}, Lr7/k;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x32

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lr7/f;->setMinimumSize(I)V

    new-instance v0, LK6/c$a;

    invoke-direct {v0, p0, p1}, LK6/c$a;-><init>(LK6/c;Landroid/content/Context;)V

    iput-object v0, p0, LK6/c;->F7:Lr7/g;

    new-instance p1, LK6/c$b;

    invoke-direct {p1, p0}, LK6/c$b;-><init>(LK6/c;)V

    invoke-virtual {v0, p1}, Lr7/g;->setOnHotkeyChangedListener(Lq7/c$a;)V

    iget-object p1, p0, LK6/c;->F7:Lr7/g;

    const-string v0, "switchradiushotkey"

    invoke-virtual {p1, v0, v1}, Lr7/g;->r(Ljava/lang/String;Z)V

    iget-object p1, p0, LK6/c;->F7:Lr7/g;

    const-string v0, "northhotkey"

    invoke-virtual {p1, v0, v1}, Lr7/g;->r(Ljava/lang/String;Z)V

    iget-object p1, p0, LK6/c;->F7:Lr7/g;

    const-string v0, "westhotkey"

    invoke-virtual {p1, v0, v1}, Lr7/g;->r(Ljava/lang/String;Z)V

    iget-object p1, p0, LK6/c;->F7:Lr7/g;

    const-string v0, "easthotkey"

    invoke-virtual {p1, v0, v1}, Lr7/g;->r(Ljava/lang/String;Z)V

    iget-object p1, p0, LK6/c;->F7:Lr7/g;

    const-string v0, "southhotkey"

    invoke-virtual {p1, v0, v1}, Lr7/g;->r(Ljava/lang/String;Z)V

    iget-object p1, p0, LK6/c;->F7:Lr7/g;

    const-string v0, "smallanglehotkey"

    invoke-virtual {p1, v0, v1}, Lr7/g;->r(Ljava/lang/String;Z)V

    iget-object p1, p0, LK6/c;->F7:Lr7/g;

    const-string v0, "largeanglehotkey"

    invoke-virtual {p1, v0, v1}, Lr7/g;->r(Ljava/lang/String;Z)V

    iget-object p1, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {p0, p1}, Lr7/a;->B0(Lm7/c;)V

    const-string p1, "com.zjx.app:joystick"

    invoke-virtual {p0, p1}, Lr7/a;->setComponentIdentifier(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic K0(LK6/c;)LM6/c;
    .locals 0

    iget-object p0, p0, LK6/c;->G7:LM6/c;

    return-object p0
.end method

.method public static synthetic L0(LK6/c;)LL6/b$a;
    .locals 0

    iget-object p0, p0, LK6/c;->D7:LL6/b$a;

    return-object p0
.end method

.method public static M0()Ljava/lang/String;
    .locals 1

    const-string v0, "com.zjx.app:joystick"

    return-object v0
.end method


# virtual methods
.method public final N0(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, LK6/c;->F7:Lr7/g;

    invoke-virtual {p2, p1}, Lr7/g;->o(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, LK6/c;->F7:Lr7/g;

    invoke-virtual {p2, p1}, Lr7/g;->k(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LK6/c;->F7:Lr7/g;

    invoke-virtual {p1}, Lr7/g;->m()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0}, LM6/c;->a()Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lr7/a;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LK6/c;->E7:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/zjx/jyandroid/base/util/b;->U(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getDefaultSize()Landroid/util/Size;
    .locals 3

    invoke-static {}, LA6/b;->n()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0xc8

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v2

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x104

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v2

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getDelayResponseTime()I
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0}, LM6/c;->getDelayResponseTime()I

    move-result v0

    return v0
.end method

.method public getEastKeyCode()I
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0}, LM6/c;->getEastKeyCode()I

    move-result v0

    return v0
.end method

.method public getLargeAngleKeyCode()I
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0}, LM6/c;->getLargeAngleKeyCode()I

    move-result v0

    return v0
.end method

.method public getNorthKeyCode()I
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0}, LM6/c;->getNorthKeyCode()I

    move-result v0

    return v0
.end method

.method public getOnHotkeyChangeListener()LL6/b$a;
    .locals 1

    iget-object v0, p0, LK6/c;->D7:LL6/b$a;

    return-object v0
.end method

.method public getSettingsViewLayoutResourceId()I
    .locals 1

    sget v0, Lcom/zjx/jyandroid/e$h;->W:I

    return v0
.end method

.method public getSmallAngleKeyCode()I
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0}, LM6/c;->getSmallAngleKeyCode()I

    move-result v0

    return v0
.end method

.method public getSouthKeyCode()I
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0}, LM6/c;->getSouthKeyCode()I

    move-result v0

    return v0
.end method

.method public getSwitchLargeAngleMode()LN6/b$a;
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0}, LM6/c;->getSwitchLargeAngleMode()LN6/b$a;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchRadiusKeyCode()I
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0}, LM6/c;->getSwitchRadiusKeyCode()I

    move-result v0

    return v0
.end method

.method public getSwitchRadiusMode()LN6/b$b;
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0}, LM6/c;->getSwitchRadiusMode()LN6/b$b;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchRadiusRatio()I
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0}, LM6/c;->getSwitchRadiusRatio()I

    move-result v0

    return v0
.end method

.method public getSwitchSmallAngleMode()LN6/b$a;
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0}, LM6/c;->getSwitchSmallAngleMode()LN6/b$a;

    move-result-object v0

    return-object v0
.end method

.method public getTotalMoveStep()I
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0}, LM6/c;->getTotalMoveStep()I

    move-result v0

    return v0
.end method

.method public getTriggerMode()LN6/b$c;
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0}, LM6/c;->getTriggerMode()LN6/b$c;

    move-result-object v0

    return-object v0
.end method

.method public getWestKeyCode()I
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0}, LM6/c;->getWestKeyCode()I

    move-result v0

    return v0
.end method

.method public getZeroRadiusRatio()I
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0}, LM6/c;->getZeroRadiusRatio()I

    move-result v0

    return v0
.end method

.method public setDelayResponseTime(I)V
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0, p1}, LM6/c;->setDelayResponseTime(I)V

    return-void
.end method

.method public setEastKeyAutoChangeEnable(Z)V
    .locals 1

    const-string v0, "easthotkey"

    invoke-virtual {p0, v0, p1}, LK6/c;->N0(Ljava/lang/String;Z)V

    return-void
.end method

.method public setEastKeyCode(I)V
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0, p1}, LM6/c;->setEastKeyCode(I)V

    return-void
.end method

.method public setLargeAngleKeyAutoChangeEnable(Z)V
    .locals 1

    const-string v0, "largeanglehotkey"

    invoke-virtual {p0, v0, p1}, LK6/c;->N0(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLargeAngleKeyCode(I)V
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0, p1}, LM6/c;->setLargeAngleKeyCode(I)V

    return-void
.end method

.method public setNorthKeyAutoChangeEnable(Z)V
    .locals 1

    const-string v0, "northhotkey"

    invoke-virtual {p0, v0, p1}, LK6/c;->N0(Ljava/lang/String;Z)V

    return-void
.end method

.method public setNorthKeyCode(I)V
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0, p1}, LM6/c;->setNorthKeyCode(I)V

    return-void
.end method

.method public setOnHotkeyChangeListener(LL6/b$a;)V
    .locals 0

    iput-object p1, p0, LK6/c;->D7:LL6/b$a;

    return-void
.end method

.method public setRecenterWhenPressingOppositeDirection(Z)V
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0, p1}, LM6/c;->setRecenterWhenPressingOppositeDirection(Z)V

    return-void
.end method

.method public setSmallAngleKeyAutoChangeEnable(Z)V
    .locals 1

    const-string v0, "smallanglehotkey"

    invoke-virtual {p0, v0, p1}, LK6/c;->N0(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSmallAngleKeyCode(I)V
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0, p1}, LM6/c;->setSmallAngleKeyCode(I)V

    return-void
.end method

.method public setSouthKeyAutoChangeEnable(Z)V
    .locals 1

    const-string v0, "southhotkey"

    invoke-virtual {p0, v0, p1}, LK6/c;->N0(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSouthKeyCode(I)V
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0, p1}, LM6/c;->setSouthKeyCode(I)V

    return-void
.end method

.method public setSwitchLargeAngleMode(LN6/b$a;)V
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0, p1}, LM6/c;->setSwitchLargeAngleMode(LN6/b$a;)V

    return-void
.end method

.method public setSwitchRadiusAutoChangeEnable(Z)V
    .locals 1

    const-string v0, "switchradiushotkey"

    invoke-virtual {p0, v0, p1}, LK6/c;->N0(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSwitchRadiusKeyCode(I)V
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0, p1}, LM6/c;->setSwitchRadiusKeyCode(I)V

    return-void
.end method

.method public setSwitchRadiusMode(LN6/b$b;)V
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0, p1}, LM6/c;->setSwitchRadiusMode(LN6/b$b;)V

    return-void
.end method

.method public setSwitchRadiusRatio(I)V
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0, p1}, LM6/c;->setSwitchRadiusRatio(I)V

    return-void
.end method

.method public setSwitchSmallAngleMode(LN6/b$a;)V
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0, p1}, LM6/c;->setSwitchSmallAngleMode(LN6/b$a;)V

    return-void
.end method

.method public setTotalMoveStep(I)V
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0, p1}, LM6/c;->setTotalMoveStep(I)V

    return-void
.end method

.method public setTriggerMode(LN6/b$c;)V
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0, p1}, LM6/c;->setTriggerMode(LN6/b$c;)V

    return-void
.end method

.method public setWestKeyAutoChangeEnable(Z)V
    .locals 1

    const-string v0, "westhotkey"

    invoke-virtual {p0, v0, p1}, LK6/c;->N0(Ljava/lang/String;Z)V

    return-void
.end method

.method public setWestKeyCode(I)V
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0, p1}, LM6/c;->setWestKeyCode(I)V

    return-void
.end method

.method public setZeroRadiusRatio(I)V
    .locals 1

    iget-object v0, p0, LK6/c;->G7:LM6/c;

    invoke-virtual {v0, p1}, LM6/c;->setZeroRadiusRatio(I)V

    return-void
.end method

.method public x0(Li7/e;)V
    .locals 1

    invoke-super {p0, p1}, Lr7/a;->x0(Li7/e;)V

    iget-object v0, p0, LK6/c;->F7:Lr7/g;

    invoke-virtual {v0, p1}, Lr7/a;->x0(Li7/e;)V

    return-void
.end method
