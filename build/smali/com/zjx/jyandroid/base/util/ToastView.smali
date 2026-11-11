.class public Lcom/zjx/jyandroid/base/util/ToastView;
.super Lcom/zjx/jyandroid/base/BaseFloatingView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/base/util/ToastView$a;
    }
.end annotation


# static fields
.field public static final g:F = 0.07f

.field public static final h:F = 0.8f


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroidx/cardview/widget/CardView;

.field public c:Ljava/lang/String;

.field public d:Lcom/zjx/jyandroid/base/util/ToastView$a;

.field public e:Landroid/view/ViewGroup$LayoutParams;

.field public f:Z


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
    const-string p1, ""

    iput-object p1, p0, Lcom/zjx/jyandroid/base/util/ToastView;->c:Ljava/lang/String;

    .line 3
    sget-object p1, Lcom/zjx/jyandroid/base/util/ToastView$a;->a:Lcom/zjx/jyandroid/base/util/ToastView$a;

    iput-object p1, p0, Lcom/zjx/jyandroid/base/util/ToastView;->d:Lcom/zjx/jyandroid/base/util/ToastView$a;

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
    const-string p1, ""

    iput-object p1, p0, Lcom/zjx/jyandroid/base/util/ToastView;->c:Ljava/lang/String;

    .line 6
    sget-object p1, Lcom/zjx/jyandroid/base/util/ToastView$a;->a:Lcom/zjx/jyandroid/base/util/ToastView$a;

    iput-object p1, p0, Lcom/zjx/jyandroid/base/util/ToastView;->d:Lcom/zjx/jyandroid/base/util/ToastView$a;

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
    const-string p1, ""

    iput-object p1, p0, Lcom/zjx/jyandroid/base/util/ToastView;->c:Ljava/lang/String;

    .line 9
    sget-object p1, Lcom/zjx/jyandroid/base/util/ToastView$a;->a:Lcom/zjx/jyandroid/base/util/ToastView$a;

    iput-object p1, p0, Lcom/zjx/jyandroid/base/util/ToastView;->d:Lcom/zjx/jyandroid/base/util/ToastView$a;

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
    const-string p1, ""

    iput-object p1, p0, Lcom/zjx/jyandroid/base/util/ToastView;->c:Ljava/lang/String;

    .line 12
    sget-object p1, Lcom/zjx/jyandroid/base/util/ToastView$a;->a:Lcom/zjx/jyandroid/base/util/ToastView$a;

    iput-object p1, p0, Lcom/zjx/jyandroid/base/util/ToastView;->d:Lcom/zjx/jyandroid/base/util/ToastView$a;

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/util/Size;
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->i()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3d8f5c29    # 0.07f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    mul-int/lit8 p0, p0, 0x3c

    if-ge p0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-le p0, v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, p0

    :goto_0
    new-instance p0, Landroid/util/Size;

    const/16 v0, 0x25

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/base/util/ToastView;->d:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    const v2, 0x3f4ccccd    # 0.8f

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    sget v0, Lcom/zjx/jyandroid/R$color;->white:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v0

    invoke-static {v0, v2}, Lcom/zjx/jyandroid/base/util/b;->f(IF)I

    move-result v0

    sget v1, Lcom/zjx/jyandroid/R$color;->black:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v1

    goto :goto_0

    :cond_0
    sget v0, Lcom/zjx/jyandroid/R$color;->link_blue:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v0

    const v1, 0x3f666666    # 0.9f

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/util/b;->f(IF)I

    move-result v0

    sget v1, Lcom/zjx/jyandroid/R$color;->white:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v1

    goto :goto_0

    :cond_1
    sget v0, Lcom/zjx/jyandroid/R$color;->warning_yellow:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v0

    const v1, 0x3f733333    # 0.95f

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/util/b;->f(IF)I

    move-result v0

    sget v1, Lcom/zjx/jyandroid/R$color;->custom_black:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v1

    goto :goto_0

    :cond_2
    sget v0, Lcom/zjx/jyandroid/R$color;->danger_red:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v0

    invoke-static {v0, v2}, Lcom/zjx/jyandroid/base/util/b;->f(IF)I

    move-result v0

    sget v1, Lcom/zjx/jyandroid/R$color;->white:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v1

    goto :goto_0

    :cond_3
    sget v0, Lcom/zjx/jyandroid/R$color;->success_green:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/util/b;->f(IF)I

    move-result v0

    sget v1, Lcom/zjx/jyandroid/R$color;->white:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/zjx/jyandroid/base/util/ToastView;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {v2, v0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/base/util/ToastView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean p1, p0, Lcom/zjx/jyandroid/base/util/ToastView;->f:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/base/util/ToastView;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v1, p0, Lcom/zjx/jyandroid/base/util/ToastView;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    invoke-super {p0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->updateWindowParams(Landroid/view/WindowManager$LayoutParams;)V

    iput-boolean v0, p0, Lcom/zjx/jyandroid/base/util/ToastView;->f:Z

    :cond_0
    return-void
.end method

.method public setToastText(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/zjx/jyandroid/base/util/ToastView;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/zjx/jyandroid/base/util/ToastView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setType(Lcom/zjx/jyandroid/base/util/ToastView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/base/util/ToastView;->d:Lcom/zjx/jyandroid/base/util/ToastView$a;

    iget-object p1, p0, Lcom/zjx/jyandroid/base/util/ToastView;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/base/util/ToastView;->b()V

    :cond_0
    return-void
.end method

.method public viewDidLoad()V
    .locals 2

    sget v0, Lcom/zjx/jyandroid/R$id;->toastTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/base/util/ToastView;->a:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/R$id;->toastCardView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/zjx/jyandroid/base/util/ToastView;->b:Landroidx/cardview/widget/CardView;

    iget-object v0, p0, Lcom/zjx/jyandroid/base/util/ToastView;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zjx/jyandroid/base/util/ToastView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/base/util/ToastView;->b()V

    return-void
.end method
