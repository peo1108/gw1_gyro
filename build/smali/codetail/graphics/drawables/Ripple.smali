.class Lcodetail/graphics/drawables/Ripple;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcodetail/graphics/drawables/Ripple$LogInterpolator;
    }
.end annotation


# static fields
.field private static final DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final GLOBAL_SPEED:F = 1.0f

.field private static final LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final RIPPLE_ENTER_DELAY:J = 0x50L

.field private static final WAVE_OPACITY_DECAY_VELOCITY:F = 3.0f

.field private static final WAVE_TOUCH_DOWN_ACCELERATION:F = 1024.0f

.field private static final WAVE_TOUCH_UP_ACCELERATION:F = 3400.0f


# instance fields
.field private mAnimOpacity:Landroid/animation/ObjectAnimator;

.field private mAnimRadius:Landroid/animation/ObjectAnimator;

.field private mAnimX:Landroid/animation/ObjectAnimator;

.field private mAnimY:Landroid/animation/ObjectAnimator;

.field private final mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mBounds:Landroid/graphics/Rect;

.field private mCanceled:Z

.field private mClampedStartingX:F

.field private mClampedStartingY:F

.field private mDensity:F

.field private mHasMaxRadius:Z

.field private mOpacity:F

.field private mOuterRadius:F

.field private mOuterX:F

.field private mOuterY:F

.field private final mOwner:Lcodetail/graphics/drawables/RippleDrawable;

.field private mStartingX:F

.field private mStartingY:F

.field private mTempPaint:Landroid/graphics/Paint;

.field private mTweenRadius:F

.field private mTweenX:F

.field private mTweenY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcodetail/graphics/drawables/Ripple;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    new-instance v0, Lcodetail/graphics/drawables/Ripple$LogInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcodetail/graphics/drawables/Ripple$LogInterpolator;-><init>(Lcodetail/graphics/drawables/Ripple$1;)V

    sput-object v0, Lcodetail/graphics/drawables/Ripple;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Lcodetail/graphics/drawables/RippleDrawable;Landroid/graphics/Rect;FF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcodetail/graphics/drawables/Ripple;->mOpacity:F

    const/4 v0, 0x0

    iput v0, p0, Lcodetail/graphics/drawables/Ripple;->mTweenRadius:F

    iput v0, p0, Lcodetail/graphics/drawables/Ripple;->mTweenX:F

    iput v0, p0, Lcodetail/graphics/drawables/Ripple;->mTweenY:F

    new-instance v0, Lcodetail/graphics/drawables/Ripple$1;

    invoke-direct {v0, p0}, Lcodetail/graphics/drawables/Ripple$1;-><init>(Lcodetail/graphics/drawables/Ripple;)V

    iput-object v0, p0, Lcodetail/graphics/drawables/Ripple;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    iput-object p1, p0, Lcodetail/graphics/drawables/Ripple;->mOwner:Lcodetail/graphics/drawables/RippleDrawable;

    iput-object p2, p0, Lcodetail/graphics/drawables/Ripple;->mBounds:Landroid/graphics/Rect;

    iput p3, p0, Lcodetail/graphics/drawables/Ripple;->mStartingX:F

    iput p4, p0, Lcodetail/graphics/drawables/Ripple;->mStartingY:F

    return-void
.end method

.method public static synthetic access$100(Lcodetail/graphics/drawables/Ripple;)V
    .locals 0

    invoke-direct {p0}, Lcodetail/graphics/drawables/Ripple;->removeSelf()V

    return-void
.end method

.method private cancelSoftwareAnimations()V
    .locals 2

    iget-object v0, p0, Lcodetail/graphics/drawables/Ripple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iput-object v1, p0, Lcodetail/graphics/drawables/Ripple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    :cond_0
    iget-object v0, p0, Lcodetail/graphics/drawables/Ripple;->mAnimOpacity:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iput-object v1, p0, Lcodetail/graphics/drawables/Ripple;->mAnimOpacity:Landroid/animation/ObjectAnimator;

    :cond_1
    iget-object v0, p0, Lcodetail/graphics/drawables/Ripple;->mAnimX:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iput-object v1, p0, Lcodetail/graphics/drawables/Ripple;->mAnimX:Landroid/animation/ObjectAnimator;

    :cond_2
    iget-object v0, p0, Lcodetail/graphics/drawables/Ripple;->mAnimY:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iput-object v1, p0, Lcodetail/graphics/drawables/Ripple;->mAnimY:Landroid/animation/ObjectAnimator;

    :cond_3
    return-void
.end method

