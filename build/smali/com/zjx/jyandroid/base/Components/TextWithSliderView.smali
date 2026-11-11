.class public Lcom/zjx/jyandroid/base/Components/TextWithSliderView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public aSwitch:Landroid/widget/Switch;

.field public helpIcon:Landroid/view/View;

.field public slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

.field public subtitleTextView:Landroid/widget/TextView;

.field public titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->init(Landroid/content/Context;)V

    sget-object v0, Lcom/zjx/jyandroid/R$styleable;->TitleWithSliderView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/zjx/jyandroid/R$styleable;->TitleWithSliderView_titleText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    sget v0, Lcom/zjx/jyandroid/R$styleable;->TitleWithSliderView_subtitleText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget v2, Lcom/zjx/jyandroid/R$styleable;->TitleWithSliderView_titleTextColor:I

    const/high16 v3, -0x1000000

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    sget v4, Lcom/zjx/jyandroid/R$styleable;->TitleWithSliderView_subtitleTextColor:I

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    sget v4, Lcom/zjx/jyandroid/R$styleable;->TitleWithSliderView_showSubtitle:I

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    sget v6, Lcom/zjx/jyandroid/R$styleable;->TitleWithSliderView_showHelpIcon:I

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    sget v7, Lcom/zjx/jyandroid/R$styleable;->TitleWithSliderView_titleSize:I

    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    sget v8, Lcom/zjx/jyandroid/R$styleable;->TitleWithSliderView_subtitleSize:I

    const/high16 v9, 0x41500000    # 13.0f

    invoke-virtual {p1, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    sget v9, Lcom/zjx/jyandroid/R$styleable;->TitleWithSliderView_sliderMin:I

    invoke-virtual {p1, v9, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    sget v10, Lcom/zjx/jyandroid/R$styleable;->TitleWithSliderView_sliderMax:I

    invoke-virtual {p1, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    sget v11, Lcom/zjx/jyandroid/R$styleable;->TitleWithSliderView_sliderAddValue:I

    invoke-virtual {p1, v11, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    sget v12, Lcom/zjx/jyandroid/R$styleable;->TitleWithSliderView_sliderMinusValue:I

    invoke-virtual {p1, v12, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iget-object v12, p0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v12, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v1, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p2, p0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v1, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p2, p0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p2, 0x8

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v2, Landroid/util/Range;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValueRange(Landroid/util/Range;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    int-to-float v2, v5

    invoke-virtual {v0, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setMinusButtonValue(F)V

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    int-to-float v2, v11

    invoke-virtual {v0, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setAddButtonValue(F)V

    if-eqz v6, :cond_1

    iget-object p2, p0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->helpIcon:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->helpIcon:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :goto_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ly/c;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    return-void

    :goto_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/zjx/jyandroid/R$layout;->text_with_slider_view:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/zjx/jyandroid/R$id;->titleTextView:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->titleTextView:Landroid/widget/TextView;

    sget p1, Lcom/zjx/jyandroid/R$id;->subtitleTextView:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->subtitleTextView:Landroid/widget/TextView;

    sget p1, Lcom/zjx/jyandroid/R$id;->slider:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget p1, Lcom/zjx/jyandroid/R$id;->helpIcon:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/TextWithSliderView;->helpIcon:Landroid/view/View;

    return-void
.end method
