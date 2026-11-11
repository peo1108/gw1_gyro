.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;
.super Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;
.source "SourceFile"


# instance fields
.field public a:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/Button;

.field public d:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

.field public e:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

.field public f:Landroid/widget/Switch;

.field public g:Landroid/widget/LinearLayout;

.field public h:Landroid/widget/ImageView;

.field public i:Landroid/widget/ImageView;

.field public j:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;-><init>(Landroid/content/Context;)V

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

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic a(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->e(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;)V

    return-void
.end method

.method public static synthetic b(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->j:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;

    return-object p0
.end method

.method public static synthetic c(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->c:Landroid/widget/Button;

    return-object p0
.end method

.method public static synthetic d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->b:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public final e(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;)V
    .locals 1

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->c:Lr/L0$a;

    sget-object v0, Lr/L0$a;->c:Lr/L0$a;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->g:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->g:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->component:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->j:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->removeOnBindingKeyChangedListener(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->j:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->getKeyCodeArray()Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->getKeyCodeArray()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->disableKeysChange:Z

    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->onFinishInflate()V

    sget v0, Lcom/zjx/jyandroid/R$id;->typeSegmentedControl:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->a:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    sget v0, Lcom/zjx/jyandroid/R$id;->bindKeyLabel:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->b:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->changeKeyButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->c:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->triggerLatencySlider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->d:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget v0, Lcom/zjx/jyandroid/R$id;->swipeDurationSlider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->e:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget v0, Lcom/zjx/jyandroid/R$id;->mouseModeHorizontalSwipeSwitch:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->f:Landroid/widget/Switch;

    sget v0, Lcom/zjx/jyandroid/R$id;->mouseHorizontalSettingsStack:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->g:Landroid/widget/LinearLayout;

    sget v0, Lcom/zjx/jyandroid/R$id;->typeHelpIcon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->h:Landroid/widget/ImageView;

    sget v0, Lcom/zjx/jyandroid/R$id;->horizontalSwipeHelpIcon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView$a;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView$b;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView$b;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->a:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView$c;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView$c;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;)V

    invoke-virtual {v0, v1}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setOnPositionChangedListener(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->d:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget-object v1, Lr/L0;->h:Landroid/util/Range;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValueRange(Landroid/util/Range;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->e:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget-object v1, Lr/L0;->i:Landroid/util/Range;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValueRange(Landroid/util/Range;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->d:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView$d;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView$d;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;)V

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->e:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView$e;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView$e;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;)V

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->c:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView$f;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView$f;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->f:Landroid/widget/Switch;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView$g;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView$g;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->component:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->j:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->removeOnBindingKeyChangedListener(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->j:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;

    :cond_0
    invoke-super {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->setComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    if-eqz p1, :cond_1

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView$h;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView$h;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->j:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;

    check-cast p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->addOnBindingKeyChangedListener(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f$b;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->disableKeysChange:Z

    :cond_1
    return-void
.end method

.method public updateViewByComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->inflated:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    check-cast p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->getKeyCodeArray()Ljava/util/LinkedList;

    move-result-object v1

    invoke-static {v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;->getKeyCharString(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->d:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->getTriggerLatency()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->a:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    invoke-virtual {v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->getOnPositionChangedListener()Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->a:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setOnPositionChangedListener(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->a:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->getType()Lr/L0$a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setPosition(IZ)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->a:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    invoke-virtual {v1, v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setOnPositionChangedListener(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->f:Landroid/widget/Switch;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->e:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->getSwipeDuration()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->e(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;)V

    return-void
.end method
