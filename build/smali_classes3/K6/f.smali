.class public LK6/f;
.super Lr7/b;
.source "SourceFile"

# interfaces
.implements LL6/d;
.implements Lr7/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LK6/f$d;
    }
.end annotation


# static fields
.field public static final I7:Ljava/lang/String; = "switchlockhotkey"

.field public static final J7:Ljava/lang/String; = "switchsensitivityhotkey"

.field public static final K7:Ljava/lang/String; = "resetviewhotkey"


# instance fields
.field public D7:Lr7/g;

.field public E7:LK6/f$d;

.field public F7:LM6/f;

.field public G7:LK6/g;

.field public H7:LL6/d$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Li/P;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lr7/b;-><init>(Landroid/content/Context;)V

    new-instance v0, LM6/f;

    invoke-direct {v0}, LM6/f;-><init>()V

    iput-object v0, p0, LK6/f;->F7:LM6/f;

    new-instance v0, LK6/g;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, LK6/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LK6/f;->G7:LK6/g;

    new-instance v0, LK6/f$d;

    invoke-direct {v0, p0, p1}, LK6/f$d;-><init>(LK6/f;Landroid/content/Context;)V

    iput-object v0, p0, LK6/f;->E7:LK6/f$d;

    invoke-virtual {p0}, LK6/f;->getCustomViewRectangle()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr7/n;->setFrame(Landroid/graphics/Rect;)V

    iget-object v0, p0, LK6/f;->E7:LK6/f$d;

    new-instance v1, LK6/f$a;

    invoke-direct {v1, p0}, LK6/f$a;-><init>(LK6/f;)V

    invoke-virtual {v0, v1}, Lr7/a;->setOnFrameChangedListener(LD7/c;)V

    new-instance v0, LK6/f$b;

    invoke-direct {v0, p0, p1}, LK6/f$b;-><init>(LK6/f;Landroid/content/Context;)V

    iput-object v0, p0, LK6/f;->D7:Lr7/g;

    new-instance p1, LK6/f$c;

    invoke-direct {p1, p0}, LK6/f$c;-><init>(LK6/f;)V

    invoke-virtual {v0, p1}, Lr7/g;->setOnHotkeyChangedListener(Lq7/c$a;)V

    const p1, -0xa99512    # -2.8501E38f

    invoke-virtual {p0, p1}, Lr7/k;->setSelectedBackgroundColor(I)V

    invoke-virtual {p0, p1}, Lr7/k;->setUnselectedBackgroundColor(I)V

    sget p1, Lcom/zjx/jyandroid/e$k;->Q6:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->B(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr7/k;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {p0, p1}, Lr7/a;->B0(Lm7/c;)V

    const-string p1, "com.zjx.app:mainView"

    invoke-virtual {p0, p1}, Lr7/a;->setComponentIdentifier(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic K0(LK6/f;)LM6/f;
    .locals 0

    iget-object p0, p0, LK6/f;->F7:LM6/f;

    return-object p0
.end method

.method public static synthetic L0(LK6/f;)LL6/d$a;
    .locals 0

    iget-object p0, p0, LK6/f;->H7:LL6/d$a;

    return-object p0
.end method

.method public static M0()Ljava/lang/String;
    .locals 1

    const-string v0, "com.zjx.app:mainView"

    return-object v0
.end method

.method private N0(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, LK6/f;->D7:Lr7/g;

    invoke-virtual {p2, p1}, Lr7/g;->o(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, LK6/f;->D7:Lr7/g;

    invoke-virtual {p2, p1}, Lr7/g;->k(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LK6/f;->D7:Lr7/g;

    invoke-virtual {p1}, Lr7/g;->m()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public K()Z
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0}, LM6/f;->K()Z

    move-result v0

    return v0
.end method

.method public R()Z
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0}, LM6/f;->R()Z

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

    iget-object v0, p0, LK6/f;->G7:LK6/g;

    invoke-virtual {v0}, Lr7/a;->c()Ljava/util/Map;

    move-result-object v0

    invoke-super {p0}, Lr7/a;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public d(Ljava/util/Map;)V
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Li/P;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lr7/a;->d(Ljava/util/Map;)V

    iget-object v0, p0, LK6/f;->G7:LK6/g;

    invoke-virtual {v0, p1}, LK6/g;->d(Ljava/util/Map;)V

    invoke-virtual {p0}, LK6/f;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/graphics/Point;

    invoke-virtual {p0}, LK6/f;->getCustomViewRectangle()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p0}, LK6/f;->getCustomViewRectangle()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0}, Lr7/b;->getDefaultSize()Landroid/util/Size;

    move-result-object v0

    invoke-static {p1, v0}, Lg7/d;->k(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, LK6/f;->setFrame(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public getAutoReleaseInterval()I
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0}, LM6/f;->getAutoReleaseInterval()I

    move-result v0

    return v0
.end method

.method public getCustomViewRectangle()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0}, LM6/f;->getCustomViewRectangle()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getFreefireDeacclerationValue()F
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0}, LM6/f;->getFreefireDeacclerationValue()F

    move-result v0

    return v0
