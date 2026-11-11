.class public LY6/a;
.super Lr7/b;
.source "SourceFile"

# interfaces
.implements Lr7/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LY6/a$c;
    }
.end annotation


# static fields
.field public static final H7:Ljava/lang/String; = "northhotkey"

.field public static final I7:Ljava/lang/String; = "westhotkey"

.field public static final J7:Ljava/lang/String; = "easthotkey"

.field public static final K7:Ljava/lang/String; = "southhotkey"


# instance fields
.field public D7:Landroid/widget/ImageView;

.field public E7:Lr7/g;

.field public F7:LW6/a;

.field public G7:LY6/a$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Li/P;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lr7/b;-><init>(Landroid/content/Context;)V

    new-instance v0, LW6/a;

    invoke-direct {v0}, LW6/a;-><init>()V

    iput-object v0, p0, LY6/a;->F7:LW6/a;

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

    iput-object v0, p0, LY6/a;->D7:Landroid/widget/ImageView;

    sget v1, Lcom/zjx/jyandroid/e$e;->x:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    const/16 v1, 0xc8

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->T:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->U:I

    iget-object v1, p0, LY6/a;->D7:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, LY6/a;->D7:Landroid/widget/ImageView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    new-instance v0, Landroidx/constraintlayout/widget/f;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/f;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/f;->H(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v1, p0, LY6/a;->D7:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v2}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    iget-object v1, p0, LY6/a;->D7:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x7

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v2}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    iget-object v1, p0, LY6/a;->D7:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v2}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    iget-object v1, p0, LY6/a;->D7:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v2}, Landroidx/constraintlayout/widget/f;->K(IIII)V

    iget-object v1, p0, LY6/a;->D7:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/f;->V(IF)V

    iget-object v1, p0, LY6/a;->D7:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/f;->U(IF)V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/f;->r(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    new-instance v0, LY6/a$a;

    invoke-direct {v0, p0, p1}, LY6/a$a;-><init>(LY6/a;Landroid/content/Context;)V

    iput-object v0, p0, LY6/a;->E7:Lr7/g;

    new-instance p1, LY6/a$b;

    invoke-direct {p1, p0}, LY6/a$b;-><init>(LY6/a;)V

    invoke-virtual {v0, p1}, Lr7/g;->setOnHotkeyChangedListener(Lq7/c$a;)V

    iget-object p1, p0, LY6/a;->F7:LW6/a;

    invoke-virtual {p0, p1}, Lr7/a;->B0(Lm7/c;)V

    const-string p1, "com.zjx.bladepoint:attack"

    invoke-virtual {p0, p1}, Lr7/a;->setComponentIdentifier(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lr7/k;->setDragResizable(Z)V

    const/16 p1, 0x28

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lr7/f;->setMinimumSize(I)V

    invoke-virtual {p0}, Lr7/k;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic K0(LY6/a;)LW6/a;
    .locals 0

    iget-object p0, p0, LY6/a;->F7:LW6/a;

    return-object p0
.end method

.method public static synthetic L0(LY6/a;)LY6/a$c;
    .locals 0

    iget-object p0, p0, LY6/a;->G7:LY6/a$c;

    return-object p0
.end method

.method public static M0()Ljava/lang/String;
    .locals 1

    const-string v0, "com.zjx.bladepoint:attack"

    return-object v0
.end method

.method private N0(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, LY6/a;->E7:Lr7/g;

    invoke-virtual {p2, p1}, Lr7/g;->o(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, LY6/a;->E7:Lr7/g;

    invoke-virtual {p2, p1}, Lr7/g;->k(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LY6/a;->E7:Lr7/g;

    invoke-virtual {p1}, Lr7/g;->m()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getDefaultSize()Landroid/util/Size;
    .locals 3

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x50

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v2

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$h;->c(I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getEastHotkey()Lh7/b;
    .locals 1

    iget-object v0, p0, LY6/a;->F7:LW6/a;

    invoke-virtual {v0}, LW6/a;->F()Lh7/b;

    move-result-object v0

    return-object v0
.end method

.method public getNorthHotkey()Lh7/b;
    .locals 1

    iget-object v0, p0, LY6/a;->F7:LW6/a;

    invoke-virtual {v0}, LW6/a;->H()Lh7/b;

    move-result-object v0

    return-object v0
.end method

.method public getOnHotkeyChangeListener()LY6/a$c;
    .locals 1

    iget-object v0, p0, LY6/a;->G7:LY6/a$c;

    return-object v0
.end method

.method public getSettingsViewLayoutResourceId()I
    .locals 1

    sget v0, Lcom/zjx/jyandroid/e$h;->s:I

    return v0
.end method

.method public getSouthHotkey()Lh7/b;
    .locals 1

    iget-object v0, p0, LY6/a;->F7:LW6/a;

    invoke-virtual {v0}, LW6/a;->I()Lh7/b;

    move-result-object v0

    return-object v0
.end method

.method public getWestHotkey()Lh7/b;
    .locals 1

    iget-object v0, p0, LY6/a;->F7:LW6/a;

    invoke-virtual {v0}, LW6/a;->L()Lh7/b;

    move-result-object v0

    return-object v0
.end method

.method public setEastHotkey(Lh7/b;)V
    .locals 1

    iget-object v0, p0, LY6/a;->F7:LW6/a;

    invoke-virtual {v0, p1}, LW6/a;->M(Lh7/b;)V

    return-void
.end method

.method public setEastHotkeyAutoChangeEnable(Z)V
    .locals 1

    const-string v0, "easthotkey"

    invoke-direct {p0, v0, p1}, LY6/a;->N0(Ljava/lang/String;Z)V

    return-void
.end method

.method public setNorthHotkey(Lh7/b;)V
    .locals 1

    iget-object v0, p0, LY6/a;->F7:LW6/a;

    invoke-virtual {v0, p1}, LW6/a;->N(Lh7/b;)V

    return-void
.end method

.method public setNorthHotkeyAutoChangeEnable(Z)V
    .locals 1

    const-string v0, "northhotkey"

    invoke-direct {p0, v0, p1}, LY6/a;->N0(Ljava/lang/String;Z)V

    return-void
.end method

.method public setOnHotkeyChangeListener(LY6/a$c;)V
    .locals 0

    iput-object p1, p0, LY6/a;->G7:LY6/a$c;

    return-void
.end method

.method public setSouthHotkey(Lh7/b;)V
    .locals 1

    iget-object v0, p0, LY6/a;->F7:LW6/a;

    invoke-virtual {v0, p1}, LW6/a;->O(Lh7/b;)V

    return-void
.end method

.method public setSouthHotkeyAutoChangeEnable(Z)V
    .locals 1

    const-string v0, "southhotkey"

    invoke-direct {p0, v0, p1}, LY6/a;->N0(Ljava/lang/String;Z)V

    return-void
.end method

.method public setWestHotkey(Lh7/b;)V
    .locals 1

    iget-object v0, p0, LY6/a;->F7:LW6/a;

    invoke-virtual {v0, p1}, LW6/a;->P(Lh7/b;)V

    return-void
.end method

.method public setWestHotkeyAutoChangeEnable(Z)V
    .locals 1

    const-string v0, "westhotkey"

    invoke-direct {p0, v0, p1}, LY6/a;->N0(Ljava/lang/String;Z)V

    return-void
.end method

.method public x0(Li7/e;)V
    .locals 1

    invoke-super {p0, p1}, Lr7/a;->x0(Li7/e;)V

    iget-object v0, p0, LY6/a;->E7:Lr7/g;

    invoke-virtual {v0, p1}, Lr7/a;->x0(Li7/e;)V

    return-void
.end method
