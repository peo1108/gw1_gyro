.class public Lcom/zjx/gw2lic/Gw2NoDevice;
.super Ljava/lang/Object;
.source "Gw2NoDevice.java"


# static fields
.field public static group:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Landroid/view/View;)V
    .locals 7

    if-eqz p0, :cond_4

    const-string v0, "4\u00a8k\u00c5k\r\u00816\u00a7p\u00ef~\u001f\u00973\u00d5"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f1104dc

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Landroid/widget/TextView;

    if-eqz v6, :cond_1

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f1104dd

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v4, 0x7f070053

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-static {v2}, Lcom/zjx/gw2lic/Gw2NoDevice;->build(Landroid/content/Context;)Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    move-result-object v4

    sput-object v4, Lcom/zjx/gw2lic/Gw2NoDevice;->group:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    invoke-virtual {v1, v4, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/zjx/gw2lic/Gw2NoDevice;->isOn()Z

    move-result v5

    const/4 v3, 0x0

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5, v3}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setPosition(IZ)V

    new-instance v5, Lcom/zjx/gw2lic/Gw2NoDevice$Seg;

    invoke-direct {v5}, Lcom/zjx/gw2lic/Gw2NoDevice$Seg;-><init>()V

    invoke-virtual {v4, v5}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setOnPositionChangedListener(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;)V

    :cond_4
    return-void
.end method

.method public static build(Landroid/content/Context;)Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;
    .locals 11

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v0, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    invoke-direct {v0, p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;-><init>(Landroid/content/Context;)V

    const v4, 0x7f06002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const v5, 0x7f060332

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const v6, 0x7f060311

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setBackground(I)V

    const/4 v6, 0x1

    invoke-static {p0, v6}, Lcom/zjx/gw2lic/Gw2NoDevice;->dpx(Landroid/content/Context;I)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v4, v8, v9}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setBorder(IIII)V

    const/16 v7, 0x4

    invoke-static {p0, v7}, Lcom/zjx/gw2lic/Gw2NoDevice;->dpx(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setRadius(I)V

    invoke-virtual {v0, v4}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setSelectedBackground(I)V

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setRipple(Z)V

    invoke-virtual {v0, v5}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setRipple(I)V

    const/16 v7, 0xc8

    invoke-virtual {v0, v7}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setSelectionAnimationDuration(I)V

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setDraggable(Z)V

    const v7, 0x7f07009c

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    new-instance v1, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    invoke-direct {v1, p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;-><init>(Landroid/content/Context;)V

    const-string v7, "\u0012\u00a6F\u00c5y\u001a\u009a0"

    invoke-static/range {v7 .. v7}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setText(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setTextColor(I)V

    invoke-virtual {v1, v5}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setSelectedTextColor(I)V

    invoke-virtual {v1, v10}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setTextSize(F)V

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v7}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setTextTypeface(Landroid/graphics/Typeface;)V

    const/16 v7, 0xe

    invoke-static {p0, v7}, Lcom/zjx/gw2lic/Gw2NoDevice;->dpx(Landroid/content/Context;I)I

    move-result v7

    const/16 v8, 0xa

    invoke-static {p0, v8}, Lcom/zjx/gw2lic/Gw2NoDevice;->dpx(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v1, v7, v8, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Lcom/addisonelliott/segmentedbutton/SegmentedButton;

    invoke-direct {v2, p0}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;-><init>(Landroid/content/Context;)V

    const-string v7, "\u000f\u0094v\u0081F\u000e\u008a"

    invoke-static/range {v7 .. v7}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setText(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setTextColor(I)V

    invoke-virtual {v2, v5}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setSelectedTextColor(I)V

    invoke-virtual {v2, v10}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setTextSize(F)V

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v7}, Lcom/addisonelliott/segmentedbutton/SegmentedButton;->setTextTypeface(Landroid/graphics/Typeface;)V

    const/16 v7, 0xe

    invoke-static {p0, v7}, Lcom/zjx/gw2lic/Gw2NoDevice;->dpx(Landroid/content/Context;I)I

    move-result v7

    const/16 v8, 0xa

    invoke-static {p0, v8}, Lcom/zjx/gw2lic/Gw2NoDevice;->dpx(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v2, v7, v8, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    const/4 v7, -0x2

    const/4 v8, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static dpx(Landroid/content/Context;I)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v2, p1

    mul-float/2addr v2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v2, v1

    float-to-int v2, v2

    return v2
.end method

.method public static isOn()Z
    .locals 2

    invoke-static {}, Lcom/zjx/gw2lic/Gw2NoDevice;->markerFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static markerFile()Ljava/io/File;
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "4\u00a8k\u00c5k\r\u00816\u00a7"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setMode(Z)V
    .locals 2

    invoke-static {}, Lcom/zjx/gw2lic/Gw2NoDevice;->isOn()Z

    move-result v0

    if-eq v0, p0, :cond_0

    new-instance v0, Lcom/zjx/gw2lic/Gw2NoDevice$Toggle;

    invoke-direct {v0}, Lcom/zjx/gw2lic/Gw2NoDevice$Toggle;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/zjx/gw2lic/Gw2NoDevice$Toggle;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_0
    return-void
.end method
