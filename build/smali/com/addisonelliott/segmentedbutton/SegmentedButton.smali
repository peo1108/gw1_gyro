.class public Lcom/addisonelliott/segmentedbutton/SegmentedButton;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RtlHardcoded"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/addisonelliott/segmentedbutton/SegmentedButton$OnVisibilityChangedListener;
    }
.end annotation


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLORDRAWABLE_SIZE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SegmentedButton"


# instance fields
.field private backgroundClipPath:Landroid/graphics/Path;

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private backgroundPaint:Landroid/graphics/Paint;

.field private backgroundRadius:I

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private drawableColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private drawableGravity:I

.field private drawableHeight:I

.field private drawablePadding:I

.field private drawablePosition:Landroid/graphics/PointF;

.field private drawableTint:I

.field private drawableWidth:I

.field private ellipsize:Landroid/text/TextUtils$TruncateAt;

.field private hasDrawableHeight:Z

.field private hasDrawableTint:Z

.field private hasDrawableWidth:Z

.field private hasSelectedDrawableTint:Z

.field private hasSelectedTextColor:Z

.field private hasText:Z

.field private isClippingLeft:Z

.field private leftButton:Lcom/addisonelliott/segmentedbutton/SegmentedButton;

.field private linesCount:I

.field private onVisibilityChangedListener:Lcom/addisonelliott/segmentedbutton/SegmentedButton$OnVisibilityChangedListener;

.field private path:Landroid/graphics/Path;

.field private rectF:Landroid/graphics/RectF;

.field private relativeClipPosition:F

.field private rightButton:Lcom/addisonelliott/segmentedbutton/SegmentedButton;

.field private rippleColor:I

.field private rippleDrawable:Lcodetail/graphics/drawables/RippleDrawable;

.field private rippleDrawableLollipop:Landroid/graphics/drawable/RippleDrawable;

.field private rounded:Z

.field private selectedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private selectedBackgroundPaint:Landroid/graphics/Paint;

.field private selectedButtonBorderPaint:Landroid/graphics/Paint;

