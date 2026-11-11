.class Lcodetail/graphics/drawables/RippleDrawable$RippleState;
.super Lcodetail/graphics/drawables/LayerDrawable$LayerState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcodetail/graphics/drawables/RippleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RippleState"
.end annotation


# instance fields
.field mColor:Landroid/content/res/ColorStateList;

.field mMaxRadius:I

.field mTouchThemeAttrs:[Landroid/util/TypedValue;


# direct methods
.method public constructor <init>(Lcodetail/graphics/drawables/LayerDrawable$LayerState;Lcodetail/graphics/drawables/RippleDrawable;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcodetail/graphics/drawables/LayerDrawable$LayerState;-><init>(Lcodetail/graphics/drawables/LayerDrawable$LayerState;Lcodetail/graphics/drawables/LayerDrawable;Landroid/content/res/Resources;)V

    const p2, -0xff01

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcodetail/graphics/drawables/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    const/4 p2, -0x1

    iput p2, p0, Lcodetail/graphics/drawables/RippleDrawable$RippleState;->mMaxRadius:I

    instance-of p2, p1, Lcodetail/graphics/drawables/RippleDrawable$RippleState;

    if-eqz p2, :cond_0

    check-cast p1, Lcodetail/graphics/drawables/RippleDrawable$RippleState;

    iget-object p2, p1, Lcodetail/graphics/drawables/RippleDrawable$RippleState;->mTouchThemeAttrs:[Landroid/util/TypedValue;

    iput-object p2, p0, Lcodetail/graphics/drawables/RippleDrawable$RippleState;->mTouchThemeAttrs:[Landroid/util/TypedValue;

    iget-object p2, p1, Lcodetail/graphics/drawables/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    iput-object p2, p0, Lcodetail/graphics/drawables/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    iget p1, p1, Lcodetail/graphics/drawables/RippleDrawable$RippleState;->mMaxRadius:I

    iput p1, p0, Lcodetail/graphics/drawables/RippleDrawable$RippleState;->mMaxRadius:I

    :cond_0
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Lcodetail/graphics/drawables/RippleDrawable$RippleState;->mTouchThemeAttrs:[Landroid/util/TypedValue;

    if-nez v0, :cond_1

    invoke-super {p0}, Lcodetail/graphics/drawables/LayerDrawable$LayerState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcodetail/graphics/drawables/RippleDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcodetail/graphics/drawables/RippleDrawable;-><init>(Lcodetail/graphics/drawables/RippleDrawable$RippleState;Landroid/content/res/Resources;Lcodetail/graphics/drawables/RippleDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lcodetail/graphics/drawables/RippleDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcodetail/graphics/drawables/RippleDrawable;-><init>(Lcodetail/graphics/drawables/RippleDrawable$RippleState;Landroid/content/res/Resources;Lcodetail/graphics/drawables/RippleDrawable$1;)V

    return-object v0
.end method
