.class public final Lme/ibrahimsn/lib/SmoothBottomBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/ibrahimsn/lib/SmoothBottomBar$Companion;
    }
.end annotation


# static fields
.field private static final ALL_CORNERS:I = 0xf

.field private static final BOTTOM_LEFT_CORNER:I = 0x8

.field private static final BOTTOM_RIGHT_CORNER:I = 0x4

.field public static final Companion:Lme/ibrahimsn/lib/SmoothBottomBar$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DEFAULT_ANIM_DURATION:J = 0xc8L

.field private static final DEFAULT_BAR_CORNERS:I = 0x3

.field private static final DEFAULT_BAR_CORNER_RADIUS:F = 0.0f

.field private static final DEFAULT_CORNER_RADIUS:F = 20.0f

.field private static final DEFAULT_ICON_MARGIN:F = 4.0f

.field private static final DEFAULT_ICON_SIZE:F = 18.0f

.field private static final DEFAULT_INDICATOR_COLOR:Ljava/lang/String; = "#2DFFFFFF"

.field private static final DEFAULT_ITEM_PADDING:F = 10.0f

.field private static final DEFAULT_SIDE_MARGIN:F = 10.0f

.field private static final DEFAULT_TEXT_SIZE:F = 11.0f

.field private static final DEFAULT_TINT:Ljava/lang/String; = "#C8FFFFFF"

.field private static final INVALID_RES:I = -0x1

.field private static final NO_CORNERS:I = 0x0

.field private static final OPAQUE:I = 0xff

.field private static final TOP_LEFT_CORNER:I = 0x1

.field private static final TOP_RIGHT_CORNER:I = 0x2

.field private static final TRANSPARENT:I


# instance fields
.field private _barBackgroundColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private _barCornerRadius:F
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field private _barCorners:I

.field private _barIndicatorColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private _barIndicatorRadius:F
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field private _barSideMargins:F
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field private _itemActiveIndex:I

.field private _itemAnimDuration:J

.field private _itemFontFamily:I
    .annotation build Landroidx/annotation/FontRes;
    .end annotation
.end field

.field private _itemIconMargin:F
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field private _itemIconSize:F
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field private _itemIconTint:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private _itemIconTintActive:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private _itemMenuRes:I
    .annotation build Landroidx/annotation/XmlRes;
    .end annotation
.end field

.field private _itemPadding:F
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field private _itemTextColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private _itemTextSize:F
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field private currentIconTint:I

.field private exploreByTouchHelper:Lme/ibrahimsn/lib/AccessibleExploreByTouchHelper;

.field private indicatorLocation:F

.field private itemWidth:F

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lme/ibrahimsn/lib/BottomBarItem;",
            ">;"
        }
    .end annotation
.end field

.field private onItemReselected:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onItemReselectedListener:Lme/ibrahimsn/lib/OnItemReselectedListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onItemSelected:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onItemSelectedListener:Lme/ibrahimsn/lib/OnItemSelectedListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final paintBackground:Landroid/graphics/Paint;

.field private final paintIndicator:Landroid/graphics/Paint;

.field private final paintText:Landroid/graphics/Paint;