.method private clampStartingPosition()V
    .locals 9

    iget-object v0, p0, Lcodetail/graphics/drawables/Ripple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iget-object v1, p0, Lcodetail/graphics/drawables/Ripple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    iget v2, p0, Lcodetail/graphics/drawables/Ripple;->mStartingX:F

    sub-float v3, v2, v0

    iget v4, p0, Lcodetail/graphics/drawables/Ripple;->mStartingY:F

    sub-float v5, v4, v1

    iget v6, p0, Lcodetail/graphics/drawables/Ripple;->mOuterRadius:F

    mul-float v7, v3, v3

    mul-float v8, v5, v5

    add-float/2addr v7, v8

    mul-float v8, v6, v6

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    float-to-double v4, v5

    float-to-double v2, v3

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    float-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    add-float/2addr v0, v4

    iput v0, p0, Lcodetail/graphics/drawables/Ripple;->mClampedStartingX:F

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-float v0, v2

    add-float/2addr v1, v0

    iput v1, p0, Lcodetail/graphics/drawables/Ripple;->mClampedStartingY:F

    goto :goto_0

    :cond_0
    iput v2, p0, Lcodetail/graphics/drawables/Ripple;->mClampedStartingX:F

    iput v4, p0, Lcodetail/graphics/drawables/Ripple;->mClampedStartingY:F

    :goto_0
    return-void
.end method

.method private endSoftwareAnimations()V
    .locals 2

    iget-object v0, p0, Lcodetail/graphics/drawables/Ripple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    iput-object v1, p0, Lcodetail/graphics/drawables/Ripple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    :cond_0
    iget-object v0, p0, Lcodetail/graphics/drawables/Ripple;->mAnimOpacity:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    iput-object v1, p0, Lcodetail/graphics/drawables/Ripple;->mAnimOpacity:Landroid/animation/ObjectAnimator;

    :cond_1
    iget-object v0, p0, Lcodetail/graphics/drawables/Ripple;->mAnimX:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    iput-object v1, p0, Lcodetail/graphics/drawables/Ripple;->mAnimX:Landroid/animation/ObjectAnimator;

    :cond_2
    iget-object v0, p0, Lcodetail/graphics/drawables/Ripple;->mAnimY:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    iput-object v1, p0, Lcodetail/graphics/drawables/Ripple;->mAnimY:Landroid/animation/ObjectAnimator;

    :cond_3
    return-void
.end method

