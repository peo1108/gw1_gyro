.class public LK6/d;
.super Lr7/c;
.source "SourceFile"

# interfaces
.implements Lr7/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LK6/d$g;
    }
.end annotation


# instance fields
.field public G7:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LK6/d$g;",
            ">;"
        }
    .end annotation
.end field

.field public H7:LM6/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Li/P;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lr7/c;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, LK6/d;->G7:Ljava/util/List;

    new-instance p1, LM6/d;

    invoke-direct {p1}, LM6/d;-><init>()V

    iput-object p1, p0, LK6/d;->H7:LM6/d;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lr7/c;->setEnableUpdateTextWithHotkey(Z)V

    const p1, -0x50754b08

    invoke-virtual {p0, p1}, Lr7/k;->setSelectedBackgroundColor(I)V

    invoke-virtual {p0, p1}, Lr7/k;->setUnselectedBackgroundColor(I)V

    const/16 p1, 0x19

    invoke-static {p1}, Lg7/d;->b(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lr7/f;->setMinimumSize(I)V

    iget-object p1, p0, LK6/d;->H7:LM6/d;

    invoke-virtual {p0, p1}, Lr7/a;->B0(Lm7/c;)V

    const-string p1, "com.zjx.app:longpressgroup"

    invoke-virtual {p0, p1}, Lr7/a;->setComponentIdentifier(Ljava/lang/String;)V

    iget-object p1, p0, Lr7/c;->E7:Lr7/l;

    invoke-virtual {p1}, Lr7/l;->getOnHotkeyChangeListener()Lq7/f$a;

    move-result-object p1

    iget-object v0, p0, Lr7/c;->E7:Lr7/l;

    new-instance v1, LK6/d$d;

    invoke-direct {v1, p0, p1}, LK6/d$d;-><init>(LK6/d;Lq7/f$a;)V

    invoke-virtual {v0, v1}, Lr7/l;->setOnHotkeyChangeListener(Lq7/f$a;)V

    invoke-virtual {p0}, LK6/d;->S0()V

    return-void
.end method

.method public static synthetic M0(LK6/d;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, LK6/d;->getExistingLongPressGroupComponentHotkeyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static O0()Ljava/lang/String;
    .locals 1

    const-string v0, "com.zjx.app:longpressgroup"

    return-object v0
.end method

.method private getExistingLongPressGroupComponentHotkeyList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh7/b;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lr7/a;->getMapEditor()Lp7/a;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, Lr7/a;->getMapEditor()Lp7/a;

    move-result-object v1

    invoke-virtual {v1}, Lp7/a;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr7/a;

    instance-of v3, v2, LK6/d;

    if-eqz v3, :cond_1

    if-ne v2, p0, :cond_2

    goto :goto_0

    :cond_2
    check-cast v2, LK6/d;

    invoke-virtual {v2}, Lr7/c;->getHotkey()Lh7/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public N0(Lq7/d;I)V
    .locals 3

    new-instance v0, LK6/d$g;

    invoke-direct {v0, p0}, LK6/d$g;-><init>(LK6/d;)V

    iput p2, v0, LK6/d$g;->a:I

    iput-object p1, v0, LK6/d$g;->b:Lq7/d;

    iget-object v1, p0, LK6/d;->G7:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lq7/d;->setInsideLongPressGroup(Z)V

    invoke-virtual {p0}, Lr7/c;->getHotkey()Lh7/b;

    move-result-object v0

    invoke-interface {p1, v0}, Lq7/d;->setLongPressTriggerHotkey(Lh7/b;)V

    new-instance v0, LK6/d$a;

    invoke-direct {v0, p0, p1}, LK6/d$a;-><init>(LK6/d;Lq7/d;)V

    invoke-interface {p1, v0}, Lq7/a;->setOnDeleteButtonClickedListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, LK6/d$b;

    invoke-direct {v0, p0}, LK6/d$b;-><init>(LK6/d;)V

    move-object v1, p1

    check-cast v1, Lr7/a;

    new-instance v2, LK6/d$c;

    invoke-direct {v2, p0, v0}, LK6/d$c;-><init>(LK6/d;Lx6/c;)V

    invoke-virtual {v1, v2}, Lr7/a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lr7/a;->getMapEditor()Lp7/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lr7/a;->setMapEditor(Lp7/a;)V

    invoke-virtual {p0}, Lr7/a;->getComponentHolderView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v1, v0}, Lr7/a;->setComponentHolderView(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, p1, p2}, LK6/d;->R0(Lq7/a;I)V

    return-void
.end method

.method public P0(Lq7/d;)V
    .locals 3

    iget-object v0, p0, LK6/d;->G7:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK6/d$g;

    iget-object v2, v1, LK6/d$g;->b:Lq7/d;

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v0, p0, LK6/d;->G7:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lr7/a;->getComponentHolderView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lr7/a;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lq7/a;->setSelected(Z)V

    invoke-virtual {p0}, Lr7/a;->getComponentHolderView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public Q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Q0()V
    .locals 3

    iget-object v0, p0, LK6/d;->G7:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK6/d$g;

    iget-object v2, v1, LK6/d$g;->b:Lq7/d;

    check-cast v2, Lr7/a;

    iget v1, v1, LK6/d$g;->a:I

    invoke-virtual {p0, v2, v1}, LK6/d;->R0(Lq7/a;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public R0(Lq7/a;I)V
    .locals 1

    instance-of v0, p1, Lr7/k;

    if-eqz v0, :cond_0

    check-cast p1, Lr7/k;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lr7/k;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final S0()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, LK6/d$f;

    invoke-direct {v1, p0}, LK6/d$f;-><init>(LK6/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c()Ljava/util/Map;
    .locals 5
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

    iget-object v0, p0, LK6/d;->G7:Ljava/util/List;

    new-instance v1, LK6/d$e;

    invoke-direct {v1, p0}, LK6/d$e;-><init>(LK6/d;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, LK6/d;->G7:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LK6/d$g;

    new-instance v3, LM6/d$a;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iget-object v4, v2, LK6/d$g;->b:Lq7/d;

    check-cast v4, Lr7/a;

    invoke-virtual {v4}, Lr7/a;->c()Ljava/util/Map;

    move-result-object v4

    iput-object v4, v3, LM6/d$a;->a:Ljava/util/Map;

    iget v2, v2, LK6/d$g;->a:I

    iput v2, v3, LM6/d$a;->b:I

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, LK6/d;->H7:LM6/d;

    invoke-virtual {v1, v0}, LM6/d;->L(Ljava/util/List;)V

    iget-object v0, p0, LK6/d;->H7:LM6/d;

    invoke-virtual {v0}, LM6/d;->c()Ljava/util/Map;

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

    iget-object v0, p0, LK6/d;->H7:LM6/d;

    invoke-virtual {v0, p1}, LM6/d;->d(Ljava/util/Map;)V

    invoke-virtual {p0}, LK6/d;->S0()V

    return-void
.end method

.method public getSettingsViewLayoutResourceId()I
    .locals 1

    sget v0, Lcom/zjx/jyandroid/e$h;->Z:I

    return v0
.end method

.method public getTerminateMode()LM6/d$b;
    .locals 1

    iget-object v0, p0, LK6/d;->H7:LM6/d;

    invoke-virtual {v0}, LM6/d;->H()LM6/d$b;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerComponentWrappers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LK6/d$g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LK6/d;->G7:Ljava/util/List;

    return-object v0
.end method

.method public getTriggerMode()LM6/d$c;
    .locals 1

    iget-object v0, p0, LK6/d;->H7:LM6/d;

    invoke-virtual {v0}, LM6/d;->I()LM6/d$c;

    move-result-object v0

    return-object v0
.end method

.method public setHotkey(Lh7/b;)V
    .locals 2
    .param p1    # Lh7/b;
        .annotation build Li/P;
        .end annotation
    .end param
    .annotation build Li/P;
    .end annotation

    invoke-super {p0, p1}, Lr7/c;->setHotkey(Lh7/b;)V

    iget-object v0, p0, LK6/d;->G7:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK6/d$g;

    iget-object v1, v1, LK6/d$g;->b:Lq7/d;

    invoke-interface {v1, p1}, Lq7/d;->setLongPressTriggerHotkey(Lh7/b;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LK6/d;->S0()V

    return-void
.end method

.method public setMapEditor(Lp7/a;)V
    .locals 4

    instance-of v0, p1, LJ6/b;

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lr7/a;->setMapEditor(Lp7/a;)V

    iget-object v0, p0, LK6/d;->H7:LM6/d;

    invoke-virtual {v0}, LM6/d;->F()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM6/d$a;

    :try_start_0
    move-object v2, p1

    check-cast v2, LJ6/b;

    iget-object v3, v1, LM6/d$a;->a:Ljava/util/Map;

    invoke-virtual {v2, v3}, LJ6/b;->Q(Ljava/util/Map;)Lr7/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lr7/a;->setMapEditor(Lp7/a;)V

    invoke-virtual {p1}, Lp7/a;->f()Lp7/a$d;

    move-result-object v3

    invoke-virtual {v2, v3}, Lr7/a;->setComponentHolderView(Landroid/view/ViewGroup;)V

    check-cast v2, Lq7/d;

    iget v1, v1, LM6/d$a;->b:I

    invoke-virtual {p0, v2, v1}, LK6/d;->N0(Lq7/d;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LK6/d;->Q0()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Instance of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not accepted. Should set to KeymapEditor instead"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSelected(Z)V
    .locals 2

    invoke-super {p0, p1}, Lr7/k;->setSelected(Z)V

    if-eqz p1, :cond_2

    iget-object p1, p0, LK6/d;->G7:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK6/d$g;

    iget-object v0, v0, LK6/d$g;->b:Lq7/d;

    check-cast v0, Lr7/a;

    invoke-virtual {p0}, Lr7/a;->getComponentHolderView()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lr7/a;->getComponentHolderView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lr7/a;->setSelected(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LK6/d;->Q0()V

    goto :goto_2

    :cond_2
    iget-object p1, p0, LK6/d;->G7:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK6/d$g;

    iget-object v0, v0, LK6/d$g;->b:Lq7/d;

    check-cast v0, Lr7/a;

    invoke-virtual {p0}, Lr7/a;->getComponentHolderView()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr7/a;->setSelected(Z)V

    invoke-virtual {p0}, Lr7/a;->getComponentHolderView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public setTerminateMode(LM6/d$b;)V
    .locals 1

    iget-object v0, p0, LK6/d;->H7:LM6/d;

    invoke-virtual {v0, p1}, LM6/d;->M(LM6/d$b;)V

    return-void
.end method

.method public setTriggerComponentWrappers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LK6/d$g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LK6/d;->G7:Ljava/util/List;

    return-void
.end method

.method public setTriggerMode(LM6/d$c;)V
    .locals 1

    iget-object v0, p0, LK6/d;->H7:LM6/d;

    invoke-virtual {v0, p1}, LM6/d;->N(LM6/d$c;)V

    return-void
.end method

.method public x0(Li7/e;)V
    .locals 0

    invoke-super {p0, p1}, Lr7/c;->x0(Li7/e;)V

    return-void
.end method

.method public y0(Lr7/a;)V
    .locals 2

    instance-of v0, p1, Lq7/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lq7/d;

    invoke-interface {v0}, Lq7/d;->n()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lr7/a;->getMapEditor()Lp7/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lp7/a;->d(Lr7/a;)V

    iget-object p1, p0, LK6/d;->G7:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    mul-int/lit8 p1, p1, 0x64

    invoke-virtual {p0, v0, p1}, LK6/d;->N0(Lq7/d;I)V

    return-void
.end method
