.class public Lcom/googlecode/leptonica/android/JpegIO;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_PROGRESSIVE:Z = false

.field public static final DEFAULT_QUALITY:I = 0x55


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

.method public static compressToJpeg(Lcom/googlecode/leptonica/android/Pix;)[B
    .locals 2

    const/16 v0, 0x55

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/googlecode/leptonica/android/JpegIO;->compressToJpeg(Lcom/googlecode/leptonica/android/Pix;IZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static compressToJpeg(Lcom/googlecode/leptonica/android/Pix;IZ)[B
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param

    if-eqz p0, :cond_1

    if-ltz p1, :cond_0

    const/16 p2, 0x64

    if-gt p1, p2, :cond_0

    .line 2
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    invoke-static {p0}, Lcom/googlecode/leptonica/android/WriteFile;->writeBitmap(Lcom/googlecode/leptonica/android/Pix;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 4
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v0, p1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 7
    :try_start_0
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object p0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Quality must be between 0 and 100 (inclusive)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nativeCompressToJpeg(JIZ)[B
.end method
