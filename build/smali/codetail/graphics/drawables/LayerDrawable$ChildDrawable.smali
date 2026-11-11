.class Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcodetail/graphics/drawables/LayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildDrawable"
.end annotation


# instance fields
.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mId:I

.field public mInsetB:I

.field public mInsetL:I

.field public mInsetR:I

.field public mInsetT:I

.field public mThemeAttrs:[Landroid/util/TypedValue;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mId:I

    return-void
.end method

.method public constructor <init>(Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;Lcodetail/graphics/drawables/LayerDrawable;Landroid/content/res/Resources;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mId:I

    if-eqz p3, :cond_0

    .line 5
    iget-object v0, p1, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 6
    :cond_0
    iget-object p3, p1, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 7
    :goto_0
    iget-object p3, p0, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 8
    iget-object p2, p0, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p3, p1, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 9
    iget-object p2, p0, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p3, p1, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 10
    iget-object p2, p1, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mThemeAttrs:[Landroid/util/TypedValue;

    iput-object p2, p0, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mThemeAttrs:[Landroid/util/TypedValue;

    .line 11
    iget p2, p1, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetL:I

    iput p2, p0, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 12
    iget p2, p1, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetT:I

    iput p2, p0, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 13
    iget p2, p1, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetR:I

    iput p2, p0, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 14
    iget p2, p1, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetB:I

    iput p2, p0, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 15
    iget p1, p1, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mId:I

    iput p1, p0, Lcodetail/graphics/drawables/LayerDrawable$ChildDrawable;->mId:I

    return-void
.end method
