.class public Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public changeKeyButton:Landroid/widget/Button;

.field private originKeyArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field subtitleTextView:Landroid/widget/TextView;

.field titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/zjx/jyandroid/R$layout;->modify_binding_key_component:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    sget v0, Lcom/zjx/jyandroid/R$id;->changeKeyButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;->changeKeyButton:Landroid/widget/Button;

    .line 5
    sget v0, Lcom/zjx/jyandroid/R$id;->titleTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;->titleTextView:Landroid/widget/TextView;

    .line 6
    sget v0, Lcom/zjx/jyandroid/R$id;->subtitleTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;->subtitleTextView:Landroid/widget/TextView;

    .line 7
    sget-object v0, Lcom/zjx/jyandroid/R$styleable;->ModifyBindingKeyComponent:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 8
    sget p2, Lcom/zjx/jyandroid/R$styleable;->ModifyBindingKeyComponent_titleText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 9
    sget v0, Lcom/zjx/jyandroid/R$styleable;->ModifyBindingKeyComponent_titleSize:I

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 10
    sget v1, Lcom/zjx/jyandroid/R$styleable;->ModifyBindingKeyComponent_subtitleSize:I

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 11
    sget v2, Lcom/zjx/jyandroid/R$styleable;->ModifyBindingKeyComponent_textColor:I

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    if-nez p2, :cond_0

    .line 12
    sget p2, Lcom/zjx/jyandroid/R$string;->component_settings_bind_key:I

    invoke-static {p2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p2

    .line 13
    :cond_0
    iget-object v2, p0, Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p2, p0, Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 15
    iget-object p2, p0, Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 16
    iget-object p2, p0, Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    iget-object p2, p0, Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;->lambda$updateText$0(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$updateText$0(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public getOriginKeyArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;->originKeyArray:Ljava/util/List;

    return-object v0
.end method

.method public setOriginKeyArray(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;->originKeyArray:Ljava/util/List;

    return-void
.end method

.method public updateText()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;->originKeyArray:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;->subtitleTextView:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/zjx/jyandroid/base/Components/a;

    invoke-direct {v2}, Lcom/zjx/jyandroid/base/Components/a;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;->getKeyCharString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
