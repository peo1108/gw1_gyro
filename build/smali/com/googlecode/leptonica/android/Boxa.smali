.class public Lcom/googlecode/leptonica/android/Boxa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mNativeBoxa:J

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

    const-class v0, Lcom/googlecode/leptonica/android/Boxa;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/googlecode/leptonica/android/Boxa;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/googlecode/leptonica/android/Boxa;->mNativeBoxa:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/googlecode/leptonica/android/Boxa;->mRecycled:Z

    return-void
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetCount(J)I
.end method

.method private static native nativeGetGeometry(JI[I)Z
.end method


# virtual methods
.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->mRecycled:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/googlecode/leptonica/android/Boxa;->TAG:Ljava/lang/String;

    const-string v1, "Boxa was not terminated using recycle()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Boxa;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getCount()I
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Boxa;->mNativeBoxa:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Boxa;->nativeGetCount(J)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getGeometry(I[I)Z
    .locals 2
    .param p2    # [I
        .annotation build Landroidx/annotation/Size;
            min = 0x4L
        .end annotation
    .end param

    .line 5
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->mRecycled:Z

    if-nez v0, :cond_1

    .line 6
    array-length v0, p2

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 7
    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Boxa;->mNativeBoxa:J

    invoke-static {v0, v1, p1, p2}, Lcom/googlecode/leptonica/android/Boxa;->nativeGetGeometry(JI[I)Z

    move-result p1

    return p1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Geometry array must be at least 4 elements long"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getGeometry(I)[I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->mRecycled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [I

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/googlecode/leptonica/android/Boxa;->getGeometry(I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getNativeBoxa()J
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Boxa;->mNativeBoxa:J

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getRect(I)Landroid/graphics/Rect;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/googlecode/leptonica/android/Boxa;->getGeometry(I)[I

    move-result-object p1

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    add-int/2addr v2, v0

    const/4 v3, 0x3

    aget p1, p1, v3

    add-int/2addr p1, v1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method public declared-synchronized recycle()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/leptonica/android/Boxa;->mNativeBoxa:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Boxa;->nativeDestroy(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/leptonica/android/Boxa;->mRecycled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
