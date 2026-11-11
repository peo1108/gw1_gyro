.class public Lcodetail/graphics/drawables/DrawableHotspotTouch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcodetail/graphics/drawables/DrawableHotspotTouch$UnsetPressedState;,
        Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForLongPress;,
        Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForTap;,
        Lcodetail/graphics/drawables/DrawableHotspotTouch$PerformClick;
    }
.end annotation


# instance fields
.field private mHasPerformedLongPress:Z

.field private mHotspotDrawable:Lcodetail/graphics/drawables/LollipopDrawable;

.field private mInsideScrollContainer:Z

.field private mPendingCheckForLongPress:Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForLongPress;

.field private mPendingCheckForTap:Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForTap;

.field private mPerformClick:Lcodetail/graphics/drawables/DrawableHotspotTouch$PerformClick;

.field private mPrePressed:Z

.field private mTouchSlop:I

.field private mUnsetPressedState:Lcodetail/graphics/drawables/DrawableHotspotTouch$UnsetPressedState;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcodetail/graphics/drawables/DrawableHotspotTouch;-><init>(Lcodetail/graphics/drawables/LollipopDrawable;)V

    return-void
.end method

.method public constructor <init>(Lcodetail/graphics/drawables/LollipopDrawable;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mHotspotDrawable:Lcodetail/graphics/drawables/LollipopDrawable;

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mTouchSlop:I

    return-void
.end method

.method public static synthetic access$302(Lcodetail/graphics/drawables/DrawableHotspotTouch;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mPrePressed:Z

    return p1
.end method

.method public static synthetic access$400(Lcodetail/graphics/drawables/DrawableHotspotTouch;Landroid/view/View;ZFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcodetail/graphics/drawables/DrawableHotspotTouch;->setPressed(Landroid/view/View;ZFF)V

    return-void
.end method

.method public static synthetic access$500(Lcodetail/graphics/drawables/DrawableHotspotTouch;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcodetail/graphics/drawables/DrawableHotspotTouch;->checkForLongClick(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic access$602(Lcodetail/graphics/drawables/DrawableHotspotTouch;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mHasPerformedLongPress:Z

    return p1
.end method

.method private checkForLongClick(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mHasPerformedLongPress:Z

    iget-object v0, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mPendingCheckForLongPress:Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForLongPress;

    if-nez v0, :cond_0

    new-instance v0, Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForLongPress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForLongPress;-><init>(Lcodetail/graphics/drawables/DrawableHotspotTouch;Landroid/view/View;Lcodetail/graphics/drawables/DrawableHotspotTouch$1;)V

    iput-object v0, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mPendingCheckForLongPress:Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForLongPress;

    :cond_0
    iget-object v0, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mPendingCheckForLongPress:Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    sub-int/2addr v1, p2

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private pointInView(Landroid/view/View;FFF)Z
    .locals 2

    neg-float v0, p4

    cmpl-float v1, p2, v0

    if-ltz v1, :cond_0

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p4

    cmpg-float p2, p2, v0

    if-gez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    add-float/2addr p1, p4

    cmpg-float p1, p3, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private removeLongPressCallback(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mPendingCheckForLongPress:Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForLongPress;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removeTapCallback(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mPendingCheckForTap:Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForTap;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private setPressed(Landroid/view/View;ZFF)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    iget-object p1, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mHotspotDrawable:Lcodetail/graphics/drawables/LollipopDrawable;

    invoke-virtual {p1, p3, p4}, Lcodetail/graphics/drawables/LollipopDrawable;->setHotspot(FF)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_e

    if-eq v2, v4, :cond_5

    const/4 p2, 0x2

    if-eq v2, p2, :cond_3

    const/4 p2, 0x3

    if-eq v2, p2, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    invoke-direct {p0, p1}, Lcodetail/graphics/drawables/DrawableHotspotTouch;->removeTapCallback(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcodetail/graphics/drawables/DrawableHotspotTouch;->removeLongPressCallback(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_3
    iget-object p2, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mHotspotDrawable:Lcodetail/graphics/drawables/LollipopDrawable;

    invoke-virtual {p2, v0, v1}, Lcodetail/graphics/drawables/LollipopDrawable;->setHotspot(FF)V

    iget p2, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mTouchSlop:I

    const/4 v2, -0x1

    if-ne p2, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mTouchSlop:I

    :cond_4
    iget p2, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mTouchSlop:I

    int-to-float p2, p2

    invoke-direct {p0, p1, v0, v1, p2}, Lcodetail/graphics/drawables/DrawableHotspotTouch;->pointInView(Landroid/view/View;FFF)Z

    move-result p2

    if-nez p2, :cond_11

    invoke-direct {p0, p1}, Lcodetail/graphics/drawables/DrawableHotspotTouch;->removeTapCallback(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-direct {p0, p1}, Lcodetail/graphics/drawables/DrawableHotspotTouch;->removeLongPressCallback(Landroid/view/View;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_2

    :cond_5
    iget-boolean p2, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mPrePressed:Z

    if-nez p2, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p2

    if-eqz p2, :cond_11

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result v3

    :cond_7
    iget-boolean p2, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mPrePressed:Z

    if-eqz p2, :cond_8

    invoke-direct {p0, p1, v4, v0, v1}, Lcodetail/graphics/drawables/DrawableHotspotTouch;->setPressed(Landroid/view/View;ZFF)V

    :cond_8
    iget-boolean p2, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mHasPerformedLongPress:Z

    const/4 v0, 0x0

    if-nez p2, :cond_a

    invoke-direct {p0, p1}, Lcodetail/graphics/drawables/DrawableHotspotTouch;->removeLongPressCallback(Landroid/view/View;)V

    if-nez v3, :cond_a

    iget-object p2, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mPerformClick:Lcodetail/graphics/drawables/DrawableHotspotTouch$PerformClick;

    if-nez p2, :cond_9

    new-instance p2, Lcodetail/graphics/drawables/DrawableHotspotTouch$PerformClick;

    invoke-direct {p2, p1, v0}, Lcodetail/graphics/drawables/DrawableHotspotTouch$PerformClick;-><init>(Landroid/view/View;Lcodetail/graphics/drawables/DrawableHotspotTouch$1;)V

    iput-object p2, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mPerformClick:Lcodetail/graphics/drawables/DrawableHotspotTouch$PerformClick;

    :cond_9
    iget-object p2, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mPerformClick:Lcodetail/graphics/drawables/DrawableHotspotTouch$PerformClick;

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result p2

    if-nez p2, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_a
    iget-object p2, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mUnsetPressedState:Lcodetail/graphics/drawables/DrawableHotspotTouch$UnsetPressedState;

    if-nez p2, :cond_b

    new-instance p2, Lcodetail/graphics/drawables/DrawableHotspotTouch$UnsetPressedState;

    invoke-direct {p2, p0, p1, v0}, Lcodetail/graphics/drawables/DrawableHotspotTouch$UnsetPressedState;-><init>(Lcodetail/graphics/drawables/DrawableHotspotTouch;Landroid/view/View;Lcodetail/graphics/drawables/DrawableHotspotTouch$1;)V

    iput-object p2, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mUnsetPressedState:Lcodetail/graphics/drawables/DrawableHotspotTouch$UnsetPressedState;

    :cond_b
    iget-boolean p2, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mPrePressed:Z

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mUnsetPressedState:Lcodetail/graphics/drawables/DrawableHotspotTouch$UnsetPressedState;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_c
    iget-object p2, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mUnsetPressedState:Lcodetail/graphics/drawables/DrawableHotspotTouch$UnsetPressedState;

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result p2

    if-nez p2, :cond_d

    iget-object p2, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mUnsetPressedState:Lcodetail/graphics/drawables/DrawableHotspotTouch$UnsetPressedState;

    invoke-virtual {p2}, Lcodetail/graphics/drawables/DrawableHotspotTouch$UnsetPressedState;->run()V

    :cond_d
    :goto_1
    invoke-direct {p0, p1}, Lcodetail/graphics/drawables/DrawableHotspotTouch;->removeTapCallback(Landroid/view/View;)V

    goto :goto_2

    :cond_e
    iput-boolean v3, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mHasPerformedLongPress:Z

    iget-boolean v2, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mInsideScrollContainer:Z

    if-eqz v2, :cond_10

    iput-boolean v4, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mPrePressed:Z

    iget-object v0, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mPendingCheckForTap:Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForTap;

    if-nez v0, :cond_f

    new-instance v0, Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForTap;

    invoke-direct {v0, p0, p1}, Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForTap;-><init>(Lcodetail/graphics/drawables/DrawableHotspotTouch;Landroid/view/View;)V

    iput-object v0, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mPendingCheckForTap:Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForTap;

    :cond_f
    iget-object v0, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mPendingCheckForTap:Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForTap;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForTap;->x:F

    iget-object v0, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mPendingCheckForTap:Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForTap;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iput p2, v0, Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForTap;->y:F

    iget-object p2, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mPendingCheckForTap:Lcodetail/graphics/drawables/DrawableHotspotTouch$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_10
    invoke-direct {p0, p1, v4, v0, v1}, Lcodetail/graphics/drawables/DrawableHotspotTouch;->setPressed(Landroid/view/View;ZFF)V

    invoke-direct {p0, p1, v3}, Lcodetail/graphics/drawables/DrawableHotspotTouch;->checkForLongClick(Landroid/view/View;I)V

    :cond_11
    :goto_2
    return v4
.end method

.method public setInsideScrollContainer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcodetail/graphics/drawables/DrawableHotspotTouch;->mInsideScrollContainer:Z

    return-void
.end method
