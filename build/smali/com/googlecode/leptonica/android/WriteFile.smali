.class public Lcom/googlecode/leptonica/android/WriteFile;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "jpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "png"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "leptonica"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeWriteBitmap(JLandroid/graphics/Bitmap;)Z
.end method

.method private static native nativeWriteBytes8(J[B)I
.end method

.method private static native nativeWriteImpliedFormat(JLjava/lang/String;IZ)Z
.end method

.method public static writeBitmap(Lcom/googlecode/leptonica/android/Pix;)Landroid/graphics/Bitmap;
    .locals 3

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getDimensions()[I

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lcom/googlecode/leptonica/android/WriteFile;->nativeWriteBitmap(JLandroid/graphics/Bitmap;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeBytes8(Lcom/googlecode/leptonica/android/Pix;[B)I
    .locals 2

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    .line 10
    array-length v1, p1

    if-lt v1, v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/googlecode/leptonica/android/WriteFile;->nativeWriteBytes8(J[B)I

    move-result p0

    return p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Data array must be large enough to hold image bytes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeBytes8(Lcom/googlecode/leptonica/android/Pix;)[B
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    .line 2
    new-array v0, v0, [B

    .line 3
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getDepth()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 4
    invoke-static {p0}, Lcom/googlecode/leptonica/android/Convert;->convertTo8(Lcom/googlecode/leptonica/android/Pix;)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p0

    .line 5
    invoke-static {p0, v0}, Lcom/googlecode/leptonica/android/WriteFile;->writeBytes8(Lcom/googlecode/leptonica/android/Pix;[B)I

    .line 6
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->recycle()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p0, v0}, Lcom/googlecode/leptonica/android/WriteFile;->writeBytes8(Lcom/googlecode/leptonica/android/Pix;[B)I

    :goto_0
    return-object v0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source pix must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeImpliedFormat(Lcom/googlecode/leptonica/android/Pix;Ljava/io/File;)Z
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p1, v0, v0}, Lcom/googlecode/leptonica/android/WriteFile;->writeImpliedFormat(Lcom/googlecode/leptonica/android/Pix;Ljava/io/File;IZ)Z

    move-result p0

    return p0
.end method

.method public static writeImpliedFormat(Lcom/googlecode/leptonica/android/Pix;Ljava/io/File;IZ)Z
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {v0, v1, p0, p2, p3}, Lcom/googlecode/leptonica/android/WriteFile;->nativeWriteImpliedFormat(JLjava/lang/String;IZ)Z

    move-result p0

    return p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
