.class public Lcodetail/graphics/drawables/LayerDrawable;
.super Lcodetail/graphics/drawables/LollipopDrawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcodetail/graphics/drawables/LayerDrawable$LayerState;,
        Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final PADDING_MODE_NEST:I = 0x0

.field public static final PADDING_MODE_STACK:I = 0x1


# instance fields
.field private mHotspotBounds:Landroid/graphics/Rect;

.field mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

.field private mMutated:Z

.field private mOpacityOverride:I

.field private mPaddingB:[I

.field private mPaddingL:[I

.field private mPaddingR:[I

.field private mPaddingT:[I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0, v0}, Lcodetail/graphics/drawables/LayerDrawable;-><init>(Lcodetail/graphics/drawables/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Lcodetail/graphics/drawables/LayerDrawable$LayerState;Landroid/content/res/Resources;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcodetail/graphics/drawables/LollipopDrawable;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mOpacityOverride:I

    .line 15
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 16
    invoke-virtual {p0, p1, p2}, Lcodetail/graphics/drawables/LayerDrawable;->createConstantState(Lcodetail/graphics/drawables/LayerDrawable$LayerState;Landroid/content/res/Resources;)Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    move-result-object p1

    iput-object p1, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    .line 17
    iget p1, p1, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    if-lez p1, :cond_0

    .line 18
    invoke-virtual {p0}, Lcodetail/graphics/drawables/LayerDrawable;->ensurePadding()V

    :cond_0
    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcodetail/graphics/drawables/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;Lcodetail/graphics/drawables/LayerDrawable$LayerState;)V

    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;Lcodetail/graphics/drawables/LayerDrawable$LayerState;)V
    .locals 5

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p2, v0}, Lcodetail/graphics/drawables/LayerDrawable;-><init>(Lcodetail/graphics/drawables/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    .line 3
    array-length p2, p1

    .line 4
    new-array v0, p2, [Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 5
    new-instance v2, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    invoke-direct {v2}, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;-><init>()V

    aput-object v2, v0, v1

    .line 6
    aget-object v3, p1, v1

    iput-object v3, v2, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 8
    iget-object v2, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget v3, v2, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    aget-object v4, p1, v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, v2, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iput p2, p1, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    .line 10
    iput-object v0, p1, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    .line 11
    invoke-virtual {p0}, Lcodetail/graphics/drawables/LayerDrawable;->ensurePadding()V

    return-void
.end method

.method private computeNestedPadding(Landroid/graphics/Rect;)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v2, v1, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v1, v1, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, v2, v0

    invoke-direct {p0, v0, v3}, Lcodetail/graphics/drawables/LayerDrawable;->refreshChildPadding(ILcodetail/graphics/drawables/LayerDrawable$ChildDrawable;)Z

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcodetail/graphics/drawables/LayerDrawable;->mPaddingL:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcodetail/graphics/drawables/LayerDrawable;->mPaddingT:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcodetail/graphics/drawables/LayerDrawable;->mPaddingR:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcodetail/graphics/drawables/LayerDrawable;->mPaddingB:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private computeStackedPadding(Landroid/graphics/Rect;)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v2, v1, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v1, v1, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, v2, v0

    invoke-direct {p0, v0, v3}, Lcodetail/graphics/drawables/LayerDrawable;->refreshChildPadding(ILcodetail/graphics/drawables/LayerDrawable$ChildDrawable;)Z

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcodetail/graphics/drawables/LayerDrawable;->mPaddingL:[I

    aget v4, v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcodetail/graphics/drawables/LayerDrawable;->mPaddingT:[I

    aget v4, v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcodetail/graphics/drawables/LayerDrawable;->mPaddingR:[I

    aget v4, v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcodetail/graphics/drawables/LayerDrawable;->mPaddingB:[I

    aget v4, v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private inflateLayers(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v2, :cond_8

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ge v4, v1, :cond_1

    const/4 v5, 0x3

    if-eq v3, v5, :cond_8

    :cond_1
    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    goto :goto_0

    :cond_2
    if-gt v4, v1, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    new-instance v3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    invoke-direct {v3}, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;-><init>()V

    sget-object v4, Ldreamers/graphics/R$styleable;->LayerDrawableItem:[I

    invoke-static {p1, p4, p3, v4}, Lcodetail/graphics/drawables/LayerDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {p0, p4, v6, v3, v4}, Lcodetail/graphics/drawables/LayerDrawable;->updateLayerFromTypedArray(Landroid/content/res/Resources$Theme;[Landroid/util/TypedValue;Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v4, v3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_6

    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_4

    goto :goto_1

    :cond_4
    if-ne v4, v5, :cond_5

    invoke-static {p1, p2, p3, p4}, Lcodetail/graphics/drawables/LollipopDrawablesCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_5
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    iget-object v4, v3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_7

    iget v5, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v4

    or-int/2addr v4, v5

    iput v4, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    iget-object v4, v3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_7
    invoke-virtual {p0, v3}, Lcodetail/graphics/drawables/LayerDrawable;->addLayer(Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;)V

    goto :goto_0

    :cond_8
    return-void
.end method

.method public static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p2, p3, p0, p0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method private refreshChildPadding(ILcodetail/graphics/drawables/LayerDrawable$ChildDrawable;)Z
    .locals 4

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mTmpRect:Landroid/graphics/Rect;

    iget-object p2, p2, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget p2, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcodetail/graphics/drawables/LayerDrawable;->mPaddingL:[I

    aget v2, v1, p1

    if-ne p2, v2, :cond_1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcodetail/graphics/drawables/LayerDrawable;->mPaddingT:[I

    aget v3, v3, p1

    if-ne v2, v3, :cond_1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcodetail/graphics/drawables/LayerDrawable;->mPaddingR:[I

    aget v3, v3, p1

    if-ne v2, v3, :cond_1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcodetail/graphics/drawables/LayerDrawable;->mPaddingB:[I

    aget v3, v3, p1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    aput p2, v1, p1

    iget-object p2, p0, Lcodetail/graphics/drawables/LayerDrawable;->mPaddingT:[I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    aput v1, p2, p1

    iget-object p2, p0, Lcodetail/graphics/drawables/LayerDrawable;->mPaddingR:[I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    aput v1, p2, p1

    iget-object p2, p0, Lcodetail/graphics/drawables/LayerDrawable;->mPaddingB:[I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    aput v0, p2, p1

    const/4 p1, 0x1

    return p1
.end method

.method private updateLayerFromTypedArray(Landroid/content/res/Resources$Theme;[Landroid/util/TypedValue;Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V
    .locals 3

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget v1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-static {p4}, Lcodetail/graphics/drawables/TypedArrayCompat;->getChangingConfigurations(Landroid/content/res/TypedArray;)I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-static {p4}, Lcodetail/graphics/drawables/TypedArrayCompat;->extractThemeAttrs(Landroid/content/res/TypedArray;)[Landroid/util/TypedValue;

    move-result-object v0

    iput-object v0, p3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mThemeAttrs:[Landroid/util/TypedValue;

    sget v0, Ldreamers/graphics/R$styleable;->LayerDrawableItem_android_left:I

    iget v1, p3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetL:I

    invoke-static {p1, p4, p2, v0, v1}, Lcodetail/graphics/drawables/TypedArrayCompat;->getDimensionPixelOffset(Landroid/content/res/Resources$Theme;Landroid/content/res/TypedArray;[Landroid/util/TypedValue;II)I

    move-result v0

    iput v0, p3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetL:I

    sget v0, Ldreamers/graphics/R$styleable;->LayerDrawableItem_android_top:I

    iget v1, p3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetT:I

    invoke-static {p1, p4, p2, v0, v1}, Lcodetail/graphics/drawables/TypedArrayCompat;->getDimensionPixelOffset(Landroid/content/res/Resources$Theme;Landroid/content/res/TypedArray;[Landroid/util/TypedValue;II)I

    move-result v0

    iput v0, p3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetT:I

    sget v0, Ldreamers/graphics/R$styleable;->LayerDrawableItem_android_right:I

    iget v1, p3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetR:I

    invoke-static {p1, p4, p2, v0, v1}, Lcodetail/graphics/drawables/TypedArrayCompat;->getDimensionPixelOffset(Landroid/content/res/Resources$Theme;Landroid/content/res/TypedArray;[Landroid/util/TypedValue;II)I

    move-result v0

    iput v0, p3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetR:I

    sget v0, Ldreamers/graphics/R$styleable;->LayerDrawableItem_android_bottom:I

    iget v1, p3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetB:I

    invoke-static {p1, p4, p2, v0, v1}, Lcodetail/graphics/drawables/TypedArrayCompat;->getDimensionPixelOffset(Landroid/content/res/Resources$Theme;Landroid/content/res/TypedArray;[Landroid/util/TypedValue;II)I

    move-result v0

    iput v0, p3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetB:I

    sget v0, Ldreamers/graphics/R$styleable;->LayerDrawableItem_android_id:I

    iget v1, p3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mId:I

    invoke-static {p1, p4, p2, v0, v1}, Lcodetail/graphics/drawables/TypedArrayCompat;->getResourceId(Landroid/content/res/Resources$Theme;Landroid/content/res/TypedArray;[Landroid/util/TypedValue;II)I

    move-result v0

    iput v0, p3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mId:I

    sget v0, Ldreamers/graphics/R$styleable;->LayerDrawableItem_android_drawable:I

    invoke-static {p1, p4, p2, v0}, Lcodetail/graphics/drawables/TypedArrayCompat;->getDrawable(Landroid/content/res/Resources$Theme;Landroid/content/res/TypedArray;[Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/Resources$Theme;Landroid/content/res/TypedArray;[Landroid/util/TypedValue;)V
    .locals 1

    iget-object p1, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget p3, p1, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChangingConfigurations:I

    invoke-static {p2}, Lcodetail/graphics/drawables/TypedArrayCompat;->getChangingConfigurations(Landroid/content/res/TypedArray;)I

    move-result v0

    or-int/2addr p3, v0

    iput p3, p1, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChangingConfigurations:I

    invoke-static {p2}, Lcodetail/graphics/drawables/TypedArrayCompat;->extractThemeAttrs(Landroid/content/res/TypedArray;)[Landroid/util/TypedValue;

    move-result-object p3

    iput-object p3, p1, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mThemeAttrs:[Landroid/util/TypedValue;

    sget p3, Ldreamers/graphics/R$styleable;->LayerDrawable_android_opacity:I

    iget v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mOpacityOverride:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcodetail/graphics/drawables/LayerDrawable;->mOpacityOverride:I

    sget p3, Ldreamers/graphics/R$styleable;->LayerDrawable_android_autoMirrored:I

    invoke-static {p1}, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->access$000(Lcodetail/graphics/drawables/LayerDrawable$LayerState;)Z

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-static {p1, p3}, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->access$002(Lcodetail/graphics/drawables/LayerDrawable$LayerState;Z)Z

    sget p3, Ldreamers/graphics/R$styleable;->LayerDrawable_android_paddingMode:I

    invoke-static {p1}, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->access$100(Lcodetail/graphics/drawables/LayerDrawable$LayerState;)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-static {p1, p2}, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->access$102(Lcodetail/graphics/drawables/LayerDrawable$LayerState;I)I

    return-void
.end method


# virtual methods
.method public addLayer(Landroid/graphics/drawable/Drawable;[Landroid/util/TypedValue;IIIII)Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;
    .locals 1

    .line 10
    new-instance v0, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    invoke-direct {v0}, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;-><init>()V

    .line 11
    iput p3, v0, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mId:I

    .line 12
    iput-object p2, v0, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mThemeAttrs:[Landroid/util/TypedValue;

    .line 13
    iput-object p1, v0, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 14
    invoke-virtual {p0}, Lcodetail/graphics/drawables/LayerDrawable;->isAutoMirrored()Z

    move-result p2

    invoke-static {p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    .line 15
    iput p4, v0, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 16
    iput p5, v0, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 17
    iput p6, v0, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 18
    iput p7, v0, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 19
    invoke-virtual {p0, v0}, Lcodetail/graphics/drawables/LayerDrawable;->addLayer(Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;)V

    .line 20
    iget-object p2, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget p3, p2, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p4

    or-int/2addr p3, p4

    iput p3, p2, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 21
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object v0
.end method

.method public addLayer(Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    .line 2
    iget-object v1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    array-length v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3
    :goto_0
    iget v4, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    if-lt v4, v3, :cond_2

    add-int/lit8 v3, v3, 0xa

    .line 4
    new-array v3, v3, [Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    if-lez v4, :cond_1

    .line 5
    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    :cond_1
    iput-object v3, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    .line 7
    :cond_2
    iget-object v1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    aput-object p1, v1, v4

    .line 8
    iget p1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    .line 9
    invoke-virtual {v0}, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->invalidateCache()V

    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 6
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcodetail/graphics/drawables/LollipopDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mThemeAttrs:[Landroid/util/TypedValue;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v2, v1}, Lcodetail/graphics/drawables/LayerDrawable;->updateStateFromTypedArray(Landroid/content/res/Resources$Theme;Landroid/content/res/TypedArray;[Landroid/util/TypedValue;)V

    :cond_1
    iget-object v1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v0, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    aget-object v4, v1, v3

    iget-object v5, v4, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mThemeAttrs:[Landroid/util/TypedValue;

    if-eqz v5, :cond_2

    invoke-direct {p0, p1, v5, v4, v2}, Lcodetail/graphics/drawables/LayerDrawable;->updateLayerFromTypedArray(Landroid/content/res/Resources$Theme;[Landroid/util/TypedValue;Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V

    :cond_2
    iget-object v4, v4, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v4}, Lcodetail/graphics/drawables/LollipopDrawablesCompat;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v4, p1}, Lcodetail/graphics/drawables/LollipopDrawablesCompat;->applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcodetail/graphics/drawables/LayerDrawable;->ensurePadding()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcodetail/graphics/drawables/LayerDrawable;->onStateChange([I)Z

    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcodetail/graphics/drawables/LollipopDrawable;->canApplyTheme()Z

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

.method public createConstantState(Lcodetail/graphics/drawables/LayerDrawable$LayerState;Landroid/content/res/Resources;)Lcodetail/graphics/drawables/LayerDrawable$LayerState;
    .locals 1

    new-instance v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    invoke-direct {v0, p1, p0, p2}, Lcodetail/graphics/drawables/LayerDrawable$LayerState;-><init>(Lcodetail/graphics/drawables/LayerDrawable$LayerState;Lcodetail/graphics/drawables/LayerDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v0, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    iget-object v3, v3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ensurePadding()V
    .locals 2

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget v0, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    iget-object v1, p0, Lcodetail/graphics/drawables/LayerDrawable;->mPaddingL:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Lcodetail/graphics/drawables/LayerDrawable;->mPaddingL:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcodetail/graphics/drawables/LayerDrawable;->mPaddingT:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcodetail/graphics/drawables/LayerDrawable;->mPaddingR:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mPaddingB:[I

    return-void
.end method

.method public findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v0, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget-object v2, v1, v0

    iget v3, v2, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mId:I

    if-ne v3, p1, :cond_0

    iget-object p1, v2, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAlpha()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v0, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    iget-object v0, v0, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcodetail/graphics/drawables/LollipopDrawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 3

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget v2, v1, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChangingConfigurations:I

    or-int/2addr v0, v2

    iget v1, v1, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    invoke-virtual {v0}, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    invoke-virtual {p0}, Lcodetail/graphics/drawables/LayerDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChangingConfigurations:I

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v0, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public getId(I)I
    .locals 1

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v0, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    aget-object p1, v0, p1

    iget p1, p1, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mId:I

    return p1
.end method

.method public getIntrinsicHeight()I
    .locals 10

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    invoke-static {v0}, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->access$100(Lcodetail/graphics/drawables/LayerDrawable$LayerState;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v3, v2, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v2, v2, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    const/4 v4, -0x1

    move v5, v1

    move v6, v4

    move v4, v5

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v7, v3, v1

    iget-object v8, v7, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    iget v9, v7, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetT:I

    add-int/2addr v8, v9

    iget v7, v7, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetB:I

    add-int/2addr v8, v7

    add-int/2addr v8, v4

    add-int/2addr v8, v5

    if-le v8, v6, :cond_1

    move v6, v8

    :cond_1
    if-eqz v0, :cond_2

    iget-object v7, p0, Lcodetail/graphics/drawables/LayerDrawable;->mPaddingT:[I

    aget v7, v7, v1

    add-int/2addr v4, v7

    iget-object v7, p0, Lcodetail/graphics/drawables/LayerDrawable;->mPaddingB:[I

    aget v7, v7, v1

    add-int/2addr v5, v7

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v6
.end method

.method public getIntrinsicWidth()I
    .locals 10

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    invoke-static {v0}, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->access$100(Lcodetail/graphics/drawables/LayerDrawable$LayerState;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v3, v2, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v2, v2, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    const/4 v4, -0x1

    move v5, v1

    move v6, v4

    move v4, v5

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v7, v3, v1

    iget-object v8, v7, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    iget v9, v7, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetL:I

    add-int/2addr v8, v9

    iget v7, v7, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetR:I

    add-int/2addr v8, v7

    add-int/2addr v8, v4

    add-int/2addr v8, v5

    if-le v8, v6, :cond_1

    move v6, v8

    :cond_1
    if-eqz v0, :cond_2

    iget-object v7, p0, Lcodetail/graphics/drawables/LayerDrawable;->mPaddingL:[I

    aget v7, v7, v1

    add-int/2addr v4, v7

    iget-object v7, p0, Lcodetail/graphics/drawables/LayerDrawable;->mPaddingR:[I

    aget v7, v7, v1

    add-int/2addr v5, v7

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v6
.end method

.method public getNumberOfLayers()I
    .locals 1

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget v0, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    iget v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mOpacityOverride:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    invoke-virtual {v0}, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 4
    .param p1    # Landroid/graphics/Outline;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-static {}, Lcodetail/graphics/drawables/Android;->isLollipop()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v0, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, v1, v2

    iget-object v3, v3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    invoke-virtual {p1}, Landroid/graphics/Outline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    invoke-static {v0}, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->access$100(Lcodetail/graphics/drawables/LayerDrawable$LayerState;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcodetail/graphics/drawables/LayerDrawable;->computeNestedPadding(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcodetail/graphics/drawables/LayerDrawable;->computeStackedPadding(Landroid/graphics/Rect;)V

    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method

.method public getPaddingMode()I
    .locals 1

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    invoke-static {v0}, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->access$100(Lcodetail/graphics/drawables/LayerDrawable$LayerState;)I

    move-result v0

    return v0
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

    invoke-super {p0, p1, p2, p3, p4}, Lcodetail/graphics/drawables/LollipopDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    sget-object v0, Ldreamers/graphics/R$styleable;->LayerDrawable:[I

    invoke-static {p1, p4, p3, v0}, Lcodetail/graphics/drawables/LayerDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p4, v0, v1}, Lcodetail/graphics/drawables/LayerDrawable;->updateStateFromTypedArray(Landroid/content/res/Resources$Theme;Landroid/content/res/TypedArray;[Landroid/util/TypedValue;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcodetail/graphics/drawables/LayerDrawable;->inflateLayers(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p0}, Lcodetail/graphics/drawables/LayerDrawable;->ensurePadding()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcodetail/graphics/drawables/LayerDrawable;->onStateChange([I)Z

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    invoke-static {v0}, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->access$000(Lcodetail/graphics/drawables/LayerDrawable$LayerState;)Z

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    invoke-virtual {v0}, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mMutated:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcodetail/graphics/drawables/LayerDrawable;->createConstantState(Lcodetail/graphics/drawables/LayerDrawable$LayerState;Landroid/content/res/Resources;)Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    move-result-object v0

    iput-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v0, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    iget-object v3, v3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mMutated:Z

    :cond_1
    return-object p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 14

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    invoke-static {v0}, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->access$100(Lcodetail/graphics/drawables/LayerDrawable$LayerState;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v3, v2, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v2, v2, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    move v4, v1

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v8, v3, v1

    iget-object v9, v8, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v10, p1, Landroid/graphics/Rect;->left:I

    iget v11, v8, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetL:I

    add-int/2addr v10, v11

    add-int/2addr v10, v4

    iget v11, p1, Landroid/graphics/Rect;->top:I

    iget v12, v8, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetT:I

    add-int/2addr v11, v12

    add-int/2addr v11, v5

    iget v12, p1, Landroid/graphics/Rect;->right:I

    iget v13, v8, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetR:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v6

    iget v13, p1, Landroid/graphics/Rect;->bottom:I

    iget v8, v8, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetB:I

    sub-int/2addr v13, v8

    sub-int/2addr v13, v7

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz v0, :cond_1

    iget-object v8, p0, Lcodetail/graphics/drawables/LayerDrawable;->mPaddingL:[I

    aget v8, v8, v1

    add-int/2addr v4, v8

    iget-object v8, p0, Lcodetail/graphics/drawables/LayerDrawable;->mPaddingR:[I

    aget v8, v8, v1

    add-int/2addr v6, v8

    iget-object v8, p0, Lcodetail/graphics/drawables/LayerDrawable;->mPaddingT:[I

    aget v8, v8, v1

    add-int/2addr v5, v8

    iget-object v8, p0, Lcodetail/graphics/drawables/LayerDrawable;->mPaddingB:[I

    aget v8, v8, v1

    add-int/2addr v7, v8

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onLevelChange(I)Z
    .locals 8

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v0, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v5, v1, v2

    iget-object v6, v5, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    move v4, v7

    :cond_0
    invoke-direct {p0, v2, v5}, Lcodetail/graphics/drawables/LayerDrawable;->refreshChildPadding(ILcodetail/graphics/drawables/LayerDrawable$ChildDrawable;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v7

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcodetail/graphics/drawables/LayerDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    :cond_3
    return v4
.end method

.method public onStateChange([I)Z
    .locals 8

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v0, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v5, v1, v2

    iget-object v6, v5, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v7

    :cond_0
    invoke-direct {p0, v2, v5}, Lcodetail/graphics/drawables/LayerDrawable;->refreshChildPadding(ILcodetail/graphics/drawables/LayerDrawable$ChildDrawable;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v7

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcodetail/graphics/drawables/LayerDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    :cond_3
    return v4
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 4

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v0, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    iget-object v3, v3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 4

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    invoke-static {v0, p1}, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->access$002(Lcodetail/graphics/drawables/LayerDrawable$LayerState;Z)Z

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v0, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    iget-object v3, v3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v0, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    iget-object v3, v3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 4

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v0, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    iget-object v3, v3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z
    .locals 6

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v0, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    aget-object v4, v1, v3

    iget v5, v4, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mId:I

    if-ne v5, p1, :cond_3

    iget-object p1, v4, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    iget-object p1, v4, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    iput-object p2, v4, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    invoke-virtual {p1}, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->invalidateCache()V

    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public setHotspot(FF)V
    .locals 4

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v0, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    iget-object v3, v3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 4

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v0, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    iget-object v3, v3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-void
.end method

.method public setId(II)V
    .locals 1

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v0, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    aget-object p1, v0, p1

    iput p2, p1, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mId:I

    return-void
.end method

.method public setLayerInset(IIIII)V
    .locals 1

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v0, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    aget-object p1, v0, p1

    iput p2, p1, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetL:I

    iput p3, p1, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetT:I

    iput p4, p1, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetR:I

    iput p5, p1, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetB:I

    return-void
.end method

.method public setOpacity(I)V
    .locals 0

    iput p1, p0, Lcodetail/graphics/drawables/LayerDrawable;->mOpacityOverride:I

    return-void
.end method

.method public setPaddingMode(I)V
    .locals 1

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    invoke-static {v0}, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->access$100(Lcodetail/graphics/drawables/LayerDrawable$LayerState;)I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    invoke-static {v0, p1}, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->access$102(Lcodetail/graphics/drawables/LayerDrawable$LayerState;I)I

    :cond_0
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v0, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    iget-object v3, v3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v1, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v0, v0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    iget-object v3, v3, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    iget-object v1, p0, Lcodetail/graphics/drawables/LayerDrawable;->mLayerState:Lcodetail/graphics/drawables/LayerDrawable$LayerState;

    iget-object v2, v1, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v1, v1, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v2, v3

    iget-object v4, v4, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
