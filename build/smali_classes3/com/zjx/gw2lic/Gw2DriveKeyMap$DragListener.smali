.class final Lcom/zjx/gw2lic/Gw2DriveKeyMap$DragListener;
.super Ljava/lang/Object;
.source "Gw2DriveKeyMap.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/gw2lic/Gw2DriveKeyMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DragListener"
.end annotation


# instance fields
.field private grabX:I

.field private grabY:I

.field private final scr:Landroid/graphics/Point;

.field private final size:I


# direct methods
.method constructor <init>(Landroid/widget/FrameLayout;Landroid/graphics/Point;I)V
    .locals 0

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    iput-object p2, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$DragListener;->scr:Landroid/graphics/Point;

    .line 581
    iput p3, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$DragListener;->size:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 586
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 587
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    return v2

    .line 593
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget v3, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$DragListener;->grabX:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$DragListener;->scr:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$DragListener;->size:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->access$900(III)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 594
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    iget v1, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$DragListener;->grabY:I

    sub-int/2addr p2, v1

    iget-object v1, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$DragListener;->scr:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$DragListener;->size:I

    sub-int/2addr v1, v3

    invoke-static {p2, v4, v1}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->access$900(III)I

    move-result p2

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 595
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return v2

    .line 589
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$DragListener;->grabX:I

    .line 590
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iget p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$DragListener;->grabY:I

    return v2
.end method
