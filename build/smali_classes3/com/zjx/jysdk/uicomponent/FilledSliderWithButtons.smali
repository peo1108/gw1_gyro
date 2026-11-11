.class public Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$g;,
        Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$f;
    }
.end annotation


# instance fields
.field public V1:Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$g;

.field public k6:Landroid/widget/TextView;

.field public l6:Landroid/widget/SeekBar;

.field public m6:F

.field public n6:Landroid/widget/Button;

.field public o6:Landroid/widget/Button;

.field public p6:F

.field public q6:F

.field public r6:F

.field public s6:F

.field public t6:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Li/S;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->g(Landroid/content/Context;)V

    sget-object v0, Lg7/c$g;->R:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    :try_start_0
    sget v0, Lg7/c$g;->Y:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget v1, Lg7/c$g;->X:I

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget v3, Lg7/c$g;->W:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    sget v3, Lg7/c$g;->Z:I

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    sget v5, Lg7/c$g;->S:I

    invoke-virtual {p2, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    sget v6, Lg7/c$g;->T:I

    invoke-virtual {p2, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    sget v7, Lg7/c$g;->d0:I

    invoke-virtual {p2, v7, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    new-instance v7, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p0, v7}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->setValueRange(Landroid/util/Range;)V

    int-to-float v0, v3

    invoke-virtual {p0, v0}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->setMinusButtonValue(F)V

    int-to-float v0, v2

    invoke-virtual {p0, v0}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->setAddButtonValue(F)V

    iget-object v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->n6:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->n6:Landroid/widget/Button;

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->o6:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->o6:Landroid/widget/Button;

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->k6:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    if-eq v6, v4, :cond_0

    iget-object v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->l6:Landroid/widget/SeekBar;

    invoke-virtual {p1, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eq p2, v4, :cond_1

    iget-object v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->l6:Landroid/widget/SeekBar;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;)Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$g;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->V1:Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$g;

    return-object p0
.end method

.method public static synthetic b(Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->t6:Z

    return p0
.end method

.method public static synthetic c(Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->e()V

    return-void
.end method

.method public static synthetic d(Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->f()V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 3

    iget v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->m6:F

    iget v1, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->q6:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->r6:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->s6:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->V1:Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$g;

    if-eqz v1, :cond_2

    invoke-interface {v1, p0, v0}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$g;->a(Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;F)F

    move-result v0

    :cond_2
    iput v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->m6:F

    invoke-virtual {p0}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->i()V

    return-void
.end method

.method public final f()V
    .locals 3

    iget v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->m6:F

    iget v1, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->p6:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->r6:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->s6:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->V1:Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$g;

    if-eqz v1, :cond_2

    invoke-interface {v1, p0, v0}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$g;->a(Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;F)F

    move-result v0

    :cond_2
    iput v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->m6:F

    invoke-virtual {p0}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->i()V

    return-void
.end method

.method public final g(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lg7/c$e;->b:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lg7/c$d;->p:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->l6:Landroid/widget/SeekBar;

    sget p1, Lg7/c$d;->v:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->k6:Landroid/widget/TextView;

    sget p1, Lg7/c$d;->b:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->n6:Landroid/widget/Button;

    sget p1, Lg7/c$d;->l:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->o6:Landroid/widget/Button;

    iget-object p1, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->l6:Landroid/widget/SeekBar;

    new-instance v0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$a;

    invoke-direct {v0, p0}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$a;-><init>(Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->setAddButtonValue(F)V

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v0}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->setMinusButtonValue(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->setMinimumValue(F)V

    invoke-virtual {p0, p1}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->setMaximumValue(F)V

    invoke-virtual {p0, v0}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->setValue(F)V

    new-instance p1, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$b;

    invoke-direct {p1, p0}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$b;-><init>(Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;)V

    new-instance v0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$c;

    invoke-direct {v0, p0}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$c;-><init>(Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;)V

    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iget-object v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->o6:Landroid/widget/Button;

    new-instance v2, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$d;

    invoke-direct {v2, p0, v1}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$d;-><init>(Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;Landroid/view/GestureDetector;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->n6:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$e;

    invoke-direct {v1, p0, p1}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$e;-><init>(Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;Landroid/view/GestureDetector;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public getAddButtonValue()F
    .locals 1

    iget v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->p6:F

    return v0
.end method

.method public getMaximumValue()F
    .locals 1

    iget v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->s6:F

    return v0
.end method

.method public getMinimumValue()F
    .locals 1

    iget v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->r6:F

    return v0
.end method

.method public getMinusButtonValue()F
    .locals 1

    iget v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->q6:F

    return v0
.end method

.method public getOnValueChangeListener()Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$g;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->V1:Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$g;

    return-object v0
.end method

.method public getValue()F
    .locals 1

    iget v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->m6:F

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->t6:Z

    return v0
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->l6:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->m6:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    iget-object v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->k6:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/Float;

    iget v2, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->m6:F

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setAddButtonValue(F)V
    .locals 0

    iput p1, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->p6:F

    return-void
.end method

.method public setContinuous(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->t6:Z

    return-void
.end method

.method public setMaximumValue(F)V
    .locals 2

    iput p1, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->s6:F

    new-instance v0, Landroid/util/Range;

    iget v1, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->r6:F

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p0, v0}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->setValueRange(Landroid/util/Range;)V

    return-void
.end method

.method public setMinimumValue(F)V
    .locals 2

    iput p1, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->r6:F

    new-instance v0, Landroid/util/Range;

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v1, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->s6:F

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p0, v0}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->setValueRange(Landroid/util/Range;)V

    return-void
.end method

.method public setMinusButtonValue(F)V
    .locals 0

    iput p1, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->q6:F

    return-void
.end method

.method public setOnValueChangeListener(Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$g;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->V1:Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$g;

    return-void
.end method

.method public setValue(F)V
    .locals 0

    iput p1, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->m6:F

    invoke-virtual {p0}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->i()V

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

    iput v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->s6:F

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->r6:F

    iget-object p1, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->l6:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->s6:F

    float-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object p1, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->l6:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->r6:F

    float-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMin(I)V

    iget p1, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->m6:F

    iget v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->s6:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iput v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->m6:F

    :cond_0
    iget p1, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->m6:F

    iget v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->r6:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    iput v0, p0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->m6:F

    :cond_1
    invoke-virtual {p0}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->i()V

    return-void
.end method
