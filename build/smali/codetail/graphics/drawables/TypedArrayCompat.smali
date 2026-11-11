.class Lcodetail/graphics/drawables/TypedArrayCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcodetail/graphics/drawables/TypedArrayCompat$TypedArrayLollipop;,
        Lcodetail/graphics/drawables/TypedArrayCompat$BaseTypedArray;,
        Lcodetail/graphics/drawables/TypedArrayCompat$ITypedArray;
    }
.end annotation


# static fields
.field private static final IMPL:Lcodetail/graphics/drawables/TypedArrayCompat$ITypedArray;

.field private static final TEMP_ARRAY:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcodetail/graphics/drawables/TypedArrayCompat;->TEMP_ARRAY:[I

    invoke-static {}, Lcodetail/graphics/drawables/Android;->isLollipop()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcodetail/graphics/drawables/TypedArrayCompat$TypedArrayLollipop;

    invoke-direct {v0}, Lcodetail/graphics/drawables/TypedArrayCompat$TypedArrayLollipop;-><init>()V

    sput-object v0, Lcodetail/graphics/drawables/TypedArrayCompat;->IMPL:Lcodetail/graphics/drawables/TypedArrayCompat$ITypedArray;

    goto :goto_0

    :cond_0
    new-instance v0, Lcodetail/graphics/drawables/TypedArrayCompat$BaseTypedArray;

    invoke-direct {v0}, Lcodetail/graphics/drawables/TypedArrayCompat$BaseTypedArray;-><init>()V

    sput-object v0, Lcodetail/graphics/drawables/TypedArrayCompat;->IMPL:Lcodetail/graphics/drawables/TypedArrayCompat$ITypedArray;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractThemeAttrs(Landroid/content/res/TypedArray;)[Landroid/util/TypedValue;
    .locals 6

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    if-eqz v3, :cond_3

    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    new-array v1, v0, [Landroid/util/TypedValue;

    :cond_2
    aput-object v3, v1, v2

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public static getChangingConfigurations(Landroid/content/res/TypedArray;)I
    .locals 1

    sget-object v0, Lcodetail/graphics/drawables/TypedArrayCompat;->IMPL:Lcodetail/graphics/drawables/TypedArrayCompat$ITypedArray;

    invoke-interface {v0, p0}, Lcodetail/graphics/drawables/TypedArrayCompat$ITypedArray;->getChangingConfigurations(Landroid/content/res/TypedArray;)I

    move-result p0

    return p0
.end method

.method public static getColorStateList(Landroid/content/res/Resources$Theme;Landroid/content/res/TypedArray;[Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    aget-object p2, p2, p3

    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget-object p1, Lcodetail/graphics/drawables/TypedArrayCompat;->TEMP_ARRAY:[I

    iget p2, p2, Landroid/util/TypedValue;->data:I

    const/4 p3, 0x0

    aput p2, p1, p3

    invoke-virtual {p0, v0, p1, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getDimensionPixelOffset(Landroid/content/res/Resources$Theme;Landroid/content/res/TypedArray;[Landroid/util/TypedValue;II)I
    .locals 2

    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    aget-object p2, p2, p3

    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object p1, Lcodetail/graphics/drawables/TypedArrayCompat;->TEMP_ARRAY:[I

    iget p2, p2, Landroid/util/TypedValue;->data:I

    const/4 p3, 0x0

    aput p2, p1, p3

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p0

    return p0

    :cond_1
    return p4
.end method

.method public static getDrawable(Landroid/content/res/Resources$Theme;Landroid/content/res/TypedArray;[Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    aget-object p2, p2, p3

    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget-object p1, Lcodetail/graphics/drawables/TypedArrayCompat;->TEMP_ARRAY:[I

    iget p2, p2, Landroid/util/TypedValue;->data:I

    const/4 p3, 0x0

    aput p2, p1, p3

    invoke-virtual {p0, v0, p1, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1, p3, p0}, Lcodetail/graphics/drawables/LollipopDrawablesCompat;->getDrawable(Landroid/content/res/TypedArray;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getResourceId(Landroid/content/res/Resources$Theme;Landroid/content/res/TypedArray;[Landroid/util/TypedValue;II)I
    .locals 2

    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    aget-object p2, p2, p3

    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object p1, Lcodetail/graphics/drawables/TypedArrayCompat;->TEMP_ARRAY:[I

    iget p2, p2, Landroid/util/TypedValue;->data:I

    const/4 p3, 0x0

    aput p2, p1, p3

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    return p0

    :cond_1
    return p4
.end method
