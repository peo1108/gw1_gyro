.class public Lcom/zjx/jyandroid/base/Components/TextWithButtonView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public button:Landroid/widget/Button;

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

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/base/Components/TextWithButtonView;->init(Landroid/content/Context;)V

    sget-object v0, Lcom/zjx/jyandroid/R$styleable;->SubtitleView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    :try_start_0
    sget v0, Lcom/zjx/jyandroid/R$styleable;->SubtitleView_titleText:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget v2, Lcom/zjx/jyandroid/R$styleable;->SubtitleView_subtitleText:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget v3, Lcom/zjx/jyandroid/R$styleable;->SubtitleView_titleTextColor:I

    const/high16 v4, -0x1000000

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    sget v5, Lcom/zjx/jyandroid/R$styleable;->SubtitleView_subtitleTextColor:I

    invoke-virtual {p2, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    sget v5, Lcom/zjx/jyandroid/R$styleable;->SubtitleView_showSubtitle:I

    const/4 v6, 0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    sget v6, Lcom/zjx/jyandroid/R$styleable;->SubtitleView_titleSize:I

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    sget v7, Lcom/zjx/jyandroid/R$styleable;->SubtitleView_subtitleSize:I

    const/high16 v8, 0x41500000    # 13.0f

    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    sget v9, Lcom/zjx/jyandroid/R$styleable;->SubtitleView_buttonText:I

    invoke-virtual {p2, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    sget v10, Lcom/zjx/jyandroid/R$styleable;->SubtitleView_buttonBackgroundTint:I

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    sget v12, Lcom/zjx/jyandroid/R$styleable;->SubtitleView_titleSize:I

    invoke-virtual {p2, v12, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    sget v12, Lcom/zjx/jyandroid/R$styleable;->SubtitleView_buttonBackground:I

    invoke-virtual {p2, v12, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    if-eq v12, v11, :cond_0

    iget-object v11, p0, Lcom/zjx/jyandroid/base/Components/TextWithButtonView;->button:Landroid/widget/Button;

    invoke-virtual {p1, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v11, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/TextWithButtonView;->button:Landroid/widget/Button;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/TextWithButtonView;->button:Landroid/widget/Button;

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/TextWithButtonView;->button:Landroid/widget/Button;

    invoke-static {v10}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/TextWithButtonView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/TextWithButtonView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/TextWithButtonView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/TextWithButtonView;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/TextWithButtonView;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/TextWithButtonView;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v5, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/TextWithButtonView;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/TextWithButtonView;->subtitleTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :goto_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    return-void

    :goto_4
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/zjx/jyandroid/R$layout;->text_view_with_button_component:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/zjx/jyandroid/R$id;->titleTextView:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/TextWithButtonView;->titleTextView:Landroid/widget/TextView;

    sget p1, Lcom/zjx/jyandroid/R$id;->subtitleTextView:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/TextWithButtonView;->subtitleTextView:Landroid/widget/TextView;

    sget p1, Lcom/zjx/jyandroid/R$id;->aSwitch:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/TextWithButtonView;->button:Landroid/widget/Button;

    return-void
.end method
