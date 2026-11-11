.class public Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public aSwitch:Landroid/widget/Switch;

.field public helpIcon:Landroid/view/View;

.field public subtitleTextView:Landroid/widget/TextView;

.field public titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->init(Landroid/content/Context;)V

    sget-object v0, Lcom/zjx/jyandroid/R$styleable;->SubtitleView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/zjx/jyandroid/R$styleable;->SubtitleView_titleText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    sget v0, Lcom/zjx/jyandroid/R$styleable;->SubtitleView_subtitleText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget v2, Lcom/zjx/jyandroid/R$styleable;->SubtitleView_titleTextColor:I

    const/high16 v3, -0x1000000

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    sget v4, Lcom/zjx/jyandroid/R$styleable;->SubtitleView_subtitleTextColor:I

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    sget v4, Lcom/zjx/jyandroid/R$styleable;->SubtitleView_showSubtitle:I

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    sget v5, Lcom/zjx/jyandroid/R$styleable;->SubtitleView_showHelpIcon:I

    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    sget v6, Lcom/zjx/jyandroid/R$styleable;->SubtitleView_titleSize:I

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    sget v7, Lcom/zjx/jyandroid/R$styleable;->SubtitleView_subtitleSize:I

    const/high16 v8, 0x41500000    # 13.0f

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iget-object v8, p0, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v8, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v1, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p2, p0, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v1, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p2, p0, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p2, 0x8

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-eqz v5, :cond_1

    iget-object p2, p0, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->helpIcon:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->helpIcon:Landroid/view/View;

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

    sget v0, Lcom/zjx/jyandroid/R$layout;->text_with_switch_view:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/zjx/jyandroid/R$id;->titleTextView:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->titleTextView:Landroid/widget/TextView;

    sget p1, Lcom/zjx/jyandroid/R$id;->subtitleTextView:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->subtitleTextView:Landroid/widget/TextView;

    sget p1, Lcom/zjx/jyandroid/R$id;->aSwitch:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->aSwitch:Landroid/widget/Switch;

    sget p1, Lcom/zjx/jyandroid/R$id;->helpIcon:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/TextWithSwitchView;->helpIcon:Landroid/view/View;

    return-void
.end method
