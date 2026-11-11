.class public final Lmdm/ParamsMenu;
.super Ljava/lang/Object;
.source "ParamsMenu.java"


# static fields
.field static final EXT_MANAGER:Ljava/lang/String; = "com.zjx.jyandroid.Extensions.ExtensionManager"

.field static final PUBG_EXT:Ljava/lang/String; = "com.zjx.jyandroid.Extensions.pubg.d"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static install(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 12

    .line 34
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 38
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 40
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, -0x1

    invoke-direct {v4, v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "mdm_ic_params"

    const-string v8, "drawable"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 44
    if-eqz v5, :cond_44

    invoke-virtual {v0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    :cond_44
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v6, 0x41d80000    # 27.0f

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v5, v7, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 48
    const-string v5, "Th\u00f4ng s\u1ed1"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const/4 v5, 0x2

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v1, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 50
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 51
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 55
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "a"

    const-class v4, Landroid/view/View;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4, v5}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 57
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance p0, Lmdm/ParamsMenu$1;

    invoke-direct {p0, v0, p1}, Lmdm/ParamsMenu$1;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_9d
    .catchall {:try_start_0 .. :try_end_9d} :catchall_9e

    .line 66
    goto :goto_9f

    .line 64
    :catchall_9e
    move-exception p0

    .line 67
    :goto_9f
    return-void
.end method

.method static keymapManager(Ljava/lang/Object;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager;
    .registers 5

    .line 71
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "D"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-object p0

    .line 72
    :catchall_16
    move-exception p0

    .line 73
    const/4 p0, 0x0

    return-object p0
.end method

.method static pubgExtension()Ljava/lang/Object;
    .registers 5

    .line 80
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.zjx.jyandroid.Extensions.ExtensionManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 81
    const-string v2, "sharedInstance"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 82
    const-string v3, "getLoadedExtensionInstanceByClass"

    const-class v4, Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 83
    const-string v3, "com.zjx.jyandroid.Extensions.pubg.d"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_31

    return-object v0

    .line 84
    :catchall_31
    move-exception v1

    .line 85
    return-object v0
.end method

.method public static reloadIfSelected(Ljava/lang/String;)V
    .registers 3

    .line 96
    if-eqz p0, :cond_19

    :try_start_2
    invoke-static {}, Lmdm/LocalKeymapStore;->selectedRcId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_19

    .line 97
    :cond_d
    invoke-static {}, Lmdm/ParamsMenu;->pubgExtension()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0, v1}, Lmdm/RcEngine;->reloadIfRunning(Ljava/lang/Object;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_17

    .line 100
    goto :goto_18

    .line 98
    :catchall_17
    move-exception p0

    .line 101
    :goto_18
    return-void

    .line 96
    :cond_19
    :goto_19
    return-void
.end method
