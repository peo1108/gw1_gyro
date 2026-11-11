.class public LK6/b;
.super Lr7/c;
.source "SourceFile"

# interfaces
.implements LL6/a;
.implements Lr7/j;


# instance fields
.field public G7:LM6/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Li/P;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lr7/c;-><init>(Landroid/content/Context;)V

    new-instance p1, LM6/b;

    invoke-direct {p1}, LM6/b;-><init>()V

    iput-object p1, p0, LK6/b;->G7:LM6/b;

    const p1, -0x50003adb

    invoke-virtual {p0, p1}, Lr7/k;->setSelectedBackgroundColor(I)V

    invoke-virtual {p0, p1}, Lr7/k;->setUnselectedBackgroundColor(I)V

    const/16 p1, 0x19

    invoke-static {p1}, Lg7/d;->b(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lr7/f;->setMinimumSize(I)V

    iget-object p1, p0, LK6/b;->G7:LM6/b;

    invoke-virtual {p0, p1}, Lr7/a;->B0(Lm7/c;)V

    const-string p1, "9\u00a8Y\u008ft\u0011\u0090{\u00a3_\u00ec3\u0010\u00915\u00d8F\u00f8k\u001a"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr7/a;->setComponentIdentifier(Ljava/lang/String;)V

    return-void
.end method

.method public static M0()Ljava/lang/String;
    .locals 1

    const-string v0, "9\u00a8Y\u008ft\u0011\u0090{\u00a3_\u00ec3\u0010\u00915\u00d8F\u00f8k\u001a"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCrouchPullDown()I
    .locals 1

    iget-object v0, p0, LK6/b;->G7:LM6/b;

    invoke-virtual {v0}, LM6/b;->getCrouchPullDown()I

    move-result v0

    return v0
.end method

.method public getInitialPullDown()I
    .locals 1

    iget-object v0, p0, LK6/b;->G7:LM6/b;

    invoke-virtual {v0}, LM6/b;->getInitialPullDown()I

    move-result v0

    return v0
.end method

.method public getNadeGyroSpeed()I
    .locals 1

    iget-object v0, p0, LK6/b;->G7:LM6/b;

    invoke-virtual {v0}, LM6/b;->getNadeGyroSpeed()I

    move-result v0

    return v0
.end method

.method public getPronePullDown()I
    .locals 1

    iget-object v0, p0, LK6/b;->G7:LM6/b;

    invoke-virtual {v0}, LM6/b;->getPronePullDown()I

    move-result v0

    return v0
.end method

.method public getScrollAdjust()Z
    .locals 1

    iget-object v0, p0, LK6/b;->G7:LM6/b;

    invoke-virtual {v0}, LM6/b;->getScrollAdjust()Z

    move-result v0

    return v0
.end method

.method public getScrollStep()I
    .locals 1

    iget-object v0, p0, LK6/b;->G7:LM6/b;

    invoke-virtual {v0}, LM6/b;->getScrollStep()I

    move-result v0

    return v0
.end method

.method public getSensitivity()F
    .locals 1

    iget-object v0, p0, LK6/b;->G7:LM6/b;

    invoke-virtual {v0}, LM6/b;->getSensitivity()F

    move-result v0

    return v0
.end method

.method public getSettingsViewLayoutResourceId()I
    .locals 1

    sget v0, Lcom/zjx/jyandroid/e$h;->M:I

    return v0
.end method

.method public isGyroInvert()Z
    .locals 1

    iget-object v0, p0, LK6/b;->G7:LM6/b;

    invoke-virtual {v0}, LM6/b;->isGyroInvert()Z

    move-result v0

    return v0
.end method

.method public isNadeGyroMode()Z
    .locals 1

    iget-object v0, p0, LK6/b;->G7:LM6/b;

    invoke-virtual {v0}, LM6/b;->isNadeGyroMode()Z

    move-result v0

    return v0
.end method

.method public setCrouchPullDown(I)V
    .locals 1

    iget-object v0, p0, LK6/b;->G7:LM6/b;

    invoke-virtual {v0, p1}, LM6/b;->setCrouchPullDown(I)V

    return-void
.end method

.method public setGyroInvert(Z)V
    .locals 1

    iget-object v0, p0, LK6/b;->G7:LM6/b;

    invoke-virtual {v0, p1}, LM6/b;->setGyroInvert(Z)V

    return-void
.end method

.method public setInitialPullDown(I)V
    .locals 1

    iget-object v0, p0, LK6/b;->G7:LM6/b;

    invoke-virtual {v0, p1}, LM6/b;->setInitialPullDown(I)V

    return-void
.end method

.method public setNadeGyroMode(Z)V
    .locals 1

    iget-object v0, p0, LK6/b;->G7:LM6/b;

    invoke-virtual {v0, p1}, LM6/b;->setNadeGyroMode(Z)V

    return-void
.end method

.method public setNadeGyroSpeed(I)V
    .locals 1

    iget-object v0, p0, LK6/b;->G7:LM6/b;

    invoke-virtual {v0, p1}, LM6/b;->setNadeGyroSpeed(I)V

    return-void
.end method

.method public setPronePullDown(I)V
    .locals 1

    iget-object v0, p0, LK6/b;->G7:LM6/b;

    invoke-virtual {v0, p1}, LM6/b;->setPronePullDown(I)V

    return-void
.end method

.method public setResetWhenReachEdge(Z)V
    .locals 1

    iget-object v0, p0, LK6/b;->G7:LM6/b;

    invoke-virtual {v0, p1}, LM6/b;->setResetWhenReachEdge(Z)V

    return-void
.end method

.method public setScrollAdjust(Z)V
    .locals 1

    iget-object v0, p0, LK6/b;->G7:LM6/b;

    invoke-virtual {v0, p1}, LM6/b;->setScrollAdjust(Z)V

    return-void
.end method

.method public setScrollStep(I)V
    .locals 1

    iget-object v0, p0, LK6/b;->G7:LM6/b;

    invoke-virtual {v0, p1}, LM6/b;->setScrollStep(I)V

    return-void
.end method

.method public setSensitivity(F)V
    .locals 1

    iget-object v0, p0, LK6/b;->G7:LM6/b;

    invoke-virtual {v0, p1}, LM6/b;->setSensitivity(F)V

    return-void
.end method

.method public v()Z
    .locals 1

    iget-object v0, p0, LK6/b;->G7:LM6/b;

    invoke-virtual {v0}, LM6/b;->v()Z

    move-result v0

    return v0
.end method
