.class public Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;
.super Lcom/zjx/jyandroid/base/BaseFloatingView;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/BaseFloatingView$OnFloatingViewMoveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel$PanelInfoContainer;
    }
.end annotation


# instance fields
.field cardView:Landroidx/cardview/widget/CardView;

.field gestureTextView:Landroid/widget/TextView;

.field gripTextView:Landroid/widget/TextView;

.field muzzleTextView:Landroid/widget/TextView;

.field scopeTextView:Landroid/widget/TextView;

.field stockTextView:Landroid/widget/TextView;

.field private userSettings:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

.field valueTextView:Landroid/widget/TextView;

.field weaponTextView:Landroid/widget/TextView;


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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;->userSettings:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    .line 3
    invoke-virtual {p0, p0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setOnMoveListener(Lcom/zjx/jyandroid/base/BaseFloatingView$OnFloatingViewMoveListener;)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggableMinX:I

    .line 5
    iput p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggableMinY:I

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

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-direct {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;->userSettings:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    .line 8
    invoke-virtual {p0, p0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setOnMoveListener(Lcom/zjx/jyandroid/base/BaseFloatingView$OnFloatingViewMoveListener;)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggableMinX:I

    .line 10
    iput p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggableMinY:I

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

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-direct {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;->userSettings:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    .line 13
    invoke-virtual {p0, p0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setOnMoveListener(Lcom/zjx/jyandroid/base/BaseFloatingView$OnFloatingViewMoveListener;)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggableMinX:I

    .line 15
    iput p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggableMinY:I

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

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 17
    new-instance p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-direct {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;->userSettings:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    .line 18
    invoke-virtual {p0, p0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setOnMoveListener(Lcom/zjx/jyandroid/base/BaseFloatingView$OnFloatingViewMoveListener;)V

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggableMinX:I

    .line 20
    iput p1, p0, Lcom/zjx/jyandroid/base/BaseFloatingView;->draggableMinY:I

    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->onFinishInflate()V

    sget v0, Lcom/zjx/jyandroid/R$id;->weaponTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;->weaponTextView:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->gestureTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;->gestureTextView:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->scopeTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;->scopeTextView:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->muzzleTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;->muzzleTextView:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->gripTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;->gripTextView:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->stockTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;->stockTextView:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->valueTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;->valueTextView:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->cardView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;->cardView:Landroidx/cardview/widget/CardView;

    return-void
.end method

.method public onFloatingViewMoved(II)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;->userSettings:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-virtual {v0, p1, p2}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->setFloatingPanelOrigin(II)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;->cardView:Landroidx/cardview/widget/CardView;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public updatePanel(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel$PanelInfoContainer;)V
    .locals 4

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;->weaponTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel$PanelInfoContainer;->weaponType:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->getWeaponNameByIndex(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;->gestureTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->gestureNames:Ljava/util/Map;

    iget-object v2, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel$PanelInfoContainer;->gesture:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel$PanelInfoContainer;->aiming:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/zjx/jyandroid/R$string;->pubg_floating_panel_text1:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/zjx/jyandroid/R$string;->pubg_floating_panel_text2:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel$PanelInfoContainer;->scope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->getScopeName(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;->scopeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;->muzzleTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel$PanelInfoContainer;->muzzle:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->getMuzzleName(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;->gripTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->specialAccessoryNames:Ljava/util/Map;

    iget-object v2, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel$PanelInfoContainer;->specialAccessory:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;->stockTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->stockNames:Ljava/util/Map;

    iget-object v2, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel$PanelInfoContainer;->stock:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;->valueTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel$PanelInfoContainer;->value:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel$PanelInfoContainer;->muzzle:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;->None:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;->muzzleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;->muzzleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel$PanelInfoContainer;->specialAccessory:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;->None:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;->gripTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;->gripTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel$PanelInfoContainer;->stock:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->None:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;->stockTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;->stockTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method
