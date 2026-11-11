.class public final Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final clearButton:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final closeButton:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final deleteButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final downButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final frameLayout:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final horizontalRangeSlider:Lcom/google/android/material/slider/RangeSlider;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final insertButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final leftButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final lineGraphView:Lcom/zjx/jyandroid/base/Components/LineGraphView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final lineGraphViewHolder:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final multiselectButton:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final progressBar:Landroid/widget/ProgressBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final progressBarUnder:Landroid/widget/ProgressBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final refreshButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rightButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final saveButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final textView15:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final textView17:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final timeTextView:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final upButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final verticalRangeSlider:Lcom/google/android/material/slider/RangeSlider;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final weaponTextView:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/FrameLayout;Lcom/google/android/material/slider/RangeSlider;Landroid/widget/Button;Landroid/widget/Button;Lcom/zjx/jyandroid/base/Components/LineGraphView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Lcom/google/android/material/slider/RangeSlider;Landroid/widget/TextView;)V
    .locals 2
    .param p1    # Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/material/slider/RangeSlider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/zjx/jyandroid/base/Components/LineGraphView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroidx/constraintlayout/widget/ConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroid/widget/ProgressBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroid/widget/ProgressBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p20    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p21    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p22    # Lcom/google/android/material/slider/RangeSlider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p23    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;->rootView:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    move-object v1, p2

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;->clearButton:Landroid/widget/TextView;

    move-object v1, p3

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;->closeButton:Landroid/widget/TextView;

    move-object v1, p4

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;->deleteButton:Landroid/widget/Button;

    move-object v1, p5

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;->downButton:Landroid/widget/Button;

    move-object v1, p6

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;->frameLayout:Landroid/widget/FrameLayout;

    move-object v1, p7

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;->horizontalRangeSlider:Lcom/google/android/material/slider/RangeSlider;

    move-object v1, p8

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;->insertButton:Landroid/widget/Button;

    move-object v1, p9

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;->leftButton:Landroid/widget/Button;

    move-object v1, p10

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;->lineGraphView:Lcom/zjx/jyandroid/base/Components/LineGraphView;

    move-object v1, p11

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;->lineGraphViewHolder:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p12

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;->multiselectButton:Landroid/widget/TextView;

    move-object v1, p13

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;->progressBar:Landroid/widget/ProgressBar;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;->progressBarUnder:Landroid/widget/ProgressBar;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;->refreshButton:Landroid/widget/Button;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;->rightButton:Landroid/widget/Button;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;->saveButton:Landroid/widget/Button;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;->textView15:Landroid/widget/TextView;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;->textView17:Landroid/widget/TextView;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;->timeTextView:Landroid/widget/TextView;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;->upButton:Landroid/widget/Button;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;->verticalRangeSlider:Lcom/google/android/material/slider/RangeSlider;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;->weaponTextView:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;
    .locals 27
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    sget v1, Lcom/zjx/jyandroid/R$id;->clearButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->closeButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->deleteButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->downButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->frameLayout:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->horizontalRangeSlider:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/material/slider/RangeSlider;

    if-eqz v10, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->insertButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/Button;

    if-eqz v11, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->leftButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/Button;

    if-eqz v12, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->lineGraphView:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/zjx/jyandroid/base/Components/LineGraphView;

    if-eqz v13, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->lineGraphViewHolder:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v14, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->multiselectButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->progressBar:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ProgressBar;

    if-eqz v16, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->progressBarUnder:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/ProgressBar;

    if-eqz v17, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->refreshButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/Button;

    if-eqz v18, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->rightButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/Button;

    if-eqz v19, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->saveButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/Button;

    if-eqz v20, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->textView15:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->textView17:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->timeTextView:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/TextView;

    if-eqz v23, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->upButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/Button;

    if-eqz v24, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->verticalRangeSlider:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Lcom/google/android/material/slider/RangeSlider;

    if-eqz v25, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->weaponTextView:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/widget/TextView;

    if-eqz v26, :cond_0

    new-instance v1, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    invoke-direct/range {v3 .. v26}, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/FrameLayout;Lcom/google/android/material/slider/RangeSlider;Landroid/widget/Button;Landroid/widget/Button;Lcom/zjx/jyandroid/base/Components/LineGraphView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Lcom/google/android/material/slider/RangeSlider;Landroid/widget/TextView;)V

    return-object v1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    sget v0, Lcom/zjx/jyandroid/R$layout;->general_rc_adjust_dynamic_rc_value_view:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;->bind(Landroid/view/View;)Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;->getRoot()Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/zjx/jyandroid/databinding/GeneralRcAdjustDynamicRcValueViewBinding;->rootView:Lcom/zjx/jyandroid/Extensions/GeneralRC/AdjustDynamicRCValueView;

    return-object v0
.end method
