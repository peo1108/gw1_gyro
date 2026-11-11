.class public final Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final activateButton:Landroidx/cardview/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final activateTextView:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final clearButton:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final containerView:Landroidx/cardview/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final imageView13:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final imageView14:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final keyboardView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final numberButton0:Landroidx/cardview/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final numberButton1:Landroidx/cardview/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final numberButton2:Landroidx/cardview/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final numberButton3:Landroidx/cardview/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final numberButton4:Landroidx/cardview/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final numberButton5:Landroidx/cardview/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final numberButton6:Landroidx/cardview/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final numberButton7:Landroidx/cardview/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final numberButton8:Landroidx/cardview/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final numberButton9:Landroidx/cardview/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final passcodeEditText:Landroid/widget/EditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final portEditText:Landroid/widget/EditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final progressLoader:Landroid/widget/ProgressBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final returnAppButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final showTutorialButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final textView24:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final textView25:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tutorialView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ProgressBar;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V
    .locals 2
    .param p1    # Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/cardview/widget/CardView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroidx/cardview/widget/CardView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroidx/cardview/widget/CardView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroidx/cardview/widget/CardView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroidx/cardview/widget/CardView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroidx/cardview/widget/CardView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroidx/cardview/widget/CardView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroidx/cardview/widget/CardView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Landroidx/cardview/widget/CardView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Landroidx/cardview/widget/CardView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Landroidx/cardview/widget/CardView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Landroidx/cardview/widget/CardView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19    # Landroid/widget/EditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p20    # Landroid/widget/EditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p21    # Landroid/widget/ProgressBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p22    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p23    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p24    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p25    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p26    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->rootView:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;

    move-object v1, p2

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->activateButton:Landroidx/cardview/widget/CardView;

    move-object v1, p3

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->activateTextView:Landroid/widget/TextView;

    move-object v1, p4

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->clearButton:Landroid/widget/TextView;

    move-object v1, p5

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->containerView:Landroidx/cardview/widget/CardView;

    move-object v1, p6

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->imageView13:Landroid/widget/ImageView;

    move-object v1, p7

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->imageView14:Landroid/widget/ImageView;

    move-object v1, p8

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->keyboardView:Landroid/widget/LinearLayout;

    move-object v1, p9

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->numberButton0:Landroidx/cardview/widget/CardView;

    move-object v1, p10

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->numberButton1:Landroidx/cardview/widget/CardView;

    move-object v1, p11

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->numberButton2:Landroidx/cardview/widget/CardView;

    move-object v1, p12

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->numberButton3:Landroidx/cardview/widget/CardView;

    move-object v1, p13

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->numberButton4:Landroidx/cardview/widget/CardView;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->numberButton5:Landroidx/cardview/widget/CardView;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->numberButton6:Landroidx/cardview/widget/CardView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->numberButton7:Landroidx/cardview/widget/CardView;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->numberButton8:Landroidx/cardview/widget/CardView;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->numberButton9:Landroidx/cardview/widget/CardView;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->passcodeEditText:Landroid/widget/EditText;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->portEditText:Landroid/widget/EditText;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->progressLoader:Landroid/widget/ProgressBar;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->returnAppButton:Landroid/widget/Button;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->showTutorialButton:Landroid/widget/Button;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->textView24:Landroid/widget/TextView;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->textView25:Landroid/widget/TextView;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->tutorialView:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;
    .locals 30
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    sget v1, Lcom/zjx/jyandroid/R$id;->activateButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/cardview/widget/CardView;

    if-eqz v5, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->activateTextView:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->clearButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->containerView:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/cardview/widget/CardView;

    if-eqz v8, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->imageView13:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->imageView14:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->keyboardView:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->numberButton0:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/cardview/widget/CardView;

    if-eqz v12, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->numberButton1:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/cardview/widget/CardView;

    if-eqz v13, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->numberButton2:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/cardview/widget/CardView;

    if-eqz v14, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->numberButton3:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/cardview/widget/CardView;

    if-eqz v15, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->numberButton4:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/cardview/widget/CardView;

    if-eqz v16, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->numberButton5:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroidx/cardview/widget/CardView;

    if-eqz v17, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->numberButton6:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/cardview/widget/CardView;

    if-eqz v18, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->numberButton7:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroidx/cardview/widget/CardView;

    if-eqz v19, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->numberButton8:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroidx/cardview/widget/CardView;

    if-eqz v20, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->numberButton9:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroidx/cardview/widget/CardView;

    if-eqz v21, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->passcodeEditText:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/EditText;

    if-eqz v22, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->portEditText:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/EditText;

    if-eqz v23, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->progressLoader:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/ProgressBar;

    if-eqz v24, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->returnAppButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/Button;

    if-eqz v25, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->showTutorialButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/widget/Button;

    if-eqz v26, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->textView24:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroid/widget/TextView;

    if-eqz v27, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->textView25:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Landroid/widget/TextView;

    if-eqz v28, :cond_0

    sget v1, Lcom/zjx/jyandroid/R$id;->tutorialView:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Landroid/widget/LinearLayout;

    if-eqz v29, :cond_0

    new-instance v1, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;

    invoke-direct/range {v3 .. v29}, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;-><init>(Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ProgressBar;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;
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
    invoke-static {p0, v0, v1}, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;
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
    sget v0, Lcom/zjx/jyandroid/R$layout;->adb_pair_floating_view:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->bind(Landroid/view/View;)Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->getRoot()Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/zjx/jyandroid/databinding/AdbPairFloatingViewBinding;->rootView:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;

    return-object v0
.end method
