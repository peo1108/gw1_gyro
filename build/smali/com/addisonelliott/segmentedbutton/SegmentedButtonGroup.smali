.class public Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OutlineProvider;,
        Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;,
        Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$AnimationInterpolator;
    }
.end annotation


# static fields
.field public static final ANIM_INTERPOLATOR_ACCELERATE:I = 0x7

.field public static final ANIM_INTERPOLATOR_ACCELERATE_DECELERATE:I = 0x6

.field public static final ANIM_INTERPOLATOR_ANTICIPATE:I = 0x5

.field public static final ANIM_INTERPOLATOR_ANTICIPATE_OVERSHOOT:I = 0x8

.field public static final ANIM_INTERPOLATOR_BOUNCE:I = 0x1

.field public static final ANIM_INTERPOLATOR_CYCLE:I = 0x4

.field public static final ANIM_INTERPOLATOR_DECELERATE:I = 0x3

.field public static final ANIM_INTERPOLATOR_FAST_OUT_LINEAR_IN:I = 0x9

.field public static final ANIM_INTERPOLATOR_FAST_OUT_SLOW_IN:I = 0x0

.field public static final ANIM_INTERPOLATOR_LINEAR:I = 0x2

.field public static final ANIM_INTERPOLATOR_LINEAR_OUT_SLOW_IN:I = 0xa

.field public static final ANIM_INTERPOLATOR_NONE:I = -0x1

.field public static final ANIM_INTERPOLATOR_OVERSHOOT:I = 0xb

.field private static final TAG:Ljava/lang/String; = "SegmentedButtonGroup"


# instance fields
.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private borderColor:I

.field private borderDashGap:I

.field private borderDashWidth:I

.field private borderView:Lcom/addisonelliott/segmentedbutton/EmptyView;

.field private borderWidth:I

.field buttonAnimator:Landroid/animation/ValueAnimator;

.field private buttonLayout:Landroid/widget/LinearLayout;

.field private buttons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/addisonelliott/segmentedbutton/SegmentedButton;",
            ">;"
        }
    .end annotation
.end field

.field private currentPosition:F

.field private dividerLayout:Landroid/widget/LinearLayout;

.field private dragOffsetX:F

.field private draggable:Z

.field private hasRippleColor:Z

.field private lastPosition:I

.field private onPositionChangedListener:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;

.field private position:I

.field private radius:I

.field private ripple:Z

.field private rippleColor:I

.field private selectedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private selectedBorderColor:I

.field private selectedBorderDashGap:I

.field private selectedBorderDashWidth:I

.field private selectedBorderWidth:I

.field private selectedButtonRadius:I

.field private selectionAnimationDuration:I

.field private selectionAnimationInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;Lcom/addisonelliott/segmentedbutton/SegmentedButton;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->lambda$addView$0(Lcom/addisonelliott/segmentedbutton/SegmentedButton;I)V

    return-void
.end method

