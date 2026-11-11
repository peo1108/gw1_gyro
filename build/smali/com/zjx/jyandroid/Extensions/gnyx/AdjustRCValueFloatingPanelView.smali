.class public Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;
.super Lcom/zjx/jyandroid/base/BaseFloatingView;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/BaseFloatingView$OnFloatingViewMoveListener;


# instance fields
.field adjustRCValueBaseView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueBaseView;

.field backButton:Landroid/view/View;

.field public closeButton:Landroid/view/View;

.field public navigationBar:Landroid/view/View;

.field navigationView:Lcom/zjx/jyandroid/base/CustomViews/NavigationView;

.field public saveButton:Landroid/view/View;

.field private userSettings:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-direct {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->userSettings:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    .line 3
    invoke-virtual {p0, p0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setOnMoveListener(Lcom/zjx/jyandroid/base/BaseFloatingView$OnFloatingViewMoveListener;)V

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

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-direct {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->userSettings:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    .line 6
    invoke-virtual {p0, p0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setOnMoveListener(Lcom/zjx/jyandroid/base/BaseFloatingView$OnFloatingViewMoveListener;)V

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

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-direct {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->userSettings:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    .line 9
    invoke-virtual {p0, p0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setOnMoveListener(Lcom/zjx/jyandroid/base/BaseFloatingView$OnFloatingViewMoveListener;)V

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

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 11
    new-instance p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-direct {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->userSettings:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    .line 12
    invoke-virtual {p0, p0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setOnMoveListener(Lcom/zjx/jyandroid/base/BaseFloatingView$OnFloatingViewMoveListener;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->navigationBar:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/base/util/b;->C(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->saveButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v0

    const-class v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$3;

    invoke-direct {v1, p0, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$3;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->adjustRCValueBaseView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueBaseView;

    invoke-virtual {v2, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->adjustRCValueBaseView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueBaseView;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueBaseView;->coefficientButton:Landroid/widget/Button;

    new-instance v2, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4;

    invoke-direct {v2, p0, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$4;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxExtension;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->onFinishInflate()V

    sget v0, Lcom/zjx/jyandroid/R$id;->navigationBar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->navigationBar:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->navigationView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->navigationView:Lcom/zjx/jyandroid/base/CustomViews/NavigationView;

    sget v0, Lcom/zjx/jyandroid/R$id;->backButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->backButton:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->closeButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->closeButton:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->saveButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->saveButton:Landroid/view/View;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->navigationView:Lcom/zjx/jyandroid/base/CustomViews/NavigationView;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->backButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->setBackButton(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->navigationView:Lcom/zjx/jyandroid/base/CustomViews/NavigationView;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->saveButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->setRightButton(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->navigationView:Lcom/zjx/jyandroid/base/CustomViews/NavigationView;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$1;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$1;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;)V

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->registerOnViewStackChangedListener(Lcom/zjx/jyandroid/base/CustomViews/NavigationView$ViewStackOnChangedListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->navigationView:Lcom/zjx/jyandroid/base/CustomViews/NavigationView;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueBaseView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->adjustRCValueBaseView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueBaseView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueBaseView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setMinimumValue(F)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->adjustRCValueBaseView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueBaseView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueBaseView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const/high16 v1, 0x43960000    # 300.0f

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setMaximumValue(F)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->adjustRCValueBaseView:Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueBaseView;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueBaseView;->slider:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->continuous:Z

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueBaseView;->dynamicRCButton:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$2;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView$2;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onFloatingViewMoved(II)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/AdjustRCValueFloatingPanelView;->userSettings:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-virtual {v0, p1, p2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->setAdjustRCValuePanelOrigin(II)V

    return-void
.end method
