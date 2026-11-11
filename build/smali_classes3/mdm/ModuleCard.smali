.class public Lmdm/ModuleCard;
.super Landroid/widget/LinearLayout;
.source "ModuleCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmdm/ModuleCard$Result;
    }
.end annotation


# static fields
.field private static final DIM:I = -0x57637a

.field private static final GOLD:I = -0x172c5c

.field private static final GREEN:I = -0x841c5e

.field private static final MANAGER:Ljava/lang/String; = "if [ -x /data/adb/cam/bin/camd ]; then /data/adb/cam/bin/camd module install \"$Z\"; elif [ -x /data/adb/camd ]; then /data/adb/camd module install \"$Z\"; elif [ -x /data/adb/ksud ]; then /data/adb/ksud module install \"$Z\"; elif [ -x /data/adb/apd ]; then /data/adb/apd module install \"$Z\"; elif command -v magisk >/dev/null 2>&1; then magisk --install-module \"$Z\"; else echo \'Kh\u00f4ng t\u00ecm th\u1ea5y tr\u00ecnh qu\u1ea3n l\u00fd root (Cam/KernelSU/Magisk/APatch)\'; exit 9; fi"

.field static final MODS:[[Ljava/lang/String;

.field private static final RED:I = -0x7580

.field static final STATUS:Ljava/lang/String; = "for id in zygisksu sensor_cal; do d=/data/adb/modules/$id; u=/data/adb/modules_update/$id; v=$(grep \'^version=\' $d/module.prop 2>/dev/null | head -1 | cut -d= -f2-); uv=$(grep \'^version=\' $u/module.prop 2>/dev/null | head -1 | cut -d= -f2-); f=; [ -f $d/disable ] && f=disable; [ -f $d/remove ] && f=remove; [ -f $d/update ] && f=update; echo \"MDM|$id|$v|$uv|$f\"; done"

.field private static final TEXT:I = -0xc1528


# instance fields
.field private final action:[Landroid/widget/TextView;

.field private body:Landroid/widget/LinearLayout;

.field private volatile busy:Z

.field private final dp:F

.field private installAll:Landroid/widget/TextView;

.field private noRoot:Z

.field private reboot:Landroid/widget/TextView;

.field private segMod:Landroid/widget/TextView;

.field private segNo:Landroid/widget/TextView;

.field private final status:[Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 31
    const-string v0, "mdm_modules/zygisk_next.zip"

    const-string v1, "N\u1ec1n Zygisk cho module gyro"

    const-string v2, "zygisksu"

    const-string v3, "Zygisk Next"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "mdm_modules/sensor_cal.zip"

    const-string v2, "Module gyro c\u1ee7a MDM"

    const-string v3, "sensor_cal"

    const-string v4, "Sensor Calibration"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmdm/ModuleCard;->MODS:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmdm/ModuleCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmdm/ModuleCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    sget-object p1, Lmdm/ModuleCard;->MODS:[[Ljava/lang/String;

    array-length p1, p1

    new-array p1, p1, [Landroid/widget/TextView;

    iput-object p1, p0, Lmdm/ModuleCard;->status:[Landroid/widget/TextView;

    .line 39
    sget-object p1, Lmdm/ModuleCard;->MODS:[[Ljava/lang/String;

    array-length p1, p1

    new-array p1, p1, [Landroid/widget/TextView;

    iput-object p1, p0, Lmdm/ModuleCard;->action:[Landroid/widget/TextView;

    .line 50
    invoke-virtual {p0}, Lmdm/ModuleCard;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lmdm/ModuleCard;->dp:F

    .line 51
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmdm/ModuleCard;->setOrientation(I)V

    .line 52
    invoke-direct {p0}, Lmdm/ModuleCard;->build()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lmdm/ModuleCard;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lmdm/ModuleCard;->confirmReboot()V

    return-void
.end method

.method static synthetic access$100(Lmdm/ModuleCard;Z)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lmdm/ModuleCard;->setMode(Z)V

    return-void
.end method

.method static synthetic access$200(Lmdm/ModuleCard;Lmdm/ModuleCard$Result;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lmdm/ModuleCard;->show(Lmdm/ModuleCard$Result;)V

    return-void
.end method

.method static synthetic access$300(Lmdm/ModuleCard;)[Landroid/widget/TextView;
    .registers 1

    .line 28
    iget-object p0, p0, Lmdm/ModuleCard;->status:[Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lmdm/ModuleCard;Ljava/lang/String;)Ljava/io/File;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lmdm/ModuleCard;->extract(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lmdm/ModuleCard;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 28
    invoke-direct {p0, p1, p2}, Lmdm/ModuleCard;->report(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private applyMode(Z)V
    .registers 4

    .line 187
    iget-object v0, p0, Lmdm/ModuleCard;->segNo:Landroid/widget/TextView;

    xor-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lmdm/ModuleCard;->styleSeg(Landroid/widget/TextView;Z)V

    .line 188
    iget-object v0, p0, Lmdm/ModuleCard;->segMod:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lmdm/ModuleCard;->styleSeg(Landroid/widget/TextView;Z)V

    .line 189
    iget-object v0, p0, Lmdm/ModuleCard;->body:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_12

    const/4 p1, 0x0

    goto :goto_14

    :cond_12
    const/16 p1, 0x8

    :goto_14
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    return-void
.end method

.method private build()V
    .registers 14

    .line 89
    invoke-direct {p0}, Lmdm/ModuleCard;->modeSelector()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmdm/ModuleCard;->addView(Landroid/view/View;)V

    .line 90
    invoke-direct {p0}, Lmdm/ModuleCard;->divider()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmdm/ModuleCard;->addView(Landroid/view/View;)V

    .line 91
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lmdm/ModuleCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmdm/ModuleCard;->body:Landroid/widget/LinearLayout;

    .line 92
    iget-object v0, p0, Lmdm/ModuleCard;->body:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 93
    const/4 v0, 0x0

    move v2, v0

    :goto_21
    sget-object v3, Lmdm/ModuleCard;->MODS:[[Ljava/lang/String;

    array-length v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, -0x57637a

    const/high16 v6, 0x41400000    # 12.0f

    const/16 v7, 0x10

    const/4 v8, -0x1

    const/4 v9, -0x2

    if-ge v2, v3, :cond_c8

    .line 94
    nop

    .line 95
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lmdm/ModuleCard;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 97
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 98
    const/high16 v7, 0x42880000    # 68.0f

    invoke-direct {p0, v7}, Lmdm/ModuleCard;->px(F)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 99
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lmdm/ModuleCard;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 101
    sget-object v10, Lmdm/ModuleCard;->MODS:[[Ljava/lang/String;

    aget-object v10, v10, v2

    aget-object v10, v10, v1

    const/high16 v11, 0x41700000    # 15.0f

    const v12, -0xc1528

    invoke-direct {p0, v10, v11, v12, v1}, Lmdm/ModuleCard;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    iget-object v10, p0, Lmdm/ModuleCard;->status:[Landroid/widget/TextView;

    const-string v11, "\u0110ang ki\u1ec3m tra\u2026"

    invoke-direct {p0, v11, v6, v5, v0}, Lmdm/ModuleCard;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    aput-object v5, v10, v2

    .line 103
    iget-object v5, p0, Lmdm/ModuleCard;->status:[Landroid/widget/TextView;

    aget-object v5, v5, v2

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 104
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v4, p0, Lmdm/ModuleCard;->action:[Landroid/widget/TextView;

    const-string v5, "C\u00e0i"

    invoke-direct {p0, v5, v0}, Lmdm/ModuleCard;->pill(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v5

    aput-object v5, v4, v2

    .line 106
    iget-object v4, p0, Lmdm/ModuleCard;->action:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v4, p0, Lmdm/ModuleCard;->action:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    new-instance v5, Lmdm/ModuleCard$1;

    invoke-direct {v5, p0, v2}, Lmdm/ModuleCard$1;-><init>(Lmdm/ModuleCard;I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v4, p0, Lmdm/ModuleCard;->action:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42200000    # 40.0f

    invoke-direct {p0, v6}, Lmdm/ModuleCard;->px(F)I

    move-result v6

    invoke-direct {v5, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v4, p0, Lmdm/ModuleCard;->body:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v3, p0, Lmdm/ModuleCard;->body:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lmdm/ModuleCard;->divider()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_21

    .line 115
    :cond_c8
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lmdm/ModuleCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 116
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 117
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 118
    const/high16 v3, 0x41600000    # 14.0f

    invoke-direct {p0, v3}, Lmdm/ModuleCard;->px(F)I

    move-result v3

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-direct {p0, v7}, Lmdm/ModuleCard;->px(F)I

    move-result v7

    const/high16 v10, 0x41800000    # 16.0f

    invoke-direct {p0, v10}, Lmdm/ModuleCard;->px(F)I

    move-result v10

    invoke-virtual {v2, v0, v3, v7, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 119
    const-string v3, "C\u00e0i xong c\u1ea7n kh\u1edfi \u0111\u1ed9ng l\u1ea1i m\u00e1y."

    invoke-direct {p0, v3, v6, v5, v0}, Lmdm/ModuleCard;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 120
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    const-string v3, "Kh\u1edfi \u0111\u1ed9ng l\u1ea1i"

    invoke-direct {p0, v3, v0}, Lmdm/ModuleCard;->pill(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lmdm/ModuleCard;->reboot:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lmdm/ModuleCard;->reboot:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lmdm/ModuleCard;->reboot:Landroid/widget/TextView;

    new-instance v3, Lmdm/ModuleCard$2;

    invoke-direct {v3, p0}, Lmdm/ModuleCard$2;-><init>(Lmdm/ModuleCard;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lmdm/ModuleCard;->reboot:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42280000    # 42.0f

    invoke-direct {p0, v4}, Lmdm/ModuleCard;->px(F)I

    move-result v5

    invoke-direct {v3, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lmdm/ModuleCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 129
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-direct {p0, v5}, Lmdm/ModuleCard;->px(F)I

    move-result v5

    invoke-direct {v3, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    const-string v0, "C\u00e0i t\u1ea5t c\u1ea3"

    invoke-direct {p0, v0, v1}, Lmdm/ModuleCard;->pill(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lmdm/ModuleCard;->installAll:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lmdm/ModuleCard;->installAll:Landroid/widget/TextView;

    new-instance v3, Lmdm/ModuleCard$3;

    invoke-direct {v3, p0}, Lmdm/ModuleCard$3;-><init>(Lmdm/ModuleCard;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lmdm/ModuleCard;->installAll:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v4}, Lmdm/ModuleCard;->px(F)I

    move-result v4

    invoke-direct {v3, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v0, p0, Lmdm/ModuleCard;->body:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v0, p0, Lmdm/ModuleCard;->body:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lmdm/ModuleCard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    invoke-direct {p0}, Lmdm/ModuleCard;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "useModule"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lmdm/ModuleCard;->applyMode(Z)V

    .line 139
    return-void
.end method

.method private confirmReboot()V
    .registers 4

    .line 401
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lmdm/ModuleCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10302d1

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v1, "Kh\u1edfi \u0111\u1ed9ng l\u1ea1i m\u00e1y?"

    .line 402
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Module m\u1edbi ch\u1ec9 ch\u1ea1y sau khi kh\u1edfi \u0111\u1ed9ng l\u1ea1i."

    .line 403
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0110\u1ec3 sau"

    .line 404
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Kh\u1edfi \u0111\u1ed9ng l\u1ea1i"

    new-instance v2, Lmdm/ModuleCard$8;

    invoke-direct {v2, p0}, Lmdm/ModuleCard$8;-><init>(Lmdm/ModuleCard;)V

    .line 405
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2e

    .line 415
    goto :goto_2f

    .line 414
    :catchall_2e
    move-exception v0

    .line 416
    :goto_2f
    return-void
.end method

.method private divider()Landroid/view/View;
    .registers 5

    .line 82
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lmdm/ModuleCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 83
    const v1, 0x12ffffff

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 84
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v2}, Lmdm/ModuleCard;->px(F)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    return-object v0
.end method

.method private extract(Ljava/lang/String;)Ljava/io/File;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 333
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lmdm/ModuleCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Lmdm/ModuleCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 335
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 336
    const/high16 v2, 0x10000

    new-array v2, v2, [B

    .line 338
    :goto_2b
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_36

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2b

    .line 339
    :cond_36
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 340
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 341
    const/4 p1, 0x1

    invoke-virtual {v0, p1, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 342
    return-object v0
.end method

.method private label(Ljava/lang/String;FIZ)Landroid/widget/TextView;
    .registers 7

    .line 62
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lmdm/ModuleCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const/4 p1, 0x2

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 65
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    if-eqz p4, :cond_1d

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 67
    :cond_1d
    return-object v0
.end method

.method private modeSelector()Landroid/view/View;
    .registers 9

    .line 161
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lmdm/ModuleCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 162
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 163
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 164
    const/high16 v2, 0x42700000    # 60.0f

    invoke-direct {p0, v2}, Lmdm/ModuleCard;->px(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 165
    const-string v2, "Ch\u1ebf \u0111\u1ed9 Gyro"

    const/high16 v3, 0x41700000    # 15.0f

    const v4, -0xc1528

    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lmdm/ModuleCard;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, -0x2

    invoke-direct {v3, v1, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    const-string v2, "No Module"

    invoke-direct {p0, v2}, Lmdm/ModuleCard;->seg(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lmdm/ModuleCard;->segNo:Landroid/widget/TextView;

    .line 167
    const-string v2, "Module"

    invoke-direct {p0, v2}, Lmdm/ModuleCard;->seg(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lmdm/ModuleCard;->segMod:Landroid/widget/TextView;

    .line 168
    iget-object v2, p0, Lmdm/ModuleCard;->segNo:Landroid/widget/TextView;

    new-instance v3, Lmdm/ModuleCard$4;

    invoke-direct {v3, p0}, Lmdm/ModuleCard$4;-><init>(Lmdm/ModuleCard;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v2, p0, Lmdm/ModuleCard;->segMod:Landroid/widget/TextView;

    new-instance v3, Lmdm/ModuleCard$5;

    invoke-direct {v3, p0}, Lmdm/ModuleCard$5;-><init>(Lmdm/ModuleCard;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lmdm/ModuleCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 177
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 178
    iget-object v1, p0, Lmdm/ModuleCard;->segNo:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42200000    # 40.0f

    invoke-direct {p0, v4}, Lmdm/ModuleCard;->px(F)I

    move-result v7

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lmdm/ModuleCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 180
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x41000000    # 8.0f

    invoke-direct {p0, v7}, Lmdm/ModuleCard;->px(F)I

    move-result v7

    invoke-direct {v3, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    iget-object v1, p0, Lmdm/ModuleCard;->segMod:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v4}, Lmdm/ModuleCard;->px(F)I

    move-result v4

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    return-object v0
.end method

.method private pill(Ljava/lang/String;Z)Landroid/widget/TextView;
    .registers 7

    .line 71
    if-eqz p2, :cond_6

    const v0, -0xe5ebf6

    goto :goto_9

    :cond_6
    const v0, -0x172c5c

    :goto_9
    const/high16 v1, 0x41500000    # 13.0f

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v0, v2}, Lmdm/ModuleCard;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 72
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 73
    const/high16 v0, 0x41900000    # 18.0f

    invoke-direct {p0, v0}, Lmdm/ModuleCard;->px(F)I

    move-result v1

    invoke-direct {p0, v0}, Lmdm/ModuleCard;->px(F)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 74
    const/high16 v0, 0x42a80000    # 84.0f

    invoke-direct {p0, v0}, Lmdm/ModuleCard;->px(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 75
    if-eqz p2, :cond_31

    const-string p2, "mdm_btn_gold"

    goto :goto_33

    :cond_31
    const-string p2, "mdm_btn_ghost"

    :goto_33
    invoke-direct {p0, p2}, Lmdm/ModuleCard;->res(Ljava/lang/String;)I

    move-result p2

    .line 76
    if-eqz p2, :cond_3c

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 77
    :cond_3c
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 78
    return-object p1
.end method

.method private prefs()Landroid/content/SharedPreferences;
    .registers 4

    .line 142
    invoke-virtual {p0}, Lmdm/ModuleCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gw2_gyro"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private px(F)I
    .registers 3

    .line 55
    iget v0, p0, Lmdm/ModuleCard;->dp:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private report(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 393
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lmdm/ModuleCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10302d1

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 394
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "OK"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    .line 396
    goto :goto_20

    .line 395
    :catchall_1f
    move-exception p1

    .line 397
    :goto_20
    return-void
.end method

.method private res(Ljava/lang/String;)I
    .registers 5

    .line 58
    invoke-virtual {p0}, Lmdm/ModuleCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lmdm/ModuleCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private seg(Ljava/lang/String;)Landroid/widget/TextView;
    .registers 6

    .line 146
    const/high16 v0, 0x41500000    # 13.0f

    const v1, -0x172c5c

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lmdm/ModuleCard;->label(Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 147
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 148
    const/high16 v0, 0x41900000    # 18.0f

    invoke-direct {p0, v0}, Lmdm/ModuleCard;->px(F)I

    move-result v1

    const/4 v3, 0x0

    invoke-direct {p0, v0}, Lmdm/ModuleCard;->px(F)I

    move-result v0

    invoke-virtual {p1, v1, v3, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 149
    const/high16 v0, 0x42c00000    # 96.0f

    invoke-direct {p0, v0}, Lmdm/ModuleCard;->px(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 150
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 151
    return-object p1
.end method

.method private setBusy(Z)V
    .registers 9

    .line 323
    iput-boolean p1, p0, Lmdm/ModuleCard;->busy:Z

    .line 324
    iget-object v0, p0, Lmdm/ModuleCard;->installAll:Landroid/widget/TextView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 325
    iget-object v0, p0, Lmdm/ModuleCard;->installAll:Landroid/widget/TextView;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_13

    move v3, v1

    goto :goto_14

    :cond_13
    move v3, v2

    :goto_14
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 326
    iget-object v0, p0, Lmdm/ModuleCard;->action:[Landroid/widget/TextView;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v3, :cond_2f

    aget-object v5, v0, v4

    .line 327
    xor-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 328
    if-eqz p1, :cond_28

    move v6, v1

    goto :goto_29

    :cond_28
    move v6, v2

    :goto_29
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 326
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 330
    :cond_2f
    return-void
.end method

.method private setMode(Z)V
    .registers 5

    .line 194
    :try_start_0
    invoke-direct {p0}, Lmdm/ModuleCard;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "useModule"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    .line 196
    goto :goto_13

    .line 195
    :catchall_12
    move-exception v0

    .line 198
    :goto_13
    :try_start_13
    const-string v0, "K6.m"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 199
    const-string v1, "setModulePref"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_13 .. :try_end_31} :catchall_32

    .line 201
    goto :goto_33

    .line 200
    :catchall_32
    move-exception v0

    .line 202
    :goto_33
    invoke-direct {p0, p1}, Lmdm/ModuleCard;->applyMode(Z)V

    .line 203
    if-eqz p1, :cond_3b

    invoke-virtual {p0}, Lmdm/ModuleCard;->refresh()V

    .line 204
    :cond_3b
    return-void
.end method

.method private show(Lmdm/ModuleCard$Result;)V
    .registers 16

    .line 269
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 270
    iget-object p1, p1, Lmdm/ModuleCard$Result;->out:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v3, v1, :cond_5f

    aget-object v8, p1, v3

    .line 271
    const-string v9, "MDM|"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_21

    goto :goto_5c

    .line 272
    :cond_21
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\|"

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 273
    aget-object v7, v8, v7

    aget-object v6, v8, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aget-object v4, v8, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    array-length v9, v8

    if-le v9, v5, :cond_53

    aget-object v5, v8, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_55

    :cond_53
    const-string v5, ""

    :goto_55
    filled-new-array {v6, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :goto_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 275
    :cond_5f
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    iput-boolean p1, p0, Lmdm/ModuleCard;->noRoot:Z

    .line 276
    nop

    .line 277
    move p1, v2

    move v1, p1

    :goto_68
    sget-object v3, Lmdm/ModuleCard;->MODS:[[Ljava/lang/String;

    array-length v3, v3

    if-ge p1, v3, :cond_185

    .line 278
    sget-object v3, Lmdm/ModuleCard;->MODS:[[Ljava/lang/String;

    aget-object v3, v3, p1

    aget-object v3, v3, v2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 281
    nop

    .line 282
    iget-boolean v8, p0, Lmdm/ModuleCard;->noRoot:Z

    const/16 v9, -0x7580

    if-eqz v8, :cond_86

    .line 283
    nop

    .line 284
    const-string v3, "Ch\u01b0a c\u00f3 quy\u1ec1n root"

    move v8, v2

    goto/16 :goto_157

    .line 285
    :cond_86
    const v8, -0x172c5c

    const-string v10, " \u00b7 c\u1ea7n kh\u1edfi \u0111\u1ed9ng l\u1ea1i"

    const-string v11, "\u0110\u00e3 c\u00e0i "

    if-eqz v3, :cond_b5

    aget-object v12, v3, v7

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_b5

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v3, v7

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 287
    nop

    .line 288
    nop

    .line 289
    move v1, v7

    move v9, v8

    move v8, v1

    goto/16 :goto_157

    .line 290
    :cond_b5
    if-eqz v3, :cond_13a

    aget-object v12, v3, v2

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_c1

    goto/16 :goto_13a

    .line 293
    :cond_c1
    const-string v12, "remove"

    aget-object v13, v3, v6

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d4

    .line 294
    nop

    .line 295
    nop

    .line 296
    nop

    .line 297
    const-string v3, "S\u1ebd b\u1ecb g\u1ee1 khi kh\u1edfi \u0111\u1ed9ng l\u1ea1i"

    move v1, v7

    move v8, v1

    goto/16 :goto_157

    .line 298
    :cond_d4
    const-string v12, "disable"

    aget-object v13, v3, v6

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_fa

    .line 299
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v3, v3, v2

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " \u00b7 \u0111ang t\u1eaft"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 300
    nop

    .line 301
    move v8, v7

    goto :goto_157

    .line 302
    :cond_fa
    const-string v9, "update"

    aget-object v12, v3, v6

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_121

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 304
    nop

    .line 305
    nop

    .line 306
    move v1, v7

    move v9, v8

    move v8, v1

    goto :goto_157

    .line 308
    :cond_121
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v3, v3, v2

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 309
    nop

    .line 310
    const v9, -0x841c5e

    move v8, v7

    goto :goto_157

    .line 291
    :cond_13a
    :goto_13a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ch\u01b0a c\u00e0i \u00b7 "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v8, Lmdm/ModuleCard;->MODS:[[Ljava/lang/String;

    aget-object v8, v8, p1

    aget-object v8, v8, v4

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 292
    const v9, -0x57637a

    move v8, v2

    .line 312
    :goto_157
    iget-object v10, p0, Lmdm/ModuleCard;->status:[Landroid/widget/TextView;

    aget-object v10, v10, p1

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v3, p0, Lmdm/ModuleCard;->status:[Landroid/widget/TextView;

    aget-object v3, v3, p1

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 314
    iget-object v3, p0, Lmdm/ModuleCard;->action:[Landroid/widget/TextView;

    aget-object v3, v3, p1

    if-eqz v8, :cond_16e

    const-string v8, "C\u00e0i l\u1ea1i"

    goto :goto_170

    :cond_16e
    const-string v8, "C\u00e0i"

    :goto_170
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v3, p0, Lmdm/ModuleCard;->action:[Landroid/widget/TextView;

    aget-object v3, v3, p1

    iget-boolean v8, p0, Lmdm/ModuleCard;->noRoot:Z

    if-eqz v8, :cond_17d

    move v8, v5

    goto :goto_17e

    :cond_17d
    move v8, v2

    :goto_17e
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_68

    .line 317
    :cond_185
    iget-object p1, p0, Lmdm/ModuleCard;->reboot:Landroid/widget/TextView;

    const/16 v0, 0x8

    if-eqz v1, :cond_18d

    move v1, v2

    goto :goto_18e

    :cond_18d
    move v1, v0

    :goto_18e
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object p1, p0, Lmdm/ModuleCard;->installAll:Landroid/widget/TextView;

    iget-boolean v1, p0, Lmdm/ModuleCard;->noRoot:Z

    if-eqz v1, :cond_198

    goto :goto_199

    :cond_198
    move v0, v2

    :goto_199
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    invoke-direct {p0, v2}, Lmdm/ModuleCard;->setBusy(Z)V

    .line 320
    return-void
.end method

.method private styleSeg(Landroid/widget/TextView;Z)V
    .registers 4

    .line 155
    if-eqz p2, :cond_5

    const-string v0, "mdm_btn_gold"

    goto :goto_7

    :cond_5
    const-string v0, "mdm_btn_ghost"

    :goto_7
    invoke-direct {p0, v0}, Lmdm/ModuleCard;->res(Ljava/lang/String;)I

    move-result v0

    .line 156
    if-eqz v0, :cond_10

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 157
    :cond_10
    if-eqz p2, :cond_16

    const p2, -0xe5ebf6

    goto :goto_19

    :cond_16
    const p2, -0x172c5c

    :goto_19
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    return-void
.end method

.method static su(Ljava/lang/String;)Lmdm/ModuleCard$Result;
    .registers 7

    .line 220
    const-string v0, "UTF-8"

    new-instance v1, Lmdm/ModuleCard$Result;

    invoke-direct {v1}, Lmdm/ModuleCard$Result;-><init>()V

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    :try_start_c
    new-instance v3, Ljava/lang/ProcessBuilder;

    const-string v4, "su"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    .line 224
    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 225
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v5, "\nexit $?\n"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/io/OutputStream;->write([B)V

    .line 226
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 227
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 228
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 230
    :goto_52
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_62

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_52

    .line 231
    :cond_62
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result p0

    iput p0, v1, Lmdm/ModuleCard$Result;->code:I
    :try_end_68
    .catchall {:try_start_c .. :try_end_68} :catchall_69

    .line 235
    goto :goto_74

    .line 232
    :catchall_69
    move-exception p0

    .line 233
    const/4 v0, -0x1

    iput v0, v1, Lmdm/ModuleCard$Result;->code:I

    .line 234
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :goto_74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lmdm/ModuleCard$Result;->out:Ljava/lang/String;

    .line 237
    return-object v1
.end method


# virtual methods
.method install([I)V
    .registers 7

    .line 346
    iget-boolean v0, p0, Lmdm/ModuleCard;->busy:Z

    if-eqz v0, :cond_5

    return-void

    .line 347
    :cond_5
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmdm/ModuleCard;->setBusy(Z)V

    .line 348
    array-length v0, p1

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_25

    aget v2, p1, v1

    .line 349
    iget-object v3, p0, Lmdm/ModuleCard;->status:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    const-string v4, "\u0110ang ch\u1edd\u2026"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v3, p0, Lmdm/ModuleCard;->status:[Landroid/widget/TextView;

    aget-object v2, v3, v2

    const v3, -0x172c5c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 352
    :cond_25
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmdm/ModuleCard$7;

    invoke-direct {v1, p0, p1}, Lmdm/ModuleCard$7;-><init>(Lmdm/ModuleCard;[I)V

    const-string p1, "mdm-modinst"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 388
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 389
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 208
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 209
    invoke-virtual {p0}, Lmdm/ModuleCard;->refresh()V

    .line 210
    return-void
.end method

.method refresh()V
    .registers 4

    .line 256
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmdm/ModuleCard$6;

    invoke-direct {v1, p0}, Lmdm/ModuleCard$6;-><init>(Lmdm/ModuleCard;)V

    const-string v2, "mdm-modstat"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 266
    return-void
.end method
