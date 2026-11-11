.class public Lmdm/CamNavBar;
.super Landroid/widget/LinearLayout;
.source "CamNavBar.java"


# static fields
.field private static final GOLD:I = -0x1c4184

.field private static final IDLE:I = -0x636c7c


# instance fields
.field private final dp:F

.field private final fill:Landroid/graphics/Paint;

.field private indicatorX:F

.field private final pill:Landroid/graphics/Paint;

.field private press:Landroid/animation/ValueAnimator;

.field private pressScale:F

.field private final r:Landroid/graphics/RectF;

.field private final rim:Landroid/graphics/Paint;

.field private selected:I

.field private slide:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lmdm/CamNavBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lmdm/CamNavBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lmdm/CamNavBar;->fill:Landroid/graphics/Paint;

    .line 37
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lmdm/CamNavBar;->rim:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lmdm/CamNavBar;->pill:Landroid/graphics/Paint;

    .line 39
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lmdm/CamNavBar;->r:Landroid/graphics/RectF;

    const/high16 v1, -0x40800000    # -1.0f

    .line 40
    iput v1, p0, Lmdm/CamNavBar;->indicatorX:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 41
    iput v1, p0, Lmdm/CamNavBar;->pressScale:F

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Lmdm/CamNavBar;->selected:I

    .line 50
    invoke-virtual {p0}, Lmdm/CamNavBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lmdm/CamNavBar;->dp:F

    .line 51
    invoke-virtual {p0, v1}, Lmdm/CamNavBar;->setOrientation(I)V

    .line 52
    invoke-virtual {p0, v1}, Lmdm/CamNavBar;->setWillNotDraw(Z)V

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v3, v2

    .line 53
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 54
    invoke-virtual {p0, v3, v3, v3, v3}, Lmdm/CamNavBar;->setPadding(IIII)V

    const v3, -0xfe5e8ec

    .line 55
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const p1, 0x1fffffff

    .line 58
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x41600000    # 14.0f

    mul-float/2addr v2, p1

    .line 59
    invoke-virtual {p0, v2}, Lmdm/CamNavBar;->setElevation(F)V

    .line 60
    new-instance p1, Lmdm/CamNavBar$1;

    invoke-direct {p1, p0}, Lmdm/CamNavBar$1;-><init>(Lmdm/CamNavBar;)V

    invoke-virtual {p0, p1}, Lmdm/CamNavBar;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 67
    const-string p1, "ic_game_controller"

    const-string p3, "main_page"

    invoke-direct {p0, p1, p3, v1}, Lmdm/CamNavBar;->addTab(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    const-string p1, "ic_square"

    const-string p3, "more"

    invoke-direct {p0, p1, p3, p2}, Lmdm/CamNavBar;->addTab(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    invoke-direct {p0}, Lmdm/CamNavBar;->applyColors()V

    return-void
.end method

.method static synthetic access$000(Lmdm/CamNavBar;F)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lmdm/CamNavBar;->animatePress(F)V

    return-void
.end method

.method static synthetic access$100(Lmdm/CamNavBar;IZ)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Lmdm/CamNavBar;->select(IZ)V

    return-void
.end method

.method static synthetic access$202(Lmdm/CamNavBar;F)F
    .registers 2

    .line 31
    iput p1, p0, Lmdm/CamNavBar;->indicatorX:F

    return p1
.end method

.method static synthetic access$302(Lmdm/CamNavBar;F)F
    .registers 2

    .line 31
    iput p1, p0, Lmdm/CamNavBar;->pressScale:F

    return p1
.end method

.method static synthetic access$400(Lmdm/CamNavBar;)Landroid/view/View;
    .registers 1

    .line 31
    invoke-direct {p0}, Lmdm/CamNavBar;->smoothBar()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$502(Lmdm/CamNavBar;I)I
    .registers 2

    .line 31
    iput p1, p0, Lmdm/CamNavBar;->selected:I

    return p1
.end method

.method static synthetic access$600(Lmdm/CamNavBar;)V
    .registers 1

    .line 31
    invoke-direct {p0}, Lmdm/CamNavBar;->applyColors()V

    return-void
.end method

.method private addTab(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9

    .line 77
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lmdm/CamNavBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    .line 79
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v2, 0x42b00000    # 88.0f

    .line 80
    iget v3, p0, Lmdm/CamNavBar;->dp:F

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 81
    iget v2, p0, Lmdm/CamNavBar;->dp:F

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v4, p0, Lmdm/CamNavBar;->dp:F

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 82
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmdm/CamNavBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 83
    const-string v3, "drawable"

    invoke-direct {p0, p1, v3}, Lmdm/CamNavBar;->res(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_46

    .line 84
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_46
    const/high16 p1, 0x41c00000    # 24.0f

    .line 85
    iget v3, p0, Lmdm/CamNavBar;->dp:F

    mul-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 86
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lmdm/CamNavBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 88
    const-string v2, "string"

    invoke-direct {p0, p2, v2}, Lmdm/CamNavBar;->res(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_70

    .line 89
    invoke-virtual {p0}, Lmdm/CamNavBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_70
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x2

    const/high16 v2, 0x41400000    # 12.0f

    .line 90
    invoke-virtual {p1, p2, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 91
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 92
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 93
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 94
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x40400000    # 3.0f

    .line 95
    iget v4, p0, Lmdm/CamNavBar;->dp:F

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 96
    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 98
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 99
    new-instance p1, Lmdm/CamNavBar$2;

    invoke-direct {p1, p0}, Lmdm/CamNavBar$2;-><init>(Lmdm/CamNavBar;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    new-instance p1, Lmdm/CamNavBar$3;

    invoke-direct {p1, p0, p3}, Lmdm/CamNavBar$3;-><init>(Lmdm/CamNavBar;I)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p1, v2, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, p1}, Lmdm/CamNavBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private animatePress(F)V
    .registers 5

    .line 170
    iget-object v0, p0, Lmdm/CamNavBar;->press:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 171
    :cond_7
    iget v0, p0, Lmdm/CamNavBar;->pressScale:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lmdm/CamNavBar;->press:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xa0

    .line 172
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 173
    iget-object p1, p0, Lmdm/CamNavBar;->press:Landroid/animation/ValueAnimator;

    new-instance v0, Lmdm/CamNavBar$5;

    invoke-direct {v0, p0}, Lmdm/CamNavBar$5;-><init>(Lmdm/CamNavBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 180
    iget-object p1, p0, Lmdm/CamNavBar;->press:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private applyColors()V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 115
    :goto_2
    invoke-virtual {p0}, Lmdm/CamNavBar;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 116
    invoke-virtual {p0, v1}, Lmdm/CamNavBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 117
    iget v3, p0, Lmdm/CamNavBar;->selected:I

    if-ne v1, v3, :cond_16

    const v3, -0x1c4184

    goto :goto_19

    :cond_16
    const v3, -0x636c7c

    .line 118
    :goto_19
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 119
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2c

    .line 120
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_2c
    const/4 v4, 0x1

    .line 121
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    iget v3, p0, Lmdm/CamNavBar;->selected:I

    if-ne v1, v3, :cond_3b

    goto :goto_3c

    :cond_3b
    move v4, v0

    :goto_3c
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_42
    return-void
.end method

.method private res(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 73
    invoke-virtual {p0}, Lmdm/CamNavBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lmdm/CamNavBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private select(IZ)V
    .registers 6

    .line 132
    iget v0, p0, Lmdm/CamNavBar;->selected:I

    if-eq p1, v0, :cond_c

    .line 133
    iput p1, p0, Lmdm/CamNavBar;->selected:I

    .line 134
    invoke-direct {p0}, Lmdm/CamNavBar;->applyColors()V

    .line 135
    invoke-direct {p0, p1}, Lmdm/CamNavBar;->slideTo(I)V

    :cond_c
    if-nez p2, :cond_f

    goto :goto_5d

    .line 138
    :cond_f
    invoke-direct {p0}, Lmdm/CamNavBar;->smoothBar()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_16

    goto :goto_5d

    .line 141
    :cond_16
    :try_start_16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setItemActiveIndex"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getOnItemSelectedListener"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5d

    .line 143
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onItemSelect"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d
    .catchall {:try_start_16 .. :try_end_5d} :catchall_5d

    :catchall_5d
    :cond_5d
    :goto_5d
    return-void
.end method

.method private slideTo(I)V
    .registers 5

    .line 154
    iget-object v0, p0, Lmdm/CamNavBar;->slide:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 155
    :cond_7
    iget v0, p0, Lmdm/CamNavBar;->indicatorX:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_12

    invoke-direct {p0, p1}, Lmdm/CamNavBar;->tabLeft(I)F

    move-result v0

    .line 156
    :cond_12
    invoke-direct {p0, p1}, Lmdm/CamNavBar;->tabLeft(I)F

    move-result p1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lmdm/CamNavBar;->slide:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x17c

    .line 157
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 158
    iget-object p1, p0, Lmdm/CamNavBar;->slide:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const v1, 0x3f8ccccd    # 1.1f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 159
    iget-object p1, p0, Lmdm/CamNavBar;->slide:Landroid/animation/ValueAnimator;

    new-instance v0, Lmdm/CamNavBar$4;

    invoke-direct {v0, p0}, Lmdm/CamNavBar$4;-><init>(Lmdm/CamNavBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 166
    iget-object p1, p0, Lmdm/CamNavBar;->slide:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private smoothBar()Landroid/view/View;
    .registers 3

    .line 127
    const-string v0, "bottomBar"

    const-string v1, "id"

    invoke-direct {p0, v0, v1}, Lmdm/CamNavBar;->res(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 128
    :cond_c
    invoke-virtual {p0}, Lmdm/CamNavBar;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private tabLeft(I)F
    .registers 2

    .line 149
    invoke-virtual {p0, p1}, Lmdm/CamNavBar;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_c

    .line 150
    invoke-virtual {p0}, Lmdm/CamNavBar;->getPaddingLeft()I

    move-result p1

    :goto_a
    int-to-float p1, p1

    return p1

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    goto :goto_a
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .line 185
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 186
    new-instance v0, Lmdm/CamNavBar$6;

    invoke-direct {v0, p0}, Lmdm/CamNavBar$6;-><init>(Lmdm/CamNavBar;)V

    invoke-virtual {p0, v0}, Lmdm/CamNavBar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 214
    invoke-virtual {p0}, Lmdm/CamNavBar;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 215
    iget-object v1, p0, Lmdm/CamNavBar;->r:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lmdm/CamNavBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 216
    iget-object v1, p0, Lmdm/CamNavBar;->r:Landroid/graphics/RectF;

    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v0, v2

    iget-object v5, p0, Lmdm/CamNavBar;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 217
    iget-object v1, p0, Lmdm/CamNavBar;->r:Landroid/graphics/RectF;

    iget v5, p0, Lmdm/CamNavBar;->dp:F

    div-float v6, v5, v2

    div-float/2addr v5, v2

    invoke-virtual {v1, v6, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 218
    iget-object v1, p0, Lmdm/CamNavBar;->r:Landroid/graphics/RectF;

    iget-object v5, p0, Lmdm/CamNavBar;->rim:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 219
    iget v1, p0, Lmdm/CamNavBar;->selected:I

    invoke-virtual {p0, v1}, Lmdm/CamNavBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_72

    .line 220
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_72

    .line 221
    iget v4, p0, Lmdm/CamNavBar;->indicatorX:F

    cmpg-float v3, v4, v3

    if-gez v3, :cond_45

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v4, v3

    .line 222
    :cond_45
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 223
    invoke-virtual {p0}, Lmdm/CamNavBar;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    .line 224
    invoke-virtual {p0}, Lmdm/CamNavBar;->getPaddingBottom()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v0, v5

    div-float/2addr v1, v2

    add-float/2addr v4, v1

    add-float v5, v3, v0

    div-float/2addr v5, v2

    .line 226
    iget v6, p0, Lmdm/CamNavBar;->pressScale:F

    mul-float/2addr v1, v6

    sub-float/2addr v0, v3

    div-float/2addr v0, v2

    mul-float/2addr v0, v6

    .line 227
    iget-object v2, p0, Lmdm/CamNavBar;->r:Landroid/graphics/RectF;

    sub-float v3, v4, v1

    sub-float v6, v5, v0

    add-float/2addr v4, v1

    add-float/2addr v5, v0

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 228
    iget-object v1, p0, Lmdm/CamNavBar;->r:Landroid/graphics/RectF;

    iget-object v2, p0, Lmdm/CamNavBar;->pill:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 230
    :cond_72
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 13

    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 208
    iget-object p3, p0, Lmdm/CamNavBar;->rim:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v3, p1

    int-to-float v4, p2

    const p1, 0xaffffff

    const p2, 0x3de8d3a4

    const p4, 0x50ffffff

    filled-new-array {p4, p1, p2}, [I

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method
