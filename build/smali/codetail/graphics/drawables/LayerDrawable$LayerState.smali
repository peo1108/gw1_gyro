.class Lcodetail/graphics/drawables/LayerDrawable$LayerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcodetail/graphics/drawables/LayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayerState"
.end annotation


# instance fields
.field private mAutoMirrored:Z

.field mChangingConfigurations:I

.field mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

.field mChildrenChangingConfigurations:I

.field private mHaveIsStateful:Z

.field private mHaveOpacity:Z

.field private mIsStateful:Z

.field mNum:I

.field private mOpacity:I

.field private mPaddingMode:I

.field mThemeAttrs:[Landroid/util/TypedValue;


# direct methods
.method public constructor <init>(Lcodetail/graphics/drawables/LayerDrawable$LayerState;Lcodetail/graphics/drawables/LayerDrawable;Landroid/content/res/Resources;)V
    .locals 6

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mAutoMirrored:Z

    iput v0, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mPaddingMode:I

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v2, p1, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    iput v2, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    new-array v3, v2, [Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iput-object v3, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v3, p1, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChangingConfigurations:I

    iput v3, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChangingConfigurations:I

    iget v3, p1, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    iput v3, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    new-instance v5, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    invoke-direct {v5, v3, p2, p3}, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;-><init>(Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;Lcodetail/graphics/drawables/LayerDrawable;Landroid/content/res/Resources;)V

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean p2, p1, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mHaveOpacity:Z

    iput-boolean p2, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mHaveOpacity:Z

    iget p2, p1, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mOpacity:I

    iput p2, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mOpacity:I

    iget-boolean p2, p1, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mHaveIsStateful:Z

    iput-boolean p2, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mHaveIsStateful:Z

    iget-boolean p2, p1, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mIsStateful:Z

    iput-boolean p2, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mIsStateful:Z

    iget-boolean p2, p1, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mAutoMirrored:Z

    iput-boolean p2, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mAutoMirrored:Z

    iget p2, p1, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mPaddingMode:I

    iput p2, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mPaddingMode:I

    iget-object p1, p1, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mThemeAttrs:[Landroid/util/TypedValue;

    iput-object p1, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mThemeAttrs:[Landroid/util/TypedValue;

    goto :goto_1

    :cond_1
    iput v0, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    :goto_1
    return-void
.end method

.method public static synthetic access$000(Lcodetail/graphics/drawables/LayerDrawable$LayerState;)Z
    .locals 0

    iget-boolean p0, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mAutoMirrored:Z

    return p0
.end method

.method public static synthetic access$002(Lcodetail/graphics/drawables/LayerDrawable$LayerState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mAutoMirrored:Z

    return p1
.end method

.method public static synthetic access$100(Lcodetail/graphics/drawables/LayerDrawable$LayerState;)I
    .locals 0

    iget p0, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mPaddingMode:I

    return p0
.end method

.method public static synthetic access$102(Lcodetail/graphics/drawables/LayerDrawable$LayerState;I)I
    .locals 0

    iput p1, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mPaddingMode:I

    return p1
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 7

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mThemeAttrs:[Landroid/util/TypedValue;

    const/4 v1, 0x1

    if-nez v0, :cond_4

    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v2, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    iget-object v6, v5, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mThemeAttrs:[Landroid/util/TypedValue;

    if-nez v6, :cond_2

    iget-object v5, v5, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v5}, Lcodetail/graphics/drawables/LollipopDrawablesCompat;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    return v3

    :cond_4
    :goto_2
    return v1
.end method

.method public final canConstantState()Z
    .locals 5

    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v1, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v4, v4, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    iget v0, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChangingConfigurations:I

    return v0
.end method

.method public final getOpacity()I
    .locals 6

    iget-boolean v0, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mHaveOpacity:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mOpacity:I

    return v0

    :cond_0
    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v1, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    if-lez v1, :cond_1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iget-object v2, v2, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x2

    :goto_0
    const/4 v3, 0x1

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    iget-object v5, v5, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    invoke-static {v2, v5}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iput v2, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mOpacity:I

    iput-boolean v3, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mHaveOpacity:Z

    return v2
.end method

.method public invalidateCache()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mHaveOpacity:Z

    iput-boolean v0, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mHaveIsStateful:Z

    return-void
.end method

.method public final isStateful()Z
    .locals 6

    iget-boolean v0, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mHaveIsStateful:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mIsStateful:Z

    return v0

    :cond_0
    iget-object v0, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mChildren:[Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;

    iget v1, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mNum:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    iget-object v5, v5, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mIsStateful:Z

    iput-boolean v4, p0, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->mHaveIsStateful:Z

    return v2
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcodetail/graphics/drawables/LayerDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcodetail/graphics/drawables/LayerDrawable;-><init>(Lcodetail/graphics/drawables/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lcodetail/graphics/drawables/LayerDrawable;

    invoke-direct {v0, p0, p1}, Lcodetail/graphics/drawables/LayerDrawable;-><init>(Lcodetail/graphics/drawables/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method