.method private exitSoftware(II)V
    .locals 9

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const-string v4, "radiusGravity"

    invoke-static {p0, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    int-to-long v4, p1

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p1, Lcodetail/graphics/drawables/Ripple;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v6, "xGravity"

    new-array v7, v1, [F

    aput v0, v7, v3

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v6, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v7, "yGravity"

    new-array v8, v1, [F

    aput v0, v8, v3

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p1, v1, [F

    const/4 v1, 0x0

    aput v1, p1, v3

    const-string v1, "opacity"

    invoke-static {p0, v1, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    int-to-long v3, p2

    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p2, Lcodetail/graphics/drawables/Ripple;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcodetail/graphics/drawables/Ripple;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v2, p0, Lcodetail/graphics/drawables/Ripple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    iput-object p1, p0, Lcodetail/graphics/drawables/Ripple;->mAnimOpacity:Landroid/animation/ObjectAnimator;

    iput-object v6, p0, Lcodetail/graphics/drawables/Ripple;->mAnimX:Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcodetail/graphics/drawables/Ripple;->mAnimY:Landroid/animation/ObjectAnimator;

    invoke-static {v2}, Lcodetail/graphics/drawables/AnimatorsCompat;->startWithAutoCancel(Landroid/animation/ObjectAnimator;)V

    invoke-static {p1}, Lcodetail/graphics/drawables/AnimatorsCompat;->startWithAutoCancel(Landroid/animation/ObjectAnimator;)V

    invoke-static {v6}, Lcodetail/graphics/drawables/AnimatorsCompat;->startWithAutoCancel(Landroid/animation/ObjectAnimator;)V

    invoke-static {v0}, Lcodetail/graphics/drawables/AnimatorsCompat;->startWithAutoCancel(Landroid/animation/ObjectAnimator;)V

    return-void
.end method

.method private getTempPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcodetail/graphics/drawables/Ripple;->mTempPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcodetail/graphics/drawables/Ripple;->mTempPaint:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p0, Lcodetail/graphics/drawables/Ripple;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-object p1, p0, Lcodetail/graphics/drawables/Ripple;->mTempPaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method private invalidateSelf()V
    .locals 1

    iget-object v0, p0, Lcodetail/graphics/drawables/Ripple;->mOwner:Lcodetail/graphics/drawables/RippleDrawable;

    invoke-virtual {v0}, Lcodetail/graphics/drawables/RippleDrawable;->invalidateSelf()V

    return-void
.end method

.method private removeSelf()V
    .locals 1

    iget-boolean v0, p0, Lcodetail/graphics/drawables/Ripple;->mCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcodetail/graphics/drawables/Ripple;->mOwner:Lcodetail/graphics/drawables/RippleDrawable;

    invoke-virtual {v0, p0}, Lcodetail/graphics/drawables/RippleDrawable;->removeRipple(Lcodetail/graphics/drawables/Ripple;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcodetail/graphics/drawables/Ripple;->mCanceled:Z

    invoke-direct {p0}, Lcodetail/graphics/drawables/Ripple;->cancelSoftwareAnimations()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcodetail/graphics/drawables/Ripple;->mCanceled:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 7

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    int-to-float v1, v0

    iget v2, p0, Lcodetail/graphics/drawables/Ripple;->mOpacity:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcodetail/graphics/drawables/Ripple;->mOuterRadius:F

    iget v3, p0, Lcodetail/graphics/drawables/Ripple;->mTweenRadius:F

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Lcodetail/graphics/drawables/MathUtils;->lerp(FFF)F

    move-result v2

    if-lez v1, :cond_0

    cmpl-float v3, v2, v4

    if-lez v3, :cond_0

    iget v3, p0, Lcodetail/graphics/drawables/Ripple;->mClampedStartingX:F

    iget-object v4, p0, Lcodetail/graphics/drawables/Ripple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcodetail/graphics/drawables/Ripple;->mOuterX:F

    iget v5, p0, Lcodetail/graphics/drawables/Ripple;->mTweenX:F

    invoke-static {v3, v4, v5}, Lcodetail/graphics/drawables/MathUtils;->lerp(FFF)F

    move-result v3

    iget v4, p0, Lcodetail/graphics/drawables/Ripple;->mClampedStartingY:F

    iget-object v5, p0, Lcodetail/graphics/drawables/Ripple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcodetail/graphics/drawables/Ripple;->mOuterY:F

    iget v6, p0, Lcodetail/graphics/drawables/Ripple;->mTweenY:F

    invoke-static {v4, v5, v6}, Lcodetail/graphics/drawables/MathUtils;->lerp(FFF)F

    move-result v4

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1, v3, v4, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public enter()V
    .locals 11

    invoke-virtual {p0}, Lcodetail/graphics/drawables/Ripple;->cancel()V

    iget v0, p0, Lcodetail/graphics/drawables/Ripple;->mOuterRadius:F

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcodetail/graphics/drawables/Ripple;->mDensity:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const-string v5, "radiusGravity"

    invoke-static {p0, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    int-to-long v5, v0

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Lcodetail/graphics/drawables/Ripple;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0x50

    invoke-virtual {v3, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    const-string v9, "xGravity"

    new-array v10, v2, [F

    aput v1, v10, v4

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v9, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v9, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    const-string v10, "yGravity"

    new-array v2, v2, [F

    aput v1, v2, v4

    invoke-static {p0, v10, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    iput-object v3, p0, Lcodetail/graphics/drawables/Ripple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    iput-object v9, p0, Lcodetail/graphics/drawables/Ripple;->mAnimX:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcodetail/graphics/drawables/Ripple;->mAnimY:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    invoke-static {v3}, Lcodetail/graphics/drawables/AnimatorsCompat;->startWithAutoCancel(Landroid/animation/ObjectAnimator;)V

    invoke-static {v9}, Lcodetail/graphics/drawables/AnimatorsCompat;->startWithAutoCancel(Landroid/animation/ObjectAnimator;)V

    invoke-static {v1}, Lcodetail/graphics/drawables/AnimatorsCompat;->startWithAutoCancel(Landroid/animation/ObjectAnimator;)V

    return-void
.end method

.method public exit()V
    .locals 4

    iget v0, p0, Lcodetail/graphics/drawables/Ripple;->mOuterRadius:F

    iget v1, p0, Lcodetail/graphics/drawables/Ripple;->mTweenRadius:F

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcodetail/graphics/drawables/MathUtils;->lerp(FFF)F

    move-result v0

    iget-object v1, p0, Lcodetail/graphics/drawables/Ripple;->mAnimRadius:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcodetail/graphics/drawables/Ripple;->mOuterRadius:F

    sub-float/2addr v1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcodetail/graphics/drawables/Ripple;->mOuterRadius:F

    :goto_0
    invoke-virtual {p0}, Lcodetail/graphics/drawables/Ripple;->cancel()V

    const v0, 0x458a4000    # 4424.0f

    div-float/2addr v1, v0

    iget v0, p0, Lcodetail/graphics/drawables/Ripple;->mDensity:F

    mul-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    iget v2, p0, Lcodetail/graphics/drawables/Ripple;->mOpacity:F

    mul-float/2addr v2, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v2, v1

    float-to-int v1, v2

    invoke-direct {p0, v0, v1}, Lcodetail/graphics/drawables/Ripple;->exitSoftware(II)V

    return-void
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 5

    iget v0, p0, Lcodetail/graphics/drawables/Ripple;->mOuterX:F

    float-to-int v0, v0

    iget v1, p0, Lcodetail/graphics/drawables/Ripple;->mOuterY:F

    float-to-int v1, v1

    iget v2, p0, Lcodetail/graphics/drawables/Ripple;->mOuterRadius:F

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    sub-int v3, v0, v2

    sub-int v4, v1, v2

    add-int/2addr v0, v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getOpacity()F
    .locals 1

    iget v0, p0, Lcodetail/graphics/drawables/Ripple;->mOpacity:F

    return v0
.end method

.method public getRadiusGravity()F
    .locals 1

    iget v0, p0, Lcodetail/graphics/drawables/Ripple;->mTweenRadius:F

    return v0
.end method

.method public getXGravity()F
    .locals 1

    iget v0, p0, Lcodetail/graphics/drawables/Ripple;->mTweenX:F

    return v0
.end method

.method public getYGravity()F
    .locals 1

    iget v0, p0, Lcodetail/graphics/drawables/Ripple;->mTweenY:F

    return v0
.end method

.method public jump()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcodetail/graphics/drawables/Ripple;->mCanceled:Z

    invoke-direct {p0}, Lcodetail/graphics/drawables/Ripple;->endSoftwareAnimations()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcodetail/graphics/drawables/Ripple;->mCanceled:Z

    return-void
.end method

.method public move(FF)V
    .locals 0

    iput p1, p0, Lcodetail/graphics/drawables/Ripple;->mStartingX:F

    iput p2, p0, Lcodetail/graphics/drawables/Ripple;->mStartingY:F

    invoke-direct {p0}, Lcodetail/graphics/drawables/Ripple;->clampStartingPosition()V

    return-void
.end method

.method public onHotspotBoundsChanged()V
    .locals 3

    iget-boolean v0, p0, Lcodetail/graphics/drawables/Ripple;->mHasMaxRadius:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcodetail/graphics/drawables/Ripple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcodetail/graphics/drawables/Ripple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    mul-float/2addr v0, v0

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcodetail/graphics/drawables/Ripple;->mOuterRadius:F

    invoke-direct {p0}, Lcodetail/graphics/drawables/Ripple;->clampStartingPosition()V

    :cond_0
    return-void
.end method

.method public setOpacity(F)V
    .locals 0

    iput p1, p0, Lcodetail/graphics/drawables/Ripple;->mOpacity:F

    invoke-direct {p0}, Lcodetail/graphics/drawables/Ripple;->invalidateSelf()V

    return-void
.end method

.method public setRadiusGravity(F)V
    .locals 0

    iput p1, p0, Lcodetail/graphics/drawables/Ripple;->mTweenRadius:F

    invoke-direct {p0}, Lcodetail/graphics/drawables/Ripple;->invalidateSelf()V

    return-void
.end method

.method public setXGravity(F)V
    .locals 0

    iput p1, p0, Lcodetail/graphics/drawables/Ripple;->mTweenX:F

    invoke-direct {p0}, Lcodetail/graphics/drawables/Ripple;->invalidateSelf()V

    return-void
.end method

.method public setYGravity(F)V
    .locals 0

    iput p1, p0, Lcodetail/graphics/drawables/Ripple;->mTweenY:F

    invoke-direct {p0}, Lcodetail/graphics/drawables/Ripple;->invalidateSelf()V

    return-void
.end method

.method public setup(IF)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcodetail/graphics/drawables/Ripple;->mHasMaxRadius:Z

    int-to-float p1, p1

    iput p1, p0, Lcodetail/graphics/drawables/Ripple;->mOuterRadius:F

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcodetail/graphics/drawables/Ripple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iget-object v1, p0, Lcodetail/graphics/drawables/Ripple;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    mul-float/2addr p1, p1

    mul-float/2addr v1, v1

    add-float/2addr p1, v1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcodetail/graphics/drawables/Ripple;->mOuterRadius:F

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcodetail/graphics/drawables/Ripple;->mOuterX:F

    iput p1, p0, Lcodetail/graphics/drawables/Ripple;->mOuterY:F

    iput p2, p0, Lcodetail/graphics/drawables/Ripple;->mDensity:F

    invoke-direct {p0}, Lcodetail/graphics/drawables/Ripple;->clampStartingPosition()V

    return-void
.end method
