.class public LO6/a;
.super Lu7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu7/a<",
        "Lq7/f;",
        ">;"
    }
.end annotation


# instance fields
.field public U6:Landroid/os/Handler;

.field public V6:Landroid/widget/TextView;

.field public W6:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Li/P;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lu7/a;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, LO6/a;->U6:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Li/P;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Li/S;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Lu7/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, LO6/a;->U6:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Li/P;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Li/S;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lu7/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, LO6/a;->U6:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Li/P;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Li/S;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lu7/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 8
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, LO6/a;->U6:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic x0(LO6/a;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, LO6/a;->W6:Landroid/widget/Button;

    return-object p0
.end method

.method public static synthetic y0(LO6/a;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, LO6/a;->V6:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public getBindKeyLabel()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, LO6/a;->V6:Landroid/widget/TextView;

    return-object v0
.end method

.method public getChangeKeyButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, LO6/a;->W6:Landroid/widget/Button;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lu7/a;->getComponent()Lq7/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu7/a;->getComponent()Lq7/a;

    move-result-object v0

    check-cast v0, Lq7/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lq7/f;->setOnHotkeyChangeListener(Lq7/f$a;)V

    invoke-interface {v0}, Ls7/c;->getHotkey()Lh7/b;

    move-result-object v1

    invoke-virtual {v1}, Lh7/b;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lq7/f;->setEnableAutoHotkeyChange(Z)V

    :cond_0
    return-void
.end method

.method public s0()V
    .locals 1

    sget v0, Lcom/zjx/jyandroid/e$f;->e0:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LO6/a;->V6:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/e$f;->J0:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, LO6/a;->W6:Landroid/widget/Button;

    return-void
.end method

.method public setBindKeyLabel(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, LO6/a;->V6:Landroid/widget/TextView;

    return-void
.end method

.method public setChangeKeyButton(Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, LO6/a;->W6:Landroid/widget/Button;

    return-void
.end method

.method public bridge synthetic setComponent(Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1
    check-cast p1, Lq7/f;

    invoke-virtual {p0, p1}, LO6/a;->setComponent(Lq7/f;)V

    return-void
.end method

.method public setComponent(Lq7/f;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lu7/a;->getComponent()Lq7/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lu7/a;->getComponent()Lq7/a;

    move-result-object v0

    check-cast v0, Lq7/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lq7/f;->setOnHotkeyChangeListener(Lq7/f$a;)V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lu7/a;->setComponent(Lq7/a;)V

    .line 5
    invoke-virtual {p0}, Lu7/a;->getComponent()Lq7/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lu7/a;->getComponent()Lq7/a;

    move-result-object p1

    check-cast p1, Lq7/f;

    new-instance v0, LO6/a$b;

    invoke-direct {v0, p0}, LO6/a$b;-><init>(LO6/a;)V

    invoke-interface {p1, v0}, Lq7/f;->setOnHotkeyChangeListener(Lq7/f$a;)V

    .line 7
    invoke-virtual {p0}, Lu7/a;->getComponent()Lq7/a;

    move-result-object p1

    check-cast p1, Lq7/f;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lq7/f;->setEnableAutoHotkeyChange(Z)V

    :cond_1
    return-void
.end method

.method public u0()V
    .locals 2

    iget-object v0, p0, LO6/a;->W6:Landroid/widget/Button;

    new-instance v1, LO6/a$a;

    invoke-direct {v1, p0}, LO6/a$a;-><init>(LO6/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic w0(Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Lq7/f;

    invoke-virtual {p0, p1}, LO6/a;->z0(Lq7/f;)V

    return-void
.end method

.method public z0(Lq7/f;)V
    .locals 2

    iget-object v0, p0, LO6/a;->V6:Landroid/widget/TextView;

    invoke-interface {p1}, Ls7/c;->getHotkey()Lh7/b;

    move-result-object p1

    const-string v1, "+"

    invoke-virtual {p1, v1}, Lh7/b;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
