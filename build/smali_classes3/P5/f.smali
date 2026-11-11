.class public LP5/f;
.super Lr7/c;
.source "SourceFile"

# interfaces
.implements Lr7/j;


# instance fields
.field public G7:LN5/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lr7/c;-><init>(Landroid/content/Context;)V

    new-instance p1, LN5/e;

    invoke-direct {p1}, LN5/e;-><init>()V

    iput-object p1, p0, LP5/f;->G7:LN5/e;

    const-string p1, "\u667a\u80fd\u516d\u8f6c\u4e09"

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

    const-string p1, "com.zjx.pubgext:switchScope"

    invoke-virtual {p0, p1}, Lr7/a;->setComponentIdentifier(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lr7/c;->setEnableUpdateTextWithHotkey(Z)V

    iget-object p1, p0, LP5/f;->G7:LN5/e;

    invoke-virtual {p0, p1}, Lr7/a;->B0(Lm7/c;)V

    return-void
.end method

.method public static M0()Ljava/lang/String;
    .locals 1

    const-string v0, "com.zjx.pubgext:switchScope"

    return-object v0
.end method


# virtual methods
.method public getSettingsViewLayoutResourceId()I
    .locals 1

    sget v0, Lcom/zjx/jyandroid/e$h;->g1:I

    return v0
.end method

.method public getSwitchZoomingType()Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$q;
    .locals 1

    iget-object v0, p0, LP5/f;->G7:LN5/e;

    invoke-virtual {v0}, LN5/e;->F()Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$q;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerMode()LN5/e$a;
    .locals 1

    iget-object v0, p0, LP5/f;->G7:LN5/e;

    invoke-virtual {v0}, LN5/e;->H()LN5/e$a;

    move-result-object v0

    return-object v0
.end method

.method public setSwitchZoomingType(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$q;)V
    .locals 1

    iget-object v0, p0, LP5/f;->G7:LN5/e;

    invoke-virtual {v0, p1}, LN5/e;->I(Lcom/zjx/jyandroid/Extensions/pubg/PubgPlugin$q;)V

    return-void
.end method

.method public setTriggerMode(LN5/e$a;)V
    .locals 1

    iget-object v0, p0, LP5/f;->G7:LN5/e;

    invoke-virtual {v0, p1}, LN5/e;->L(LN5/e$a;)V

    return-void
.end method
