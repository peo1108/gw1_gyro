.class public LK6/g;
.super Lr7/a;
.source "SourceFile"

# interfaces
.implements LL6/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LK6/g$b;
    }
.end annotation


# instance fields
.field public h7:LK6/g$b;

.field public i7:Z

.field public j7:Z

.field public k7:LM6/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Li/P;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lr7/a;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LK6/g;->i7:Z

    iput-boolean v0, p0, LK6/g;->j7:Z

    new-instance v0, LM6/g;

    invoke-direct {v0}, LM6/g;-><init>()V

    iput-object v0, p0, LK6/g;->k7:LM6/g;

    new-instance v0, LK6/g$b;

    invoke-direct {v0, p1}, LK6/g$b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LK6/g;->h7:LK6/g$b;

    invoke-virtual {p0}, LK6/g;->getMouseDisplayPosition()Landroid/graphics/Point;

    move-result-object p1

    sget-object v1, LK6/g$b;->D7:Landroid/util/Size;

    invoke-static {p1, v1}, Lg7/d;->k(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr7/f;->setFrame(Landroid/graphics/Rect;)V

    iget-object p1, p0, LK6/g;->h7:LK6/g$b;

    new-instance v0, LK6/g$a;

    invoke-direct {v0, p0}, LK6/g$a;-><init>(LK6/g;)V

    invoke-virtual {p1, v0}, Lr7/a;->setOnFrameChangedListener(LD7/c;)V

    iget-object p1, p0, LK6/g;->k7:LM6/g;

    invoke-virtual {p0, p1}, Lr7/a;->B0(Lm7/c;)V

    return-void
.end method

.method private setDisplayMouseIndicator(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lr7/a;->getComponentHolderView()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LK6/g;->h7:LK6/g$b;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lr7/a;->getComponentHolderView()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, LK6/g;->h7:LK6/g$b;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, LK6/g;->h7:LK6/g$b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lr7/k;->setSelected(Z)V

    iput-boolean v0, p0, LK6/g;->j7:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lr7/a;->getComponentHolderView()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LK6/g;->h7:LK6/g$b;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LK6/g;->h7:LK6/g$b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lr7/k;->setSelected(Z)V

    invoke-virtual {p0}, Lr7/a;->getComponentHolderView()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v1, p0, LK6/g;->h7:LK6/g$b;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-boolean v0, p0, LK6/g;->j7:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private setDisplayMouseIndicatorWhenNecessary(Z)V
    .locals 0

    iput-boolean p1, p0, LK6/g;->i7:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lr7/a;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LK6/g;->setDisplayMouseIndicator(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, LK6/g;->setDisplayMouseIndicator(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public A0(Li7/e;)V
    .locals 0

    return-void
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

    invoke-virtual {p0}, LK6/g;->getMouseDisplayMode()LN6/e$a;

    move-result-object p1

    sget-object v0, LN6/e$a;->Y:LN6/e$a;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LK6/g;->setDisplayMouseIndicatorWhenNecessary(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, LK6/g;->setDisplayMouseIndicatorWhenNecessary(Z)V

    :goto_0
    iget-object p1, p0, LK6/g;->h7:LK6/g$b;

    invoke-virtual {p0}, LK6/g;->getMouseDisplayPosition()Landroid/graphics/Point;

    move-result-object v0

    sget-object v1, LK6/g$b;->D7:Landroid/util/Size;

    invoke-static {v0, v1}, Lg7/d;->k(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr7/f;->setFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getMouseDisplayLatency()I
    .locals 1

    iget-object v0, p0, LK6/g;->k7:LM6/g;

    invoke-virtual {v0}, LM6/g;->getMouseDisplayLatency()I

    move-result v0

    return v0
.end method

.method public getMouseDisplayMode()LN6/e$a;
    .locals 1

    iget-object v0, p0, LK6/g;->k7:LM6/g;

    invoke-virtual {v0}, LM6/g;->getMouseDisplayMode()LN6/e$a;

    move-result-object v0

    return-object v0
.end method

.method public getMouseDisplayPosition()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, LK6/g;->k7:LM6/g;

    invoke-virtual {v0}, LM6/g;->getMouseDisplayPosition()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getMouseDisplayTriggerType()LN6/e$b;
    .locals 1

    iget-object v0, p0, LK6/g;->k7:LM6/g;

    invoke-virtual {v0}, LM6/g;->getMouseDisplayTriggerType()LN6/e$b;

    move-result-object v0

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, LK6/g;->j7:Z

    return v0
.end method

.method public setMouseDisplayLatency(I)V
    .locals 1

    iget-object v0, p0, LK6/g;->k7:LM6/g;

    invoke-virtual {v0, p1}, LM6/g;->setMouseDisplayLatency(I)V

    return-void
.end method

.method public setMouseDisplayMode(LN6/e$a;)V
    .locals 1

    iget-object v0, p0, LK6/g;->k7:LM6/g;

    invoke-virtual {v0, p1}, LM6/g;->setMouseDisplayMode(LN6/e$a;)V

    sget-object v0, LN6/e$a;->Y:LN6/e$a;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LK6/g;->setDisplayMouseIndicatorWhenNecessary(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, LK6/g;->setDisplayMouseIndicatorWhenNecessary(Z)V

    :goto_0
    return-void
.end method

.method public setMouseDisplayPosition(Landroid/graphics/Point;)V
    .locals 3

    iget-object v0, p0, LK6/g;->h7:LK6/g$b;

    invoke-virtual {v0}, Lr7/a;->getOnFrameChangedListener()LD7/c;

    move-result-object v0

    iget-object v1, p0, LK6/g;->h7:LK6/g$b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lr7/a;->setOnFrameChangedListener(LD7/c;)V

    iget-object v1, p0, LK6/g;->h7:LK6/g$b;

    invoke-virtual {v1}, LK6/g$b;->getDefaultSize()Landroid/util/Size;

    move-result-object v2

    invoke-static {p1, v2}, Lg7/d;->k(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lr7/f;->setFrame(Landroid/graphics/Rect;)V

    iget-object v1, p0, LK6/g;->h7:LK6/g$b;

    invoke-virtual {v1, v0}, Lr7/a;->setOnFrameChangedListener(LD7/c;)V

    iget-object v0, p0, LK6/g;->k7:LM6/g;

    invoke-virtual {v0, p1}, LM6/g;->setMouseDisplayPosition(Landroid/graphics/Point;)V

    return-void
.end method

.method public setMouseDisplayTriggerType(LN6/e$b;)V
    .locals 1

    iget-object v0, p0, LK6/g;->k7:LM6/g;

    invoke-virtual {v0, p1}, LM6/g;->setMouseDisplayTriggerType(LN6/e$b;)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    invoke-super {p0, p1}, Lr7/a;->setSelected(Z)V

    if-eqz p1, :cond_0

    iget-boolean p1, p0, LK6/g;->i7:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LK6/g;->setDisplayMouseIndicator(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, LK6/g;->setDisplayMouseIndicator(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public z0()V
    .locals 2

    invoke-virtual {p0}, Lr7/a;->C0()V

    iget-object v0, p0, LK6/g;->h7:LK6/g$b;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LK6/g;->h7:LK6/g$b;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, LK6/g;->h7:LK6/g$b;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
