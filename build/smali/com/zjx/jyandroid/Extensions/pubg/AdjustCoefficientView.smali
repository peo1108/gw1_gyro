.class public Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;
.super Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;
.source "SourceFile"


# instance fields
.field public a:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

.field public b:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

.field public c:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

.field public d:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

.field public e:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

.field public f:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

.field public g:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

.field public h:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

.field public i:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

.field public j:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

.field public k:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

.field public l:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

.field public m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->m:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->m:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->m:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->m:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->m:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    sget v0, Lcom/zjx/jyandroid/R$id;->crouchSlider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->a:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget v0, Lcom/zjx/jyandroid/R$id;->proneSlider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->b:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget v0, Lcom/zjx/jyandroid/R$id;->compensatorSlider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->c:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget v0, Lcom/zjx/jyandroid/R$id;->flashHiderSlider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->d:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget v0, Lcom/zjx/jyandroid/R$id;->suppressorSlider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->e:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget v0, Lcom/zjx/jyandroid/R$id;->verticalGripSlider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->f:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget v0, Lcom/zjx/jyandroid/R$id;->horizontalGripSlider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->g:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget v0, Lcom/zjx/jyandroid/R$id;->halfGripSlider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->h:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget v0, Lcom/zjx/jyandroid/R$id;->lightGripSlider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->i:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget v0, Lcom/zjx/jyandroid/R$id;->thumbGripSlider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->j:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget v0, Lcom/zjx/jyandroid/R$id;->laserGripSlider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->k:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget v0, Lcom/zjx/jyandroid/R$id;->stockSlider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustCoefficientView;->l:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    return-void
.end method
