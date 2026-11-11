.class public Lcodetail/graphics/drawables/RippleDrawable;
.super Lcodetail/graphics/drawables/LayerDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcodetail/graphics/drawables/RippleDrawable$RippleState;
    }
.end annotation


# static fields
.field private static final MASK_CONTENT:I = 0x1

.field private static final MASK_EXPLICIT:I = 0x2

.field private static final MASK_NONE:I = 0x0

.field private static final MASK_UNKNOWN:I = -0x1

.field private static final MAX_RIPPLES:I = 0xa

.field public static final RADIUS_AUTO:I = -0x1


# instance fields
.field private mBackground:Lcodetail/graphics/drawables/RippleBackground;

.field private mBackgroundActive:Z

.field private mDensity:F

.field private final mDirtyBounds:Landroid/graphics/Rect;

.field private final mDrawingBounds:Landroid/graphics/Rect;

.field private mExitingRipples:[Lcodetail/graphics/drawables/Ripple;

.field private mExitingRipplesCount:I

.field private mHasPending:Z

.field private mHasValidMask:Z

.field private final mHotspotBounds:Landroid/graphics/Rect;

.field private mMask:Landroid/graphics/drawable/Drawable;

.field private mMaskBuffer:Landroid/graphics/Bitmap;

.field private mMaskCanvas:Landroid/graphics/Canvas;

.field private mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mMaskMatrix:Landroid/graphics/Matrix;

.field private mMaskShader:Landroid/graphics/BitmapShader;

.field private mOverrideBounds:Z

.field private mPendingX:F

.field private mPendingY:F

.field private mRipple:Lcodetail/graphics/drawables/Ripple;

.field private mRippleActive:Z

.field private mRipplePaint:Landroid/graphics/Paint;

.field private mState:Lcodetail/graphics/drawables/RippleDrawable$RippleState;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    new-instance v0, Lcodetail/graphics/drawables/RippleDrawable$RippleState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcodetail/graphics/drawables/RippleDrawable$RippleState;-><init>(Lcodetail/graphics/drawables/LayerDrawable$LayerState;Lcodetail/graphics/drawables/RippleDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Lcodetail/graphics/drawables/RippleDrawable;-><init>(Lcodetail/graphics/drawables/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 10
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 3
    new-instance v0, Lcodetail/graphics/drawables/RippleDrawable$RippleState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcodetail/graphics/drawables/RippleDrawable$RippleState;-><init>(Lcodetail/graphics/drawables/LayerDrawable$LayerState;Lcodetail/graphics/drawables/RippleDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Lcodetail/graphics/drawables/RippleDrawable;-><init>(Lcodetail/graphics/drawables/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    if-eqz p2, :cond_0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p2

    .line 4
    invoke-virtual/range {v2 .. v9}, Lcodetail/graphics/drawables/LayerDrawable;->addLayer(Landroid/graphics/drawable/Drawable;[Landroid/util/TypedValue;IIIII)Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    :cond_0
    if-eqz p3, :cond_1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const v5, 0x102002e

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p3

    .line 5
    invoke-virtual/range {v2 .. v9}, Lcodetail/graphics/drawables/LayerDrawable;->addLayer(Landroid/graphics/drawable/Drawable;[Landroid/util/TypedValue;IIIII)Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lcodetail/graphics/drawables/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 7
    invoke-virtual {p0}, Lcodetail/graphics/drawables/LayerDrawable;->ensurePadding()V

    .line 8
    invoke-direct {p0}, Lcodetail/graphics/drawables/RippleDrawable;->initializeFromState()V

    return-void
.end method

.method private constructor <init>(Lcodetail/graphics/drawables/RippleDrawable$RippleState;Landroid/content/res/Resources;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcodetail/graphics/drawables/LayerDrawable;-><init>()V

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mTempRect:Landroid/graphics/Rect;

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    .line 12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mDrawingBounds:Landroid/graphics/Rect;

    .line 13
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mDirtyBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mExitingRipplesCount:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    iput v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mDensity:F

    .line 16
    new-instance v0, Lcodetail/graphics/drawables/RippleDrawable$RippleState;

    invoke-direct {v0, p1, p0, p2}, Lcodetail/graphics/drawables/RippleDrawable$RippleState;-><init>(Lcodetail/graphics/drawables/LayerDrawable$LayerState;Lcodetail/graphics/drawables/RippleDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mState:Lcodetail/graphics/drawables/RippleDrawable$RippleState;

    .line 17
    iput-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    .line 18
    iget p1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    if-lez p1, :cond_0

    .line 19
    invoke-virtual {p0}, Lcodetail/graphics/drawables/LayerDrawable;->ensurePadding()V

    :cond_0
    if-eqz p2, :cond_1

    .line 20
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mDensity:F

    .line 21
    :cond_1
    invoke-direct {p0}, Lcodetail/graphics/drawables/RippleDrawable;->initializeFromState()V

    return-void
.end method

.method public synthetic constructor <init>(Lcodetail/graphics/drawables/RippleDrawable$RippleState;Landroid/content/res/Resources;Lcodetail/graphics/drawables/RippleDrawable$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcodetail/graphics/drawables/RippleDrawable;-><init>(Lcodetail/graphics/drawables/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private cancelExitingRipples()Z
    .locals 5

    iget v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mExitingRipplesCount:I

    iget-object v1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mExitingRipples:[Lcodetail/graphics/drawables/Ripple;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcodetail/graphics/drawables/Ripple;->cancel()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_1
    iput v2, p0, Lcodetail/graphics/drawables/RippleDrawable;->mExitingRipplesCount:I

    return v2
.end method

.method private clearHotspots()V
    .locals 3

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mRipple:Lcodetail/graphics/drawables/Ripple;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcodetail/graphics/drawables/Ripple;->cancel()V

    iput-object v2, p0, Lcodetail/graphics/drawables/RippleDrawable;->mRipple:Lcodetail/graphics/drawables/Ripple;

    iput-boolean v1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mRippleActive:Z

    :cond_0
    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mBackground:Lcodetail/graphics/drawables/RippleBackground;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcodetail/graphics/drawables/RippleBackground;->cancel()V

    iput-object v2, p0, Lcodetail/graphics/drawables/RippleDrawable;->mBackground:Lcodetail/graphics/drawables/RippleBackground;

    iput-boolean v1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mBackgroundActive:Z

    :cond_1
    invoke-direct {p0}, Lcodetail/graphics/drawables/RippleDrawable;->cancelExitingRipples()Z

    invoke-virtual {p0}, Lcodetail/graphics/drawables/RippleDrawable;->invalidateSelf()V

    return-void
.end method

.method private drawBackgroundAndRipples(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mRipple:Lcodetail/graphics/drawables/Ripple;

    iget-object v1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mBackground:Lcodetail/graphics/drawables/RippleBackground;

    iget v2, p0, Lcodetail/graphics/drawables/RippleDrawable;->mExitingRipplesCount:I

    if-nez v0, :cond_1

    if-gtz v2, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcodetail/graphics/drawables/RippleBackground;->shouldDraw()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcodetail/graphics/drawables/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    iget-object v4, p0, Lcodetail/graphics/drawables/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0}, Lcodetail/graphics/drawables/RippleDrawable;->updateMaskShaderIfNeeded()V

    iget-object v5, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    neg-float v6, v3

    neg-float v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v5, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    iget-object v6, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_2
    iget-object v5, p0, Lcodetail/graphics/drawables/RippleDrawable;->mState:Lcodetail/graphics/drawables/RippleDrawable$RippleState;

    iget-object v5, v5, Lcodetail/graphics/drawables/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v6

    const/high16 v7, -0x1000000

    invoke-virtual {v5, v6, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    shl-int/lit8 v6, v6, 0x18

    invoke-direct {p0}, Lcodetail/graphics/drawables/RippleDrawable;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v8

    iget-object v9, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v9, :cond_3

    or-int/2addr v5, v7

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v9, v5, v7}, Lcodetail/graphics/drawables/DrawableReflectiveUtils;->setColor(Landroid/graphics/PorterDuffColorFilter;ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v5

    iput-object v5, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v5, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :cond_3
    const v7, 0xffffff

    and-int/2addr v5, v7

    or-int/2addr v5, v6

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcodetail/graphics/drawables/RippleBackground;->shouldDraw()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1, p1, v8}, Lcodetail/graphics/drawables/RippleBackground;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    :cond_4
    if-lez v2, :cond_5

    iget-object v1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mExitingRipples:[Lcodetail/graphics/drawables/Ripple;

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_5

    aget-object v6, v1, v5

    invoke-virtual {v6, p1, v8}, Lcodetail/graphics/drawables/Ripple;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0, p1, v8}, Lcodetail/graphics/drawables/Ripple;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    :cond_6
    neg-float v0, v3

    neg-float v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v0, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    iget v4, v3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mId:I

    const v5, 0x102002e

    if-eq v4, v5, :cond_0

    iget-object v3, v3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawMask(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private getMaskType()I
    .locals 6

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mRipple:Lcodetail/graphics/drawables/Ripple;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mExitingRipplesCount:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mBackground:Lcodetail/graphics/drawables/RippleBackground;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcodetail/graphics/drawables/RippleBackground;->shouldDraw()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    if-ne v0, v1, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x2

    return v0

    :cond_3
    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v3, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v0, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_5

    aget-object v5, v3, v4

    iget-object v5, v5, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    if-eq v5, v1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return v2
.end method

.method private getRippleIndex(Lcodetail/graphics/drawables/Ripple;)I
    .locals 4

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mExitingRipples:[Lcodetail/graphics/drawables/Ripple;

    iget v1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mExitingRipplesCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-ne v3, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getRipplePaint()Landroid/graphics/Paint;
    .locals 2

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private initializeFromState()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const v0, 0x102002e

    invoke-virtual {p0, v0}, Lcodetail/graphics/drawables/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private onHotspotBoundsChanged()V
    .locals 4

    iget v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mExitingRipplesCount:I

    iget-object v1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mExitingRipples:[Lcodetail/graphics/drawables/Ripple;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcodetail/graphics/drawables/Ripple;->onHotspotBoundsChanged()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mRipple:Lcodetail/graphics/drawables/Ripple;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcodetail/graphics/drawables/Ripple;->onHotspotBoundsChanged()V

    :cond_1
    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mBackground:Lcodetail/graphics/drawables/RippleBackground;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcodetail/graphics/drawables/RippleBackground;->onHotspotBoundsChanged()V

    :cond_2
    return-void
.end method

.method private setBackgroundActive(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mBackgroundActive:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mBackgroundActive:Z

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcodetail/graphics/drawables/RippleDrawable;->tryBackgroundEnter(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcodetail/graphics/drawables/RippleDrawable;->tryBackgroundExit()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setRippleActive(Z)V
    .locals 1

    iget-boolean v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mRippleActive:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mRippleActive:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcodetail/graphics/drawables/RippleDrawable;->tryRippleEnter()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcodetail/graphics/drawables/RippleDrawable;->tryRippleExit()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setTargetDensity(Landroid/util/DisplayMetrics;)V
    .locals 1

    iget v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mDensity:F

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mDensity:F

    invoke-virtual {p0}, Lcodetail/graphics/drawables/RippleDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method private tryBackgroundEnter(Z)V
    .locals 3

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mBackground:Lcodetail/graphics/drawables/RippleBackground;

    if-nez v0, :cond_0

    new-instance v0, Lcodetail/graphics/drawables/RippleBackground;

    iget-object v1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-direct {v0, p0, v1}, Lcodetail/graphics/drawables/RippleBackground;-><init>(Lcodetail/graphics/drawables/RippleDrawable;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mBackground:Lcodetail/graphics/drawables/RippleBackground;

    :cond_0
    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mBackground:Lcodetail/graphics/drawables/RippleBackground;

    iget-object v1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mState:Lcodetail/graphics/drawables/RippleDrawable$RippleState;

    iget v1, v1, Lcodetail/graphics/drawables/RippleDrawable$RippleState;->mMaxRadius:I

    iget v2, p0, Lcodetail/graphics/drawables/RippleDrawable;->mDensity:F

    invoke-virtual {v0, v1, v2}, Lcodetail/graphics/drawables/RippleBackground;->setup(IF)V

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mBackground:Lcodetail/graphics/drawables/RippleBackground;

    invoke-virtual {v0, p1}, Lcodetail/graphics/drawables/RippleBackground;->enter(Z)V

    return-void
.end method

.method private tryBackgroundExit()V
    .locals 1

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mBackground:Lcodetail/graphics/drawables/RippleBackground;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcodetail/graphics/drawables/RippleBackground;->exit()V

    :cond_0
    return-void
.end method

.method private tryRippleEnter()V
    .locals 4

    iget v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mExitingRipplesCount:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mRipple:Lcodetail/graphics/drawables/Ripple;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mHasPending:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mHasPending:Z

    iget v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mPendingX:F

    iget v1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mPendingY:F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iget-object v1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    :goto_0
    new-instance v2, Lcodetail/graphics/drawables/Ripple;

    iget-object v3, p0, Lcodetail/graphics/drawables/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-direct {v2, p0, v3, v0, v1}, Lcodetail/graphics/drawables/Ripple;-><init>(Lcodetail/graphics/drawables/RippleDrawable;Landroid/graphics/Rect;FF)V

    iput-object v2, p0, Lcodetail/graphics/drawables/RippleDrawable;->mRipple:Lcodetail/graphics/drawables/Ripple;

    :cond_2
    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mRipple:Lcodetail/graphics/drawables/Ripple;

    iget-object v1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mState:Lcodetail/graphics/drawables/RippleDrawable$RippleState;

    iget v1, v1, Lcodetail/graphics/drawables/RippleDrawable$RippleState;->mMaxRadius:I

    iget v2, p0, Lcodetail/graphics/drawables/RippleDrawable;->mDensity:F

    invoke-virtual {v0, v1, v2}, Lcodetail/graphics/drawables/Ripple;->setup(IF)V

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mRipple:Lcodetail/graphics/drawables/Ripple;

    invoke-virtual {v0}, Lcodetail/graphics/drawables/Ripple;->enter()V

    return-void
.end method

.method private tryRippleExit()V
    .locals 4

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mRipple:Lcodetail/graphics/drawables/Ripple;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mExitingRipples:[Lcodetail/graphics/drawables/Ripple;

    if-nez v1, :cond_0

    const/16 v1, 0xa

    new-array v1, v1, [Lcodetail/graphics/drawables/Ripple;

    iput-object v1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mExitingRipples:[Lcodetail/graphics/drawables/Ripple;

    :cond_0
    iget-object v1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mExitingRipples:[Lcodetail/graphics/drawables/Ripple;

    iget v2, p0, Lcodetail/graphics/drawables/RippleDrawable;->mExitingRipplesCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcodetail/graphics/drawables/RippleDrawable;->mExitingRipplesCount:I

    aput-object v0, v1, v2

    invoke-virtual {v0}, Lcodetail/graphics/drawables/Ripple;->exit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mRipple:Lcodetail/graphics/drawables/Ripple;

    :cond_1
    return-void
.end method

.method private updateMaskShaderIfNeeded()V
    .locals 6

    iget-boolean v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mHasValidMask:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcodetail/graphics/drawables/RippleDrawable;->getMaskType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mHasValidMask:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v0, :cond_a

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v3, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eq v3, v5, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v3, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/BitmapShader;

    iget-object v3, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v3, v5, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    :goto_1
    iget-object v2, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_6

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    :goto_2
    iget-object v2, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-nez v2, :cond_7

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    :cond_7
    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lcodetail/graphics/drawables/RippleDrawable;->drawMask(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_8
    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lcodetail/graphics/drawables/RippleDrawable;->drawContent(Landroid/graphics/Canvas;)V

    :cond_9
    :goto_3
    return-void

    :cond_a
    :goto_4
    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    iput-object v1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    :cond_b
    iput-object v1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    iput-object v1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/Resources$Theme;Landroid/content/res/TypedArray;[Landroid/util/TypedValue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mState:Lcodetail/graphics/drawables/RippleDrawable$RippleState;

    iget v1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChangingConfigurations:I

    invoke-static {p2}, Lcodetail/graphics/drawables/TypedArrayCompat;->getChangingConfigurations(Landroid/content/res/TypedArray;)I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChangingConfigurations:I

    invoke-static {p2}, Lcodetail/graphics/drawables/TypedArrayCompat;->extractThemeAttrs(Landroid/content/res/TypedArray;)[Landroid/util/TypedValue;

    move-result-object v1

    iput-object v1, v0, Lcodetail/graphics/drawables/RippleDrawable$RippleState;->mTouchThemeAttrs:[Landroid/util/TypedValue;

    sget v0, Ldreamers/graphics/R$styleable;->RippleDrawable_android_color:I

    invoke-static {p1, p2, p3, v0}, Lcodetail/graphics/drawables/TypedArrayCompat;->getColorStateList(Landroid/content/res/Resources$Theme;Landroid/content/res/TypedArray;[Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p3, p0, Lcodetail/graphics/drawables/RippleDrawable;->mState:Lcodetail/graphics/drawables/RippleDrawable$RippleState;

    iput-object p1, p3, Lcodetail/graphics/drawables/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    :cond_0
    invoke-direct {p0, p2}, Lcodetail/graphics/drawables/RippleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    return-void
.end method

.method private verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mState:Lcodetail/graphics/drawables/RippleDrawable$RippleState;

    iget-object v1, v0, Lcodetail/graphics/drawables/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_1

    iget-object v0, v0, Lcodetail/graphics/drawables/RippleDrawable$RippleState;->mTouchThemeAttrs:[Landroid/util/TypedValue;

    if-eqz v0, :cond_0

    sget v1, Ldreamers/graphics/R$styleable;->RippleDrawable_android_color:I

    aget-object v0, v0, v1

    iget v0, v0, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": <ripple> requires a valid color attribute"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcodetail/graphics/drawables/LayerDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mState:Lcodetail/graphics/drawables/RippleDrawable$RippleState;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcodetail/graphics/drawables/RippleDrawable$RippleState;->mTouchThemeAttrs:[Landroid/util/TypedValue;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1, v0}, Lcodetail/graphics/drawables/RippleDrawable;->updateStateFromTypedArray(Landroid/content/res/Resources$Theme;Landroid/content/res/TypedArray;[Landroid/util/TypedValue;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcodetail/graphics/drawables/RippleDrawable;->initializeFromState()V

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mState:Lcodetail/graphics/drawables/RippleDrawable$RippleState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcodetail/graphics/drawables/RippleDrawable$RippleState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcodetail/graphics/drawables/LayerDrawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic createConstantState(Lcodetail/graphics/drawables/LayerDrawable$LayerState;Landroid/content/res/Resources;)Lcodetail/graphics/drawables/LayerDrawable$LayerState;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcodetail/graphics/drawables/RippleDrawable;->createConstantState(Lcodetail/graphics/drawables/LayerDrawable$LayerState;Landroid/content/res/Resources;)Lcodetail/graphics/drawables/RippleDrawable$RippleState;

    move-result-object p1

    return-object p1
.end method

.method public createConstantState(Lcodetail/graphics/drawables/LayerDrawable$LayerState;Landroid/content/res/Resources;)Lcodetail/graphics/drawables/RippleDrawable$RippleState;
    .locals 1

    .line 2
    new-instance v0, Lcodetail/graphics/drawables/RippleDrawable$RippleState;

    invoke-direct {v0, p1, p0, p2}, Lcodetail/graphics/drawables/RippleDrawable$RippleState;-><init>(Lcodetail/graphics/drawables/LayerDrawable$LayerState;Lcodetail/graphics/drawables/RippleDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcodetail/graphics/drawables/RippleDrawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-direct {p0, p1}, Lcodetail/graphics/drawables/RippleDrawable;->drawContent(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcodetail/graphics/drawables/RippleDrawable;->drawBackgroundAndRipples(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mState:Lcodetail/graphics/drawables/RippleDrawable$RippleState;

    return-object v0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcodetail/graphics/drawables/RippleDrawable;->isProjected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mDrawingBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mDirtyBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v2, p0, Lcodetail/graphics/drawables/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcodetail/graphics/drawables/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcodetail/graphics/drawables/RippleDrawable;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcodetail/graphics/drawables/RippleDrawable;->mExitingRipples:[Lcodetail/graphics/drawables/Ripple;

    iget v6, p0, Lcodetail/graphics/drawables/RippleDrawable;->mExitingRipplesCount:I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    invoke-virtual {v8, v4}, Lcodetail/graphics/drawables/Ripple;->getBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcodetail/graphics/drawables/RippleDrawable;->mBackground:Lcodetail/graphics/drawables/RippleBackground;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v4}, Lcodetail/graphics/drawables/RippleBackground;->getBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_1
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-super {p0}, Lcodetail/graphics/drawables/LollipopDrawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    return-object v1

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getMaxRadius()I
    .locals 1

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mState:Lcodetail/graphics/drawables/RippleDrawable$RippleState;

    iget v0, v0, Lcodetail/graphics/drawables/RippleDrawable$RippleState;->mMaxRadius:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 6
    .param p1    # Landroid/graphics/Outline;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v0, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    iget v4, v3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mId:I

    const v5, 0x102002e

    if-eq v4, v5, :cond_0

    iget-object v3, v3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    invoke-virtual {p1}, Landroid/graphics/Outline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ldreamers/graphics/R$styleable;->RippleDrawable:[I

    invoke-static {p1, p4, p3, v0}, Lcodetail/graphics/drawables/LayerDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcodetail/graphics/drawables/RippleDrawable;->updateStateFromTypedArray(Landroid/content/res/Resources$Theme;Landroid/content/res/TypedArray;[Landroid/util/TypedValue;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcodetail/graphics/drawables/RippleDrawable;->setPaddingMode(I)V

    invoke-super {p0, p1, p2, p3, p4}, Lcodetail/graphics/drawables/LayerDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-direct {p0, p1}, Lcodetail/graphics/drawables/RippleDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    invoke-direct {p0}, Lcodetail/graphics/drawables/RippleDrawable;->initializeFromState()V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mHasValidMask:Z

    return-void
.end method

.method public isProjected()Z
    .locals 1

    invoke-virtual {p0}, Lcodetail/graphics/drawables/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mRipple:Lcodetail/graphics/drawables/Ripple;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcodetail/graphics/drawables/Ripple;->jump()V

    :cond_0
    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mBackground:Lcodetail/graphics/drawables/RippleBackground;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcodetail/graphics/drawables/RippleBackground;->jump()V

    :cond_1
    invoke-direct {p0}, Lcodetail/graphics/drawables/RippleDrawable;->cancelExitingRipples()Z

    invoke-virtual {p0}, Lcodetail/graphics/drawables/RippleDrawable;->invalidateSelf()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcodetail/graphics/drawables/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    check-cast v0, Lcodetail/graphics/drawables/RippleDrawable$RippleState;

    iput-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mState:Lcodetail/graphics/drawables/RippleDrawable$RippleState;

    const v0, 0x102002e

    invoke-virtual {p0, v0}, Lcodetail/graphics/drawables/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Lcodetail/graphics/drawables/LayerDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mOverrideBounds:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcodetail/graphics/drawables/RippleDrawable;->onHotspotBoundsChanged()V

    :cond_0
    invoke-virtual {p0}, Lcodetail/graphics/drawables/RippleDrawable;->invalidateSelf()V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 10

    invoke-super {p0, p1}, Lcodetail/graphics/drawables/LayerDrawable;->onStateChange([I)Z

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v3, v1, :cond_3

    aget v8, p1, v3

    const v9, 0x101009e

    if-ne v8, v9, :cond_0

    move v4, v7

    :cond_0
    const v9, 0x101009c

    if-ne v8, v9, :cond_1

    move v6, v7

    :cond_1
    const v9, 0x10100a7

    if-ne v8, v9, :cond_2

    move v5, v7

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    move p1, v7

    goto :goto_1

    :cond_4
    move p1, v2

    :goto_1
    invoke-direct {p0, p1}, Lcodetail/graphics/drawables/RippleDrawable;->setRippleActive(Z)V

    if-nez v6, :cond_5

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    :cond_5
    move v2, v7

    :cond_6
    invoke-direct {p0, v2, v6}, Lcodetail/graphics/drawables/RippleDrawable;->setBackgroundActive(ZZ)V

    return v0
.end method

.method public removeRipple(Lcodetail/graphics/drawables/Ripple;)V
    .locals 4

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mExitingRipples:[Lcodetail/graphics/drawables/Ripple;

    iget v1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mExitingRipplesCount:I

    invoke-direct {p0, p1}, Lcodetail/graphics/drawables/RippleDrawable;->getRippleIndex(Lcodetail/graphics/drawables/Ripple;)I

    move-result p1

    if-ltz p1, :cond_0

    add-int/lit8 v2, p1, 0x1

    sub-int v3, v1, v2

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, -0x1

    const/4 p1, 0x0

    aput-object p1, v0, v1

    iget p1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mExitingRipplesCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mExitingRipplesCount:I

    invoke-virtual {p0}, Lcodetail/graphics/drawables/RippleDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    invoke-super {p0, p1}, Lcodetail/graphics/drawables/LayerDrawable;->setAlpha(I)V

    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mState:Lcodetail/graphics/drawables/RippleDrawable$RippleState;

    iput-object p1, v0, Lcodetail/graphics/drawables/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcodetail/graphics/drawables/RippleDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    invoke-super {p0, p1}, Lcodetail/graphics/drawables/LayerDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcodetail/graphics/drawables/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x102002e

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lcodetail/graphics/drawables/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setHotspot(FF)V
    .locals 2

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mRipple:Lcodetail/graphics/drawables/Ripple;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mBackground:Lcodetail/graphics/drawables/RippleBackground;

    if-nez v1, :cond_1

    :cond_0
    iput p1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mPendingX:F

    iput p2, p0, Lcodetail/graphics/drawables/RippleDrawable;->mPendingY:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mHasPending:Z

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcodetail/graphics/drawables/Ripple;->move(FF)V

    :cond_2
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mOverrideBounds:Z

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0}, Lcodetail/graphics/drawables/RippleDrawable;->onHotspotBoundsChanged()V

    return-void
.end method

.method public setMaxRadius(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxRadius must be RADIUS_AUTO or >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable;->mState:Lcodetail/graphics/drawables/RippleDrawable$RippleState;

    iput p1, v0, Lcodetail/graphics/drawables/RippleDrawable$RippleState;->mMaxRadius:I

    return-void
.end method

.method public setPaddingMode(I)V
    .locals 0

    invoke-super {p0, p1}, Lcodetail/graphics/drawables/LayerDrawable;->setPaddingMode(I)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcodetail/graphics/drawables/LayerDrawable;->setVisible(ZZ)Z

    move-result p2

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcodetail/graphics/drawables/RippleDrawable;->clearHotspots()V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    iget-boolean p1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mRippleActive:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcodetail/graphics/drawables/RippleDrawable;->tryRippleEnter()V

    :cond_1
    iget-boolean p1, p0, Lcodetail/graphics/drawables/RippleDrawable;->mBackgroundActive:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcodetail/graphics/drawables/RippleDrawable;->tryBackgroundEnter(Z)V

    :cond_2
    invoke-virtual {p0}, Lcodetail/graphics/drawables/RippleDrawable;->jumpToCurrentState()V

    :cond_3
    :goto_0
    return p2
.end method
