.class public Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;
.super Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentRectangle;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/c;


# instance fields
.field private autoSyncPlace:Z

.field imageView:Landroid/widget/ImageView;

.field public siblingComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentRectangle;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->siblingComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->autoSyncPlace:Z

    .line 4
    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2$1;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;)V

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setOnFrameChangedListener(Lcom/zjx/jyandroid/base/Interfaces/OnFrameChangedListener;)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setResizeIndicatorHidden(Z)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setUnselectedBorderWidth(I)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setSelectedBorderWidth(I)V

    .line 8
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->imageView:Landroid/widget/ImageView;

    .line 9
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    .line 10
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->imageView:Landroid/widget/ImageView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->imageView:Landroid/widget/ImageView;

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 12
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 13
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 14
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, 0x6

    const/16 v7, 0x96

    const/4 v4, 0x6

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 15
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v8, 0x7

    invoke-virtual {p1, v0, v8, v2, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 16
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, -0x5

    const/4 v4, 0x3

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 17
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {p1, v0, v3, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 18
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 19
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v2, 0x6

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {p1, v0, v2, v4, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 20
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v2, 0x3

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {p1, v0, v2, v4, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 21
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p1, v0, v3, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 22
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 23
    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->setDisplayImage(Z)V

    .line 24
    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setResizeIndicatorHidden(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentRectangle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->siblingComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->autoSyncPlace:Z

    .line 28
    new-instance p2, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2$1;

    invoke-direct {p2, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;)V

    invoke-virtual {p0, p2}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setOnFrameChangedListener(Lcom/zjx/jyandroid/base/Interfaces/OnFrameChangedListener;)V

    const/4 p2, 0x0

    .line 29
    invoke-virtual {p0, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setResizeIndicatorHidden(Z)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setUnselectedBorderWidth(I)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setSelectedBorderWidth(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentRectangle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->siblingComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->autoSyncPlace:Z

    .line 35
    new-instance p2, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2$1;

    invoke-direct {p2, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;)V

    invoke-virtual {p0, p2}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setOnFrameChangedListener(Lcom/zjx/jyandroid/base/Interfaces/OnFrameChangedListener;)V

    const/4 p2, 0x0

    .line 36
    invoke-virtual {p0, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setResizeIndicatorHidden(Z)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setUnselectedBorderWidth(I)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setSelectedBorderWidth(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentRectangle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->siblingComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->autoSyncPlace:Z

    .line 42
    new-instance p2, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2$1;

    invoke-direct {p2, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;)V

    invoke-virtual {p0, p2}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setOnFrameChangedListener(Lcom/zjx/jyandroid/base/Interfaces/OnFrameChangedListener;)V

    const/4 p2, 0x0

    .line 43
    invoke-virtual {p0, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setResizeIndicatorHidden(Z)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setUnselectedBorderWidth(I)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setSelectedBorderWidth(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->autoSyncPlace:Z

    return p0
.end method

.method public static getDefaultSize()Landroid/util/Size;
    .locals 3

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x78

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v1

    const/16 v2, 0x1e

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public getImageViewSize()Landroid/util/Size;
    .locals 3

    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public isDisplayImage()Z
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->imageView:Landroid/widget/ImageView;

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
    .locals 3

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

    const/16 v0, 0x32

    if-ge p2, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, v2

    invoke-direct {v0, v1, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->setFrame(Landroid/graphics/Rect;)V

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
    .locals 3

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

    const/16 v0, 0xc8

    if-ge p2, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int p2, v1, p2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, p2, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->setFrame(Landroid/graphics/Rect;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onRightDragIndicatorTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

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

    const/16 v0, 0xc8

    if-ge p2, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->setFrame(Landroid/graphics/Rect;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onTopDragIndicatorTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

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

    const/16 v0, 0x32

    if-ge p2, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int p2, v2, p2

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v1, p2, p1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->setFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->updateDeleteButtonViewPosition()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setAutoSyncPlace(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->autoSyncPlace:Z

    return-void
.end method

.method public setDisplayImage(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->imageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setSelectedBackgroundColor(I)V

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setUnselectedBackgroundColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->imageView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentRectangle;->backgroundColor:I

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setSelectedBackgroundColor(I)V

    iget p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentRectangle;->backgroundColor:I

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setUnselectedBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public setFrame(Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentRectangle;->getType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->siblingComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentRectangle;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->siblingComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v1, :cond_1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;Landroid/util/Size;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p2}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->setImageViewSize(Landroid/util/Size;)V

    return-void
.end method

.method public setImageViewSize(Landroid/util/Size;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setSelected(Z)V

    return-void
.end method

.method public setType(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentRectangle;->setType(I)V

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    sget p1, Lcom/zjx/jyandroid/R$string;->recognition_component_text17:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setTextLabelText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    sget p1, Lcom/zjx/jyandroid/R$string;->recognition_component_text18:I

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

.method public syncPlaces()V
    .locals 5

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->siblingComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->siblingComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->siblingComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->setAutoSyncPlace(Z)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->siblingComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setFrame(IIII)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->siblingComponent:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentAccessoryV2;->setAutoSyncPlace(Z)V

    return-void
.end method
