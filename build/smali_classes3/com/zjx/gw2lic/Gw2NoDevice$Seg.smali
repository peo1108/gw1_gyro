.class public Lcom/zjx/gw2lic/Gw2NoDevice$Seg;
.super Ljava/lang/Object;
.source "Gw2NoDevice.java"

# interfaces
.implements Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositionChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2NoDevice;->setMode(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2NoDevice;->setMode(Z)V

    return-void
.end method