.end method

.method public getHorizontalSensitivity()I
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0}, LM6/f;->getHorizontalSensitivity()I

    move-result v0

    return v0
.end method

.method public getHorizontalSensitivityAfterSwitch()I
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0}, LM6/f;->getHorizontalSensitivityAfterSwitch()I

    move-result v0

    return v0
.end method

.method public getMaxAcceleration()I
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0}, LM6/f;->getMaxAcceleration()I

    move-result v0

    return v0
.end method

.method public getMinAcceleration()I
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0}, LM6/f;->getMinAcceleration()I

    move-result v0

    return v0
.end method

.method public getMouseAccelerationCoefficient()I
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0}, LM6/f;->getMouseAccelerationCoefficient()I

    move-result v0

    return v0
.end method

.method public getMouseAccelerationValue()I
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0}, LM6/f;->getMouseAccelerationValue()I

    move-result v0

    return v0
.end method

.method public getMouseDisplayLatency()I
    .locals 1

    iget-object v0, p0, LK6/f;->G7:LK6/g;

    invoke-virtual {v0}, LK6/g;->getMouseDisplayLatency()I

    move-result v0

    return v0
.end method

.method public getMouseDisplayMode()LN6/e$a;
    .locals 1

    iget-object v0, p0, LK6/f;->G7:LK6/g;

    invoke-virtual {v0}, LK6/g;->getMouseDisplayMode()LN6/e$a;

    move-result-object v0

    return-object v0
.end method

.method public getMouseDisplayPosition()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, LK6/f;->G7:LK6/g;

    invoke-virtual {v0}, LK6/g;->getMouseDisplayPosition()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getMouseDisplayTriggerType()LN6/e$b;
    .locals 1

    iget-object v0, p0, LK6/f;->G7:LK6/g;

    invoke-virtual {v0}, LK6/g;->getMouseDisplayTriggerType()LN6/e$b;

    move-result-object v0

    return-object v0
.end method

.method public getOnHotkeyChangeListener()LL6/d$a;
    .locals 1

    iget-object v0, p0, LK6/f;->H7:LL6/d$a;

    return-object v0
.end method

.method public getResetViewHotkey()Lh7/b;
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0}, LM6/f;->getResetViewHotkey()Lh7/b;

    move-result-object v0

    return-object v0
.end method

.method public getSettingsViewLayoutResourceId()I
    .locals 1

    sget v0, Lcom/zjx/jyandroid/e$h;->s0:I

    return v0
.end method

.method public getSwitchMouseLockHotkey()Lh7/b;
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0}, LM6/f;->getSwitchMouseLockHotkey()Lh7/b;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchSensitivityHotkey()Lh7/b;
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0}, LM6/f;->getSwitchSensitivityHotkey()Lh7/b;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchSensitivityMode()LN6/d$a;
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0}, LM6/f;->getSwitchSensitivityMode()LN6/d$a;

    move-result-object v0

    return-object v0
.end method

.method public getTouchDownDelay()I
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0}, LM6/f;->getTouchDownDelay()I

    move-result v0

    return v0
.end method

.method public getTouchUpDelay()I
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0}, LM6/f;->getTouchUpDelay()I

    move-result v0

    return v0
.end method

.method public getVerticalSensitivity()I
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0}, LM6/f;->getVerticalSensitivity()I

    move-result v0

    return v0
.end method

.method public getVerticalSensitivityAfterSwitch()I
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0}, LM6/f;->getVerticalSensitivityAfterSwitch()I

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0}, LM6/f;->j()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, LK6/f;->G7:LK6/g;

    invoke-virtual {v0}, LK6/g;->l()Z

    move-result v0

    return v0
.end method

.method public setAutoReleaseInterval(I)V
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0, p1}, LM6/f;->setAutoReleaseInterval(I)V

    return-void
.end method

