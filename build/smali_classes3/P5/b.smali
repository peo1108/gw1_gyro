.class public LP5/b;
.super Lr7/c;
.source "SourceFile"

# interfaces
.implements Lr7/j;


# instance fields
.field public G7:LN5/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lr7/c;-><init>(Landroid/content/Context;)V

    new-instance p1, LN5/b;

    invoke-direct {p1}, LN5/b;-><init>()V

    iput-object p1, p0, LP5/b;->G7:LN5/b;

    sget p1, Lcom/zjx/jyandroid/e$k;->qa:I

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

    iget-object p1, p0, LP5/b;->G7:LN5/b;

    invoke-virtual {p0, p1}, Lr7/a;->B0(Lm7/c;)V

    const-string p1, "com.zjx.pubgext:cancelhouyao"

    invoke-virtual {p0, p1}, Lr7/a;->setComponentIdentifier(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lr7/c;->setEnableUpdateTextWithHotkey(Z)V

    return-void
.end method

.method public static M0()Ljava/lang/String;
    .locals 1

    const-string v0, "com.zjx.pubgext:cancelhouyao"

    return-object v0
.end method


# virtual methods
.method public getEnableType()LN5/b$a;
    .locals 1

    iget-object v0, p0, LP5/b;->G7:LN5/b;

    invoke-virtual {v0}, LN5/b;->F()LN5/b$a;

    move-result-object v0

    return-object v0
.end method

.method public getSettingsViewLayoutResourceId()I
    .locals 1

    sget v0, Lcom/zjx/jyandroid/e$h;->N0:I

    return v0
.end method

.method public setEnableType(LN5/b$a;)V
    .locals 1

    iget-object v0, p0, LP5/b;->G7:LN5/b;

    invoke-virtual {v0, p1}, LN5/b;->H(LN5/b$a;)V

    return-void
.end method
