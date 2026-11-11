.class public Lcom/zjx/jyandroid/base/util/b$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/base/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# static fields
.field public static a:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/zjx/jyandroid/base/util/b$g;->a:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 2

    if-ltz p0, :cond_0

    sget-object v0, Lcom/zjx/jyandroid/base/util/b$g;->a:Ljava/util/Random;

    neg-int v1, p0

    invoke-static {v0, v1, p0}, Lcom/zjx/jyandroid/base/util/b$g;->d(Ljava/util/Random;II)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Absolute range cannot be less than zero"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(II)I
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/base/util/b$g;->a:Ljava/util/Random;

    invoke-static {v0, p0, p1}, Lcom/zjx/jyandroid/base/util/b$g;->d(Ljava/util/Random;II)I

    move-result p0

    return p0
.end method

.method public static c(Ljava/util/Random;I)I
    .locals 1

    if-ltz p1, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    neg-int v0, p1

    invoke-static {p0, v0, p1}, Lcom/zjx/jyandroid/base/util/b$g;->d(Ljava/util/Random;II)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Absolute range cannot be less than zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/util/Random;II)I
    .locals 4

    if-ge p2, p1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    move p1, v0

    :cond_0
    sub-int/2addr p2, p1

    const/4 v0, 0x1

    if-gt p2, v0, :cond_1

    return p1

    :cond_1
    sub-int/2addr p2, v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    int-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-int p0, v0

    add-int/2addr p1, p0

    return p1
.end method

.method public static e(Ljava/util/Random;FF)F
    .locals 1

    cmpl-float v0, p1, p2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result p0

    sub-float/2addr p2, p1

    mul-float/2addr p0, p2

    add-float/2addr p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lowerBound must be less than upperBound"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
