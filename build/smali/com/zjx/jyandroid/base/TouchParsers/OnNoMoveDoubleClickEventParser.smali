.class public abstract Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveDoubleClickEventParser;
.super Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveClickEventParser;
.source "SourceFile"


# static fields
.field private static final DOUBLE_CLICK_TIME_DELTA:J = 0x190L


# instance fields
.field public distanceBetweenTwoClickThreshold:I

.field private firstTouchDownPoint:Landroid/graphics/Point;

.field lastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveClickEventParser;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveDoubleClickEventParser;->lastClickTime:J

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveDoubleClickEventParser;->firstTouchDownPoint:Landroid/graphics/Point;

    const/16 v0, 0x50

    iput v0, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveDoubleClickEventParser;->distanceBetweenTwoClickThreshold:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveDoubleClickEventParser;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x190

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveDoubleClickEventParser;->firstTouchDownPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    iget-object v4, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveDoubleClickEventParser;->firstTouchDownPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    iget v4, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveDoubleClickEventParser;->distanceBetweenTwoClickThreshold:I

    int-to-double v4, v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveDoubleClickEventParser;->onDoubleClick(Landroid/view/View;Landroid/view/MotionEvent;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveDoubleClickEventParser;->lastClickTime:J

    goto :goto_0

    :cond_0
    iput-wide v0, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveDoubleClickEventParser;->lastClickTime:J

    new-instance p1, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-direct {p1, v0, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveDoubleClickEventParser;->firstTouchDownPoint:Landroid/graphics/Point;

    :goto_0
    return-void
.end method

.method public abstract onDoubleClick(Landroid/view/View;Landroid/view/MotionEvent;)V
.end method
