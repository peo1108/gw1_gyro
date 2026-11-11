.class public Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;
.super Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentRectangle;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/c;


# static fields
.field public static final WIDTH_HEIGHT_RATIO:D = 2.5625


# instance fields
.field backgroundColor:I

.field imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentRectangle;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zjx/jyandroid/R$color;->normal_touch_point_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/util/b;->f(IF)I

    move-result v0

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->backgroundColor:I

    .line 3
    sget v0, Lcom/zjx/jyandroid/R$string;->recognition_component_text14:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setTextLabelText(Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->imageView:Landroid/widget/ImageView;

    .line 5
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    .line 6
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->imageView:Landroid/widget/ImageView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->imageView:Landroid/widget/ImageView;

    const v0, 0x3f59999a    # 0.85f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 8
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 9
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 10
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, 0x6

    const/16 v7, -0x64

    const/4 v4, 0x6

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 11
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v8, 0x7

    invoke-virtual {p1, v0, v8, v2, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 12
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, 0x3

    const/16 v7, -0x1e

    const/4 v4, 0x3

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 13
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v9, 0x4

    invoke-virtual {p1, v0, v9, v2, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 14
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, 0x6

    const/16 v7, 0x64

    const/4 v4, 0x6

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 15
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p1, v0, v8, v2, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 16
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, 0x3

    const/16 v7, -0x1e

    const/4 v4, 0x3

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 17
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p1, v0, v9, v2, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 18
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 19
    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->setDisplayImage(Z)V

    .line 20
    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setResizeIndicatorHidden(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentRectangle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/zjx/jyandroid/R$color;->normal_touch_point_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const/high16 p2, 0x3e800000    # 0.25f

    invoke-static {p1, p2}, Lcom/zjx/jyandroid/base/util/b;->f(IF)I

    move-result p1

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->backgroundColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentRectangle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/zjx/jyandroid/R$color;->normal_touch_point_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const/high16 p2, 0x3e800000    # 0.25f

    invoke-static {p1, p2}, Lcom/zjx/jyandroid/base/util/b;->f(IF)I

    move-result p1

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->backgroundColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentRectangle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/zjx/jyandroid/R$color;->normal_touch_point_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const/high16 p2, 0x3e800000    # 0.25f

    invoke-static {p1, p2}, Lcom/zjx/jyandroid/base/util/b;->f(IF)I

    move-result p1

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->backgroundColor:I

    return-void
.end method

.method public static getDefaultSize()Landroid/util/Size;
    .locals 6

    const/16 v0, 0x5f

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v0

    new-instance v1, Landroid/util/Size;

    int-to-double v2, v0

    const-wide v4, 0x4004800000000000L    # 2.5625

    div-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v1, v0, v2}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method


# virtual methods
.method public getImageViewSize()Landroid/util/Size;
    .locals 3

    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public isDisplayImage()Z
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBottomDragIndicatorTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    add-float/2addr v0, p2

    float-to-int p2, v0

    int-to-double v0, p2

    const-wide v2, 0x4004800000000000L    # 2.5625

    mul-double/2addr v0, v2

    double-to-int v0, v0

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    add-int/2addr p2, p1

    invoke-direct {v1, v2, p1, v0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->setFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->updateDeleteButtonViewPosition()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onKeyEvent(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public onLeftDragIndicatorTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    sub-float/2addr v0, p2

    float-to-int p2, v0

    int-to-double v0, p2

    const-wide v2, 0x4004800000000000L    # 2.5625

    div-double/2addr v0, v2

    double-to-int v0, v0

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int p2, v2, p2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p1, v0

    invoke-direct {v1, p2, v0, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->setFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->updateDeleteButtonViewPosition()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onRightDragIndicatorTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    add-float/2addr v0, p2

    float-to-int p2, v0

    int-to-double v0, p2

    const-wide v2, 0x4004800000000000L    # 2.5625

    div-double/2addr v0, v2

    double-to-int v0, v0

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v2

    add-int/2addr v0, p1

    invoke-direct {v1, v2, p1, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->setFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->updateDeleteButtonViewPosition()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onTopDragIndicatorTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr v0, p2

    float-to-int p2, v0

    int-to-double v0, p2

    const-wide v2, 0x4004800000000000L    # 2.5625

    mul-double/2addr v0, v2

    double-to-int v0, v0

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int p2, p1, p2

    add-int/2addr v0, v2

    invoke-direct {v1, v2, p2, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->setFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->updateDeleteButtonViewPosition()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setDisplayImage(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->imageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setSelectedBackgroundColor(I)V

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setUnselectedBackgroundColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->imageView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->backgroundColor:I

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setSelectedBackgroundColor(I)V

    iget p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->backgroundColor:I

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setUnselectedBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public setFrame(Landroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->setWidth(I)V

    return-void

    :cond_0
    int-to-float v1, v0

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v3

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->setWidth(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->isDisplayImage()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->getImageViewSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->getImageViewSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->setWidth(I)V

    return-void

    :cond_2
    invoke-super {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;Landroid/util/Size;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p2}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->setImageViewSize(Landroid/util/Size;)V

    return-void
.end method

.method public setImageViewSize(Landroid/util/Size;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->isSelected()Z

    invoke-super {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setSelected(Z)V

    return-void
.end method

.method public setType(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentRectangle;->setType(I)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    sget p1, Lcom/zjx/jyandroid/R$string;->recognition_component_text14:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setTextLabelText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    sget p1, Lcom/zjx/jyandroid/R$string;->recognition_component_text15:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setTextLabelText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget p1, Lcom/zjx/jyandroid/R$string;->recognition_component_text16:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setTextLabelText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setWidth(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    int-to-double v1, p1

    const-wide v3, 0x4004800000000000L    # 2.5625

    div-double/2addr v1, v3

    double-to-int v1, v1

    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v3

    add-int/2addr v1, v0

    invoke-direct {v2, v3, v0, p1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->setFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->updateDeleteButtonViewPosition()V

    return-void
.end method
