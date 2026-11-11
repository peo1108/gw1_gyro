.class public Lk/l;
.super Lk/m;
.source "l.java"


# static fields
.field static final FILES:[Ljava/lang/String;


# instance fields
.field public c:I

.field public d:I

.field public e:I

.field public final f:I

.field public g:[Lorg/opencv/core/Mat;

.field public heavy:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 23
    const-string v4, "/stock-uzistock-cfq.JPG"

    const-string v5, "/stock-heavy-general.JPG"

    const-string v0, "/empty.JPG"

    const-string v1, "/stock-bump-fire.JPG"

    const-string v2, "/stock-justock-ju.JPG"

    const-string v3, "/stock-m4stock-general.JPG"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lk/l;->FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 15

    .line 28
    invoke-direct {p0}, Lk/m;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lk/l;->c:I

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lk/l;->d:I

    .line 18
    const/4 v1, 0x1

    iput v1, p0, Lk/l;->e:I

    .line 19
    const/4 v1, 0x6

    iput v1, p0, Lk/l;->f:I

    .line 20
    new-array v2, v1, [Lorg/opencv/core/Mat;

    iput-object v2, p0, Lk/l;->g:[Lorg/opencv/core/Mat;

    .line 21
    const/4 v2, 0x2

    iput v2, p0, Lk/l;->heavy:I

    .line 29
    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {v3}, Lcom/zjx/jyandroid/Extensions/pubg/f;-><init>()V

    invoke-virtual {v3}, Lcom/zjx/jyandroid/Extensions/pubg/f;->f()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    iput-wide v3, p0, Lk/l;->b:D

    .line 30
    move v3, v0

    :goto_27
    if-ge v3, v1, :cond_49

    .line 31
    iget-object v4, p0, Lk/l;->g:[Lorg/opencv/core/Mat;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lk/l;->FILES:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lorg/opencv/imgcodecs/Imgcodecs;->imread(Ljava/lang/String;I)Lorg/opencv/core/Mat;

    move-result-object v5

    aput-object v5, v4, v3

    .line 30
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 33
    :cond_49
    move v3, v0

    :goto_4a
    if-ge v3, v1, :cond_b0

    .line 34
    iget-object v0, p0, Lk/l;->g:[Lorg/opencv/core/Mat;

    aget-object v4, v0, v3

    .line 35
    if-eqz v4, :cond_ad

    invoke-virtual {v4}, Lorg/opencv/core/Mat;->rows()I

    move-result v0

    if-nez v0, :cond_59

    .line 36
    goto :goto_ad

    .line 38
    :cond_59
    int-to-float v0, p2

    const-string v5, "\u4e2d\u6587\u56fd\u670d"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_65

    const/high16 v5, 0x42ac0000    # 86.0f

    goto :goto_67

    :cond_65
    const/high16 v5, 0x42960000    # 75.0f

    :goto_67
    div-float/2addr v0, v5

    .line 39
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v6, v0, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpg-double v6, v6, v8

    if-gez v6, :cond_7b

    .line 40
    return-void

    .line 42
    :cond_7b
    move v6, v5

    new-instance v5, Lorg/opencv/core/Mat;

    invoke-direct {v5}, Lorg/opencv/core/Mat;-><init>()V

    .line 44
    move v7, v6

    :try_start_82
    new-instance v6, Lorg/opencv/core/Size;

    invoke-virtual {v4}, Lorg/opencv/core/Mat;->cols()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v0

    float-to-double v8, v8

    invoke-virtual {v4}, Lorg/opencv/core/Mat;->rows()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v0

    float-to-double v10, v10

    invoke-direct {v6, v8, v9, v10, v11}, Lorg/opencv/core/Size;-><init>(DD)V

    cmpl-float v0, v0, v7

    if-lez v0, :cond_9b

    move v11, v2

    goto :goto_9d

    :cond_9b
    const/4 v0, 0x3

    move v11, v0

    :goto_9d
    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    invoke-static/range {v4 .. v11}, Lorg/opencv/imgproc/Imgproc;->resize(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;DDI)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_a4} :catch_a5

    .line 46
    goto :goto_a6

    .line 45
    :catch_a5
    move-exception v0

    .line 47
    :goto_a6
    invoke-virtual {v4}, Lorg/opencv/core/Mat;->release()V

    .line 48
    iget-object v0, p0, Lk/l;->g:[Lorg/opencv/core/Mat;

    aput-object v5, v0, v3

    .line 33
    :cond_ad
    :goto_ad
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 50
    :cond_b0
    return-void
.end method

.method public static f(Landroid/graphics/Bitmap;)Lorg/opencv/core/Mat;
    .registers 2

    .line 53
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 54
    invoke-static {p0, v0}, Lorg/opencv/android/Utils;->bitmapToMat(Landroid/graphics/Bitmap;Lorg/opencv/core/Mat;)V

    .line 55
    const/4 p0, 0x7

    invoke-static {v0, v0, p0}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    .line 56
    return-object v0
.end method

.method private g(ILorg/opencv/core/Mat;)D
    .registers 7

    .line 61
    if-ltz p1, :cond_3e

    const/4 v0, 0x6

    if-ge p1, v0, :cond_3e

    iget-object v0, p0, Lk/l;->g:[Lorg/opencv/core/Mat;

    aget-object p1, v0, p1

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->rows()I

    move-result v0

    if-eqz v0, :cond_3e

    .line 62
    invoke-virtual {p2}, Lorg/opencv/core/Mat;->cols()I

    move-result v0

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->cols()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 63
    invoke-virtual {p2}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->rows()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 64
    if-lez v0, :cond_3e

    if-lez v1, :cond_3e

    .line 65
    new-instance v2, Lorg/opencv/core/Mat;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v0, v3}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 66
    invoke-static {p2, p1, v2, v3}, Lorg/opencv/imgproc/Imgproc;->matchTemplate(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    .line 67
    invoke-static {v2}, Lorg/opencv/core/Core;->minMaxLoc(Lorg/opencv/core/Mat;)Lorg/opencv/core/Core$MinMaxLocResult;

    move-result-object p1

    .line 68
    invoke-virtual {v2}, Lorg/opencv/core/Mat;->release()V

    .line 69
    iget-wide p1, p1, Lorg/opencv/core/Core$MinMaxLocResult;->maxVal:D

    return-wide p1

    .line 72
    :cond_3e
    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    return-wide p1
.end method

.method private h(Landroid/graphics/Bitmap;)Lk/m$a;
    .registers 11

    .line 76
    invoke-static {p1}, Lk/l;->f(Landroid/graphics/Bitmap;)Lorg/opencv/core/Mat;

    move-result-object p1

    .line 77
    nop

    .line 78
    nop

    .line 79
    const/4 v0, -0x1

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_b
    const/4 v6, 0x6

    if-ge v3, v6, :cond_20

    .line 80
    invoke-direct {p0, v3, p1}, Lk/l;->g(ILorg/opencv/core/Mat;)D

    move-result-wide v6

    .line 81
    cmpl-double v8, v6, v1

    if-eqz v8, :cond_1d

    cmpl-double v8, v6, v4

    if-lez v8, :cond_1d

    .line 82
    nop

    .line 83
    move v0, v3

    move-wide v4, v6

    .line 79
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 86
    :cond_20
    invoke-virtual {p1}, Lorg/opencv/core/Mat;->release()V

    .line 87
    new-instance p1, Lk/m$a;

    invoke-direct {p1, p0, v0, v4, v5}, Lk/m$a;-><init>(Lk/m;ID)V

    return-object p1
.end method


# virtual methods
.method public b(Ljava/lang/Object;)I
    .registers 6

    .line 92
    iget-object p1, p0, Lk/l;->a:Landroid/graphics/Bitmap;

    .line 93
    if-nez p1, :cond_7

    .line 94
    iget p1, p0, Lk/l;->c:I

    return p1

    .line 96
    :cond_7
    invoke-direct {p0, p1}, Lk/l;->h(Landroid/graphics/Bitmap;)Lk/m$a;

    move-result-object p1

    .line 97
    iget-wide v0, p1, Lk/m$a;->b:D

    iget-wide v2, p0, Lk/l;->b:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2b

    iget v0, p1, Lk/m$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    goto :goto_2b

    .line 100
    :cond_19
    iget v0, p1, Lk/m$a;->a:I

    if-nez v0, :cond_20

    .line 101
    iget p1, p0, Lk/l;->d:I

    return p1

    .line 103
    :cond_20
    iget p1, p1, Lk/m$a;->a:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_28

    iget p1, p0, Lk/l;->heavy:I

    goto :goto_2a

    :cond_28
    iget p1, p0, Lk/l;->e:I

    :goto_2a
    return p1

    .line 98
    :cond_2b
    :goto_2b
    iget p1, p0, Lk/l;->c:I

    return p1
.end method

.method public e()V
    .registers 4

    .line 108
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_15

    .line 109
    iget-object v1, p0, Lk/l;->g:[Lorg/opencv/core/Mat;

    aget-object v1, v1, v0

    .line 110
    if-eqz v1, :cond_d

    .line 111
    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    .line 113
    :cond_d
    iget-object v1, p0, Lk/l;->g:[Lorg/opencv/core/Mat;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 115
    :cond_15
    return-void
.end method
