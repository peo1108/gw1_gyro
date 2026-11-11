.class public Li6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:F = 1600.0f


# instance fields
.field public a:Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Li6/a;)F
    .locals 0

    invoke-virtual {p0}, Li6/a;->b()F

    move-result p0

    return p0
.end method


# virtual methods
.method public final b()F
    .locals 4

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$h;->g()Landroid/util/Size;

    move-result-object v0

    invoke-static {}, LA6/b;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const v1, 0x3f333333    # 0.7f

    :goto_0
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    const/high16 v1, 0x44c80000    # 1600.0f

    cmpg-float v3, v2, v1

    if-gez v3, :cond_2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :cond_2
    :goto_1
    return v2
.end method

.method public c()V
    .locals 6

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/zjx/jyandroid/e$h;->p1:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;

    iput-object v0, p0, Li6/a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$h;->g()Landroid/util/Size;

    move-result-object v0

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {p0}, Li6/a;->b()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v0, 0x0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v0, 0x11

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget-object v0, LB6/b;->f:LB6/b;

    iget-object v2, p0, Li6/a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;

    invoke-virtual {v0, v2, v1}, LB6/b;->a(LD7/a;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Li6/a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;

    new-instance v2, Li6/a$a;

    invoke-direct {v2, p0, v1}, Li6/a$a;-><init>(Li6/a;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v0, v2}, LD7/a;->setOnViewConfigurationChangedListener(LD7/a$a;)V

    return-void
.end method

.method public d()V
    .locals 2

    sget-object v0, LB6/b;->f:LB6/b;

    iget-object v1, p0, Li6/a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;

    invoke-virtual {v0, v1}, LB6/b;->c(LD7/a;)V

    return-void
.end method
