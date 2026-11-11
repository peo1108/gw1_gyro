.class public Lk/n;
.super Lk/m;
.source "SourceFile"


# static fields
.field public static final e:I = -0x1


# instance fields
.field public final c:I

.field public d:[Lorg/opencv/core/Mat;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 10

    invoke-direct {p0}, Lk/m;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->values()[Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lk/n;->c:I

    new-array v0, v0, [Lorg/opencv/core/Mat;

    iput-object v0, p0, Lk/n;->d:[Lorg/opencv/core/Mat;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;-><init>()V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->t()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lk/m;->b:D

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;-><init>()V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->v()Z

    move-result v1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->l()F

    move-result p2

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/22.JPG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    int-to-float p2, p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :goto_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget v3, p0, Lk/n;->c:I

    if-ge v2, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".JPG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lk/n;->d:[Lorg/opencv/core/Mat;

    invoke-static {v3, v0}, Lorg/opencv/imgcodecs/Imgcodecs;->imread(Ljava/lang/String;I)Lorg/opencv/core/Mat;

    move-result-object v3

    aput-object v3, v4, v2

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    cmpl-float v3, p2, v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lk/n;->d:[Lorg/opencv/core/Mat;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/opencv/core/Mat;->rows()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lk/n;->d:[Lorg/opencv/core/Mat;

    aget-object v3, v3, v2

    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    new-instance v5, Lorg/opencv/core/Size;

    invoke-virtual {v3}, Lorg/opencv/core/Mat;->cols()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p2

    float-to-double v6, v6

    invoke-virtual {v3}, Lorg/opencv/core/Mat;->rows()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, p2

    float-to-double v8, v8

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/opencv/core/Size;-><init>(DD)V

    invoke-static {v3, v4, v5}, Lorg/opencv/imgproc/Imgproc;->resize(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;)V

    invoke-virtual {v3}, Lorg/opencv/core/Mat;->release()V

    iget-object v3, p0, Lk/n;->d:[Lorg/opencv/core/Mat;

    aput-object v4, v3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static f(I)Lcom/zjx/jyandroid/Extensions/pubg/c$l;
    .locals 1

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->values()[Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static g(Landroid/graphics/Bitmap;)Lorg/opencv/core/Mat;
    .locals 13

    const/16 v0, 0xb6

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Lk/m;->d(Landroid/graphics/Bitmap;II)Lorg/opencv/core/Mat;

    move-result-object p0

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v0

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    new-instance v2, Lorg/opencv/core/Point;

    div-int/lit8 v3, v1, 0x2

    int-to-double v3, v3

    const-wide/16 v5, 0x0

    invoke-direct {v2, v5, v6, v3, v4}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v3, Lorg/opencv/core/Point;

    int-to-float v0, v0

    const v4, 0x3e9eb852    # 0.31f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    int-to-double v4, v0

    int-to-double v0, v1

    invoke-direct {v3, v4, v5, v0, v1}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v0, Lorg/opencv/core/Scalar;

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v7, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Lorg/opencv/core/Scalar;-><init>(DDD)V

    const/4 v1, -0x1

    invoke-static {p0, v2, v3, v0, v1}, Lorg/opencv/imgproc/Imgproc;->rectangle(Lorg/opencv/core/Mat;Lorg/opencv/core/Point;Lorg/opencv/core/Point;Lorg/opencv/core/Scalar;I)V

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/Object;)I
    .locals 6

    iget-object v0, p0, Lk/j;->a:Landroid/graphics/Bitmap;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    :cond_1
    iget-object p1, p0, Lk/j;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lk/n;->i(Landroid/graphics/Bitmap;I)Lk/m$a;

    move-result-object p1

    iget v0, p1, Lk/m$a;->a:I

    iget-wide v2, p1, Lk/m$a;->b:D

    iget-wide v4, p0, Lk/m;->b:D

    cmpl-double p1, v2, v4

    if-lez p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public e()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lk/n;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lk/n;->d:[Lorg/opencv/core/Mat;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    :cond_0
    iget-object v1, p0, Lk/n;->d:[Lorg/opencv/core/Mat;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final h(ILorg/opencv/core/Mat;)D
    .locals 5

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    if-ltz p1, :cond_3

    iget v2, p0, Lk/n;->c:I

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lk/n;->d:[Lorg/opencv/core/Mat;

    aget-object p1, v2, p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->rows()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/opencv/core/Mat;->cols()I

    move-result v2

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->cols()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2}, Lorg/opencv/core/Mat;->rows()I

    move-result v3

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->rows()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    if-lez v2, :cond_3

    if-gtz v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/opencv/core/Mat;

    sget v1, Lorg/opencv/core/CvType;->CV_32FC1:I

    invoke-direct {v0, v3, v2, v1}, Lorg/opencv/core/Mat;-><init>(III)V

    const/4 v1, 0x5

    invoke-static {p2, p1, v0, v1}, Lorg/opencv/imgproc/Imgproc;->matchTemplate(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    invoke-static {v0}, Lorg/opencv/core/Core;->minMaxLoc(Lorg/opencv/core/Mat;)Lorg/opencv/core/Core$MinMaxLocResult;

    move-result-object p1

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    iget-wide p1, p1, Lorg/opencv/core/Core$MinMaxLocResult;->maxVal:D

    return-wide p1

    :cond_3
    :goto_0
    return-wide v0
.end method

.method public final i(Landroid/graphics/Bitmap;I)Lk/m$a;
    .locals 8

    invoke-static {p1}, Lk/n;->g(Landroid/graphics/Bitmap;)Lorg/opencv/core/Mat;

    move-result-object p1

    invoke-static {p2}, Lmdm/RecogCompat;->weaponHint(I)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p0, p2, p1}, Lk/n;->h(ILorg/opencv/core/Mat;)D

    move-result-wide v1

    iget-wide v3, p0, Lk/m;->b:D

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    cmpl-double v3, v1, v3

    if-lez v3, :cond_0

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->release()V

    new-instance p1, Lk/m$a;

    invoke-direct {p1, p0, p2, v1, v2}, Lk/m$a;-><init>(Lk/m;ID)V

    return-object p1

    :cond_0
    const/4 p2, 0x1

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    move-wide v3, v1

    :goto_0
    iget v5, p0, Lk/n;->c:I

    if-ge p2, v5, :cond_3

    invoke-virtual {p0, p2, p1}, Lk/n;->h(ILorg/opencv/core/Mat;)D

    move-result-wide v5

    cmpl-double v7, v5, v1

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    cmpl-double v7, v5, v3

    if-lez v7, :cond_2

    move v0, p2

    move-wide v3, v5

    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/opencv/core/Mat;->release()V

    new-instance p1, Lk/m$a;

    invoke-direct {p1, p0, v0, v3, v4}, Lk/m$a;-><init>(Lk/m;ID)V

    return-object p1
.end method