.method public setComponentHolderView(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-super {p0, p1}, Lr7/a;->setComponentHolderView(Landroid/view/ViewGroup;)V

    iget-object v0, p0, LK6/f;->G7:LK6/g;

    invoke-virtual {v0, p1}, Lr7/a;->setComponentHolderView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setCustomPlayerViewRectangle(Z)V
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0, p1}, LM6/f;->setCustomPlayerViewRectangle(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lr7/a;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lr7/a;->getComponentHolderView()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LK6/f;->E7:LK6/f$d;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lr7/a;->getComponentHolderView()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, LK6/f;->E7:LK6/f$d;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, LK6/f;->E7:LK6/f$d;

    invoke-virtual {p0}, LK6/f;->getCustomViewRectangle()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr7/n;->setFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    iget-object p1, p0, LK6/f;->E7:LK6/f$d;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lr7/k;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public setCustomViewRectangle(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0, p1}, LM6/f;->setCustomViewRectangle(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setEdgeReleaseOnly(Z)V
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0, p1}, LM6/f;->setEdgeReleaseOnly(Z)V

    return-void
.end method

.method public setFrame(Landroid/graphics/Rect;)V
    .locals 5

    invoke-super {p0, p1}, Lr7/f;->setFrame(Landroid/graphics/Rect;)V

    iget-object p1, p0, LK6/f;->E7:LK6/f$d;

    invoke-virtual {p1}, Lr7/a;->getOnFrameChangedListener()LD7/c;

    move-result-object p1

    iget-object v0, p0, LK6/f;->E7:LK6/f$d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr7/a;->setOnFrameChangedListener(LD7/c;)V

    iget-object v0, p0, LK6/f;->E7:LK6/f$d;

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p0}, Lr7/a;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {p0}, Lr7/a;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/util/Size;

    invoke-virtual {p0}, LK6/f;->getCustomViewRectangle()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p0}, LK6/f;->getCustomViewRectangle()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    invoke-static {v1, v2}, Lg7/d;->k(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr7/n;->setFrame(Landroid/graphics/Rect;)V

    iget-object v0, p0, LK6/f;->E7:LK6/f$d;

    invoke-virtual {v0}, Lr7/a;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, LK6/f;->setCustomViewRectangle(Landroid/graphics/Rect;)V

    iget-object v0, p0, LK6/f;->E7:LK6/f$d;

    invoke-virtual {v0, p1}, Lr7/a;->setOnFrameChangedListener(LD7/c;)V

    return-void
.end method

.method public setFreefireDeacclerationValue(F)V
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0, p1}, LM6/f;->setFreefireDeacclerationValue(F)V

    return-void
.end method

.method public setHorizontalSensitivity(I)V
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0, p1}, LM6/f;->setHorizontalSensitivity(I)V

    return-void
.end method

.method public setHorizontalSensitivityAfterSwitch(I)V
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0, p1}, LM6/f;->setHorizontalSensitivityAfterSwitch(I)V

    return-void
.end method

.method public setMaxAcceleration(I)V
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0, p1}, LM6/f;->setMaxAcceleration(I)V

    return-void
.end method

.method public setMinAcceleration(I)V
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0, p1}, LM6/f;->setMinAcceleration(I)V

    return-void
.end method

.method public setMouseAccelerationCoefficient(I)V
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0, p1}, LM6/f;->setMouseAccelerationCoefficient(I)V

    return-void
.end method

.method public setMouseAccelerationEnable(Z)V
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0, p1}, LM6/f;->setMouseAccelerationEnable(Z)V

    return-void
.end method

.method public setMouseAccelerationValue(I)V
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0, p1}, LM6/f;->setMouseAccelerationValue(I)V

    return-void
.end method

.method public setMouseDisplayLatency(I)V
    .locals 1

    iget-object v0, p0, LK6/f;->G7:LK6/g;

    invoke-virtual {v0, p1}, LK6/g;->setMouseDisplayLatency(I)V

    return-void
.end method

.method public setMouseDisplayMode(LN6/e$a;)V
    .locals 1

    iget-object v0, p0, LK6/f;->G7:LK6/g;

    invoke-virtual {v0, p1}, LK6/g;->setMouseDisplayMode(LN6/e$a;)V

    return-void
.end method

.method public setMouseDisplayPosition(Landroid/graphics/Point;)V
    .locals 1

    iget-object v0, p0, LK6/f;->G7:LK6/g;

    invoke-virtual {v0, p1}, LK6/g;->setMouseDisplayPosition(Landroid/graphics/Point;)V

    return-void
.end method