.field private selectedButtonRadii:[F

.field private selectedButtonRadius:I

.field private selectedDrawableColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private selectedDrawableTint:I

.field private selectedTextColor:I

.field private selectedTextTypeface:Landroid/graphics/Typeface;

.field private text:Ljava/lang/String;

.field private textColor:I

.field private textMaxWidth:I

.field private textPaint:Landroid/text/TextPaint;

.field private textPosition:Landroid/graphics/PointF;

.field private textSize:F

.field private textStaticLayout:Landroid/text/StaticLayout;

.field private textTypeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_android_background:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_android_background:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_selectedBackground:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_selectedBackground:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_rounded:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rounded:Z

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_rippleColor:I

    const v2, -0x777778

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setRipple(I)V

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_drawable:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_drawable:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->readCompatDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_drawablePadding:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawablePadding:I

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_drawableTint:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasDrawableTint:Z

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_drawableTint:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawableTint:I

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_selectedDrawableTint:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasSelectedDrawableTint:Z

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_selectedDrawableTint:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedDrawableTint:I

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_drawableWidth:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasDrawableWidth:Z

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_drawableHeight:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasDrawableHeight:Z

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_drawableWidth:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawableWidth:I

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_drawableHeight:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawableHeight:I

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_drawableGravity:I

    const/4 v4, 0x3

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawableGravity:I

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_text:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasText:Z

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_text:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->text:Ljava/lang/String;

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_textColor:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textColor:I

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_selectedTextColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasSelectedTextColor:Z

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_selectedTextColor:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedTextColor:I

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_linesCount:I

    const v2, 0x7fffffff

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->linesCount:I

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_android_ellipsize:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->resolveEllipsizeType(I)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    iput-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v0, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_textSize:I

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textSize:F

    sget p1, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_android_fontFamily:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_textStyle:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget v1, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_selectedTextStyle:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eqz p1, :cond_3

    sget p1, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_android_fontFamily:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getFont(I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textTypeface:Landroid/graphics/Typeface;

    sget p1, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButton_android_fontFamily:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getFont(I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedTextTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textTypeface:Landroid/graphics/Typeface;

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedTextTypeface:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :try_start_0
    instance-of v1, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x2

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    instance-of v1, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v3, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static getBitmapFromVectorDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->getAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->initText()V

    invoke-direct {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->initDrawable()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->relativeClipPosition:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->isClippingLeft:Z

    const/4 p2, 0x0

    iput p2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->backgroundRadius:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->leftButton:Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    iput-object p2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rightButton:Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rectF:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->path:Landroid/graphics/Path;

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private initDrawable()V
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawablePosition:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasDrawableTint:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawableTint:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawableColorFilter:Landroid/graphics/PorterDuffColorFilter;

    :cond_1
    iget-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasSelectedDrawableTint:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedDrawableTint:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedDrawableColorFilter:Landroid/graphics/PorterDuffColorFilter;

    :cond_2
    return-void
.end method

.method private initText()V
    .locals 5

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textPosition:Landroid/graphics/PointF;

    iget-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasText:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textStaticLayout:Landroid/text/StaticLayout;

    return-void

    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textMaxWidth:I

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textMaxWidth:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->linesCount:I

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textStaticLayout:Landroid/text/StaticLayout;

    return-void
.end method

.method private measureTextWidth(II)V
    .locals 3

    iget-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasText:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawableGravity:I

    invoke-static {v0}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textMaxWidth:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-gez p1, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->text:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textPaint:Landroid/text/TextPaint;

    invoke-static {p2, v1, v0, v2, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget p2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->linesCount:I

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textStaticLayout:Landroid/text/StaticLayout;

    return-void
.end method

.method private readCompatDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {p1, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    instance-of v0, p2, Landroid/graphics/drawable/VectorDrawable;

    if-nez v0, :cond_1

    instance-of v0, p2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p2

    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->getBitmapFromVectorDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private refreshTypeface()V
    .locals 0

    invoke-direct {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->initText()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-direct {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->updateSize()V

    return-void
.end method

.method private resolveEllipsizeType(I)Landroid/text/TextUtils$TruncateAt;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    return-object p1

    :cond_1
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    return-object p1

    :cond_2
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    return-object p1

    :cond_3
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    return-object p1
.end method

.method private updateSize()V
    .locals 12

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-boolean v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasText:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textStaticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-boolean v4, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasText:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textStaticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iget-object v5, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    iget-boolean v6, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasDrawableWidth:Z

    if-eqz v6, :cond_2

    iget v5, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawableWidth:I

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    iget-object v6, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_5

    iget-boolean v7, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasDrawableHeight:Z

    if-eqz v7, :cond_4

    iget v6, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawableHeight:I

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    goto :goto_3

    :cond_5
    move v6, v3

    :goto_3
    iget v7, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawableGravity:I

    invoke-static {v7}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textPosition:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    sub-int/2addr v10, v4

    int-to-float v4, v10

    div-float/2addr v4, v8

    add-float/2addr v9, v4

    iput v9, v7, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawablePosition:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    sub-int v9, v1, v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v9, v6

    int-to-float v9, v9

    div-float/2addr v9, v8

    add-float/2addr v7, v9

    iput v7, v4, Landroid/graphics/PointF;->y:F

    sub-int v4, v0, v2

    sub-int/2addr v4, v5

    iget v7, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawablePadding:I

    sub-int/2addr v4, v7

    int-to-float v4, v4

    div-float/2addr v4, v8

    iget v8, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawableGravity:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textPosition:Landroid/graphics/PointF;

    int-to-float v8, v5

    add-float/2addr v8, v4

    int-to-float v7, v7

    add-float/2addr v8, v7

    iput v8, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawablePosition:Landroid/graphics/PointF;

    iput v4, v2, Landroid/graphics/PointF;->x:F

    goto :goto_4

    :cond_6
    const/4 v9, 0x5

    if-ne v8, v9, :cond_9

    iget-object v8, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textPosition:Landroid/graphics/PointF;

    iput v4, v8, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawablePosition:Landroid/graphics/PointF;

    int-to-float v2, v2

    add-float/2addr v4, v2

    int-to-float v2, v7

    add-float/2addr v4, v2

    iput v4, v8, Landroid/graphics/PointF;->x:F

    goto :goto_4

    :cond_7
    iget-object v7, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textPosition:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    sub-int v10, v0, v10

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    int-to-float v2, v10

    div-float/2addr v2, v8

    add-float/2addr v9, v2

    iput v9, v7, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawablePosition:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    sub-int v9, v0, v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v9, v5

    int-to-float v9, v9

    div-float/2addr v9, v8

    add-float/2addr v7, v9

    iput v7, v2, Landroid/graphics/PointF;->x:F

    sub-int v2, v1, v4

    sub-int/2addr v2, v6

    iget v7, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawablePadding:I

    sub-int/2addr v2, v7

    int-to-float v2, v2

    div-float/2addr v2, v8

    iget v8, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawableGravity:I

    const/16 v9, 0x30

    if-ne v8, v9, :cond_8

    iget-object v4, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textPosition:Landroid/graphics/PointF;

    int-to-float v8, v6

    add-float/2addr v8, v2

    int-to-float v7, v7

    add-float/2addr v8, v7

    iput v8, v4, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawablePosition:Landroid/graphics/PointF;

    iput v2, v4, Landroid/graphics/PointF;->y:F

    goto :goto_4

    :cond_8
    const/16 v9, 0x50

    if-ne v8, v9, :cond_9

    iget-object v8, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textPosition:Landroid/graphics/PointF;

    iput v2, v8, Landroid/graphics/PointF;->y:F

    iget-object v8, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawablePosition:Landroid/graphics/PointF;

    int-to-float v4, v4

    add-float/2addr v2, v4

    int-to-float v4, v7

    add-float/2addr v2, v4

    iput v2, v8, Landroid/graphics/PointF;->y:F

    :cond_9
    :goto_4
    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_a

    iget-object v4, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawablePosition:Landroid/graphics/PointF;

    iget v7, v4, Landroid/graphics/PointF;->x:F

    float-to-int v8, v7

    iget v4, v4, Landroid/graphics/PointF;->y:F

    float-to-int v9, v4

    float-to-int v7, v7

    add-int/2addr v7, v5

    float-to-int v4, v4

    add-int/2addr v4, v6

    invoke-virtual {v2, v8, v9, v7, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_a
    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_b

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_b
    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_c

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_c
    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rippleDrawableLollipop:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_d

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_d
    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rippleDrawable:Lcodetail/graphics/drawables/RippleDrawable;

    if-eqz v2, :cond_e

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_e
    return-void
.end method


# virtual methods
.method public _setOnVisibilityChangedListener(Lcom/addisonelliott/segmentedbutton/SegmentedButton$OnVisibilityChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->onVisibilityChangedListener:Lcom/addisonelliott/segmentedbutton/SegmentedButton$OnVisibilityChangedListener;

    return-void
.end method

.method public clipLeft(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->isClippingLeft:Z

    iput p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->relativeClipPosition:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public clipRight(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->isClippingLeft:Z

    iput p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->relativeClipPosition:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rippleDrawableLollipop:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method public drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rippleDrawableLollipop:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rippleDrawable:Lcodetail/graphics/drawables/RippleDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDrawableGravity()I
    .locals 1

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawableGravity:I

    return v0
.end method

.method public getDrawableHeight()I
    .locals 1

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawableHeight:I

    return v0
.end method

.method public getDrawablePadding()I
    .locals 1

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawablePadding:I

    return v0
.end method

.method public getDrawableTint()I
    .locals 1

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawableTint:I

    return v0
.end method

.method public getDrawableWidth()I
    .locals 1

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawableWidth:I

    return v0
.end method

.method public getRippleColor()I
    .locals 1

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rippleColor:I

    return v0
.end method

.method public getSelectedBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSelectedDrawableTint()I
    .locals 1

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedDrawableTint:I

    return v0
.end method

.method public getSelectedTextColor()I
    .locals 1

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedTextColor:I

    return v0
.end method

.method public getSelectedTextTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedTextTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textSize:F

    return v0
.end method

.method public getTextTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public hasDrawableHeight()Z
    .locals 1

    iget-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasDrawableHeight:Z

    return v0
.end method

.method public hasDrawableTint()Z
    .locals 1

    iget-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasDrawableTint:Z

    return v0
.end method

.method public hasDrawableWidth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasDrawableWidth:Z

    return v0
.end method

.method public hasSelectedDrawableTint()Z
    .locals 1

    iget-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasSelectedDrawableTint:Z

    return v0
.end method

.method public hasSelectedTextColor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasSelectedTextColor:Z

    return v0
.end method

.method public isLeftButton()Z
    .locals 1

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->leftButton:Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRightButton()Z
    .locals 1

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rightButton:Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRounded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rounded:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->backgroundClipPath:Landroid/graphics/Path;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->backgroundPaint:Landroid/graphics/Paint;

    if-eqz v4, :cond_0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasText:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textPosition:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textStaticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawableColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->isClippingLeft:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->isLeftButton()Z

    move-result v2

    if-eqz v2, :cond_4

    int-to-float v2, v0

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->leftButton:Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    :goto_1
    iget-object v4, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rectF:Landroid/graphics/RectF;

    iget v5, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->relativeClipPosition:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v6, v5, v6

    mul-float/2addr v6, v2

    int-to-float v0, v0

    mul-float/2addr v5, v0

    int-to-float v0, v1

    invoke-virtual {v4, v6, v3, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->isRightButton()Z

    move-result v2

    if-eqz v2, :cond_6

    int-to-float v2, v0

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rightButton:Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    :goto_2
    iget-object v4, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rectF:Landroid/graphics/RectF;

    iget v5, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->relativeClipPosition:F

    int-to-float v0, v0

    mul-float v6, v5, v0

    mul-float/2addr v5, v2

    add-float/2addr v0, v5

    int-to-float v1, v1

    invoke-virtual {v4, v6, v3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_3
    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedButtonRadius:I

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedBackgroundPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedButtonRadii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->backgroundClipPath:Landroid/graphics/Path;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedBackgroundPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_8

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_9
    :goto_4
    iget-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasText:Z

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textPosition:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textPaint:Landroid/text/TextPaint;

    iget-boolean v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasSelectedTextColor:Z

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedTextColor:I

    goto :goto_5

    :cond_a
    iget v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textColor:I

    :goto_5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedTextTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textStaticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_b
    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    iget-boolean v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasSelectedDrawableTint:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedDrawableColorFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_6

    :cond_c
    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawableColorFilter:Landroid/graphics/PorterDuffColorFilter;

    :goto_6
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_d
    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedButtonBorderPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rectF:Landroid/graphics/RectF;

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedButtonRadii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedButtonBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->backgroundClipPath:Landroid/graphics/Path;

    if-eqz v0, :cond_f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_f
    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rippleDrawableLollipop:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_10
    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rippleDrawable:Lcodetail/graphics/drawables/RippleDrawable;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Lcodetail/graphics/drawables/RippleDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasDrawableWidth:Z

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawableWidth:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasText:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textMaxWidth:I

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawableGravity:I

    invoke-static {v4}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawablePadding:I

    add-int/2addr v2, v4

    add-int/2addr v2, v0

    :goto_2
    add-int/2addr v3, v2

    goto :goto_3

    :cond_3
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2

    :goto_3
    invoke-static {v3, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->measureTextWidth(II)V

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-boolean v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasDrawableHeight:Z

    if-eqz v2, :cond_4

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawableHeight:I

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_4

    :cond_5
    move v0, v1

    :goto_4
    iget-boolean v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasText:Z

    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textStaticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawableGravity:I

    invoke-static {v3}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_5

    :cond_7
    iget v3, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawablePadding:I

    add-int/2addr v1, v3

    add-int/2addr v1, v0

    add-int/2addr v2, v1

    :goto_5
    invoke-static {v2, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->updateSize()V

    invoke-virtual {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setupBackgroundClipPath()V

    return-void
.end method

.method public removeDrawableTint()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasDrawableTint:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawableColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public removeSelectedDrawableTint()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasSelectedDrawableTint:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedDrawableColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public removeSelectedTextColor()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasSelectedTextColor:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBackground(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 5
    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setupBackgroundBitmaps()V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3
    invoke-virtual {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setupBackgroundBitmaps()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setBackground(I)V

    return-void
.end method

.method public setBackgroundRadius(I)V
    .locals 0

    iput p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->backgroundRadius:I

    return-void
.end method

.method public setDefaultBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public setDefaultSelectedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-direct {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->updateSize()V

    return-void
.end method

.method public setDrawableGravity(I)V
    .locals 0

    iput p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawableGravity:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-direct {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->updateSize()V

    return-void
.end method

.method public setDrawableHeight(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasDrawableHeight:Z

    iput p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawableHeight:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-direct {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->updateSize()V

    return-void
.end method

.method public setDrawablePadding(I)V
    .locals 0

    iput p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawablePadding:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-direct {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->updateSize()V

    return-void
.end method

.method public setDrawableTint(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasDrawableTint:Z

    iput p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawableTint:I

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawableColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDrawableWidth(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasDrawableWidth:Z

    iput p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->drawableWidth:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-direct {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->updateSize()V

    return-void
.end method

.method public setLeftButton(Lcom/addisonelliott/segmentedbutton/SegmentedButton;)V
    .locals 0

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->leftButton:Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    return-void
.end method

.method public setRightButton(Lcom/addisonelliott/segmentedbutton/SegmentedButton;)V
    .locals 0

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rightButton:Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    return-void
.end method

.method public setRipple(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 4
    iput p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rippleColor:I

    .line 5
    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rippleColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rippleDrawableLollipop:Landroid/graphics/drawable/RippleDrawable;

    .line 6
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7
    iget-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rippleDrawableLollipop:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    iput-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rippleDrawable:Lcodetail/graphics/drawables/RippleDrawable;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRipple(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rippleColor:I

    invoke-virtual {p0, p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setRipple(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rippleDrawableLollipop:Landroid/graphics/drawable/RippleDrawable;

    .line 3
    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rippleDrawable:Lcodetail/graphics/drawables/RippleDrawable;

    :goto_0
    return-void
.end method

.method public setRounded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rounded:Z

    return-void
.end method

.method public setSelectedBackground(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 5
    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setupBackgroundBitmaps()V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelectedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3
    invoke-virtual {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setupBackgroundBitmaps()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelectedBackgroundColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setSelectedBackground(I)V

    return-void
.end method

.method public setSelectedButtonBorder(IIII)V
    .locals 4
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-lez p1, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedButtonBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedButtonBorderPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedButtonBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p1, p3

    const/4 p2, 0x0

    cmpl-float p3, p1, p2

    if-lez p3, :cond_1

    iget-object p3, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedButtonBorderPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    int-to-float p4, p4

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    aput p4, v2, v0

    invoke-direct {v1, v2, p2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedButtonBorderPaint:Landroid/graphics/Paint;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelectedButtonRadius(I)V
    .locals 0

    iput p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedButtonRadius:I

    return-void
.end method

.method public setSelectedDrawableTint(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasSelectedDrawableTint:Z

    iput p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedDrawableTint:I

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedDrawableColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelectedTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasSelectedTextColor:Z

    iput p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedTextColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelectedTextTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedTextTypeface:Landroid/graphics/Typeface;

    invoke-direct {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->refreshTypeface()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasText:Z

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->text:Ljava/lang/String;

    invoke-direct {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->initText()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-direct {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->updateSize()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    iput p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textSize:F

    iget-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->hasText:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-direct {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->initText()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-direct {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->updateSize()V

    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->textTypeface:Landroid/graphics/Typeface;

    invoke-direct {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->refreshTypeface()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->onVisibilityChangedListener:Lcom/addisonelliott/segmentedbutton/SegmentedButton$OnVisibilityChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButton$OnVisibilityChangedListener;->onVisibilityChanged(Lcom/addisonelliott/segmentedbutton/SegmentedButton;I)V

    :cond_0
    return-void
.end method

.method public setupBackgroundBitmaps()V
    .locals 5

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->backgroundClipPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v0, v4, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->backgroundPaint:Landroid/graphics/Paint;

    :goto_0
    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->backgroundClipPath:Landroid/graphics/Path;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedButtonRadius:I

    if-lez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedBackgroundPaint:Landroid/graphics/Paint;

    :goto_1
    return-void
.end method

.method public setupBackgroundClipPath()V
    .locals 14

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    iget v10, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->backgroundRadius:I

    const/4 v11, 0x0

    if-nez v10, :cond_0

    iput-object v11, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->backgroundClipPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setupBackgroundBitmaps()V

    return-void

    :cond_0
    iget-object v10, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v10, v9, v9, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget v10, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->backgroundRadius:I

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->isRounded()Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->isLeftButton()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->isRightButton()Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->isLeftButton()Z

    move-result v12

    if-eqz v12, :cond_2

    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    iput-object v11, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->backgroundClipPath:Landroid/graphics/Path;

    iget-object v12, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rectF:Landroid/graphics/RectF;

    new-array v8, v8, [F

    aput v10, v8, v7

    aput v10, v8, v6

    aput v9, v8, v5

    aput v9, v8, v4

    aput v9, v8, v3

    aput v9, v8, v2

    aput v10, v8, v1

    aput v10, v8, v0

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v11, v12, v8, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->isRightButton()Z

    move-result v12

    if-eqz v12, :cond_3

    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    iput-object v11, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->backgroundClipPath:Landroid/graphics/Path;

    iget-object v12, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rectF:Landroid/graphics/RectF;

    new-array v8, v8, [F

    aput v9, v8, v7

    aput v9, v8, v6

    aput v10, v8, v5

    aput v10, v8, v4

    aput v10, v8, v3

    aput v10, v8, v2

    aput v9, v8, v1

    aput v9, v8, v0

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v11, v12, v8, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_1

    :cond_3
    iput-object v11, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->backgroundClipPath:Landroid/graphics/Path;

    goto :goto_1

    :cond_4
    :goto_0
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v9, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->backgroundClipPath:Landroid/graphics/Path;

    iget-object v11, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rectF:Landroid/graphics/RectF;

    new-array v8, v8, [F

    aput v10, v8, v7

    aput v10, v8, v6

    aput v10, v8, v5

    aput v10, v8, v4

    aput v10, v8, v3

    aput v10, v8, v2

    aput v10, v8, v1

    aput v10, v8, v0

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v9, v11, v8, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    :goto_1
    invoke-virtual {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setupBackgroundBitmaps()V

    return-void
.end method

.method public setupSelectedButtonClipPath()V
    .locals 10

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedButtonRadius:I

    int-to-float v1, v0

    int-to-float v2, v0

    int-to-float v3, v0

    int-to-float v4, v0

    int-to-float v5, v0

    int-to-float v6, v0

    int-to-float v7, v0

    int-to-float v0, v0

    const/16 v8, 0x8

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v1, v8, v9

    const/4 v1, 0x1

    aput v2, v8, v1

    const/4 v1, 0x2

    aput v3, v8, v1

    const/4 v1, 0x3

    aput v4, v8, v1

    const/4 v1, 0x4

    aput v5, v8, v1

    const/4 v1, 0x5

    aput v6, v8, v1

    const/4 v1, 0x6

    aput v7, v8, v1

    const/4 v1, 0x7

    aput v0, v8, v1

    iput-object v8, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->selectedButtonRadii:[F

    invoke-virtual {p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setupBackgroundBitmaps()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rippleDrawableLollipop:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->rippleDrawable:Lcodetail/graphics/drawables/RippleDrawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
