.class public Lcom/googlecode/leptonica/android/Box;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INDEX_H:I = 0x3

.field public static final INDEX_W:I = 0x2

.field public static final INDEX_X:I = 0x0

.field public static final INDEX_Y:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mNativeBox:J

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

    const-class v0, Lcom/googlecode/leptonica/android/Box;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/googlecode/leptonica/android/Box;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/googlecode/leptonica/android/Box;->mRecycled:Z

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    if-ltz p4, :cond_1

    .line 6
    invoke-static {p1, p2, p3, p4}, Lcom/googlecode/leptonica/android/Box;->nativeCreate(IIII)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-eqz p3, :cond_0

    .line 7
    iput-wide p1, p0, Lcom/googlecode/leptonica/android/Box;->mNativeBox:J

    .line 8
    iput-boolean v0, p0, Lcom/googlecode/leptonica/android/Box;->mRecycled:Z

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "All box dimensions must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/googlecode/leptonica/android/Box;->mNativeBox:J

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/googlecode/leptonica/android/Box;->mRecycled:Z

    return-void
.end method

.method private static native nativeCreate(IIII)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetGeometry(J[I)Z
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetRefCount(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method

.method private static native nativeGetX(J)I
.end method

.method private static native nativeGetY(J)I
.end method


# virtual methods
.method public getGeometry([I)Z
    .locals 2
    .param p1    # [I
        .annotation build Landroidx/annotation/Size;
            min = 0x4L
        .end annotation
    .end param

    .line 3
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Box;->mRecycled:Z

    if-nez v0, :cond_1

    .line 4
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 5
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Box;->mNativeBox:J

    invoke-static {v0, v1, p1}, Lcom/googlecode/leptonica/android/Box;->nativeGetGeometry(J[I)Z

    move-result p1

    return p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Geometry array must be at least 4 elements long"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getGeometry()[I
    .locals 2

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [I

    .line 2
    invoke-virtual {p0, v0}, Lcom/googlecode/leptonica/android/Box;->getGeometry([I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Box;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Box;->mNativeBox:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Box;->nativeGetHeight(J)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getNativeBox()J
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Box;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Box;->mNativeBox:J

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 5

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Box;->getGeometry()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    add-int/2addr v3, v1

    const/4 v4, 0x3

    aget v0, v0, v4

    add-int/2addr v0, v2

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method public getRefCount()I
    .locals 2

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Box;->mNativeBox:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Box;->nativeGetRefCount(J)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Box;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Box;->mNativeBox:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Box;->nativeGetWidth(J)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getX()I
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Box;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Box;->mNativeBox:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Box;->nativeGetX(J)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getY()I
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Box;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Box;->mNativeBox:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Box;->nativeGetY(J)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public recycle()V
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Box;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Box;->mNativeBox:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Box;->nativeDestroy(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/leptonica/android/Box;->mRecycled:Z

    :cond_0
    return-void
.end method
