.class public abstract Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveClickEventParser;
.super Lcom/zjx/jyandroid/base/TouchParsers/ViewTouchEventParser;
.source "SourceFile"


# instance fields
.field private currentId:I

.field private lastMoveId:I

.field public moveCountThreshold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zjx/jyandroid/base/TouchParsers/ViewTouchEventParser;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveClickEventParser;->currentId:I

    iput v0, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveClickEventParser;->lastMoveId:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveClickEventParser;->moveCountThreshold:I

    return-void
.end method

.method private _internal(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveClickEventParser;->currentId:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveClickEventParser;->currentId:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveClickEventParser;->currentId:I

    iget v1, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveClickEventParser;->lastMoveId:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveClickEventParser;->moveCountThreshold:I

    if-gt v0, v1, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveClickEventParser;->onClick(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_2
    const/4 p1, 0x0

    iput p1, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveClickEventParser;->lastMoveId:I

    iput p1, p0, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveClickEventParser;->currentId:I

    :goto_0
    return-void
.end method


# virtual methods
.method public abstract onClick(Landroid/view/View;Landroid/view/MotionEvent;)V
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveClickEventParser;->_internal(Landroid/view/View;Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public touchOccurred(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveClickEventParser;->_internal(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method
