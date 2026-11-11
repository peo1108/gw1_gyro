.class public LK6/GyroSensL;
.super Ljava/lang/Object;
.implements Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;


.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public onValueChange(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;F)F
    .locals 1

    float-to-int v0, p2

    invoke-static {v0}, LK6/m;->setGyroSens(I)V

    return p2
.end method
