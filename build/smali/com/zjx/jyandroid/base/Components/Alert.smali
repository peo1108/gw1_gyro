.class public Lcom/zjx/jyandroid/base/Components/Alert;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;
    }
.end annotation


# instance fields
.field private actions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;",
            ">;"
        }
    .end annotation
.end field

.field private alertView:Lcom/zjx/jyandroid/base/CustomViews/AlertView;

.field private baseView:Landroid/view/ViewGroup;

.field private showing:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/base/Components/Alert;->actions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/base/Components/Alert;->showing:Z

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/Alert;->baseView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    sget v1, Lcom/zjx/jyandroid/R$layout;->alert_view:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/base/CustomViews/AlertView;

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/Alert;->alertView:Lcom/zjx/jyandroid/base/CustomViews/AlertView;

    iget-object p1, p1, Lcom/zjx/jyandroid/base/CustomViews/AlertView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/Alert;->alertView:Lcom/zjx/jyandroid/base/CustomViews/AlertView;

    iget-object p1, p1, Lcom/zjx/jyandroid/base/CustomViews/AlertView;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/zjx/jyandroid/base/Components/Alert;)Lcom/zjx/jyandroid/base/CustomViews/AlertView;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/base/Components/Alert;->alertView:Lcom/zjx/jyandroid/base/CustomViews/AlertView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/zjx/jyandroid/base/Components/Alert;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/base/Components/Alert;->baseView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private refreshLayout()V
    .locals 11

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/Alert;->alertView:Lcom/zjx/jyandroid/base/CustomViews/AlertView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/zjx/jyandroid/base/CustomViews/AlertView;->actionButtonsContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/Alert;->alertView:Lcom/zjx/jyandroid/base/CustomViews/AlertView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/base/Components/Alert;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    invoke-static {v2}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;->access$200(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    move-result-object v2

    sget-object v5, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DESTRUCTIVE:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    if-ne v2, v5, :cond_2

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v4

    :goto_0
    iget-object v2, p0, Lcom/zjx/jyandroid/base/Components/Alert;->actions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x2

    if-le v2, v5, :cond_4

    iget-object v2, p0, Lcom/zjx/jyandroid/base/Components/Alert;->alertView:Lcom/zjx/jyandroid/base/CustomViews/AlertView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/CustomViews/AlertView;->actionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, p0, Lcom/zjx/jyandroid/base/Components/Alert;->alertView:Lcom/zjx/jyandroid/base/CustomViews/AlertView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/CustomViews/AlertView;->actionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v6, p0, Lcom/zjx/jyandroid/base/Components/Alert;->actions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x6e

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/zjx/jyandroid/base/Components/Alert;->alertView:Lcom/zjx/jyandroid/base/CustomViews/AlertView;

    iget-object v2, v2, Lcom/zjx/jyandroid/base/CustomViews/AlertView;->actionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :goto_1
    iget-object v2, p0, Lcom/zjx/jyandroid/base/Components/Alert;->actions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    new-instance v7, Landroid/widget/Button;

    invoke-direct {v7, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    sget v8, Lcom/zjx/jyandroid/R$drawable;->alert_view_button_background:I

    invoke-virtual {v0, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v6}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;->access$300(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, -0x1

    invoke-direct {v8, v10, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v7, v5, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {v6}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;->access$200(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    move-result-object v8

    sget-object v9, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DESTRUCTIVE:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    if-ne v8, v9, :cond_5

    sget v8, Lcom/zjx/jyandroid/R$color;->danger_red:I

    invoke-static {v8}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_5
    sget v8, Lcom/zjx/jyandroid/R$color;->jy_blue_1:I

    invoke-static {v8}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v1, :cond_6

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_6
    :goto_3
    iget-object v8, p0, Lcom/zjx/jyandroid/base/Components/Alert;->alertView:Lcom/zjx/jyandroid/base/CustomViews/AlertView;

    iget-object v8, v8, Lcom/zjx/jyandroid/base/CustomViews/AlertView;->actionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v8, Lcom/zjx/jyandroid/base/Components/Alert$2;

    invoke-direct {v8, p0, v6}, Lcom/zjx/jyandroid/base/Components/Alert$2;-><init>(Lcom/zjx/jyandroid/base/Components/Alert;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_7
    return-void
.end method


# virtual methods
.method public addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/Alert;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/zjx/jyandroid/base/Components/Alert;->refreshLayout()V

    return-void
.end method

.method public addTextField()Landroid/widget/EditText;
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/Alert;->alertView:Lcom/zjx/jyandroid/base/CustomViews/AlertView;

    iget-object v0, v0, Lcom/zjx/jyandroid/base/CustomViews/AlertView;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/Alert;->alertView:Lcom/zjx/jyandroid/base/CustomViews/AlertView;

    iget-object v0, v0, Lcom/zjx/jyandroid/base/CustomViews/AlertView;->editText:Landroid/widget/EditText;

    return-object v0
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/base/Components/Alert;->destroy(Z)V

    return-void
.end method

.method public destroy(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/zjx/jyandroid/base/Components/Alert;->showing:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/Alert;->alertView:Lcom/zjx/jyandroid/base/CustomViews/AlertView;

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/Alert;->alertView:Lcom/zjx/jyandroid/base/CustomViews/AlertView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v0, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/zjx/jyandroid/base/Components/Alert$1;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/base/Components/Alert$1;-><init>(Lcom/zjx/jyandroid/base/Components/Alert;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/Alert;->baseView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/Alert;->alertView:Lcom/zjx/jyandroid/base/CustomViews/AlertView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public getAlertView()Lcom/zjx/jyandroid/base/CustomViews/AlertView;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/Alert;->alertView:Lcom/zjx/jyandroid/base/CustomViews/AlertView;

    return-object v0
.end method

.method public getBaseView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/Alert;->baseView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public setBaseView(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/Alert;->baseView:Landroid/view/ViewGroup;

    return-void
.end method

.method public setContentText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/Alert;->alertView:Lcom/zjx/jyandroid/base/CustomViews/AlertView;

    iget-object v0, v0, Lcom/zjx/jyandroid/base/CustomViews/AlertView;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/Alert;->alertView:Lcom/zjx/jyandroid/base/CustomViews/AlertView;

    iget-object v0, v0, Lcom/zjx/jyandroid/base/CustomViews/AlertView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/Alert;->alertView:Lcom/zjx/jyandroid/base/CustomViews/AlertView;

    iget-object v0, v0, Lcom/zjx/jyandroid/base/CustomViews/AlertView;->baseContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/base/Components/Alert;->show(Z)V

    .line 2
    iput-boolean v0, p0, Lcom/zjx/jyandroid/base/Components/Alert;->showing:Z

    return-void
.end method

.method public show(Z)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/Alert;->baseView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/zjx/jyandroid/base/Components/Alert;->alertView:Lcom/zjx/jyandroid/base/CustomViews/AlertView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/Alert;->alertView:Lcom/zjx/jyandroid/base/CustomViews/AlertView;

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 5
    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/Alert;->alertView:Lcom/zjx/jyandroid/base/CustomViews/AlertView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method