.field private final rect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lme/ibrahimsn/lib/SmoothBottomBar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lme/ibrahimsn/lib/SmoothBottomBar$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lme/ibrahimsn/lib/SmoothBottomBar;->Companion:Lme/ibrahimsn/lib/SmoothBottomBar$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lme/ibrahimsn/lib/SmoothBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lme/ibrahimsn/lib/SmoothBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemIconTintActive()I

    move-result v0

    iput v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->currentIconTint:I

    .line 6
    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getBarSideMargins()F

    move-result v0

    iput v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->indicatorLocation:F

    .line 7
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->rect:Landroid/graphics/RectF;

    .line 8
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->items:Ljava/util/List;

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_barBackgroundColor:I

    .line 10
    const-string v1, "#2DFFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_barIndicatorColor:I

    const/high16 v1, 0x41a00000    # 20.0f

    .line 11
    invoke-static {p1, v1}, Lme/ibrahimsn/lib/ext/ContextExtKt;->d2p(Landroid/content/Context;F)F

    move-result v1

    iput v1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_barIndicatorRadius:F

    const/high16 v1, 0x41200000    # 10.0f

    .line 12
    invoke-static {p1, v1}, Lme/ibrahimsn/lib/ext/ContextExtKt;->d2p(Landroid/content/Context;F)F

    move-result v2

    iput v2, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_barSideMargins:F

    const/4 v2, 0x0

    .line 13
    invoke-static {p1, v2}, Lme/ibrahimsn/lib/ext/ContextExtKt;->d2p(Landroid/content/Context;F)F

    move-result v2

    iput v2, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_barCornerRadius:F

    const/4 v2, 0x3

    .line 14
    iput v2, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_barCorners:I

    .line 15
    invoke-static {p1, v1}, Lme/ibrahimsn/lib/ext/ContextExtKt;->d2p(Landroid/content/Context;F)F

    move-result v1

    iput v1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemPadding:F

    const-wide/16 v1, 0xc8

    .line 16
    iput-wide v1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemAnimDuration:J

    const/high16 v1, 0x41900000    # 18.0f

    .line 17
    invoke-static {p1, v1}, Lme/ibrahimsn/lib/ext/ContextExtKt;->d2p(Landroid/content/Context;F)F

    move-result v1

    iput v1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemIconSize:F

    const/high16 v1, 0x40800000    # 4.0f

    .line 18
    invoke-static {p1, v1}, Lme/ibrahimsn/lib/ext/ContextExtKt;->d2p(Landroid/content/Context;F)F

    move-result v1

    iput v1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemIconMargin:F

    .line 19
    const-string v1, "#C8FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemIconTint:I

    .line 20
    iput v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemIconTintActive:I

    .line 21
    iput v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemTextColor:I

    const/high16 v1, 0x41300000    # 11.0f

    .line 22
    invoke-static {p1, v1}, Lme/ibrahimsn/lib/ext/ContextExtKt;->d2p(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemTextSize:F

    .line 23
    iput v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemFontFamily:I

    .line 24
    iput v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemMenuRes:I

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getBarIndicatorColor()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    iput-object p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->paintBackground:Landroid/graphics/Paint;

    .line 31
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 32
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 33
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getBarIndicatorColor()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iput-object p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->paintIndicator:Landroid/graphics/Paint;

    .line 36
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 37
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemTextColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemTextSize()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 41
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 42
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 43
    iput-object p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->paintText:Landroid/graphics/Paint;

    .line 44
    invoke-direct {p0, p2, p3}, Lme/ibrahimsn/lib/SmoothBottomBar;->obtainStyledAttributes(Landroid/util/AttributeSet;I)V

    .line 45
    new-instance p1, Lme/ibrahimsn/lib/AccessibleExploreByTouchHelper;

    iget-object p2, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->items:Ljava/util/List;

    new-instance p3, Lme/ibrahimsn/lib/SmoothBottomBar$1;

    invoke-direct {p3, p0}, Lme/ibrahimsn/lib/SmoothBottomBar$1;-><init>(Lme/ibrahimsn/lib/SmoothBottomBar;)V

    invoke-direct {p1, p0, p2, p3}, Lme/ibrahimsn/lib/AccessibleExploreByTouchHelper;-><init>(Lme/ibrahimsn/lib/SmoothBottomBar;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->exploreByTouchHelper:Lme/ibrahimsn/lib/AccessibleExploreByTouchHelper;

    .line 46
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 3
    sget p3, Lme/ibrahimsn/lib/R$attr;->SmoothBottomBarStyle:I

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lme/ibrahimsn/lib/SmoothBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getCurrentIconTint$p(Lme/ibrahimsn/lib/SmoothBottomBar;)I
    .locals 0

    iget p0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->currentIconTint:I

    return p0
.end method

.method public static final synthetic access$getIndicatorLocation$p(Lme/ibrahimsn/lib/SmoothBottomBar;)F
    .locals 0

    iget p0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->indicatorLocation:F

    return p0
.end method

.method public static final synthetic access$onClickAction(Lme/ibrahimsn/lib/SmoothBottomBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lme/ibrahimsn/lib/SmoothBottomBar;->onClickAction(I)V

    return-void
.end method

.method public static final synthetic access$setCurrentIconTint$p(Lme/ibrahimsn/lib/SmoothBottomBar;I)V
    .locals 0

    iput p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->currentIconTint:I

    return-void
.end method

.method public static final synthetic access$setIndicatorLocation$p(Lme/ibrahimsn/lib/SmoothBottomBar;F)V
    .locals 0

    iput p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->indicatorLocation:F

    return-void
.end method

.method private final animateAlpha(Lme/ibrahimsn/lib/BottomBarItem;I)V
    .locals 2

    invoke-virtual {p1}, Lme/ibrahimsn/lib/BottomBarItem;->getAlpha()I

    move-result v0

    filled-new-array {v0, p2}, [I

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemAnimDuration()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lme/ibrahimsn/lib/SmoothBottomBar$animateAlpha$$inlined$apply$lambda$1;

    invoke-direct {v0, p0, p1}, Lme/ibrahimsn/lib/SmoothBottomBar$animateAlpha$$inlined$apply$lambda$1;-><init>(Lme/ibrahimsn/lib/SmoothBottomBar;Lme/ibrahimsn/lib/BottomBarItem;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private final applyItemActiveIndex()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lme/ibrahimsn/lib/BottomBarItem;

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemActiveIndex()I

    move-result v5

    if-ne v3, v5, :cond_0

    const/16 v5, 0xff

    invoke-direct {p0, v4, v5}, Lme/ibrahimsn/lib/SmoothBottomBar;->animateAlpha(Lme/ibrahimsn/lib/BottomBarItem;I)V

    goto :goto_1

    :cond_0
    invoke-direct {p0, v4, v1}, Lme/ibrahimsn/lib/SmoothBottomBar;->animateAlpha(Lme/ibrahimsn/lib/BottomBarItem;I)V

    :goto_1
    add-int/2addr v3, v0

    goto :goto_0

    :cond_1
    iget v2, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->indicatorLocation:F

    iget-object v3, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->items:Ljava/util/List;

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemActiveIndex()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/ibrahimsn/lib/BottomBarItem;

    invoke-virtual {v3}, Lme/ibrahimsn/lib/BottomBarItem;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v2, v4, v1

    aput v3, v4, v0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemAnimDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lme/ibrahimsn/lib/SmoothBottomBar$applyItemActiveIndex$$inlined$apply$lambda$1;

    invoke-direct {v1, p0}, Lme/ibrahimsn/lib/SmoothBottomBar$applyItemActiveIndex$$inlined$apply$lambda$1;-><init>(Lme/ibrahimsn/lib/SmoothBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemIconTint()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemIconTintActive()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemAnimDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lme/ibrahimsn/lib/SmoothBottomBar$applyItemActiveIndex$$inlined$apply$lambda$2;

    invoke-direct {v1, p0}, Lme/ibrahimsn/lib/SmoothBottomBar$applyItemActiveIndex$$inlined$apply$lambda$2;-><init>(Lme/ibrahimsn/lib/SmoothBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method private final obtainStyledAttributes(Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lme/ibrahimsn/lib/R$styleable;->SmoothBottomBar:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lme/ibrahimsn/lib/R$styleable;->SmoothBottomBar_backgroundColor:I

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getBarBackgroundColor()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lme/ibrahimsn/lib/SmoothBottomBar;->setBarBackgroundColor(I)V

    sget p2, Lme/ibrahimsn/lib/R$styleable;->SmoothBottomBar_indicatorColor:I

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getBarIndicatorColor()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lme/ibrahimsn/lib/SmoothBottomBar;->setBarIndicatorColor(I)V

    sget p2, Lme/ibrahimsn/lib/R$styleable;->SmoothBottomBar_indicatorRadius:I

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getBarIndicatorRadius()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lme/ibrahimsn/lib/SmoothBottomBar;->setBarIndicatorRadius(F)V

    sget p2, Lme/ibrahimsn/lib/R$styleable;->SmoothBottomBar_sideMargins:I

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getBarSideMargins()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lme/ibrahimsn/lib/SmoothBottomBar;->setBarSideMargins(F)V

    sget p2, Lme/ibrahimsn/lib/R$styleable;->SmoothBottomBar_cornerRadius:I

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getBarCornerRadius()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lme/ibrahimsn/lib/SmoothBottomBar;->setBarCornerRadius(F)V

    sget p2, Lme/ibrahimsn/lib/R$styleable;->SmoothBottomBar_corners:I

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getBarCorners()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lme/ibrahimsn/lib/SmoothBottomBar;->setBarCorners(I)V

    sget p2, Lme/ibrahimsn/lib/R$styleable;->SmoothBottomBar_itemPadding:I

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemPadding()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lme/ibrahimsn/lib/SmoothBottomBar;->setItemPadding(F)V

    sget p2, Lme/ibrahimsn/lib/R$styleable;->SmoothBottomBar_textColor:I

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemTextColor()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lme/ibrahimsn/lib/SmoothBottomBar;->setItemTextColor(I)V

    sget p2, Lme/ibrahimsn/lib/R$styleable;->SmoothBottomBar_textSize:I

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemTextSize()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lme/ibrahimsn/lib/SmoothBottomBar;->setItemTextSize(F)V

    sget p2, Lme/ibrahimsn/lib/R$styleable;->SmoothBottomBar_iconSize:I

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemIconSize()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lme/ibrahimsn/lib/SmoothBottomBar;->setItemIconSize(F)V

    sget p2, Lme/ibrahimsn/lib/R$styleable;->SmoothBottomBar_iconMargin:I

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemIconMargin()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lme/ibrahimsn/lib/SmoothBottomBar;->setItemIconMargin(F)V

    sget p2, Lme/ibrahimsn/lib/R$styleable;->SmoothBottomBar_iconTint:I

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemIconTint()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lme/ibrahimsn/lib/SmoothBottomBar;->setItemIconTint(I)V

    sget p2, Lme/ibrahimsn/lib/R$styleable;->SmoothBottomBar_iconTintActive:I

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemIconTintActive()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lme/ibrahimsn/lib/SmoothBottomBar;->setItemIconTintActive(I)V

    sget p2, Lme/ibrahimsn/lib/R$styleable;->SmoothBottomBar_activeItem:I

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemActiveIndex()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lme/ibrahimsn/lib/SmoothBottomBar;->setItemActiveIndex(I)V

    sget p2, Lme/ibrahimsn/lib/R$styleable;->SmoothBottomBar_itemFontFamily:I

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemFontFamily()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lme/ibrahimsn/lib/SmoothBottomBar;->setItemFontFamily(I)V

    sget p2, Lme/ibrahimsn/lib/R$styleable;->SmoothBottomBar_duration:I

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemAnimDuration()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Lme/ibrahimsn/lib/SmoothBottomBar;->setItemAnimDuration(J)V

    sget p2, Lme/ibrahimsn/lib/R$styleable;->SmoothBottomBar_menu:I

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemMenuRes()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lme/ibrahimsn/lib/SmoothBottomBar;->setItemMenuRes(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method private final onClickAction(I)V
    .locals 2

    iget-object v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->exploreByTouchHelper:Lme/ibrahimsn/lib/AccessibleExploreByTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(I)V

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemActiveIndex()I

    move-result v0

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lme/ibrahimsn/lib/SmoothBottomBar;->setItemActiveIndex(I)V

    iget-object v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->onItemSelected:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    :cond_0
    iget-object v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->onItemSelectedListener:Lme/ibrahimsn/lib/OnItemSelectedListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lme/ibrahimsn/lib/OnItemSelectedListener;->onItemSelect(I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->onItemReselected:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    :cond_2
    iget-object v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->onItemReselectedListener:Lme/ibrahimsn/lib/OnItemReselectedListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lme/ibrahimsn/lib/OnItemReselectedListener;->onItemReselect(I)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->exploreByTouchHelper:Lme/ibrahimsn/lib/AccessibleExploreByTouchHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method

.method private final tintAndDrawIcon(Lme/ibrahimsn/lib/BottomBarItem;ILandroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Lme/ibrahimsn/lib/BottomBarItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemActiveIndex()I

    move-result v1

    if-ne p2, v1, :cond_0

    iget p2, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->currentIconTint:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemIconTint()I

    move-result p2

    :goto_0
    invoke-static {v0, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p1}, Lme/ibrahimsn/lib/BottomBarItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->exploreByTouchHelper:Lme/ibrahimsn/lib/AccessibleExploreByTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

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

.method public final getBarBackgroundColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_barBackgroundColor:I

    return v0
.end method

.method public final getBarCornerRadius()F
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_barCornerRadius:F

    return v0
.end method

.method public final getBarCorners()I
    .locals 1

    iget v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_barCorners:I

    return v0
.end method

.method public final getBarIndicatorColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_barIndicatorColor:I

    return v0
.end method

.method public final getBarIndicatorRadius()F
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_barIndicatorRadius:F

    return v0
.end method

.method public final getBarSideMargins()F
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_barSideMargins:F

    return v0
.end method

.method public final getItemActiveIndex()I
    .locals 1

    iget v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemActiveIndex:I

    return v0
.end method

.method public final getItemAnimDuration()J
    .locals 2

    iget-wide v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemAnimDuration:J

    return-wide v0
.end method

.method public final getItemFontFamily()I
    .locals 1
    .annotation build Landroidx/annotation/FontRes;
    .end annotation

    iget v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemFontFamily:I

    return v0
.end method

.method public final getItemIconMargin()F
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemIconMargin:F

    return v0
.end method

.method public final getItemIconSize()F
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemIconSize:F

    return v0
.end method

.method public final getItemIconTint()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemIconTint:I

    return v0
.end method

.method public final getItemIconTintActive()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemIconTintActive:I

    return v0
.end method

.method public final getItemMenuRes()I
    .locals 1
    .annotation build Landroidx/annotation/XmlRes;
    .end annotation

    iget v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemMenuRes:I

    return v0
.end method

.method public final getItemPadding()F
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemPadding:F

    return v0
.end method

.method public final getItemTextColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemTextColor:I

    return v0
.end method

.method public final getItemTextSize()F
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemTextSize:F

    return v0
.end method

.method public final getOnItemReselected()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->onItemReselected:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnItemReselectedListener()Lme/ibrahimsn/lib/OnItemReselectedListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->onItemReselectedListener:Lme/ibrahimsn/lib/OnItemReselectedListener;

    return-object v0
.end method

.method public final getOnItemSelected()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->onItemSelected:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lme/ibrahimsn/lib/OnItemSelectedListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->onItemSelectedListener:Lme/ibrahimsn/lib/OnItemSelectedListener;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    const-string v1, "canvas"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getBarCornerRadius()F

    move-result v1

    const/4 v10, 0x0

    int-to-float v2, v10

    cmpl-float v1, v1, v2

    const/4 v11, 0x1

    const/4 v12, 0x2

    if-lez v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual/range {p0 .. p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getBarCornerRadius()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v13, v12

    div-float/2addr v2, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getBarCornerRadius()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iget-object v8, v0, Lme/ibrahimsn/lib/SmoothBottomBar;->paintBackground:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getBarCorners()I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getBarCorners()I

    move-result v1

    and-int/2addr v1, v11

    if-eq v1, v11, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v5, v1, v13

    iget-object v6, v0, Lme/ibrahimsn/lib/SmoothBottomBar;->paintBackground:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getBarCorners()I

    move-result v1

    and-int/2addr v1, v12

    if-eq v1, v12, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v2, v1, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v5, v1, v13

    iget-object v6, v0, Lme/ibrahimsn/lib/SmoothBottomBar;->paintBackground:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getBarCorners()I

    move-result v1

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v1, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lme/ibrahimsn/lib/SmoothBottomBar;->paintBackground:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getBarCorners()I

    move-result v1

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v2, v1, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v1, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lme/ibrahimsn/lib/SmoothBottomBar;->paintBackground:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lme/ibrahimsn/lib/SmoothBottomBar;->paintBackground:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    :goto_0
    iget-object v1, v0, Lme/ibrahimsn/lib/SmoothBottomBar;->rect:Landroid/graphics/RectF;

    iget v2, v0, Lme/ibrahimsn/lib/SmoothBottomBar;->indicatorLocation:F

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, v0, Lme/ibrahimsn/lib/SmoothBottomBar;->items:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemActiveIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/ibrahimsn/lib/BottomBarItem;

    invoke-virtual {v2}, Lme/ibrahimsn/lib/BottomBarItem;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemIconSize()F

    move-result v3

    int-to-float v4, v12

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemPadding()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, v0, Lme/ibrahimsn/lib/SmoothBottomBar;->rect:Landroid/graphics/RectF;

    iget v2, v0, Lme/ibrahimsn/lib/SmoothBottomBar;->indicatorLocation:F

    iget v3, v0, Lme/ibrahimsn/lib/SmoothBottomBar;->itemWidth:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, v0, Lme/ibrahimsn/lib/SmoothBottomBar;->items:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemActiveIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/ibrahimsn/lib/BottomBarItem;

    invoke-virtual {v2}, Lme/ibrahimsn/lib/BottomBarItem;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemIconSize()F

    move-result v3

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemPadding()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, v0, Lme/ibrahimsn/lib/SmoothBottomBar;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getBarIndicatorRadius()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getBarIndicatorRadius()F

    move-result v3

    iget-object v5, v0, Lme/ibrahimsn/lib/SmoothBottomBar;->paintIndicator:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lme/ibrahimsn/lib/SmoothBottomBar;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, v0, Lme/ibrahimsn/lib/SmoothBottomBar;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    const/16 v3, 0xff

    if-ne v2, v11, :cond_5

    iget-object v2, v0, Lme/ibrahimsn/lib/SmoothBottomBar;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lme/ibrahimsn/lib/BottomBarItem;

    iget-object v6, v0, Lme/ibrahimsn/lib/SmoothBottomBar;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v5}, Lme/ibrahimsn/lib/BottomBarItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v5}, Lme/ibrahimsn/lib/BottomBarItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Lme/ibrahimsn/lib/BottomBarItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5}, Lme/ibrahimsn/lib/BottomBarItem;->getRect()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual/range {p0 .. p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemIconSize()F

    move-result v13

    float-to-int v13, v13

    div-int/2addr v13, v12

    sub-int/2addr v8, v13

    div-float/2addr v6, v4

    int-to-float v13, v11

    invoke-virtual {v5}, Lme/ibrahimsn/lib/BottomBarItem;->getAlpha()I

    move-result v14

    rsub-int v14, v14, 0xff

    int-to-float v14, v14

    int-to-float v15, v3

    div-float/2addr v14, v15

    sub-float v14, v13, v14

    mul-float/2addr v14, v6

    float-to-int v14, v14

    add-int/2addr v8, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v14

    div-int/2addr v14, v12

    invoke-virtual/range {p0 .. p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemIconSize()F

    move-result v11

    float-to-int v11, v11

    div-int/2addr v11, v12

    sub-int/2addr v14, v11

    invoke-virtual {v5}, Lme/ibrahimsn/lib/BottomBarItem;->getRect()Landroid/graphics/RectF;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual/range {p0 .. p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemIconSize()F

    move-result v3

    float-to-int v3, v3

    div-int/2addr v3, v12

    add-int/2addr v11, v3

    invoke-virtual {v5}, Lme/ibrahimsn/lib/BottomBarItem;->getAlpha()I

    move-result v3

    const/16 v12, 0xff

    rsub-int v3, v3, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v15

    sub-float/2addr v13, v3

    mul-float/2addr v6, v13

    float-to-int v3, v6

    add-int/2addr v11, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v6, 0x2

    div-int/2addr v3, v6

    invoke-virtual/range {p0 .. p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemIconSize()F

    move-result v12

    float-to-int v12, v12

    div-int/2addr v12, v6

    add-int/2addr v3, v12

    invoke-virtual {v7, v8, v14, v11, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-direct {v0, v5, v10, v9}, Lme/ibrahimsn/lib/SmoothBottomBar;->tintAndDrawIcon(Lme/ibrahimsn/lib/BottomBarItem;ILandroid/graphics/Canvas;)V

    iget-object v3, v0, Lme/ibrahimsn/lib/SmoothBottomBar;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v5}, Lme/ibrahimsn/lib/BottomBarItem;->getAlpha()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v5}, Lme/ibrahimsn/lib/BottomBarItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lme/ibrahimsn/lib/BottomBarItem;->getRect()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemIconSize()F

    move-result v7

    div-float/2addr v7, v4

    invoke-virtual/range {p0 .. p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemIconMargin()F

    move-result v8

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-virtual {v5}, Lme/ibrahimsn/lib/BottomBarItem;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sub-float/2addr v5, v1

    iget-object v7, v0, Lme/ibrahimsn/lib/SmoothBottomBar;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v9, v3, v6, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v3, 0x1

    add-int/2addr v10, v3

    move v11, v3

    const/16 v3, 0xff

    const/4 v12, 0x2

    goto/16 :goto_1

    :cond_5
    iget-object v2, v0, Lme/ibrahimsn/lib/SmoothBottomBar;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/ibrahimsn/lib/BottomBarItem;

    iget-object v5, v0, Lme/ibrahimsn/lib/SmoothBottomBar;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v3}, Lme/ibrahimsn/lib/BottomBarItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v3}, Lme/ibrahimsn/lib/BottomBarItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Lme/ibrahimsn/lib/BottomBarItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3}, Lme/ibrahimsn/lib/BottomBarItem;->getRect()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual/range {p0 .. p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemIconSize()F

    move-result v8

    float-to-int v8, v8

    const/4 v11, 0x2

    div-int/2addr v8, v11

    sub-int/2addr v7, v8

    div-float/2addr v5, v4

    const/4 v8, 0x1

    int-to-float v11, v8

    invoke-virtual {v3}, Lme/ibrahimsn/lib/BottomBarItem;->getAlpha()I

    move-result v8

    const/16 v12, 0xff

    rsub-int v8, v8, 0xff

    int-to-float v8, v8

    int-to-float v13, v12

    div-float/2addr v8, v13

    sub-float v8, v11, v8

    mul-float/2addr v8, v5

    float-to-int v8, v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v8

    const/4 v12, 0x2

    div-int/2addr v8, v12

    invoke-virtual/range {p0 .. p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemIconSize()F

    move-result v14

    float-to-int v14, v14

    div-int/2addr v14, v12

    sub-int/2addr v8, v14

    invoke-virtual {v3}, Lme/ibrahimsn/lib/BottomBarItem;->getRect()Landroid/graphics/RectF;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v14

    float-to-int v14, v14

    invoke-virtual/range {p0 .. p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemIconSize()F

    move-result v15

    float-to-int v15, v15

    div-int/2addr v15, v12

    add-int/2addr v14, v15

    invoke-virtual {v3}, Lme/ibrahimsn/lib/BottomBarItem;->getAlpha()I

    move-result v15

    const/16 v12, 0xff

    rsub-int v15, v15, 0xff

    int-to-float v15, v15

    div-float/2addr v15, v13

    sub-float/2addr v11, v15

    mul-float/2addr v5, v11

    float-to-int v5, v5

    sub-int/2addr v14, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v11, 0x2

    div-int/2addr v5, v11

    invoke-virtual/range {p0 .. p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemIconSize()F

    move-result v13

    float-to-int v13, v13

    div-int/2addr v13, v11

    add-int/2addr v5, v13

    invoke-virtual {v6, v7, v8, v14, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-direct {v0, v3, v10, v9}, Lme/ibrahimsn/lib/SmoothBottomBar;->tintAndDrawIcon(Lme/ibrahimsn/lib/BottomBarItem;ILandroid/graphics/Canvas;)V

    iget-object v5, v0, Lme/ibrahimsn/lib/SmoothBottomBar;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v3}, Lme/ibrahimsn/lib/BottomBarItem;->getAlpha()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v3}, Lme/ibrahimsn/lib/BottomBarItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lme/ibrahimsn/lib/BottomBarItem;->getRect()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemIconSize()F

    move-result v7

    div-float/2addr v7, v4

    add-float/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemIconMargin()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {v3}, Lme/ibrahimsn/lib/BottomBarItem;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v3, v1

    iget-object v7, v0, Lme/ibrahimsn/lib/SmoothBottomBar;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v9, v5, v6, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v3, 0x1

    add-int/2addr v10, v3

    goto/16 :goto_2

    :cond_6
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getBarSideMargins()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getBarSideMargins()F

    move-result p3

    const/4 p4, 0x2

    int-to-float p4, p4

    mul-float/2addr p3, p4

    sub-float/2addr p2, p3

    iget-object p3, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->items:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    iput p2, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->itemWidth:F

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->items:Ljava/util/List;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->items:Ljava/util/List;

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/ibrahimsn/lib/BottomBarItem;

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lme/ibrahimsn/lib/BottomBarItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    iget v3, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->itemWidth:F

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemIconSize()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemIconMargin()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->getItemPadding()F

    move-result v4

    mul-float/2addr v4, p4

    sub-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-virtual {v0}, Lme/ibrahimsn/lib/BottomBarItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lkotlin/text/StringsKt;->dropLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/ibrahimsn/lib/BottomBarItem;->setTitle(Ljava/lang/String;)V

    move v1, p3

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lme/ibrahimsn/lib/BottomBarItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lkotlin/text/StringsKt;->dropLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/ibrahimsn/lib/BottomBarItem;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0}, Lme/ibrahimsn/lib/BottomBarItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lme/ibrahimsn/lib/R$string;->ellipsis:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/ibrahimsn/lib/BottomBarItem;->setTitle(Ljava/lang/String;)V

    :cond_2
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->itemWidth:F

    add-float/2addr v2, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, p1, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lme/ibrahimsn/lib/BottomBarItem;->setRect(Landroid/graphics/RectF;)V

    iget v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->itemWidth:F

    add-float/2addr p1, v0

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->applyItemActiveIndex()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/ibrahimsn/lib/BottomBarItem;

    invoke-virtual {v2}, Lme/ibrahimsn/lib/BottomBarItem;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v1}, Lme/ibrahimsn/lib/SmoothBottomBar;->onClickAction(I)V

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setBarBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_barBackgroundColor:I

    iget-object v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->paintBackground:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setBarCornerRadius(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iput p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_barCornerRadius:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setBarCorners(I)V
    .locals 0

    iput p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_barCorners:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setBarIndicatorColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_barIndicatorColor:I

    iget-object v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->paintIndicator:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setBarIndicatorRadius(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iput p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_barIndicatorRadius:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setBarSideMargins(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iput p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_barSideMargins:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setItemActiveIndex(I)V
    .locals 0

    iput p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemActiveIndex:I

    invoke-direct {p0}, Lme/ibrahimsn/lib/SmoothBottomBar;->applyItemActiveIndex()V

    return-void
.end method

.method public final setItemAnimDuration(J)V
    .locals 0

    iput-wide p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemAnimDuration:J

    return-void
.end method

.method public final setItemFontFamily(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/FontRes;
        .end annotation
    .end param

    iput p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemFontFamily:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setItemIconMargin(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iput p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemIconMargin:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setItemIconSize(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iput p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemIconSize:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setItemIconTint(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemIconTint:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setItemIconTintActive(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemIconTintActive:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setItemMenuRes(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param

    iput p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemMenuRes:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Lme/ibrahimsn/lib/BottomBarParser;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lme/ibrahimsn/lib/BottomBarParser;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lme/ibrahimsn/lib/BottomBarParser;->parse()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->items:Ljava/util/List;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setItemPadding(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iput p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemPadding:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setItemTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemTextColor:I

    iget-object v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setItemTextSize(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iput p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->_itemTextSize:F

    iget-object v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setOnItemReselected(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->onItemReselected:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnItemReselectedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lme/ibrahimsn/lib/SmoothBottomBar$setOnItemReselectedListener$1;

    invoke-direct {v0, p1}, Lme/ibrahimsn/lib/SmoothBottomBar$setOnItemReselectedListener$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->onItemReselectedListener:Lme/ibrahimsn/lib/OnItemReselectedListener;

    return-void
.end method

.method public final setOnItemReselectedListener(Lme/ibrahimsn/lib/OnItemReselectedListener;)V
    .locals 0
    .param p1    # Lme/ibrahimsn/lib/OnItemReselectedListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->onItemReselectedListener:Lme/ibrahimsn/lib/OnItemReselectedListener;

    return-void
.end method

.method public final setOnItemSelected(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->onItemSelected:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnItemSelectedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lme/ibrahimsn/lib/SmoothBottomBar$setOnItemSelectedListener$1;

    invoke-direct {v0, p1}, Lme/ibrahimsn/lib/SmoothBottomBar$setOnItemSelectedListener$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->onItemSelectedListener:Lme/ibrahimsn/lib/OnItemSelectedListener;

    return-void
.end method

.method public final setOnItemSelectedListener(Lme/ibrahimsn/lib/OnItemSelectedListener;)V
    .locals 0
    .param p1    # Lme/ibrahimsn/lib/OnItemSelectedListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lme/ibrahimsn/lib/SmoothBottomBar;->onItemSelectedListener:Lme/ibrahimsn/lib/OnItemSelectedListener;

    return-void
.end method

.method public final setupWithNavController(Landroid/view/Menu;Landroidx/navigation/NavController;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/navigation/NavController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lme/ibrahimsn/lib/NavigationComponentHelper;->Companion:Lme/ibrahimsn/lib/NavigationComponentHelper$Companion;

    invoke-virtual {v0, p1, p0, p2}, Lme/ibrahimsn/lib/NavigationComponentHelper$Companion;->setupWithNavController(Landroid/view/Menu;Lme/ibrahimsn/lib/SmoothBottomBar;Landroidx/navigation/NavController;)V

    return-void
.end method
