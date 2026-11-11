.class public Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;
.implements Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager$PointerInfo;
    }
.end annotation


# static fields
.field static touchManager:Lcom/zjx/jyandroid/TouchManager;


# instance fields
.field controllingPointInfos:[Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager$PointerInfo;

.field extraFingerControllingViewBondPhysicalIndex:I

.field extraFingerControllingViewCoordinate:Lcom/zjx/jyandroid/base/FloatPoint;

.field extraFingerControllingViewIndex:I

.field extraFingerDownPoint:Lcom/zjx/jyandroid/base/FloatPoint;

.field public fingerRegionRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public fireRegionRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field screenHeightHorizontal:I

.field viewControllingFingerIndexList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/zjx/jyandroid/TouchManager;->f()Lcom/zjx/jyandroid/TouchManager;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->viewControllingFingerIndexList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->fingerRegionRects:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->fireRegionRects:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->extraFingerControllingViewIndex:I

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->extraFingerControllingViewBondPhysicalIndex:I

    new-instance v0, Lcom/zjx/jyandroid/base/FloatPoint;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v1}, Lcom/zjx/jyandroid/base/FloatPoint;-><init>(FF)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->extraFingerControllingViewCoordinate:Lcom/zjx/jyandroid/base/FloatPoint;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->screenHeightHorizontal:I

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager$PointerInfo;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->controllingPointInfos:[Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager$PointerInfo;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/base/FloatPoint;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v0, v2

    const/high16 v2, 0x43480000    # 200.0f

    invoke-direct {v1, v0, v2}, Lcom/zjx/jyandroid/base/FloatPoint;-><init>(FF)V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->extraFingerDownPoint:Lcom/zjx/jyandroid/base/FloatPoint;

    return-void
.end method


# virtual methods
.method public addViewControllingFinger(I)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->viewControllingFingerIndexList:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public eventOccurred(Ljava/util/LinkedList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/base/InputEvents/InputEvent;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v4

    sget-object v5, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->TouchEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    if-ne v4, v5, :cond_0

    check-cast v1, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;

    iget v4, v1, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->x:F

    iget v5, v1, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->y:F

    iget v6, v1, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->index:I

    iget-object v7, v1, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->touchType:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    sget-object v8, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->move:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    if-ne v7, v8, :cond_2

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->controllingPointInfos:[Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager$PointerInfo;

    aget-object v1, v1, v6

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager$PointerInfo;->currentCoordinate:Lcom/zjx/jyandroid/base/FloatPoint;

    iget v3, v2, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iget-object v6, v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager$PointerInfo;->physicalCoordinate:Lcom/zjx/jyandroid/base/FloatPoint;

    iget v7, v6, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    sub-float v7, v4, v7

    add-float/2addr v3, v7

    iput v3, v2, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iget v3, v2, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    iget v7, v6, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    sub-float v7, v5, v7

    add-float/2addr v3, v7

    iput v3, v2, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    iput v4, v6, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iput v5, v6, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    sget-object v3, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    iget v1, v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager$PointerInfo;->generatedIndex:I

    iget v4, v2, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iget v2, v2, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    invoke-virtual {v3, v1, v4, v2}, Lcom/zjx/jyandroid/TouchManager;->m(IFF)V

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_2
    sget-object v8, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->down:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    if-ne v7, v8, :cond_7

    new-instance v7, Lcom/zjx/jyandroid/base/FloatPoint;

    invoke-direct {v7, v4, v5}, Lcom/zjx/jyandroid/base/FloatPoint;-><init>(FF)V

    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->fingerRegionRects:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    invoke-static {v9, v7}, Lcom/zjx/jyandroid/base/util/b;->E(Landroid/graphics/Rect;Lcom/zjx/jyandroid/base/FloatPoint;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v2, v3

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    if-ne v2, v3, :cond_6

    iget v1, v1, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->index:I

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->addViewControllingFinger(I)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->viewControllingFingerIndexList:Ljava/util/LinkedList;

    iget v1, v1, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    :goto_2
    sget-object v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    invoke-virtual {v1, v4, v5}, Lcom/zjx/jyandroid/TouchManager;->i(FF)I

    move-result v1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->controllingPointInfos:[Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager$PointerInfo;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager$PointerInfo;

    new-instance v7, Lcom/zjx/jyandroid/base/FloatPoint;

    invoke-direct {v7, v4, v5}, Lcom/zjx/jyandroid/base/FloatPoint;-><init>(FF)V

    new-instance v8, Lcom/zjx/jyandroid/base/FloatPoint;

    invoke-direct {v8, v4, v5}, Lcom/zjx/jyandroid/base/FloatPoint;-><init>(FF)V

    invoke-direct {v3, p0, v7, v8, v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager$PointerInfo;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;Lcom/zjx/jyandroid/base/FloatPoint;Lcom/zjx/jyandroid/base/FloatPoint;I)V

    aput-object v3, v2, v6

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto/16 :goto_0

    :cond_7
    sget-object v2, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->up:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    if-ne v7, v2, :cond_0

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->controllingPointInfos:[Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager$PointerInfo;

    aget-object v2, v2, v6

    if-nez v2, :cond_8

    goto/16 :goto_0

    :cond_8
    sget-object v3, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    iget v4, v2, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager$PointerInfo;->generatedIndex:I

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager$PointerInfo;->currentCoordinate:Lcom/zjx/jyandroid/base/FloatPoint;

    iget v5, v2, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iget v2, v2, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    invoke-virtual {v3, v4, v5, v2}, Lcom/zjx/jyandroid/TouchManager;->o(IFF)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->controllingPointInfos:[Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager$PointerInfo;

    const/4 v3, 0x0

    aput-object v3, v2, v6

    iget v1, v1, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->index:I

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->removeViewControllingFinger(I)V

    iget v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->extraFingerControllingViewBondPhysicalIndex:I

    if-ne v1, v6, :cond_9

    sget-object v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    iget v2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->extraFingerControllingViewIndex:I

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->extraFingerControllingViewCoordinate:Lcom/zjx/jyandroid/base/FloatPoint;

    iget v4, v3, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iget v3, v3, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    invoke-virtual {v1, v2, v4, v3}, Lcom/zjx/jyandroid/TouchManager;->o(IFF)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->extraFingerControllingViewIndex:I

    iput v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->extraFingerControllingViewBondPhysicalIndex:I

    :cond_9
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_b

    return v3

    :cond_b
    return v2
.end method

.method public getControllingViewPhysicalFingerIndex()I
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->viewControllingFingerIndexList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->viewControllingFingerIndexList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public moveAbsolute(II)V
    .locals 0

    return-void
.end method

.method public movedRelative(II)V
    .locals 0

    return-void
.end method

.method public movedRelativeRaw(II)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " y "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->getControllingViewPhysicalFingerIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->controllingPointInfos:[Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager$PointerInfo;

    aget-object v0, v2, v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v2, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager$PointerInfo;->currentCoordinate:Lcom/zjx/jyandroid/base/FloatPoint;

    iget v3, v2, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    int-to-float p1, p1

    add-float/2addr v3, p1

    iput v3, v2, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iget p1, v2, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, v2, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    sget-object p2, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    iget v2, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager$PointerInfo;->generatedIndex:I

    invoke-virtual {p2, v2, v3, p1}, Lcom/zjx/jyandroid/TouchManager;->m(IFF)V

    iget-object p1, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager$PointerInfo;->currentCoordinate:Lcom/zjx/jyandroid/base/FloatPoint;

    iget p2, p1, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    iget v2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->screenHeightHorizontal:I

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_2

    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float p2, p2, v2

    if-gez p2, :cond_3

    :cond_2
    iget p2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->extraFingerControllingViewIndex:I

    if-eq p2, v1, :cond_3

    iget-object p2, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager$PointerInfo;->physicalCoordinate:Lcom/zjx/jyandroid/base/FloatPoint;

    iget v1, p2, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iput v1, p1, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iget p2, p2, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    iput p2, p1, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    sget-object p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    invoke-virtual {p1, v1, p2}, Lcom/zjx/jyandroid/TouchManager;->i(FF)I

    move-result p1

    sget-object p2, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    iget v1, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager$PointerInfo;->generatedIndex:I

    iget-object v2, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager$PointerInfo;->physicalCoordinate:Lcom/zjx/jyandroid/base/FloatPoint;

    iget v3, v2, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iget v2, v2, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    invoke-virtual {p2, v1, v3, v2}, Lcom/zjx/jyandroid/TouchManager;->o(IFF)V

    iput p1, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager$PointerInfo;->generatedIndex:I

    :cond_3
    return-void
.end method

.method public removeViewControllingFinger(I)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->viewControllingFingerIndexList:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateKeymap(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->fingerRegionRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->fireRegionRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "fingerRegionComponents"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    :try_start_0
    new-instance v2, Lr/e;

    invoke-direct {v2}, Lr/e;-><init>()V

    invoke-virtual {v2, v1}, Lr/e;->e(Ljava/util/Map;)V

    invoke-virtual {v2}, Lr/e;->b()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->fingerRegionRects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string v0, "fireRegionComponents"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/AbstractList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :try_start_1
    new-instance v1, Lr/e;

    invoke-direct {v1}, Lr/e;-><init>()V

    invoke-virtual {v1, v0}, Lr/e;->e(Ljava/util/Map;)V

    invoke-virtual {v1}, Lr/e;->b()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/FingerMovedViewManager;->fireRegionRects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_1
    return-void
.end method
