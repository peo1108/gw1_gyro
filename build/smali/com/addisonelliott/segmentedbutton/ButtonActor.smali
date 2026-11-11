.class Lcom/addisonelliott/segmentedbutton/ButtonActor;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private button:Lcom/addisonelliott/segmentedbutton/SegmentedButton;

.field private dividerWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/ButtonActor;->button:Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/addisonelliott/segmentedbutton/ButtonActor;->dividerWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/ButtonActor;->button:Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/addisonelliott/segmentedbutton/ButtonActor;->dividerWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/ButtonActor;->button:Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/addisonelliott/segmentedbutton/ButtonActor;->dividerWidth:I

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/ButtonActor;->button:Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->isLeftButton()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/ButtonActor;->button:Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    invoke-virtual {v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->isRightButton()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/ButtonActor;->button:Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    invoke-virtual {v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->isLeftButton()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/ButtonActor;->button:Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    invoke-virtual {v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->isRightButton()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/addisonelliott/segmentedbutton/ButtonActor;->dividerWidth:I

    goto :goto_1

    :cond_2
    :goto_0
    iget v0, p0, Lcom/addisonelliott/segmentedbutton/ButtonActor;->dividerWidth:I

    div-int/lit8 v0, v0, 0x2

    :goto_1
    iget-object v1, p0, Lcom/addisonelliott/segmentedbutton/ButtonActor;->button:Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    iget-object v0, p0, Lcom/addisonelliott/segmentedbutton/ButtonActor;->button:Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    :goto_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setButton(Lcom/addisonelliott/segmentedbutton/SegmentedButton;)V
    .locals 0

    iput-object p1, p0, Lcom/addisonelliott/segmentedbutton/ButtonActor;->button:Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    return-void
.end method

.method public setDividerWidth(I)V
    .locals 0

    iput p1, p0, Lcom/addisonelliott/segmentedbutton/ButtonActor;->dividerWidth:I

    return-void
.end method
