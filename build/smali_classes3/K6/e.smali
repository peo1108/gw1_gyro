.class public LK6/e;
.super Lr7/b;
.source "SourceFile"

# interfaces
.implements LL6/c;
.implements Lr7/j;
.implements Lq7/d;


# static fields
.field public static final H7:Ljava/lang/String; = "triggerhotkey"

.field public static final I7:Ljava/lang/String; = "terminatehotkey"


# instance fields
.field public D7:Lr7/g;

.field public E7:LM6/e;

.field public F7:LL6/c$a;

.field public G7:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Li/P;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lr7/b;-><init>(Landroid/content/Context;)V

    new-instance v0, LM6/e;

    invoke-direct {v0}, LM6/e;-><init>()V

    iput-object v0, p0, LK6/e;->E7:LM6/e;

    const/4 v0, 0x0

    iput-boolean v0, p0, LK6/e;->G7:Z

    new-instance v0, LK6/e$a;

    invoke-direct {v0, p0, p1}, LK6/e$a;-><init>(LK6/e;Landroid/content/Context;)V

    iput-object v0, p0, LK6/e;->D7:Lr7/g;

    new-instance p1, LK6/e$b;

    invoke-direct {p1, p0}, LK6/e$b;-><init>(LK6/e;)V

    invoke-virtual {v0, p1}, Lr7/g;->setOnHotkeyChangedListener(Lq7/c$a;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zjx/jyandroid/e$c;->l:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lr7/k;->setSelectedBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zjx/jyandroid/e$c;->l:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lr7/k;->setUnselectedBackgroundColor(I)V

    invoke-virtual {p0}, LK6/e;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr7/k;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, LK6/e;->E7:LM6/e;

    invoke-virtual {p0, p1}, Lr7/a;->B0(Lm7/c;)V

    const-string p1, "com.zjx.app:macro"

    invoke-virtual {p0, p1}, Lr7/a;->setComponentIdentifier(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic K0(LK6/e;)LM6/e;
    .locals 0

    iget-object p0, p0, LK6/e;->E7:LM6/e;

    return-object p0
.end method

.method public static synthetic L0(LK6/e;)LL6/c$a;
    .locals 0

    iget-object p0, p0, LK6/e;->F7:LL6/c$a;

    return-object p0
.end method

.method public static M0()Ljava/lang/String;
    .locals 1

    const-string v0, "com.zjx.app:macro"

    return-object v0
.end method

.method private N0(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, LK6/e;->D7:Lr7/g;

    invoke-virtual {p2, p1}, Lr7/g;->o(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, LK6/e;->D7:Lr7/g;

    invoke-virtual {p2, p1}, Lr7/g;->k(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LK6/e;->D7:Lr7/g;

    invoke-virtual {p1}, Lr7/g;->m()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public U()Z
    .locals 1

    iget-boolean v0, p0, LK6/e;->G7:Z

    return v0
.end method

.method public d(Ljava/util/Map;)V
    .locals 0
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

    iget-object p1, p0, LK6/e;->E7:LM6/e;

    invoke-virtual {p1}, LM6/e;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr7/k;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getLongPressTriggerHotkey()Lh7/b;
    .locals 1

    invoke-virtual {p0}, LK6/e;->getTriggerHotkey()Lh7/b;

    move-result-object v0

    return-object v0
.end method

.method public getMacroOperations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, LK6/e;->E7:LM6/e;

    invoke-virtual {v0}, LM6/e;->getMacroOperations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LK6/e;->E7:LM6/e;

    invoke-virtual {v0}, LM6/e;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnHotkeyChangeListener()LL6/c$a;
    .locals 1

    iget-object v0, p0, LK6/e;->F7:LL6/c$a;

    return-object v0
.end method

.method public getSettingsViewLayoutResourceId()I
    .locals 1

    sget v0, Lcom/zjx/jyandroid/e$h;->b0:I

    return v0
.end method

.method public getTerminateHotkey()Lh7/b;
    .locals 1

    iget-object v0, p0, LK6/e;->E7:LM6/e;

    invoke-virtual {v0}, LM6/e;->getTerminateHotkey()Lh7/b;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerHotkey()Lh7/b;
    .locals 1

    iget-object v0, p0, LK6/e;->E7:LM6/e;

    invoke-virtual {v0}, LM6/e;->getTriggerHotkey()Lh7/b;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerMode()LN6/c$a;
    .locals 1

    iget-object v0, p0, LK6/e;->E7:LM6/e;

    invoke-virtual {v0}, LM6/e;->getTriggerMode()LN6/c$a;

    move-result-object v0

    return-object v0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setInsideLongPressGroup(Z)V
    .locals 0

    iput-boolean p1, p0, LK6/e;->G7:Z

    return-void
.end method

.method public setLongPressTriggerHotkey(Lh7/b;)V
    .locals 0

    invoke-virtual {p0, p1}, LK6/e;->setTriggerHotkey(Lh7/b;)V

    return-void
.end method

.method public setMacroOperations(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, LK6/e;->E7:LM6/e;

    invoke-virtual {v0, p1}, LM6/e;->setMacroOperations(Ljava/util/List;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, LK6/e;->E7:LM6/e;

    invoke-virtual {v0, p1}, LM6/e;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lr7/k;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnHotkeyChangeListener(LL6/c$a;)V
    .locals 0

    iput-object p1, p0, LK6/e;->F7:LL6/c$a;

    return-void
.end method

.method public setTerminateHotkey(Lh7/b;)V
    .locals 1

    iget-object v0, p0, LK6/e;->E7:LM6/e;

    invoke-virtual {v0, p1}, LM6/e;->setTerminateHotkey(Lh7/b;)V

    return-void
.end method

.method public setTerminateKeyAutoChangeEnable(Z)V
    .locals 1

    const-string v0, "terminatehotkey"

    invoke-direct {p0, v0, p1}, LK6/e;->N0(Ljava/lang/String;Z)V

    return-void
.end method

.method public setTriggerHotkey(Lh7/b;)V
    .locals 1

    iget-object v0, p0, LK6/e;->E7:LM6/e;

    invoke-virtual {v0, p1}, LM6/e;->setTriggerHotkey(Lh7/b;)V

    return-void
.end method

.method public setTriggerKeyAutoChangeEnable(Z)V
    .locals 1

    const-string v0, "triggerhotkey"

    invoke-direct {p0, v0, p1}, LK6/e;->N0(Ljava/lang/String;Z)V

    return-void
.end method

.method public setTriggerMode(LN6/c$a;)V
    .locals 1

    iget-object v0, p0, LK6/e;->E7:LM6/e;

    invoke-virtual {v0, p1}, LM6/e;->setTriggerMode(LN6/c$a;)V

    return-void
.end method

.method public x0(Li7/e;)V
    .locals 1

    invoke-super {p0, p1}, Lr7/a;->x0(Li7/e;)V

    iget-object v0, p0, LK6/e;->D7:Lr7/g;

    invoke-virtual {v0, p1}, Lr7/a;->x0(Li7/e;)V

    return-void
.end method
