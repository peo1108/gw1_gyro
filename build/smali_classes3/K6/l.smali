.class public LK6/l;
.super Lr7/c;
.source "SourceFile"

# interfaces
.implements Lr7/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Li/P;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lr7/c;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lr7/c;->setEnableUpdateTextWithHotkey(Z)V

    sget p1, Lcom/zjx/jyandroid/e$k;->K6:I

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

    const-string p1, "com.zjx.app:triggerrecoilcontrol"

    invoke-virtual {p0, p1}, Lr7/a;->setComponentIdentifier(Ljava/lang/String;)V

    return-void
.end method

.method public static M0()Ljava/lang/String;
    .locals 1

    const-string v0, "com.zjx.app:triggerrecoilcontrol"

    return-object v0
.end method


# virtual methods
.method public getSettingsViewLayoutResourceId()I
    .locals 1

    sget v0, Lcom/zjx/jyandroid/e$h;->n1:I

    return v0
.end method
