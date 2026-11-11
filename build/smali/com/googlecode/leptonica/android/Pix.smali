.class public Lcom/googlecode/leptonica/android/Pix;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/leptonica/android/Pix$ImageFileFormat;
    }
.end annotation


# static fields
.field public static final INDEX_D:I = 0x2

.field public static final INDEX_H:I = 0x1

.field public static final INDEX_W:I


# instance fields
.field private final mNativePix:J

.field private mRecycled:Z


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

.method public constructor <init>(III)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_2

    if-lez p2, :cond_2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x4

    if-eq p3, v0, :cond_1

    const/16 v0, 0x8

    if-eq p3, v0, :cond_1

    const/16 v0, 0x10

    if-eq p3, v0, :cond_1

    const/16 v0, 0x18

    if-eq p3, v0, :cond_1

    const/16 v0, 0x20

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Depth must be one of 1, 2, 4, 8, 16, or 32"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/googlecode/leptonica/android/Pix;->nativeCreatePix(III)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    return-void

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pix width and height must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    return-void
.end method

.method public static createFromPix([BIII)Lcom/googlecode/leptonica/android/Pix;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/googlecode/leptonica/android/Pix;->nativeCreateFromData([BIII)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p2, p0, p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p2, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p2

    :cond_0
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0
.end method

.method private static native nativeClone(J)J
.end method

.method private static native nativeCopy(J)J
.end method

.method private static native nativeCreateFromData([BIII)J
.end method

.method private static native nativeCreatePix(III)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetData(J)[B
.end method

.method private static native nativeGetDepth(J)I
.end method

.method private static native nativeGetDimensions(J[I)Z
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetInputFormat(J)I
.end method

.method private static native nativeGetPixel(JII)I
.end method

.method private static native nativeGetRefCount(J)I
.end method

.method private static native nativeGetSpp(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method

.method private static native nativeInvert(J)Z
.end method

.method private static native nativeSetPixel(JIII)V
.end method


# virtual methods
.method public clone()Lcom/googlecode/leptonica/android/Pix;
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_1

    .line 3
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeClone(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {v2, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v2

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->clone()Lcom/googlecode/leptonica/android/Pix;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/googlecode/leptonica/android/Pix;
    .locals 4

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeCopy(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {v2, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getData()[B
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeGetData(J)[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "native getData failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getDepth()I
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeGetDepth(J)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getDimensions([I)Z
    .locals 2
    .param p1    # [I
        .annotation build Landroidx/annotation/Size;
            min = 0x3L
        .end annotation
    .end param

    .line 5
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_0

    .line 6
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    invoke-static {v0, v1, p1}, Lcom/googlecode/leptonica/android/Pix;->nativeGetDimensions(J[I)Z

    move-result p1

    return p1

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getDimensions()[I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [I

    .line 3
    invoke-virtual {p0, v0}, Lcom/googlecode/leptonica/android/Pix;->getDimensions([I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getHeight()I
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeGetHeight(J)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getImageFormat()I
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeGetInputFormat(J)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getNativePix()J
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getPixel(II)I
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_2

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    invoke-static {v0, v1, p1, p2}, Lcom/googlecode/leptonica/android/Pix;->nativeGetPixel(JII)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Supplied y coordinate exceeds image bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Supplied x coordinate exceeds image bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 4

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public getRefCount()I
    .locals 2

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeGetRefCount(J)I

    move-result v0

    return v0
.end method

.method public getSpp()I
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeGetSpp(J)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getWidth()I
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeGetWidth(J)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public invert()Z
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeInvert(J)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public recycle()V
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pix;->nativeDestroy(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    :cond_0
    return-void
.end method

.method public setPixel(III)V
    .locals 2
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Pix;->mRecycled:Z

    if-nez v0, :cond_2

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Pix;->mNativePix:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/googlecode/leptonica/android/Pix;->nativeSetPixel(JIII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Supplied y coordinate exceeds image bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Supplied x coordinate exceeds image bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
