.class public LK6/j;
.super Lr7/c;
.source "SourceFile"

# interfaces
.implements LL6/g;
.implements Lr7/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LK6/j$b;
    }
.end annotation


# instance fields
.field public G7:LM6/j;

.field public H7:LK6/j$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Li/P;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lr7/c;-><init>(Landroid/content/Context;)V

    new-instance v0, LM6/j;

    invoke-direct {v0}, LM6/j;-><init>()V

    iput-object v0, p0, LK6/j;->G7:LM6/j;

    sget v0, Lcom/zjx/jyandroid/e$k;->a4:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->B(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr7/k;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zjx/jyandroid/e$c;->E:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lr7/k;->setSelectedBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zjx/jyandroid/e$c;->E:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lr7/k;->setUnselectedBackgroundColor(I)V

    new-instance v0, LK6/j$b;

    invoke-direct {v0, p1}, LK6/j$b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LK6/j;->H7:LK6/j$b;

    invoke-virtual {p0}, LK6/j;->getEndPosition()Landroid/graphics/Point;

    move-result-object p1

    iget-object v1, p0, LK6/j;->H7:LK6/j$b;

    invoke-virtual {v1}, LK6/j$b;->getDefaultSize()Landroid/util/Size;

    move-result-object v1

    invoke-static {p1, v1}, Lg7/d;->k(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr7/f;->setFrame(Landroid/graphics/Rect;)V

    iget-object p1, p0, LK6/j;->H7:LK6/j$b;

    new-instance v0, LK6/j$a;

    invoke-direct {v0, p0}, LK6/j$a;-><init>(LK6/j;)V

    invoke-virtual {p1, v0}, Lr7/a;->setOnFrameChangedListener(LD7/c;)V

    const-string p1, "com.zjx.app:stp"

    invoke-virtual {p0, p1}, Lr7/a;->setComponentIdentifier(Ljava/lang/String;)V

    iget-object p1, p0, LK6/j;->G7:LM6/j;

    invoke-virtual {p0, p1}, Lr7/a;->B0(Lm7/c;)V

    return-void
.end method

.method public static M0()Ljava/lang/String;
    .locals 1

    const-string v0, "com.zjx.app:stp"

    return-object v0
.end method


# virtual methods
.method public N0()Z
    .locals 1

    iget-object v0, p0, LK6/j;->G7:LM6/j;

    invoke-virtual {v0}, LM6/j;->F()Z

    move-result v0

    return v0
.end method

.method public O0()Z
    .locals 1

    iget-object v0, p0, LK6/j;->G7:LM6/j;

    invoke-virtual {v0}, LM6/j;->H()Z

    move-result v0

    return v0
.end method

.method public S()Z
    .locals 1

    iget-object v0, p0, LK6/j;->G7:LM6/j;

    invoke-virtual {v0}, LM6/j;->S()Z

    move-result v0

    return v0
.end method

.method public d(Ljava/util/Map;)V
    .locals 2
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

    iget-object p1, p0, LK6/j;->H7:LK6/j$b;

    invoke-virtual {p0}, LK6/j;->getEndPosition()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, LK6/j;->H7:LK6/j$b;

    invoke-virtual {v1}, LK6/j$b;->getDefaultSize()Landroid/util/Size;

    move-result-object v1

    invoke-static {v0, v1}, Lg7/d;->k(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr7/f;->setFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getEndPosition()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, LK6/j;->G7:LM6/j;

    invoke-virtual {v0}, LM6/j;->getEndPosition()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getSettingsViewLayoutResourceId()I
    .locals 1

    sget v0, Lcom/zjx/jyandroid/e$h;->d1:I

    return v0
.end method

.method public getSwipeDuration()I
    .locals 1

    iget-object v0, p0, LK6/j;->G7:LM6/j;

    invoke-virtual {v0}, LM6/j;->getSwipeDuration()I

    move-result v0

    return v0
.end method

.method public getTriggerLatency()I
    .locals 1

    iget-object v0, p0, LK6/j;->G7:LM6/j;

    invoke-virtual {v0}, LM6/j;->getTriggerLatency()I

    move-result v0

    return v0
.end method

.method public getType()LN6/h$a;
    .locals 1

    iget-object v0, p0, LK6/j;->G7:LM6/j;

    invoke-virtual {v0}, LM6/j;->getType()LN6/h$a;

    move-result-object v0

    return-object v0
.end method

.method public setEndPosition(Landroid/graphics/Point;)V
    .locals 3

    iget-object v0, p0, LK6/j;->G7:LM6/j;

    invoke-virtual {v0, p1}, LM6/j;->setEndPosition(Landroid/graphics/Point;)V

    iget-object p1, p0, LK6/j;->H7:LK6/j$b;

    invoke-virtual {p1}, Lr7/a;->getOnFrameChangedListener()LD7/c;

    move-result-object p1

    iget-object v0, p0, LK6/j;->H7:LK6/j$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr7/a;->setOnFrameChangedListener(LD7/c;)V

    iget-object v0, p0, LK6/j;->H7:LK6/j$b;

    invoke-virtual {p0}, LK6/j;->getEndPosition()Landroid/graphics/Point;

    move-result-object v1

    iget-object v2, p0, LK6/j;->H7:LK6/j$b;

    invoke-virtual {v2}, LK6/j$b;->getDefaultSize()Landroid/util/Size;

    move-result-object v2

    invoke-static {v1, v2}, Lg7/d;->k(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr7/f;->setFrame(Landroid/graphics/Rect;)V

    iget-object v0, p0, LK6/j;->H7:LK6/j$b;

    invoke-virtual {v0, p1}, Lr7/a;->setOnFrameChangedListener(LD7/c;)V

    return-void
.end method

.method public setMouseModeHorizontalSwipe(Z)V
    .locals 1

    iget-object v0, p0, LK6/j;->G7:LM6/j;

    invoke-virtual {v0, p1}, LM6/j;->setMouseModeHorizontalSwipe(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    invoke-virtual {p0}, Lr7/a;->isSelected()Z

    move-result v0

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Lr7/k;->setSelected(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lr7/a;->getComponentHolderView()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LK6/j;->H7:LK6/j$b;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lr7/a;->getComponentHolderView()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, LK6/j;->H7:LK6/j$b;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, LK6/j;->H7:LK6/j$b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lr7/k;->setSelected(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lr7/a;->getComponentHolderView()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LK6/j;->H7:LK6/j$b;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LK6/j;->H7:LK6/j$b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lr7/k;->setSelected(Z)V

    invoke-virtual {p0}, Lr7/a;->getComponentHolderView()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, LK6/j;->H7:LK6/j$b;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSwipeDuration(I)V
    .locals 1

    iget-object v0, p0, LK6/j;->G7:LM6/j;

    invoke-virtual {v0, p1}, LM6/j;->setSwipeDuration(I)V

    return-void
.end method

.method public setTapAfterSwipe(Z)V
    .locals 1

    iget-object v0, p0, LK6/j;->G7:LM6/j;

    invoke-virtual {v0, p1}, LM6/j;->I(Z)V

    return-void
.end method

.method public setTapBeforeSwipe(Z)V
    .locals 1

    iget-object v0, p0, LK6/j;->G7:LM6/j;

    invoke-virtual {v0, p1}, LM6/j;->L(Z)V

    return-void
.end method

.method public setTriggerLatency(I)V
    .locals 1

    iget-object v0, p0, LK6/j;->G7:LM6/j;

    invoke-virtual {v0, p1}, LM6/j;->setTriggerLatency(I)V

    return-void
.end method

.method public setType(LN6/h$a;)V
    .locals 1

    iget-object v0, p0, LK6/j;->G7:LM6/j;

    invoke-virtual {v0, p1}, LM6/j;->setType(LN6/h$a;)V

    return-void
.end method

.method public z0()V
    .locals 2

    invoke-virtual {p0}, Lr7/a;->C0()V

    iget-object v0, p0, LK6/j;->H7:LK6/j$b;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LK6/j;->H7:LK6/j$b;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, LK6/j;->H7:LK6/j$b;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
