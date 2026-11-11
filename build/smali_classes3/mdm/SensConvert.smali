.class public Lmdm/SensConvert;
.super Landroid/widget/LinearLayout;
.source "SensConvert.java"


# static fields
.field static final SLIDER_IDS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 30
    const-string v5, "X6SensitivityCell"

    const-string v6, "X8SensitivityCell"

    const-string v0, "hippieSensitivityCell"

    const-string v1, "X1SensitivityCell"

    const-string v2, "X2SensitivityCell"

    const-string v3, "X3SensitivityCell"

    const-string v4, "X4SensitivityCell"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmdm/SensConvert;->SLIDER_IDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lmdm/SensConvert;->build()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lmdm/SensConvert;->build()V

    return-void
.end method


# virtual methods
.method build()V
    .registers 6

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmdm/SensConvert;->setOrientation(I)V

    .line 43
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lmdm/SensConvert;->dp(F)F

    .line 44
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lmdm/SensConvert;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 45
    const-string v2, "\u0110\u1ed5i \u0111\u1ed9 nh\u1ea1y trong game? K\u00e9o c\u00e1c thanh tr\u00ean t\u1edbi \u0111\u1ed9 nh\u1ea1y m\u1edbi r\u1ed3i b\u1ea5m n\u00fat: b\u1ea3ng gh\u00ecm c\u1ee7a scope \u0111\u1ed5i s\u1ebd \u0111\u01b0\u1ee3c t\u00ednh l\u1ea1i theo t\u1ec9 l\u1ec7 c\u0169 \u00f7 m\u1edbi. Kh\u00f4ng b\u1ea5m th\u00ec b\u1ea3ng gi\u1eef nguy\u00ean."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v2, -0x57637a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lmdm/TabletScale;->sp(F)F

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 49
    invoke-virtual {p0, v1}, Lmdm/SensConvert;->addView(Landroid/view/View;)V

    .line 51
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lmdm/SensConvert;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 52
    const-string v2, "Quy \u0111\u1ed5i b\u1ea3ng theo \u0111\u1ed9 nh\u1ea1y m\u1edbi"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 54
    const v2, -0xe5ebf6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lmdm/TabletScale;->sp(F)F

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 56
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 57
    invoke-virtual {p0}, Lmdm/SensConvert;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lmdm/SensConvert;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mdm_btn_gold"

    const-string v4, "drawable"

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 58
    if-eqz v0, :cond_6c

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 59
    :cond_6c
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42280000    # 42.0f

    invoke-virtual {p0, v2}, Lmdm/SensConvert;->dp(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 60
    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {p0, v2}, Lmdm/SensConvert;->dp(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 61
    invoke-virtual {p0, v1, v0}, Lmdm/SensConvert;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v0, Lmdm/SensConvert$1;

    invoke-direct {v0, p0}, Lmdm/SensConvert$1;-><init>(Lmdm/SensConvert;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method

.method convert()V
    .registers 11

    .line 85
    const-string v0, "e"

    :try_start_2
    invoke-virtual {p0}, Lmdm/SensConvert;->settingsRoot()Landroid/view/View;

    move-result-object v1

    .line 86
    sget-object v2, Lmdm/SensConvert;->SLIDER_IDS:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [D

    .line 87
    const/4 v3, 0x0

    move v4, v3

    :goto_d
    sget-object v5, Lmdm/SensConvert;->SLIDER_IDS:[Ljava/lang/String;

    array-length v5, v5

    const/4 v6, 0x0

    if-ge v4, v5, :cond_63

    .line 88
    invoke-virtual {p0}, Lmdm/SensConvert;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v7, Lmdm/SensConvert;->SLIDER_IDS:[Ljava/lang/String;

    aget-object v7, v7, v4

    const-string v8, "id"

    invoke-virtual {p0}, Lmdm/SensConvert;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 89
    if-nez v5, :cond_2c

    goto :goto_30

    :cond_2c
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 90
    :goto_30
    if-nez v6, :cond_38

    const-string v0, "Kh\u00f4ng \u0111\u1ecdc \u0111\u01b0\u1ee3c thanh \u0111\u1ed9 nh\u1ea1y"

    invoke-virtual {p0, v0}, Lmdm/SensConvert;->toast(Ljava/lang/String;)V

    return-void

    .line 91
    :cond_38
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v7, "slider"

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 92
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getValue"

    new-array v8, v3, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    aput-wide v5, v2, v4

    .line 87
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 94
    :cond_63
    invoke-static {}, Lmdm/ParamsMenu;->pubgExtension()Ljava/lang/Object;

    move-result-object v1

    .line 95
    if-nez v1, :cond_6a

    :goto_69
    goto :goto_7d

    :cond_6a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "E"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_69

    .line 96
    :goto_7d
    if-nez v6, :cond_85

    const-string v0, "Ch\u01b0a n\u1ea1p c\u1ea5u h\u00ecnh gh\u00ecm t\u00e2m \u2014 v\u00e0o game m\u1ed9t l\u1ea7n r\u1ed3i th\u1eed l\u1ea1i"

    invoke-virtual {p0, v0}, Lmdm/SensConvert;->toast(Ljava/lang/String;)V

    return-void

    .line 97
    :cond_85
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 98
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 99
    if-eqz v4, :cond_db

    invoke-static {v4}, Lmdm/RcStore;->isV2(Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_9c

    goto :goto_db

    .line 100
    :cond_9c
    invoke-static {v4, v2}, Lmdm/RcStore;->rescaleForSensitivity(Ljava/util/Map;[D)Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_ac

    const-string v0, "\u0110\u1ed9 nh\u1ea1y ch\u01b0a \u0111\u1ed5i \u2014 kh\u00f4ng c\u00f3 g\u00ec \u0111\u1ec3 quy \u0111\u1ed5i"

    invoke-virtual {p0, v0}, Lmdm/SensConvert;->toast(Ljava/lang/String;)V

    return-void

    .line 102
    :cond_ac
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 103
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {}, Lmdm/LocalKeymapStore;->selectedRcId()Ljava/lang/String;

    move-result-object v0

    .line 105
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v1, v0, v3}, Lmdm/RcEngine;->reloadIfRunning(Ljava/lang/Object;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0110\u00e3 quy \u0111\u1ed5i b\u1ea3ng gh\u00ecm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmdm/SensConvert;->toast(Ljava/lang/String;)V

    .line 109
    goto :goto_f8

    .line 99
    :cond_db
    :goto_db
    const-string v0, "C\u1ea5u h\u00ecnh ch\u01b0a \u1edf \u0111\u1ecbnh d\u1ea1ng m\u1edbi \u2014 m\u1edf l\u1ea1i C\u00e0i \u0111\u1eb7t r\u1ed3i th\u1eed"

    invoke-virtual {p0, v0}, Lmdm/SensConvert;->toast(Ljava/lang/String;)V
    :try_end_e0
    .catchall {:try_start_2 .. :try_end_e0} :catchall_e1

    return-void

    .line 107
    :catchall_e1
    move-exception v0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quy \u0111\u1ed5i l\u1ed7i: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmdm/SensConvert;->toast(Ljava/lang/String;)V

    .line 110
    :goto_f8
    return-void
.end method

.method dp(F)F
    .registers 3

    .line 38
    invoke-virtual {p0}, Lmdm/SensConvert;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmdm/TabletScale;->density(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr p1, v0

    return p1
.end method

.method settingsRoot()Landroid/view/View;
    .registers 5

    .line 72
    nop

    .line 73
    invoke-virtual {p0}, Lmdm/SensConvert;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 74
    :goto_5
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_22

    .line 75
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 76
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PUBGExtensionSettingsView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    return-object v1

    .line 77
    :cond_1d
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_5

    .line 79
    :cond_22
    invoke-virtual {p0}, Lmdm/SensConvert;->getRootView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method toast(Ljava/lang/String;)V
    .registers 4

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lmdm/SensConvert;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    goto :goto_e

    :catchall_d
    move-exception p1

    .line 69
    :goto_e
    return-void
.end method
