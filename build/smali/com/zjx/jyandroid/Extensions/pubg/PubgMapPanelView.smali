.class public Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;
.super Lcom/zjx/jyandroid/base/BaseFloatingView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$n;,
        Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$o;
    }
.end annotation


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Z

.field public a:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$o;

.field public b:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$o;

.field public c:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$o;

.field public d:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$o;

.field public e:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$n;

.field public f:Landroid/widget/Button;

.field public g:Landroid/widget/Button;

.field public h:Landroid/widget/Button;

.field public i:Landroid/widget/Button;

.field public j:Landroid/widget/Button;

.field public k:Landroid/widget/Button;

.field public l:Landroid/widget/Button;

.field public m:Landroid/widget/Button;

.field public n:Landroid/widget/Button;

.field public o:Landroid/widget/Switch;

.field public p:Landroid/widget/Switch;

.field public q:Landroid/widget/Switch;

.field public r:Landroid/widget/Switch;

.field public s:Landroid/widget/Switch;

.field public t:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

.field public u:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

.field public v:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

.field public w:Landroid/view/View;

.field public x:Landroid/view/View;

.field public y:Landroid/view/View;

.field public z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->B:Z

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
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->B:Z

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
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->B:Z

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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->B:Z

    return-void
.end method

.method public static synthetic a(Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->updateViewByFoldState()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->t:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/base/util/b;->C(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->u:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/base/util/b;->C(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->v:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/base/util/b;->C(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getPubgMapPanelViewAdapter()Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$n;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->e:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$n;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->onFinishInflate()V

    sget v0, Lcom/zjx/jyandroid/R$id;->cancelButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->f:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->resetButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->g:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->saveButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->h:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->presetMapsButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->i:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->accessoryRectSizeSlider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->t:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget v0, Lcom/zjx/jyandroid/R$id;->enableRecoilControlSwitch:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->o:Landroid/widget/Switch;

    sget v0, Lcom/zjx/jyandroid/R$id;->enableAccessoryRecognitionSwitch:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->p:Landroid/widget/Switch;

    sget v0, Lcom/zjx/jyandroid/R$id;->scopeRecognitionSwitch:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->r:Landroid/widget/Switch;

    sget v0, Lcom/zjx/jyandroid/R$id;->accessoryRectSizeConstraintLayout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->w:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->customizeAssetSizeSwitch:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->s:Landroid/widget/Switch;

    sget v0, Lcom/zjx/jyandroid/R$id;->weaponSizeSlider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->u:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget v0, Lcom/zjx/jyandroid/R$id;->scopeSizeSlider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->v:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    sget v0, Lcom/zjx/jyandroid/R$id;->weaponSizeSliderContainer:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->x:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->scopeSizeSliderContainer:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->y:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->shareButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->j:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->upButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->k:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->leftButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->l:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->downButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->m:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->rightButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->n:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->switchFoldButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->A:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->canFoldView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->z:Landroid/view/View;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->u:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->continuous:Z

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->v:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-boolean v1, v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->continuous:Z

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->t:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iput-boolean v1, v0, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->continuous:Z

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->w:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->w:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;-><init>()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->o:Landroid/widget/Switch;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$e;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$e;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->p:Landroid/widget/Switch;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$f;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$f;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->r:Landroid/widget/Switch;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$g;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$g;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->f:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$h;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$h;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->g:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$i;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$i;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->h:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$j;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$j;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->i:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$k;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$k;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->j:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$l;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$l;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->k:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$m;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$m;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->l:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$a;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->m:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$b;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$b;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->n:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$c;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$c;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->A:Landroid/widget/TextView;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$d;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$d;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->updateViewByFoldState()V

    return-void
.end method

.method public setPubgMapPanelViewAdapter(Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$n;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->e:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$n;

    return-void
.end method

.method public final updateViewByFoldState()V
    .locals 2

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->A:Landroid/widget/TextView;

    const-string v1, "M\u1edf r\u1ed9ng"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->z:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->A:Landroid/widget/TextView;

    const-string v1, "Thu g\u1ecdn"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->z:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
