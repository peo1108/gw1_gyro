.class public Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;
    }
.end annotation


# instance fields
.field addButton:Landroid/widget/Button;

.field addButtonValue:F

.field public continuous:Z

.field maximumValue:F

.field minimumValue:F

.field minusButton:Landroid/widget/Button;

.field minusButtonValue:F

.field private onValueChangeListener:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;

.field private seekBar:Landroid/widget/SeekBar;

.field value:F

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->init(Landroid/content/Context;)V

    sget-object v0, Lcom/zjx/jyandroid/R$styleable;->TitleWithSliderView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    :try_start_0
    sget v0, Lcom/zjx/jyandroid/R$styleable;->TitleWithSliderView_sliderMin:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget v1, Lcom/zjx/jyandroid/R$styleable;->TitleWithSliderView_sliderMax:I

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget v3, Lcom/zjx/jyandroid/R$styleable;->TitleWithSliderView_sliderAddValue:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    sget v4, Lcom/zjx/jyandroid/R$styleable;->TitleWithSliderView_sliderMinusValue:I

    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    sget v4, Lcom/zjx/jyandroid/R$styleable;->TitleWithSliderView_mainColor:I

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    sget v6, Lcom/zjx/jyandroid/R$styleable;->TitleWithSliderView_seekbarDrawable:I

    invoke-virtual {p2, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    sget v7, Lcom/zjx/jyandroid/R$styleable;->TitleWithSliderView_thumbDrawable:I

    invoke-virtual {p2, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    new-instance v7, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p0, v7}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValueRange(Landroid/util/Range;)V

    int-to-float v0, v2

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setMinusButtonValue(F)V

    int-to-float v0, v3

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setAddButtonValue(F)V

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->addButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->addButton:Landroid/widget/Button;

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->minusButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->minusButton:Landroid/widget/Button;

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    if-eq v6, v5, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eq p2, v5, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static synthetic access$000(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;)Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->onValueChangeListener:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;)V
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->updateLayout()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/zjx/jyandroid/R$layout;->filled_slider_with_buttons:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/zjx/jyandroid/R$id;->seekBar:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->seekBar:Landroid/widget/SeekBar;

    sget p1, Lcom/zjx/jyandroid/R$id;->valueTextView:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->valueTextView:Landroid/widget/TextView;

    sget p1, Lcom/zjx/jyandroid/R$id;->addButton:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->addButton:Landroid/widget/Button;

    sget p1, Lcom/zjx/jyandroid/R$id;->minusButton:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->minusButton:Landroid/widget/Button;

    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->addButton:Landroid/widget/Button;

    new-instance v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$1;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$1;-><init>(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->minusButton:Landroid/widget/Button;

    new-instance v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$2;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$2;-><init>(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->seekBar:Landroid/widget/SeekBar;

    new-instance v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$3;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$3;-><init>(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setAddButtonValue(F)V

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setMinusButtonValue(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setMinimumValue(F)V

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setMaximumValue(F)V

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    return-void
.end method

.method private updateLayout()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->value:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->valueTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/Float;

    iget v2, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->value:F

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getAddButtonValue()F
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->addButtonValue:F

    return v0
.end method

.method public getMaximumValue()F
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->maximumValue:F

    return v0
.end method

.method public getMinimumValue()F
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->minimumValue:F

    return v0
.end method

.method public getMinusButtonValue()F
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->minusButtonValue:F

    return v0
.end method

.method public getOnValueChangeListener()Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->onValueChangeListener:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;

    return-object v0
.end method

.method public getValue()F
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->value:F

    return v0
.end method

.method public setAddButtonValue(F)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->addButtonValue:F

    return-void
.end method

.method public setMaximumValue(F)V
    .locals 2

    iput p1, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->maximumValue:F

    new-instance v0, Landroid/util/Range;

    iget v1, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->minimumValue:F

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValueRange(Landroid/util/Range;)V

    return-void
.end method

.method public setMinimumValue(F)V
    .locals 2

    iput p1, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->minimumValue:F

    new-instance v0, Landroid/util/Range;

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v1, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->maximumValue:F

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValueRange(Landroid/util/Range;)V

    return-void
.end method

.method public setMinusButtonValue(F)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->minusButtonValue:F

    return-void
.end method

.method public setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->onValueChangeListener:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;

    return-void
.end method

.method public setValue(F)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->value:F

    invoke-direct {p0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->updateLayout()V

    return-void
.end method

.method public setValueRange(Landroid/util/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->maximumValue:F

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->minimumValue:F

    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->seekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->maximumValue:F

    float-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->seekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->minimumValue:F

    float-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMin(I)V

    iget p1, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->value:F

    iget v0, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->maximumValue:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iput v0, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->value:F

    :cond_0
    iget p1, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->value:F

    iget v0, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->minimumValue:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    iput v0, p0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->value:F

    :cond_1
    invoke-direct {p0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->updateLayout()V

    return-void
.end method
