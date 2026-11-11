.class public abstract Lk/m;
.super Lk/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/m$a;
    }
.end annotation


# instance fields
.field public b:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lk/j;-><init>()V

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    iput-wide v0, p0, Lk/m;->b:D

    return-void
.end method

.method public static d(Landroid/graphics/Bitmap;II)Lorg/opencv/core/Mat;
    .locals 8

    new-instance v7, Lorg/opencv/core/Mat;

    invoke-direct {v7}, Lorg/opencv/core/Mat;-><init>()V

    invoke-static {p0, v7}, Lorg/opencv/android/Utils;->bitmapToMat(Landroid/graphics/Bitmap;Lorg/opencv/core/Mat;)V

    const/4 p0, 0x7

    invoke-static {v7, v7, p0}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    new-instance p0, Lorg/opencv/core/Mat;

    invoke-direct {p0}, Lorg/opencv/core/Mat;-><init>()V

    int-to-double v2, p1

    int-to-double v4, p2

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lorg/opencv/imgproc/Imgproc;->threshold(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DDI)D

    invoke-virtual {v7}, Lorg/opencv/core/Mat;->release()V

    return-object p0
.end method


# virtual methods
.method public abstract e()V
.end method
