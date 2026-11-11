.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;
.super Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC$j;
    }
.end annotation


# instance fields
.field public a:Ln/e;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/Button;

.field public f:Landroid/widget/Button;

.field public g:Landroid/widget/Button;

.field public h:Landroid/widget/Button;

.field public i:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

.field public j:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

.field public k:Landroid/widget/LinearLayout;

.field public l:Landroid/widget/Switch;

.field public m:Landroid/widget/LinearLayout;


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

.method public static synthetic a(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->f(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->e(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->g(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;)V

    return-void
.end method

.method public static synthetic d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;)Ln/e;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->a:Ln/e;

    return-object p0
.end method

.method private static synthetic e(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static synthetic f(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final g(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;)V
    .locals 3

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->getTriggerType()Lr/z0$a;

    move-result-object p1

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC$i;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->component:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->a:Ln/e;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->d(Ln/e;)V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->onFinishInflate()V

    sget v0, Lcom/zjx/jyandroid/R$id;->triggerKeyTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->b:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->terminateKeyTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->c:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->editButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->g:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->nameTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->d:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->changeNameButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->h:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->bindKeyLinearLayout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->k:Landroid/widget/LinearLayout;

    sget v0, Lcom/zjx/jyandroid/R$id;->triggerTypeSegmentedControl:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->j:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    sget v0, Lcom/zjx/jyandroid/R$id;->changeTriggerKeyButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->e:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->changeTerminateKeyButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->f:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->triggerModeSegmentedControl:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->i:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    sget v0, Lcom/zjx/jyandroid/R$id;->blockTouchSwitch:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->l:Landroid/widget/Switch;

    sget v0, Lcom/zjx/jyandroid/R$id;->blockTouchLinearLayout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->m:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->l:Landroid/widget/Switch;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC$a;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->j:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC$b;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC$b;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;)V

    invoke-virtual {v0, v1}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setOnPositionChangedListener(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->e:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC$c;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC$c;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->f:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC$d;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC$d;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->i:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC$e;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC$e;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;)V

    invoke-virtual {v0, v1}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setOnPositionChangedListener(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->g:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC$f;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC$f;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->h:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC$g;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC$g;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->component:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->a:Ln/e;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->d(Ln/e;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->a:Ln/e;

    :cond_0
    invoke-super {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->setComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    if-eqz p1, :cond_1

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC$h;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC$h;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->a:Ln/e;

    check-cast p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->a(Ln/e;)V

    :cond_1
    return-void
.end method

.method public updateViewByComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->inflated:Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/a;->component:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    check-cast p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->c:Ljava/util/LinkedList;

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/f;

    invoke-direct {v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/f;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    invoke-static {v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;->getKeyCharString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->c:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->d:Ljava/util/LinkedList;

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/g;

    invoke-direct {v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/g;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    invoke-static {v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;->getKeyCharString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->i:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->getTriggerMode()Lr/x$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setPosition(IZ)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->l:Landroid/widget/Switch;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->isBlockTouch()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/MacroComponentSettingsViewSC;->j:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->getTriggerType()Lr/z0$a;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1, v2}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setPosition(IZ)V

    return-void
.end method
