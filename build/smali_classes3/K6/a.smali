.class public LK6/a;
.super Lr7/c;
.source "SourceFile"

# interfaces
.implements Lr7/j;


# instance fields
.field public G7:LM6/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lr7/c;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/zjx/jyandroid/e$k;->e1:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->B(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr7/k;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lcom/zjx/jyandroid/e$c;->o:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->r(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lr7/k;->setUnselectedBackgroundColor(I)V

    sget p1, Lcom/zjx/jyandroid/e$c;->o:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->r(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lr7/k;->setSelectedBackgroundColor(I)V

    const p1, 0xffff8f

    invoke-virtual {p0, p1}, Lr7/k;->setUnselectedBorderColor(I)V

    sget p1, Lcom/zjx/jyandroid/e$c;->O:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->r(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lr7/k;->setSelectedBorderColor(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lr7/k;->setUnselectedBorderWidth(I)V

    new-instance p1, LM6/a;

    invoke-direct {p1}, LM6/a;-><init>()V

    iput-object p1, p0, LK6/a;->G7:LM6/a;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lr7/c;->setEnableUpdateTextWithHotkey(Z)V

    iget-object p1, p0, LK6/a;->G7:LM6/a;

    invoke-virtual {p0, p1}, Lr7/a;->B0(Lm7/c;)V

    const-string p1, "com.zjx.pubgext:adjustrcvalue"

    invoke-virtual {p0, p1}, Lr7/a;->setComponentIdentifier(Ljava/lang/String;)V

    return-void
.end method

.method public static M0()Ljava/lang/String;
    .locals 1

    const-string v0, "com.zjx.pubgext:adjustrcvalue"

    return-object v0
.end method


# virtual methods
.method public getSettingsViewLayoutResourceId()I
    .locals 1

    sget v0, Lcom/zjx/jyandroid/e$h;->J0:I

    return v0
.end method

.method public getValue()F
    .locals 1

    iget-object v0, p0, LK6/a;->G7:LM6/a;

    invoke-virtual {v0}, LM6/a;->F()F

    move-result v0

    return v0
.end method

.method public setValue(F)V
    .locals 1

    iget-object v0, p0, LK6/a;->G7:LM6/a;

    invoke-virtual {v0, p1}, LM6/a;->H(F)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    sget p1, Lcom/zjx/jyandroid/e$k;->e1:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->B(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr7/k;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/zjx/jyandroid/e$k;->f1:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->B(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr7/k;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
