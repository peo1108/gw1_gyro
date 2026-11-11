.class public Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewDrawable;
.super Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;
.source "SourceFile"


# instance fields
.field bg:Landroid/graphics/drawable/Drawable;

.field crosshairView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/zjx/jyandroid/base/util/b;->n(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewDrawable;->bg:Landroid/graphics/drawable/Drawable;

    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewDrawable;->crosshairView:Landroid/view/View;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewDrawable;->bg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewDrawable;->crosshairView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPreferredWHRatio()F
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewDrawable;->bg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewDrawable;->bg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public onColorChange(I)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewDrawable;->crosshairView:Landroid/view/View;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