.method public setMouseDisplayTriggerType(LN6/e$b;)V
    .locals 1

    iget-object v0, p0, LK6/f;->G7:LK6/g;

    invoke-virtual {v0, p1}, LK6/g;->setMouseDisplayTriggerType(LN6/e$b;)V

    return-void
.end method

.method public setOnHotkeyChangeListener(LL6/d$a;)V
    .locals 0

    iput-object p1, p0, LK6/f;->H7:LL6/d$a;

    return-void
.end method

.method public setResetViewHotkey(Lh7/b;)V
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0, p1}, LM6/f;->setResetViewHotkey(Lh7/b;)V

    iget-object v0, p0, LK6/f;->H7:LL6/d$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, LL6/d$a;->a(Lh7/b;)V

    :cond_0
    return-void
.end method

.method public setResetViewKeyAutoChangeEnable(Z)V
    .locals 1

    const-string v0, "resetviewhotkey"

    invoke-direct {p0, v0, p1}, LK6/f;->N0(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    invoke-virtual {p0}, Lr7/a;->isSelected()Z

    move-result v0

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Lr7/k;->setSelected(Z)V

    iget-object v0, p0, LK6/f;->G7:LK6/g;

    invoke-virtual {v0, p1}, LK6/g;->setSelected(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LK6/f;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lr7/a;->getComponentHolderView()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LK6/f;->E7:LK6/f$d;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lr7/a;->getComponentHolderView()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, LK6/f;->E7:LK6/f$d;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, LK6/f;->E7:LK6/f$d;

    invoke-virtual {p0}, LK6/f;->getCustomViewRectangle()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr7/n;->setFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    iget-object p1, p0, LK6/f;->E7:LK6/f$d;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lr7/k;->setSelected(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lr7/a;->getComponentHolderView()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LK6/f;->E7:LK6/f$d;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LK6/f;->E7:LK6/f$d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lr7/k;->setSelected(Z)V

    invoke-virtual {p0}, Lr7/a;->getComponentHolderView()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, LK6/f;->E7:LK6/f$d;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSwitchMouseLockHotkey(Lh7/b;)V
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0, p1}, LM6/f;->setSwitchMouseLockHotkey(Lh7/b;)V

    iget-object v0, p0, LK6/f;->H7:LL6/d$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, LL6/d$a;->c(Lh7/b;)V

    :cond_0
    return-void
.end method

.method public setSwitchMouseLockKeyAutoChangeEnable(Z)V
    .locals 1

    const-string v0, "switchlockhotkey"

    invoke-direct {p0, v0, p1}, LK6/f;->N0(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSwitchSensitivityHotkey(Lh7/b;)V
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0, p1}, LM6/f;->setSwitchSensitivityHotkey(Lh7/b;)V

    iget-object v0, p0, LK6/f;->H7:LL6/d$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, LL6/d$a;->b(Lh7/b;)V

    :cond_0
    return-void
.end method

.method public setSwitchSensitivityKeyAutoChangeEnable(Z)V
    .locals 1

    const-string v0, "switchsensitivityhotkey"

    invoke-direct {p0, v0, p1}, LK6/f;->N0(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSwitchSensitivityMode(LN6/d$a;)V
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0, p1}, LM6/f;->setSwitchSensitivityMode(LN6/d$a;)V

    return-void
.end method

.method public setTouchDownDelay(I)V
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0, p1}, LM6/f;->setTouchDownDelay(I)V

    return-void
.end method

.method public setTouchUpDelay(I)V
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0, p1}, LM6/f;->setTouchUpDelay(I)V

    return-void
.end method

.method public setVerticalSensitivity(I)V
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0, p1}, LM6/f;->setVerticalSensitivity(I)V

    return-void
.end method

.method public setVerticalSensitivityAfterSwitch(I)V
    .locals 1

    iget-object v0, p0, LK6/f;->F7:LM6/f;

    invoke-virtual {v0, p1}, LM6/f;->setVerticalSensitivityAfterSwitch(I)V

    return-void
.end method

.method public x0(Li7/e;)V
    .locals 1

    invoke-super {p0, p1}, Lr7/a;->x0(Li7/e;)V

    iget-object v0, p0, LK6/f;->D7:Lr7/g;

    invoke-virtual {v0, p1}, Lr7/a;->x0(Li7/e;)V

    return-void
.end method

.method public z0()V
    .locals 1

    invoke-virtual {p0}, Lr7/a;->C0()V

    iget-object v0, p0, LK6/f;->G7:LK6/g;

    invoke-virtual {v0}, LK6/g;->z0()V

    return-void
.end method
