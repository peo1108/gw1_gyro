.class public Lcom/zjx/jyandroid/base/util/b$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/base/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)S
    .locals 0

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method public static b(Landroid/graphics/Bitmap;)I
    .locals 12

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    move-wide v5, v3

    move v7, v2

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ge v7, v8, :cond_1

    move v8, v2

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_0

    invoke-virtual {p0, v7, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    invoke-static {v9}, Lcom/zjx/jyandroid/base/util/b$d;->e(I)S

    move-result v10

    int-to-long v10, v10

    add-long/2addr v0, v10

    invoke-static {v9}, Lcom/zjx/jyandroid/base/util/b$d;->d(I)S

    move-result v10

    int-to-long v10, v10

    add-long/2addr v3, v10

    invoke-static {v9}, Lcom/zjx/jyandroid/base/util/b$d;->c(I)S

    move-result v9

    int-to-long v9, v9

    add-long/2addr v5, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    mul-int/2addr v2, p0

    int-to-long v7, v2

    div-long/2addr v0, v7

    div-long/2addr v3, v7

    div-long/2addr v5, v7

    const/16 p0, 0x10

    shl-long/2addr v0, p0

    const/16 p0, 0x8

    shl-long v2, v3, p0

    or-long/2addr v0, v2

    or-long/2addr v0, v5

    long-to-int p0, v0

    return p0
.end method

.method public static c(I)S
    .locals 0

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method public static d(I)S
    .locals 1

    const v0, 0xff00

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x8

    int-to-short p0, p0

    return p0
.end method

.method public static e(I)S
    .locals 1

    const/high16 v0, 0xff0000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x10

    int-to-short p0, p0

    return p0
.end method
