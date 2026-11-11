.class public Lt/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/zjx/jyandroid/R$layout;->user_settings_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;

    iput-object v0, p0, Lt/a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->g()Landroid/util/Size;

    move-result-object v0

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$c;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const v1, 0x3f333333    # 0.7f

    :goto_0
    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v2

    iget-object v3, p0, Lt/a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-double v5, v5

    const-wide v7, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-int v6, v6

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v7, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v7

    double-to-int v7, v0

    const/16 v8, 0x33

    const/16 v9, 0x200

    invoke-virtual/range {v2 .. v9}, Ll/b;->d(Lcom/zjx/jyandroid/base/BaseFloatingView;IIIIII)V

    return-void
.end method

.method public b()V
    .locals 2

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v0

    iget-object v1, p0, Lt/a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;

    invoke-virtual {v0, v1}, Ll/b;->q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    return-void
.end method
