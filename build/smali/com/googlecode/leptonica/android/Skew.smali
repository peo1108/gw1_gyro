.class public Lcom/googlecode/leptonica/android/Skew;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SEARCH_MIN_DELTA:F = 0.01f

.field public static final SEARCH_REDUCTION:I = 0x4

.field public static final SWEEP_DELTA:F = 5.0f

.field public static final SWEEP_RANGE:F = 30.0f

.field public static final SWEEP_REDUCTION:I = 0x8


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

.method public static deskew(Lcom/googlecode/leptonica/android/Pix;IFFII[F)Lcom/googlecode/leptonica/android/Pix;
    .locals 8

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/googlecode/leptonica/android/Skew;->nativeDeskew(JIFFII[F)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p2, p0, p2

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p2, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p2

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to deskew pix"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static deskew(Lcom/googlecode/leptonica/android/Pix;[F)Lcom/googlecode/leptonica/android/Pix;
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v3, 0x40a00000    # 5.0f

    move-object v0, p0

    move-object v6, p1

    .line 1
    invoke-static/range {v0 .. v6}, Lcom/googlecode/leptonica/android/Skew;->deskew(Lcom/googlecode/leptonica/android/Pix;IFFII[F)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p0

    return-object p0
.end method

.method public static findSkew(Lcom/googlecode/leptonica/android/Pix;)F
    .locals 6

    const/4 v4, 0x4

    const v5, 0x3c23d70a    # 0.01f

    const/high16 v1, 0x41f00000    # 30.0f

    const/high16 v2, 0x40a00000    # 5.0f

    const/16 v3, 0x8

    move-object v0, p0

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/googlecode/leptonica/android/Skew;->findSkew(Lcom/googlecode/leptonica/android/Pix;FFIIF)F

    move-result p0

    return p0
.end method

.method public static findSkew(Lcom/googlecode/leptonica/android/Pix;FFIIF)F
    .locals 7

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/googlecode/leptonica/android/Skew;->nativeFindSkew(JFFIIF)F

    move-result p0

    return p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nativeDeskew(JIFFII[F)J
.end method

.method private static native nativeFindSkew(JFFIIF)F
.end method
