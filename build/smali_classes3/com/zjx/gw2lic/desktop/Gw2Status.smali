.class public Lcom/zjx/gw2lic/desktop/Gw2Status;
.super Ljava/lang/Object;
.source "Gw2Status.java"


# static fields
.field private static sDone:Z

.field private static sH:Landroid/os/Handler;

.field private static sShown:Z

.field private static sView:Landroid/view/View;

.field private static sWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static dp(Landroid/content/Context;I)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static hide()V
    .locals 2

    sget-boolean v0, Lcom/zjx/gw2lic/desktop/Gw2Status;->sShown:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zjx/gw2lic/desktop/Gw2Status;->sShown:Z

    :try_start_0
    sget-object v0, Lcom/zjx/gw2lic/desktop/Gw2Status;->sH:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/zjx/gw2lic/desktop/Gw2Status$2;

    invoke-direct {v1}, Lcom/zjx/gw2lic/desktop/Gw2Status$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    return-void
.end method

.method static hideOnMain()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/zjx/gw2lic/desktop/Gw2Status;->sView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/zjx/gw2lic/desktop/Gw2Status;->sWm:Landroid/view/WindowManager;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/zjx/gw2lic/desktop/Gw2Status;->sView:Landroid/view/View;

    sput-object v0, Lcom/zjx/gw2lic/desktop/Gw2Status;->sWm:Landroid/view/WindowManager;

    return-void
.end method

.method public static show()V
    .locals 2

    return-void

    sget-boolean v0, Lcom/zjx/gw2lic/desktop/Gw2Status;->sDone:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/zjx/gw2lic/desktop/Gw2Status;->sDone:Z

    sget-boolean v0, Lcom/zjx/gw2lic/desktop/Gw2Status;->sShown:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/zjx/gw2lic/desktop/Gw2Status;->sShown:Z

    :try_start_0
    sget-object v0, Lcom/zjx/gw2lic/desktop/Gw2Status;->sH:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/zjx/gw2lic/desktop/Gw2Status;->sH:Landroid/os/Handler;

    :cond_0
    new-instance v1, Lcom/zjx/gw2lic/desktop/Gw2Status$1;

    invoke-direct {v1}, Lcom/zjx/gw2lic/desktop/Gw2Status$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    return-void
.end method

.method static showOnMain()V
    .locals 8

    :try_start_0
    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "-\u00aeZ\u00c5a\u000c"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v5, -0xfebe5de

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v5, 0x14

    invoke-static {v0, v5}, Lcom/zjx/gw2lic/desktop/Gw2Status;->dp(Landroid/content/Context;I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v5, 0x10

    invoke-static {v0, v5}, Lcom/zjx/gw2lic/desktop/Gw2Status;->dp(Landroid/content/Context;I)I

    move-result v6

    div-int/lit8 v7, v6, 0x2

    invoke-virtual {v2, v6, v7, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "\u001b\u00a4@\u00c8x\u001a\u009c<\u00acH\u00bcM\u0013\u0090;\u00c9E\u00e7$<\u00b1/\u00dd\u000b\u00bc\u00d1"

    invoke-static/range {v6 .. v6}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v6, -0x2

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v6, 0x51

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v6, 0x54

    invoke-static {v0, v6}, Lcom/zjx/gw2lic/desktop/Gw2Status;->dp(Landroid/content/Context;I)I

    move-result v6

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v6, 0x7f6

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x18

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v6, -0x3

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    const-string v6, "\u001d\u00b0\u0006\u00f2z\u001a\u009c \u00b1"

    invoke-static/range {v6 .. v6}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sput-object v2, Lcom/zjx/gw2lic/desktop/Gw2Status;->sView:Landroid/view/View;

    sput-object v1, Lcom/zjx/gw2lic/desktop/Gw2Status;->sWm:Landroid/view/WindowManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-object v0, Lcom/zjx/gw2lic/desktop/Gw2Status;->sView:Landroid/view/View;

    sput-object v0, Lcom/zjx/gw2lic/desktop/Gw2Status;->sWm:Landroid/view/WindowManager;

    return-void
.end method
