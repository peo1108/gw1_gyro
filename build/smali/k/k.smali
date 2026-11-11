.class public Lk/k;
.super Lk/m;
.source "SourceFile"


# static fields
.field public static final d:I = 0x9

.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3

.field public static final i:I = 0x4

.field public static final j:I = 0x5

.field public static final k:I = 0x6

.field public static final l:I = 0x7


# instance fields
.field public c:[Lorg/opencv/core/Mat;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 11

    invoke-direct {p0}, Lk/m;-><init>()V

    const/16 v0, 0x9

    new-array v1, v0, [Lorg/opencv/core/Mat;

    iput-object v1, p0, Lk/k;->c:[Lorg/opencv/core/Mat;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {v1}, Lcom/zjx/jyandroid/Extensions/pubg/f;-><init>()V

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/pubg/f;->r()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    iput-wide v1, p0, Lk/m;->b:D

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {v1}, Lcom/zjx/jyandroid/Extensions/pubg/f;-><init>()V

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/pubg/f;->v()Z

    move-result v2

    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/pubg/f;->l()F

    move-result p2

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/s3.JPG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    int-to-float p2, p2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p2, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :goto_0
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".JPG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lk/k;->c:[Lorg/opencv/core/Mat;

    invoke-static {v4, v1}, Lorg/opencv/imgcodecs/Imgcodecs;->imread(Ljava/lang/String;I)Lorg/opencv/core/Mat;

    move-result-object v4

    aput-object v4, v5, v3

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lk/k;->c:[Lorg/opencv/core/Mat;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lorg/opencv/core/Mat;->rows()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lk/k;->c:[Lorg/opencv/core/Mat;

    aget-object v4, v4, v3

    new-instance v5, Lorg/opencv/core/Mat;

    invoke-direct {v5}, Lorg/opencv/core/Mat;-><init>()V

    new-instance v6, Lorg/opencv/core/Size;

    invoke-virtual {v4}, Lorg/opencv/core/Mat;->cols()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p2

    float-to-double v7, v7

    invoke-virtual {v4}, Lorg/opencv/core/Mat;->rows()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, p2

    float-to-double v9, v9

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/opencv/core/Size;-><init>(DD)V

    invoke-static {v4, v5, v6}, Lorg/opencv/imgproc/Imgproc;->resize(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;)V

    invoke-virtual {v4}, Lorg/opencv/core/Mat;->release()V

    iget-object v4, p0, Lk/k;->c:[Lorg/opencv/core/Mat;

    aput-object v5, v4, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static f(Landroid/graphics/Bitmap;)Lorg/opencv/core/Mat;
    .locals 2

    const/16 v0, 0xb4

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Lk/m;->d(Landroid/graphics/Bitmap;II)Lorg/opencv/core/Mat;

    move-result-object p0

    return-object p0
.end method

.method private g(ILorg/opencv/core/Mat;)D
    .locals 5

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    if-ltz p1, :cond_3

    const/16 v2, 0x9

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lk/k;->c:[Lorg/opencv/core/Mat;

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

.method private h(Landroid/graphics/Bitmap;)Lk/m$a;
    .locals 9

    invoke-static {p1}, Lk/k;->f(Landroid/graphics/Bitmap;)Lorg/opencv/core/Mat;

    move-result-object p1

    const/4 v0, -0x1

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_0
    const/16 v6, 0x9

    if-ge v3, v6, :cond_2

    invoke-direct {p0, v3, p1}, Lk/k;->g(ILorg/opencv/core/Mat;)D

    move-result-wide v6

    cmpl-double v8, v6, v1

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    cmpl-double v8, v6, v4

    if-lez v8, :cond_1

    move v0, v3

    move-wide v4, v6

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/opencv/core/Mat;->release()V

    new-instance p1, Lk/m$a;

    invoke-direct {p1, p0, v0, v4, v5}, Lk/m$a;-><init>(Lk/m;ID)V

    return-object p1
.end method


# virtual methods
.method public origB(Ljava/lang/Object;)I
    .locals 7

    iget-object p1, p0, Lk/j;->a:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lk/k;->h(Landroid/graphics/Bitmap;)Lk/m$a;

    move-result-object p1

    iget v1, p1, Lk/m$a;->a:I

    iget-wide v2, p1, Lk/m$a;->b:D

    if-gez v1, :cond_1

    return v0

    :cond_1
    const-wide v4, 0x3fd3333333333333L    # 0.3

    cmpg-double p1, v2, v4

    const/4 v4, 0x1

    if-gez p1, :cond_2

    return v4

    :cond_2
    iget-wide v5, p0, Lk/m;->b:D

    cmpl-double p1, v2, v5

    if-lez p1, :cond_4

    const/4 p1, 0x2

    if-gt v1, p1, :cond_3

    return v4

    :cond_3
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x7

    return p1

    :pswitch_1
    const/4 p1, 0x6

    return p1

    :pswitch_2
    const/4 p1, 0x5

    return p1

    :pswitch_3
    const/4 p1, 0x4

    return p1

    :pswitch_4
    const/4 p1, 0x3

    :pswitch_5
    return p1

    :cond_4
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lk/k;->c:[Lorg/opencv/core/Mat;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    :cond_0
    iget-object v1, p0, Lk/k;->c:[Lorg/opencv/core/Mat;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0, p1}, Lk/k;->origB(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p0, v0}, Lmdm/ForceRedDot;->filter(Lk/j;I)I

    move-result v0

    return v0
.end method
