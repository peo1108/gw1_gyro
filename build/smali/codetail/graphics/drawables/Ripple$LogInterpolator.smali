.class final Lcodetail/graphics/drawables/Ripple$LogInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcodetail/graphics/drawables/Ripple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogInterpolator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcodetail/graphics/drawables/Ripple$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcodetail/graphics/drawables/Ripple$LogInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    neg-float p1, p1

    float-to-double v0, p1

    const-wide v2, 0x3ff6666666666666L    # 1.4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4079000000000000L    # 400.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    return v0
.end method
