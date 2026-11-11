.class public Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;
.super Lcom/zjx/jyandroid/base/BaseFloatingView;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/BaseFloatingView$OnFloatingViewMoveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel$PanelInfoContainer;
    }
.end annotation


# instance fields
.field configNameTextView:Landroid/widget/TextView;

.field gestureTextView:Landroid/widget/TextView;

.field private userSettings:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;

.field valueTextView:Landroid/widget/TextView;


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
    new-instance p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;

    invoke-direct {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;->userSettings:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;

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
    new-instance p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;

    invoke-direct {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;->userSettings:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;

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
    new-instance p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;

    invoke-direct {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;->userSettings:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;

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
    new-instance p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;

    invoke-direct {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;->userSettings:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;

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

    sget v0, Lcom/zjx/jyandroid/R$id;->configNameTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;->configNameTextView:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->valueTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;->valueTextView:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->gestureTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;->gestureTextView:Landroid/widget/TextView;

    return-void
.end method

.method public onFloatingViewMoved(II)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;->userSettings:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;

    invoke-virtual {v0, p1, p2}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCUserSettings;->setFloatingPanelOrigin(II)V

    return-void
.end method

.method public updatePanel(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel$PanelInfoContainer;)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;->configNameTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel$PanelInfoContainer;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;->valueTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel$PanelInfoContainer;->value:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;->gestureTextView:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel$PanelInfoContainer;->gesture:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData;->getGestureNameByGesture(Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
