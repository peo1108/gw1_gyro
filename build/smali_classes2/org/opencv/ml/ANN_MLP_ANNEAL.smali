.class public Lorg/opencv/ml/ANN_MLP_ANNEAL;
.super Lorg/opencv/ml/ANN_MLP;
.source "SourceFile"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/opencv/ml/ANN_MLP;-><init>(J)V

    return-void
.end method

.method public static __fromPtr__(J)Lorg/opencv/ml/ANN_MLP_ANNEAL;
    .locals 1

    new-instance v0, Lorg/opencv/ml/ANN_MLP_ANNEAL;

    invoke-direct {v0, p0, p1}, Lorg/opencv/ml/ANN_MLP_ANNEAL;-><init>(J)V

    return-object v0
.end method

.method private static native delete(J)V
.end method

.method private static native getAnnealCoolingRatio_0(J)D
.end method

.method private static native getAnnealFinalT_0(J)D
.end method

.method private static native getAnnealInitialT_0(J)D
.end method

.method private static native getAnnealItePerStep_0(J)I
.end method

.method private static native setAnnealCoolingRatio_0(JD)V
.end method

.method private static native setAnnealFinalT_0(JD)V
.end method

.method private static native setAnnealInitialT_0(JD)V
.end method

.method private static native setAnnealItePerStep_0(JI)V
.end method


# virtual methods
.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Lorg/opencv/core/Algorithm;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/ANN_MLP_ANNEAL;->delete(J)V

    return-void
.end method

.method public getAnnealCoolingRatio()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/core/Algorithm;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/ANN_MLP_ANNEAL;->getAnnealCoolingRatio_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAnnealFinalT()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/core/Algorithm;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/ANN_MLP_ANNEAL;->getAnnealFinalT_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAnnealInitialT()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/core/Algorithm;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/ANN_MLP_ANNEAL;->getAnnealInitialT_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAnnealItePerStep()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/core/Algorithm;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/ANN_MLP_ANNEAL;->getAnnealItePerStep_0(J)I

    move-result v0

    return v0
.end method

.method public setAnnealCoolingRatio(D)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/core/Algorithm;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/ml/ANN_MLP_ANNEAL;->setAnnealCoolingRatio_0(JD)V

    return-void
.end method

.method public setAnnealFinalT(D)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/core/Algorithm;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/ml/ANN_MLP_ANNEAL;->setAnnealFinalT_0(JD)V

    return-void
.end method

.method public setAnnealInitialT(D)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/core/Algorithm;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/ml/ANN_MLP_ANNEAL;->setAnnealInitialT_0(JD)V

    return-void
.end method

.method public setAnnealItePerStep(I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/core/Algorithm;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/ANN_MLP_ANNEAL;->setAnnealItePerStep_0(JI)V

    return-void
.end method