.method public static synthetic access$100(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->updateSelectedPosition(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;)I
    .locals 0

    iget p0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->radius:I

    return p0
.end method

.method public static synthetic b(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;Ljava/util/List;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->lambda$setPosition$1(Ljava/util/List;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private getAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButtonGroup:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButtonGroup_android_background:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButtonGroup_android_background:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButtonGroup_selectedBackground:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButtonGroup_selectedBackground:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButtonGroup_radius:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->radius:I

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButtonGroup_selectedButtonRadius:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectedButtonRadius:I

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButtonGroup_borderWidth:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->borderWidth:I

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButtonGroup_borderColor:I

    const/high16 v1, -0x1000000

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->borderColor:I

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButtonGroup_borderDashWidth:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->borderDashWidth:I

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButtonGroup_borderDashGap:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->borderDashGap:I

    iget v3, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->borderWidth:I

    iget v4, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->borderColor:I

    iget v5, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->borderDashWidth:I

    invoke-virtual {p0, v3, v4, v5, v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setBorder(IIII)V

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButtonGroup_selectedBorderWidth:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectedBorderWidth:I

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButtonGroup_selectedBorderColor:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectedBorderColor:I

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButtonGroup_selectedBorderDashWidth:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectedBorderDashWidth:I

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButtonGroup_selectedBorderDashGap:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectedBorderDashGap:I

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButtonGroup_position:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->position:I

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButtonGroup_draggable:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->draggable:Z

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButtonGroup_android_clickable:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButtonGroup_ripple:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->ripple:Z

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButtonGroup_rippleColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->hasRippleColor:Z

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButtonGroup_rippleColor:I

    const v3, -0x777778

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->rippleColor:I

    sget v0, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButtonGroup_dividerWidth:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    sget v3, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButtonGroup_dividerRadius:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    sget v4, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButtonGroup_dividerPadding:I

    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    sget v6, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButtonGroup_divider:I

    invoke-virtual {p2, v6, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget v6, v5, Landroid/util/TypedValue;->type:I

    if-eq v6, v1, :cond_4

    const/4 v1, 0x3

    if-ne v6, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x1c

    if-lt v6, p1, :cond_3

    const/16 p1, 0x1f

    if-gt v6, p1, :cond_3

    iget p1, v5, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setDivider(IIII)V

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid type for SegmentedButtonGroup divider in layout XML resource. Must be a color or drawable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_5

    sget p1, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButtonGroup_divider:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setDivider(Landroid/graphics/drawable/Drawable;III)V

    goto :goto_1

    :cond_5
    iget v1, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setDivider(Landroid/graphics/drawable/Drawable;III)V

    :cond_6
    :goto_1
    sget p1, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButtonGroup_selectionAnimationInterpolator:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setSelectionAnimationInterpolator(I)V

    sget p1, Lcom/addisonelliott/segmentedbutton/R$styleable;->SegmentedButtonGroup_selectionAnimationDuration:I

    const/16 v0, 0x1f4

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectionAnimationDuration:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OutlineProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OutlineProvider;-><init>(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$1;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttonLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttonLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/addisonelliott/segmentedbutton/EmptyView;

    invoke-direct {v1, p1}, Lcom/addisonelliott/segmentedbutton/EmptyView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->borderView:Lcom/addisonelliott/segmentedbutton/EmptyView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->borderView:Lcom/addisonelliott/segmentedbutton/EmptyView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dividerLayout:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dividerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dividerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dividerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dividerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1, p2}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->getAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private synthetic lambda$addView$0(Lcom/addisonelliott/segmentedbutton/SegmentedButton;I)V
    .locals 6

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dividerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v0, -0x1

    :goto_0
    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ltz v1, :cond_1

    iget-object v4, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    move-object v4, v3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v2, :cond_2

    move-object v3, v1

    :cond_3
    if-ne p2, v2, :cond_5

    if-eqz v4, :cond_4

    invoke-virtual {v4, v3}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setRightButton(Lcom/addisonelliott/segmentedbutton/SegmentedButton;)V

    invoke-virtual {v4}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setupBackgroundClipPath()V

    :cond_4
    if-eqz v3, :cond_7

    invoke-virtual {v3, v4}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setLeftButton(Lcom/addisonelliott/segmentedbutton/SegmentedButton;)V

    invoke-virtual {v3}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setupBackgroundClipPath()V

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v4}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setLeftButton(Lcom/addisonelliott/segmentedbutton/SegmentedButton;)V

    invoke-virtual {p1, v3}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setRightButton(Lcom/addisonelliott/segmentedbutton/SegmentedButton;)V

    invoke-virtual {p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setupBackgroundClipPath()V

    if-eqz v4, :cond_6

    invoke-virtual {v4, p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setRightButton(Lcom/addisonelliott/segmentedbutton/SegmentedButton;)V

    invoke-virtual {v4}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setupBackgroundClipPath()V

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3, p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setLeftButton(Lcom/addisonelliott/segmentedbutton/SegmentedButton;)V

    invoke-virtual {v3}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setupBackgroundClipPath()V

    :cond_7
    :goto_2
    return-void
.end method

.method private synthetic lambda$setPosition$1(Ljava/util/List;ZLandroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    int-to-float v2, v0

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_1

    add-float/2addr p3, v1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_0

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    sub-float/2addr p3, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p3}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->moveSelectedButton(F)V

    return-void
.end method

.method private moveSelectedButton(F)V
    .locals 5

    iput p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->currentPosition:F

    float-to-int v0, p1

    int-to-float v1, v0

    sub-float/2addr p1, v1

    add-int/lit8 v1, v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x8

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    invoke-virtual {v2, p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->clipRight(F)V

    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    invoke-virtual {v2, p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->clipLeft(F)V

    :cond_1
    iget p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->lastPosition:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_2

    iget-object v4, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    invoke-virtual {p1, v2}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->clipRight(F)V

    :cond_2
    iget p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->lastPosition:I

    :goto_1
    add-int/lit8 p1, p1, 0x1

    iget-object v4, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_3

    iget-object v4, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v3, :cond_3

    goto :goto_1

    :cond_3
    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_4

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_4

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    invoke-virtual {p1, v2}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->clipRight(F)V

    :cond_4
    iput v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->lastPosition:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateSelectedPosition(I)V
    .locals 3

    iput p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->position:I

    int-to-float v0, p1

    iput v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->currentPosition:F

    iput p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->lastPosition:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    if-ne v0, p1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->clipRight(F)V

    goto :goto_1

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->clipRight(F)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->onPositionChangedListener:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;->onPositionChanged(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    instance-of p2, p1, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    if-eqz p2, :cond_9

    check-cast p1, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    iget-object p2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->radius:I

    invoke-virtual {p1, v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setBackgroundRadius(I)V

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectedButtonRadius:I

    invoke-virtual {p1, v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setSelectedButtonRadius(I)V

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setDefaultBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setDefaultSelectedBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/addisonelliott/segmentedbutton/a;

    invoke-direct {v0, p0}, Lcom/addisonelliott/segmentedbutton/a;-><init>(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;)V

    invoke-virtual {p1, v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->_setOnVisibilityChangedListener(Lcom/addisonelliott/segmentedbutton/SegmentedButton$OnVisibilityChangedListener;)V

    iget-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->ripple:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->hasRippleColor:Z

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->rippleColor:I

    invoke-virtual {p1, v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setRipple(I)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setRipple(Z)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ltz v0, :cond_3

    iget-object v3, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_4

    move-object v2, p1

    :cond_4
    invoke-virtual {v3, v2}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setRightButton(Lcom/addisonelliott/segmentedbutton/SegmentedButton;)V

    invoke-virtual {v3}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setupBackgroundClipPath()V

    :cond_5
    invoke-virtual {p1, v3}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setLeftButton(Lcom/addisonelliott/segmentedbutton/SegmentedButton;)V

    :cond_6
    invoke-virtual {p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setupBackgroundClipPath()V

    invoke-virtual {p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setupSelectedButtonClipPath()V

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectedBorderWidth:I

    iget v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectedBorderColor:I

    iget v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectedBorderDashWidth:I

    iget v3, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectedBorderDashGap:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setSelectedButtonBorder(IIII)V

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p3, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p3, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->position:I

    if-ne p3, p2, :cond_7

    invoke-direct {p0, p2}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->updateSelectedPosition(I)V

    :cond_7
    new-instance p2, Lcom/addisonelliott/segmentedbutton/ButtonActor;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/addisonelliott/segmentedbutton/ButtonActor;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Lcom/addisonelliott/segmentedbutton/ButtonActor;->setButton(Lcom/addisonelliott/segmentedbutton/SegmentedButton;)V

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dividerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/addisonelliott/segmentedbutton/ButtonActor;->setDividerWidth(I)V

    :cond_8
    iget-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dividerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid child view for SegmentedButtonGroup. Only SegmentedButton\'s are valid children of the group"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dragOffsetX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->currentPosition:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setPosition(IZ)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dragOffsetX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dragOffsetX:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->getButtonPositionFromXF(F)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->moveSelectedButton(F)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->getButtonPositionFromX(F)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setPosition(IZ)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->getButtonPositionFromX(F)I

    move-result v0

    iget-boolean v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->draggable:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->position:I

    if-ne v1, v0, :cond_7

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttonAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dragOffsetX:F

    return v2

    :cond_7
    :goto_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dragOffsetX:F

    :cond_8
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_9
    :goto_2
    return v1
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBorderColor()I
    .locals 1

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->borderColor:I

    return v0
.end method

.method public getBorderDashGap()I
    .locals 1

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->borderDashGap:I

    return v0
.end method

.method public getBorderDashWidth()I
    .locals 1

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->borderDashWidth:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->borderWidth:I

    return v0
.end method

.method public getButton(I)Lcom/addisonelliott/segmentedbutton/SegmentedButton;
    .locals 1

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    return-object p1
.end method

.method public getButtonPositionFromX(F)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public getButtonPositionFromXF(F)F
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    int-to-float p1, v0

    return p1
.end method

.method public getButtons()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/addisonelliott/segmentedbutton/SegmentedButton;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dividerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getOnPositionChangedListener()Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->onPositionChangedListener:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->position:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->radius:I

    return v0
.end method

.method public getRippleColor()I
    .locals 1

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->rippleColor:I

    return v0
.end method

.method public getSelectedBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSelectedBorderColor()I
    .locals 1

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectedBorderColor:I

    return v0
.end method

.method public getSelectedBorderDashGap()I
    .locals 1

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectedBorderDashGap:I

    return v0
.end method

.method public getSelectedBorderDashWidth()I
    .locals 1

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectedBorderDashWidth:I

    return v0
.end method

.method public getSelectedBorderWidth()I
    .locals 1

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectedBorderWidth:I

    return v0
.end method

.method public getSelectedButtonRadius()I
    .locals 1

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectedButtonRadius:I

    return v0
.end method

.method public getSelectionAnimationDuration()I
    .locals 1

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectionAnimationDuration:I

    return v0
.end method

.method public getSelectionAnimationInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectionAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public hasRipple()Z
    .locals 1

    iget-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->ripple:Z

    return v0
.end method

.method public isDraggable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->draggable:Z

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Landroid/os/Bundle;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "position"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setPosition(IZ)V

    const-string v0, "superState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "superState"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "position"

    iget v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->position:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setBackground(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 5
    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 7
    iget-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    .line 4
    invoke-virtual {v1, p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setBackground(I)V

    return-void
.end method

.method public setBorder(IIII)V
    .locals 4
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->borderWidth:I

    iput p2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->borderColor:I

    iput p3, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->borderDashWidth:I

    iput p4, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->borderDashGap:I

    if-lez p1, :cond_0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->radius:I

    int-to-float v1, v1

    int-to-float v2, p1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    iget-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->borderView:Lcom/addisonelliott/segmentedbutton/EmptyView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->borderView:Lcom/addisonelliott/segmentedbutton/EmptyView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setDivider(IIII)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 15
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    filled-new-array {p1, p1}, [I

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    int-to-float p1, p3

    .line 16
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 p1, 0x0

    .line 17
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 18
    invoke-virtual {v0, p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 19
    iget-object p3, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dividerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    iget-object p3, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dividerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    .line 21
    iget-object p3, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dividerLayout:Landroid/widget/LinearLayout;

    const/4 p4, 0x2

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 22
    :goto_0
    iget-object p3, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dividerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-ge p1, p3, :cond_0

    .line 23
    iget-object p3, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dividerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/addisonelliott/segmentedbutton/ButtonActor;

    .line 24
    invoke-virtual {p3, p2}, Lcom/addisonelliott/segmentedbutton/ButtonActor;->setDividerWidth(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dividerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;III)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dividerLayout:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dividerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    return-void

    .line 3
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_1

    .line 4
    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    int-to-float p3, p3

    .line 6
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 7
    iget-object p3, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dividerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p3, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dividerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dividerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    .line 10
    iget-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dividerLayout:Landroid/widget/LinearLayout;

    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 11
    :goto_1
    iget-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dividerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dividerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/addisonelliott/segmentedbutton/ButtonActor;

    .line 13
    invoke-virtual {p1, p2}, Lcom/addisonelliott/segmentedbutton/ButtonActor;->setDividerWidth(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dividerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setDraggable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->draggable:Z

    return-void
.end method

.method public setOnPositionChangedListener(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->onPositionChangedListener:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;

    return-void
.end method

.method public setPosition(IZ)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_9

    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_9

    iget v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->position:I

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttonAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->dragOffsetX:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    :cond_0
    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectionAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-nez p2, :cond_1

    goto/16 :goto_5

    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->currentPosition:F

    int-to-float v3, p1

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    const/16 v4, 0x8

    if-eqz v3, :cond_4

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    :goto_1
    if-ge v2, p1, :cond_6

    iget-object v5, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v4, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/2addr v2, v1

    goto :goto_1

    :cond_4
    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v2, v5

    :goto_2
    if-le v2, p1, :cond_6

    iget-object v5, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v4, :cond_5

    add-int/lit8 v5, v2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_6
    iget v2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->currentPosition:F

    if-eqz v3, :cond_7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    sub-int v4, p1, v4

    :goto_3
    int-to-float v4, v4

    goto :goto_4

    :cond_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, p1

    goto :goto_3

    :goto_4
    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v2, v5, v0

    aput v4, v5, v1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttonAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/addisonelliott/segmentedbutton/b;

    invoke-direct {v1, p0, p2, v3}, Lcom/addisonelliott/segmentedbutton/b;-><init>(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttonAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectionAnimationDuration:I

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttonAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectionAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttonAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$1;

    invoke-direct {v0, p0, p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$1;-><init>(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;I)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttonAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_8
    :goto_5
    invoke-direct {p0, p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->updateSelectedPosition(I)V

    :cond_9
    :goto_6
    return-void
.end method

.method public setRadius(I)V
    .locals 3

    iput p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->radius:I

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    invoke-virtual {v1, p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setBackgroundRadius(I)V

    invoke-virtual {v1}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setupBackgroundClipPath()V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->borderView:Lcom/addisonelliott/segmentedbutton/EmptyView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    int-to-float p1, p1

    iget v1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->borderWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method

.method public setRipple(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->ripple:Z

    .line 5
    iput p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->rippleColor:I

    .line 6
    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    .line 7
    invoke-virtual {v1, p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setRipple(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRipple(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->ripple:Z

    .line 2
    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    .line 3
    invoke-virtual {v1, p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setRipple(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSelectedBackground(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 4
    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 6
    iget-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setSelectedBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setSelectedBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setSelectedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    .line 3
    invoke-virtual {v1, p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setSelectedBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSelectedBackgroundColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setSelectedBackground(I)V

    return-void
.end method

.method public setSelectedBorder(IIII)V
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectedBorderWidth:I

    iput p2, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectedBorderColor:I

    iput p3, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectedBorderDashWidth:I

    iput p4, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectedBorderDashGap:I

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setSelectedButtonBorder(IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSelectedButtonRadius(I)V
    .locals 2

    iput p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectedButtonRadius:I

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    invoke-virtual {v1, p1}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setSelectedButtonRadius(I)V

    invoke-virtual {v1}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setupSelectedButtonClipPath()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSelectionAnimationDuration(I)V
    .locals 0

    iput p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectionAnimationDuration:I

    return-void
.end method

.method public setSelectionAnimationInterpolator(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectionAnimationInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 3
    :pswitch_1
    new-instance p1, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {p1}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectionAnimationInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 4
    :pswitch_2
    new-instance p1, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {p1}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectionAnimationInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 5
    :pswitch_3
    new-instance p1, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectionAnimationInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 6
    :pswitch_4
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectionAnimationInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 7
    :pswitch_5
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectionAnimationInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 8
    :pswitch_6
    new-instance p1, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectionAnimationInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 9
    :pswitch_7
    new-instance p1, Landroid/view/animation/CycleInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, v0}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectionAnimationInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 10
    :pswitch_8
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectionAnimationInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 11
    :pswitch_9
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectionAnimationInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 12
    :pswitch_a
    new-instance p1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {p1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectionAnimationInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 13
    :pswitch_b
    new-instance p1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectionAnimationInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    :pswitch_c
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectionAnimationInterpolator:Landroid/view/animation/Interpolator;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSelectionAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->selectionAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method
