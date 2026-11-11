.class public final Lmdm/TabletScale;
.super Ljava/lang/Object;
.source "TabletScale.java"


# static fields
.field public static final TABLET:F = 1.3f

.field public static k:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lmdm/TabletScale;->k:F

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static density(Landroid/content/Context;)F
    .registers 2

    .line 28
    invoke-static {p0}, Lmdm/TabletScale;->factor(Landroid/content/Context;)F

    move-result v0

    sput v0, Lmdm/TabletScale;->k:F

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    sget v0, Lmdm/TabletScale;->k:F

    mul-float/2addr p0, v0

    return p0
.end method

.method public static factor(Landroid/content/Context;)F
    .registers 2

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v0, 0x258

    if-lt p0, v0, :cond_12

    const p0, 0x3fa66666    # 1.3f

    goto :goto_14

    :cond_12
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_14
    return p0
.end method

.method public static sp(F)F
    .registers 2

    .line 33
    sget v0, Lmdm/TabletScale;->k:F

    mul-float/2addr p0, v0

    return p0
.end method
